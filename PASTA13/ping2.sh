#!/bin/bash
PROMPT_COMMAND='echo -ne Executando ping 1x'
function do_ping () {
echo ping
ping -c 1 8.8.8.8
}
