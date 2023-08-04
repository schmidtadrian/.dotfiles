#!/bin/bash

init_screen_setup() {
    # get init lid state
    state="$(awk '{print $2}' /proc/acpi/button/lid/LID/state)"
    if [ "$state" == "closed" ]; then
        xrandr --output eDP --off
    elif [ "$state" == "open" ]; then
        xrandr --auto
    fi
}

change_handler() {
    # pipe each output line of acpi_listen into line variable
    acpi_listen | while IFS= read -r line;
    do
        # check if its a lid event & return state (open/close)
        state="$(awk '{ if ($1=="button/lid") { print $3 }}' <<< $line)"
        if [ "$state" == "close" ]; then
            xrandr --output eDP --off
        elif [ "$state" == "open" ]; then
            xrandr --auto
        fi
    done
}

init_screen_setup
change_handler
