top:; @date

SHELL := bash

all   :=  ansible-galaxy install -r requirements.yml
role   = ansible-galaxy remove $@;
role  += $(all)
roles := clone if-rename-first common-tools vsphere-if-add hg-etc-com vsphere-disk-add legacy-named
roles += automysqlbackup revaliases-ssmtp bsd-mailx nfs-pair regenerate-host-keys reset-known_hosts
roles += remote-reset-known_hosts fill-know_hosts jsonnet ntp-date make
roles += geerlingguy.munin-node sshd
roles += user-account sudoersd

all:; $($@)
$(roles):; $(role)
.Phony: all $(roles)
