Public part of ad hoc playbooks

# Init

```
helper git-config
helper run init-play-dir vault=epi use_ssh_config=1
git-store-dates
git-store-dates hooks
```

Copy `infra-data` and `requirements` from legacy private play repos
then get data from private repos.

```
make all
infra-data.yml
```

We no can add public plays using private data (or migrate old plays
needlessly in private repos to public repos)

# Add add the keys of all admins to root account

```
add-adm-key-to-root.yml
```
