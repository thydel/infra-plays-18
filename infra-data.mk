top:; @date

user_passwords: vars/ext/user_passwords.yml
vars/ext/user_passwords.yml: $(data)/vars/user_passwords.yml; install -m 0444 $< $@

.PHONY: top user_passwords
