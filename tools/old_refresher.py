#!/usr/bin/env python3
"""
Custom script for refreshing nvchecker old version file.

Uses the nvchecker API for figuring out the correct file to write.

In case you want to customize it, change the `pkg_updater` method.

Partially inspired from:
https://github.com/Foxboron/archlinux-pkgbuilds/blob/master/.repo/get-current-versions.sh
"""

import glob
import json
import pathlib

from nvchecker.core import load_file


def add_to_multidict(dict_: dict, key, value):
    """Add a value to a dict which can either have a single value or a list of them."""
    if key not in dict_:
        dict_[key] = value
    else:
        # Deal with fields with multiple values
        previous_value = dict_[key]
        if not isinstance(previous_value, list):
            dict_[key] = [previous_value, value]
        else:
            dict_[key].append(value)


def parse_srcinfo(srcinfo_path: str) -> tuple[dict[str, str], dict[str, str]]:
    """Parse a .SRCINFO and returns data as a dictionary for each package."""
    with open(srcinfo_path) as srcinfo_file:
        srcinfo_content = srcinfo_file.readlines()

    pkgbase, packages = {}, {}
    # Use a variable to point to the dict we should fill up
    place_to_fill = None

    for line in srcinfo_content:
        # Skip empty lines
        if "=" not in line:
            continue

        # Parse the line
        # print(line)
        key, value = line.split("=", maxsplit=1)
        key, value = key.strip(), value.strip()

        # Handle package switch
        if key == "pkgbase":
            pkgbase["name"] = value
            place_to_fill = pkgbase
        elif key == "pkgname":
            packages[value] = {}
            place_to_fill = packages[value]
        else:
            # Handle value add
            add_to_multidict(place_to_fill, key, value)

    return pkgbase, packages


def find_srcinfos(folder: pathlib.Path | str = "."):
    """
    Parse all .SRCINFO files found in a specific directory and provide all relevant packages.
    """
    return glob.glob(f"{folder}/**/.SRCINFO")


def old_refresher():
    """Main method for storing the current versions of the packages."""
    this_script_folder = pathlib.Path(__file__).parent

    nvchecker_config_path = this_script_folder / "nvchecker.toml"
    nvchecker_config, nvchecker_options = load_file(
        nvchecker_config_path, use_keymanager=False
    )
    nvchecker_old_version = nvchecker_options.ver_files[0]

    srcinfos = find_srcinfos(this_script_folder.parent)

    current_versions = {}
    for srcinfo in srcinfos:
        pkgbase, packages = parse_srcinfo(srcinfo)

        pkgbase_name = pkgbase["name"]
        pkgbase_ver = pkgbase["pkgver"]
        if pkgbase_name.endswith("-git") and ".r" in pkgbase_ver:
            pkgbase_ver = ".".join(pkgbase_ver.split(".")[:-1])

        current_versions[pkgbase_name] = {"version": pkgbase_ver}

    # Sort the dictionary
    current_versions = dict(sorted(current_versions.items()))

    versions_data = {"version": 2, "data": current_versions}

    with open(nvchecker_old_version, "w") as old_version_fp:
        json.dump(versions_data, old_version_fp, indent=4)


if __name__ == "__main__":
    old_refresher()
