#!/bin/bash

../MarkerServer/MarkerServer/build/markerserver & sleep 1s; ./RasPiMain/build/main && fg

