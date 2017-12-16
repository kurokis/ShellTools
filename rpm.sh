#!/bin/bash

cd ../MarkerServer/MarkerServer/build/; ./markerserver & cd ../../../RasPiMain/RasPiMain/build; sleep 1s; ./main && fg

