# sample-ansible-wordpress

## build

create ssh key
```
ssh-keygen -t rsa -f ./sample-ec2-docker/id_rsa
```

image build
```
docker build -t sample-ansible-wordpress:latest ./sample-ec2-docker
```

container run
```
docker run --rm --privileged --name sample-ansible-wordpress -p 9000:9000 -p 2222:22 -d sample-ansible-wordpress:latest
```

ssh
```
ssh ec2-user@localhost -i ./sample-ec2-docker/id_rsa -p 2222 -o 'StrictHostKeyChecking no'
```

exec ansible-playbook
```
ansible-playbook -i inventories/wordpress/host.yml site.yml
```

```
open http://localhost:9000/wordpress
```
