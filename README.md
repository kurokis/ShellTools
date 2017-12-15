
# Shell Tools

Some tools to make life easier.

 - pifinder.sh: searches for Raspberry Pi in wireless network
 - rpm.sh: starts MultiMarkerServer then starts RasPiMain

## Directory structure

__Ubuntu__
anywhere/
|----pifinder.sh

__Raspberry Pi__
cpp_ws/
|----RasPiMain
|   |----RasPiMain
|   |   |----build
|   |       |----main
|   |----rpm.sh
|
|----MarkerServer
|   |----MultiMarkerServer
|       |----build
|           |----multimarkerserver


## How to use

Use chmod +x to give execute permission (first time only), then run the script.

```
$ chmod +x pifinder.sh
$ ./pifinder.sh
```

