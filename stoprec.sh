#!/bin/bash
//systemctl list-unit-files –-type service --all
proc=("alsa-utils.service" "anacron.service" "apparmor.service" "avahi-daemon.service" "bluetooth.service" "create_ap.service" "cron.service" "cryptdisks-early.service" 
"cryptdisks.service" "cups-browsed.service" "cups.service");

for i in {0..10}
do
sudo systemctl stop ${proc[i]};
sudo systemctl disable ${proc[i]};
echo "ejecucin numero: ${proc[i]}";
done
