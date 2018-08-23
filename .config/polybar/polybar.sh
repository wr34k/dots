#!/usr/bin/env bash

killall -q polybar

polybar bar0 2>&1 > /dev/null &
