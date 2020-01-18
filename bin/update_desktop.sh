#!/bin/sh 

bin_awk="/usr/bin/awk" 
bin_emerge="/usr/bin/emerge" 
etc_exclude="/etc/portage/package.exclude_desktop" 

exclude_package=`$bin_awk 'END{print RS}$0=$0' ORS=" " $etc_exclude` 

$bin_emerge -avuUD @world --exclude="$exclude_package" 
