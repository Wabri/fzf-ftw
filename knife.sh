#!/usr/bin/env bash

knife-search-show() {
    echo "" | fzf --preview 'knife node list | grep {q} | tee /tmp/out' ; knife node show `command cat /tmp/out`
}
