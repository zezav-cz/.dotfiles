#!/bin/bash

LID_OUTPUT="eDP-1"

if grep -q open /proc/acpi/button/lid/*/state; then
    swaymsg output $LID_OUTPUT disable
    swaymsg output $LID_OUTPUT enable
else
    swaymsg output $LID_OUTPUT disable
fi

