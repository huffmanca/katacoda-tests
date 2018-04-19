#!/usr/bin/env bash
ssh root@host01 "bash <(curl -sL https://raw.githubusercontent.com/huffmanca/katacoda-tests/master/assets/.init.sh)"
ssh root@host01 "pkill -f jboss-modules"
