#!/bin/bash
date=$(date '+%Y%m%d')
to_remove_date=$(date '+%Y%m%d' -d '30 days ago')
[ -d /snapshots] || mkdir /snapshots 
[ -d /snapshots/${date} ] || btrfs subvolume snapshot / /snapshots/${date}
[ -d /snapshots/${to_remove_date} ] && btrfs subvolume delete /snapshots/${to_remove_date}
