# omakub-on-wsl

The [Omakub][omakub] project is a great way to setup a fresh Ubuntu 24.04 machine for web development. 
Unfortunately, it can't be used directly on a Ubuntu instance running in the Windows Subsystem for Linux,
as it will try to install applications like Chrome, Spotify or Typora on Linux and not on the host OS.

[omakub]: https://omakub.org/

Omakub on WSL aims to select the parts of Omakub that are applicable to the WSL layer and adjust, where needed,
the existing scripts in order to provide a better experience out of the box on Windows.

## Design Principles

The project follows the exact same structure as Omakub, with the files named in the exact same way so 
diffing between the original project and this one.

Installing and configuring the GUI applications should be done directly in Windows.
