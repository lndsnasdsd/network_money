#!/bin/bash
echo "To configure this app we will need to start an interactive container in a new terminal (so Docker needs to be already installed)."
echo "Then when prompted enter your bitping email and password in it. Hit enter and then close it (or CTRL+C it) as we will not need it anymore"$'\n'
read -n 1 -s -r -p "When ready to start, press any key to continue"$'\n'
sudo docker run --rm -it -v "${PWD}"/.data/.bitping/:/root/.bitping bitping/bitping-node:latest && echo "ok"
echo "Bitping interactive container closed. Bitping config should be complete now."
sleep 3
