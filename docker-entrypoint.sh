#!/usr/bin/bash
if test -f '/change-root-pwd.sh'; then
	/change-root-pwd.sh
	rm -rf /change-root-pwd.sh
fi
/sbin/sshd
/usr/bin/tail -f /dev/null
