# Batfiles

A simple set of unix-like and helpful macros for dealing with the Windows command prompt.

## Features

* prompt updated with working git branch and status
* useful aliases for git and more
* download files from the command line
* 2 line prompt for readability
* [base16](https://github.com/chriskempson/base16) colour scheme for Windows Command Prompt

## Requirements

* **`git`**  
  _Well, you're here, aren't you?_
* **[Clink](https://code.google.com/p/clink/)**  
  _Brings Bash-style completion and history to the Windows command prompt_

## Setup

1. Clone this repo into your `%USERPROFILE%/batfiles` directory;
   `git clone https://github.com/geoffstokes/batfiles.git %USERPROFILE%/batfiles`
2. Run `setup.bat` from the `batfiles` directory.

## Usage
* `~`: Go to your user profile directory
* `cd`: Replaced with `chdir /D`, meaning it'll _just change drives when you bloody ask it to_
* `clear`: clear the screen
* `fn`: search recursively through the current directory and its subdirectories
* Git shortcuts
    * `ga`: `git add`
    * `gb`: Show all local and remote branches (`git branch -av`)
    * `gbp`: Show all unmerged branches, with their remote equivalents (if any. equivalent to `git branch -avv --no-merged`)
    * `gc`: `git commit -v`
    * `gco`: `git checkout`
    * `gd`: `git diff`
    * `gdc`: `git diff --cached`
    * `gdh`: `git diff HEAD`
    * `gf`: `git fetch`
    * `gl`: `git log`
    * `gp`: `git push`
    * `gpl`: `git pull`
    * `gr`: `git remote -v`
    * `gs`: `git status`
    * `gu`: `git up`
* `ls`: run `dir` in a vaguely unix-like way (and get a message from Steve)
* `ntget`: insanely simplistic file download utility (written in Powershell)
* `source`: reload the `doskey` macro file
* `x`: shortcut to exit

## How

This uses `doskey` to set up macros by running it whenever a command prompt instance starts. Automatically running something on each command prompt load is achieved by setting the `AutoRun` key in `HKEY_CURRENT_USER\Software\Microsoft\Command Processor` in the Registry.

These changes are per-user and can (and will) be expanded upon by adding commands (setting variables, etc) to `cmd_profile.bat` and/or adding aliases to `doskey.mcr`.

`ntget` is a (very) simple PowerShell script which is called from a `doskey` macro.

_**NOTE**: A previous version changed your PowerShell ExecutionPolicy to `RemoteSigned`. This is no longer the case. To restore the default policy, you can run this command from cmd; `powershell -Command "& {Set-ExecutionPolicy -ExecutionPolicy Restricted}"`_

The colours are overridden in the registry (and require you to have not customised them for any command prompt shortcut), and the improved prompt uses Clink.