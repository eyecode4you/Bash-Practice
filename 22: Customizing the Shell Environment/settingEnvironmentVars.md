### Viewing environment vars
- set cmd shows all environment and user vars
- env cmd shows environment vars
- printenv shows environment vars e.g. printenv PATH (don't use the $ with printenv)

### Setting and Unsetting User Variables
- userVar="Hello"
- echo $userVar
- unset userVar

### Setting and Changing Environment Variables
e.g. adding a new dir to PATH
- mkdir newDir
- export PATH=$PATH:newDIR (for permanent changes use absolute ref.)
- echo $PATH

To make environment var changes permanent, modify the environment files e.g. .bashrc

### Check which shell options are currently enabled
- echo $- (shows flags set, use help set for more info)
- Turn OFF an option: set +[option]
- Turn ON an option: set -[option]
