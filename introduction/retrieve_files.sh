#!/usr/bin/env bash
ssh root@host01 "bash <(curl -sL https://raw.githubusercontent.com/RedHat-Middleware-Workshops/modernize-apps-katacoda/master/assets/.init.sh)"
ssh root@host01 "pkill -f jboss-modules"

#Begin custom RHAMT work
ssh root@host01 git clone https://github.com/huffmanca/katacoda-tests.git