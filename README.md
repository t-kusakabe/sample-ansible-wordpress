# sample-ansible-wordpress

## build

image build
```
docker build -t ansible-wordpress .
```

container run
```
docker run --rm -it -v `pwd`:/workdir ansible-wordpress /bin/sh
```

exec ansible-playbook
```
ansible-playbook site.yml  --connection=local
```
