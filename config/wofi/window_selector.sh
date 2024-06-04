#!/usr/bin/env bash

# stolen from reddit
# TODO: better formatting for window name
# TODO: see if it is possible to also have desktop icons
# probably not since wofi --show dmenu only got text input
swaymsg -t get_tree | jq -r '
        # descend to workspace or scratchpad
        .nodes[].nodes[]
        # save workspace name as .w
        | {"w": .name} + (
                if .nodes then # workspace
                        [recurse(.nodes[])]
                else # scratchpad
                        []
                end
                + .floating_nodes
                | .[]
                # select nodes with no children (windows)
                | select(.nodes==[])
        )
        | ((.id | tostring) + "\t "
        # remove markup and index from workspace name, replace scratch with "[S]"
        + (.w | gsub("^[^:]*:|<[^>]*>"; "") | sub("__i3_scratch"; "[S]"))
        + "\t " +  .name)
        ' | wofi --show dmenu --prompt='Focus a window' | {
    read -r id name
    swaymsg "[con_id=$id]" focus
}
