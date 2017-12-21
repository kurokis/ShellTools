
# Shell Tools

Some tools to make life easier.

 - pifinder.sh: searches for Raspberry Pi in wireless network
 - piconnect.sh: searches for Raspberry Pi and starts ssh connection if found
 - rpm.sh: starts MultiMarkerServer then starts RasPiMain

## Directory structure

__Ubuntu__

```
anywhere/
|----pifinder.sh
|----piconnect.sh
```

__Raspberry Pi__

```
cpp_ws/
|----rpm.sh
|----RasPiMain
|   |----RasPiMain
|   |   |----build
|   |       |----main
|
|----MarkerServer
|   |----MultiMarkerServer
|       |----build
|           |----multimarkerserver
```


## How to use

Use ``chmod +x`` to give execute permission (first time only), then run each script.

Example:
```
$ chmod +x pifinder.sh
$ ./pifinder.sh
```

