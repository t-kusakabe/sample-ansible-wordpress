# sample-ansible-wordpress

## build

image build
```
docker build -t ansible-wordpress .
```

container run
```
docker run --rm -d --privileged -v `pwd`:/workdir -p 9000:80 --name ansible-wordpress ansible-wordpress /sbin/init
docker exec -it ansible-wordpress /bin/sh
```

exec ansible-playbook
```
ansible-playbook -i inventories/wordpress/host.yml site.yml --connection=local
```

```
open http://localhost:9000/wordpress
```
