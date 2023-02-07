# Giovanni Santini's ArchLinux packages

Here are all the AUR packages maintained by me ;)

The equivalent AUR search is:

https://aur.archlinux.org/packages/?SeB=M&K=ItachiSan


## Comaintaining

Are you a comaintainer and want to start quickly to hack stuff? Then here is what you should do.

(I assume here we already talked about stuff & I checked that you actually know what we are talking about ;) )


## Setup
Before hacking the packages, you need to get some stuff right:
1. Fetch this repository via:

   `git clone https://github.com/ItachiSan/linux_packaging.git /path/to/my_local_copy`

2. Update the submodules:

   `git submodule update --init`

   If you want to work on a specific submodule or a set, just provide it as parameted:
   ```sh
   # Set up only the po-debconf submodule
   git submodule update --init po-debconf
   # Set up only the telegram-destkop submodules
   git submodule update --init telegram-desktop*
   ```

3. Install the provided Git hooks with:

   `./hooks/install.sh`

   These are required for correctly generating the commits.

## Check for missing updates

This repo has an `nvchecker` wrapper for easily checking for updates.

First, you need to create in the `tools` the `nvchecker_keys.toml`.
Just copy the example version and add the relevant tokens.

As of 2023-02-07, you need to have a private Github access token to guarantee consistent API calls,
see [the consideration here](https://github.com/simon04/aur-out-of-date#principle).

After this setup, just run the tool:

`./tools/check_updates.sh`.

## Updating a package
Now you are practically ready to go: if you want to update the packages, the way is simple:
1. Enter the package folder
2. Edit the PKGBUILD with any editor you like.

   **IMPORTANT**: packaging-only changes increase only the `pkgrel`,
   only upstream version changes increase `pkgver`.

3. `updpkgsums` 
4. Build the package, to verify all is working
5. Commit the changes; the message will be initially formatted with the repository standard.
   Just add the list of changes with a list, for example:
   ```sh
   # This is already here
   updpkg: APACKAGE 1.2.3-4
   
   # Then you add lines like:
   - Version bump.
   - Improvements to PKGBUILD.
   - ...
   ```
   The list should mention all the actual changes.

## Future wishes

1. Automated packaging
2. Distribution via Github Pages; right now I have an OpenBuildService repository, but ugh.
3. Add more packages (requires 1. & 2. properly working)
