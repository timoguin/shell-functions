# Shell Functions

Helper functions that can be sourced independently. Only use what you need.

## Usage

There are two scripts in the repo root that can be used to install the shell
functions:

- [source-all.sh] 
- [source-functions.sh]

The first command should be pretty self-explanatory. The later command accepts
a list of functions to install.

### Examples

Install all functions:

```shell
$ . source-all.sh
Sourcing all functions
Sourced function: recursive-gitconfig/recursive-gitconfig.sh
Sourced function: standup/standup.sh
```

Install 3 functions, including one that doesn't exist. The script will log
these errors to stderr and continue on.

```shell
$ . source-functions.sh standup recursive-gitconfig fake-function-to-error
Sourcing functions: standup recursive-gitconfig fake-function-to-error
Sourced function: standup
Sourced function: recursive-gitconfig
Function not found: fake-function-to-error
```

## Available Functions

- [recursive-gitconfig]: Recurse parents dirs to find the nearest gitconfig
- [standup]: Extracts standup text from YAML journal and copies it to the clipboard


<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Markdown Anchors keep URLs out of our MF prose.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
[recursive-gitconfig]: recursive-gitconfig
[source-all.sh]: source-all.sh
[source-functions.sh]: source-functions.sh
[standup]: standup
