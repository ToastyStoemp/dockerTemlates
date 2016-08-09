#!/bin/bash

trap "stop" SIGINT SIGTERM

cd /data/modBot
(npm start)&
modBotPid=$!

function stop() {
    kill $modBotPid
}

wait $modBotPid
