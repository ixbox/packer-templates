yum -y remove bzip2 gcc gcc-c++ glibc-headers kernel-devel kernel-headers libgomp libstdc++-devel mpfr perl ppl
#yum -y update --exclude=kernel*
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

# SERVICES=(
#     auditd
#     blk-availability
#     # crond
#     ip6tables
#     iptables
#     iscsi
#     iscsid
#     lvm2-monitor
#     mdmonitor
#     multipathd
#     netconsole
#     # netfs
#     # network
#     postfix
#     rdisc
#     restorecond
#     # rsyslog
#     saslauthd
#     # sshd
#     udev-post
#     # vboxadd
#     # vboxadd-service
#     # vboxadd-x11
# )
# for SERVICE in ${SERVICES[@]}; do
#     chkconfig --level 12345 $SERVICE off
# done

sed -i "s/tty\[1-6\]/tty1/" /etc/sysconfig/init
