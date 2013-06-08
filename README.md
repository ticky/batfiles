# `DOSKEY` macros for the Windows command prompt

A simple set of unix-like and helpful macros for dealing with the Windows command prompt.

## Installation

1. Clone this gist into your `%USERPROFILE%/batfiles` directory;
   `git clone https://gist.github.com/5727123.git %USERPROFILE%/batfiles`
2. Run the `cmd_profile.reg` file to set the necessary registry entry to set up your command prompt.

## Usage
* `~`: Go to your user profile directory
* `cd`: Replaced with `chdir /D`, meaning it'll _just change drives when you bloody ask it to_
* `clear`: clear the screen
* `fn`: search recursively through the current directory and its subdirectories
* `ls`: run `dir` in a vaguely unix-like way (and get a message from Steve)
* `x`: shortcut to exit

There are also some `git` shortcuts. Make sure `git` is in your path.