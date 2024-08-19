#!/bin/bash

sh 000-upgrade-system*

sh 001-remove-firewalld*

sh 100-install-linux-zen*
sh 101-install-nvidia*
sh 102-install-timeshift*
sh 103-install-zsh*
sh 104-install-ufw*

sh 200-install-steam*

