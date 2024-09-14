#
# Regular cron jobs for the libvirt-udev-dlitz package.
#
0 4	* * *	root	[ -x /usr/bin/libvirt-udev-dlitz_maintenance ] && /usr/bin/libvirt-udev-dlitz_maintenance
