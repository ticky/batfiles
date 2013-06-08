# Batfiles

A simple set of unix-like and helpful macros for dealing with the Windows command prompt.

## Installation

1. Clone this repo into your `%USERPROFILE%/batfiles` directory;
   `git clone https://github.com/geoffstokes/batfiles.git %USERPROFILE%/batfiles`
2. Run the `cmd_profile.reg` file to set the necessary registry entry to set up your command prompt.

## Usage
* `~`: Go to your user profile directory
* `cd`: Replaced with `chdir /D`, meaning it'll _just change drives when you bloody ask it to_
* `clear`: clear the screen
* `fn`: search recursively through the current directory and its subdirectories
* Git shortcuts
    * `gd` for `git diff`
    * `gl` for `git log`
    * `gu` for `git up`
    * `gs` for `git status`
    * `gf` for `git fetch`
    * `gr` for `git remote -v`
    * `gp` for `git push`
    * `gpl` for `git pull`
    * `gc` for `git commit`
    * `gco` for `git checkout`
    * `ga` for `git add .`
* `ls`: run `dir` in a vaguely unix-like way (and get a message from Steve)
* `x`: shortcut to exit

## How

This uses `doskey` to set up macros by running it whenever a command prompt instance starts. Automatically running something on each command prompt load is achieved by setting the `AutoRun` key in `HKEY_CURRENT_USER\Software\Microsoft\Command Processor` in the Registry.

These changes are per-user and can (and will) be expanded upon by adding commands (setting variables, etc) to `cmd_profile.bat` and/or adding aliases to `doskey.mcr`.