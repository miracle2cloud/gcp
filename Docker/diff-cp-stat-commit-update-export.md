  900  docker run -t shellapp
  901  docker images
  902  docker run -d my-ubuntu
  903  docker diff b5392535c122924dedf35cb1d63b943a386b4235652bc1c459d762bf3032cb34
  904  docker exec -it b5 /bin/bash
  905  docker images
  906  docker image tag my-ubuntu ubunutu-with-python:1.0
  907  docker images
  908  docker login
  909  docker push ubunutu-with-python:1.0
  910  docker image tag my-ubuntu leoy26/ubunutu-with-python:1.0
  911  docker push leoy26/ubunutu-with-python:1.0
  912  docker container ls
  913  docker inspect b5392535c122
  914  docker conatienr sl
  915  docker container ls
  916  docker exec -it 5c64a8d97bc9 bash
  917  docker container ls
  918  history 
  919  clear
  920  docker --version
  921  docker -v
  922  docker version
  923  docker info
  924  docker container ls
  925  docker rm $(docker container ls -q)
  926  docker rm $(docker container ls -q) -f
  927  docker container ls
  928  docker image ls
  929  docker image rm $(docker image ls -q)
  930  docker image rm $(docker image ls -q) -f
  931  docker image ls
  932  docker image rm $(docker image ls -q) -f
  933  docker image ls
  934  docker image rm $(docker image ls -q) -f
  935  docker image ls
  936  docker image prune 
  937  docker container prune 
  938  ls -ltr
  939  docker run --name mynginx1 -d nginx 
  940  docker container  ls 
  941  docker exec -it mynginx1
  942  docker exec -it mynginx1 /bin/bash
  943  docker container  ls 
  944  clear
  945  docker 
  946  docker container ls
  947  clear
  948  docker diff mynginx1
  949  docker diff --help
  950  docker exec -it mynginx1 /bin/bash
  951  clera
  952  clear
  953  docker diff --help
  954  docker diff mynginx1
  955  docker exec -it mynginx1 /bin/bash
  956  docker diff mynginx1
  957  vi index.html
  958  vi welcome.html
  959  ls
  960  rm index.html 
  961  ls
  962  docker cp --help
  963  docker cp welcome.html mynginx1:/usr/share/nginx/html
  964  docker diff mynginx1
  965  docker exec -it mynginx1 /bin/bash
  966  clear
  967  docker cp mynginx1:/usr/share/nginx/html/index.html .
  968  pwd
  969  ls
  970  cat index.html
  971  docker --help
  972  docker update --help
  973  docker container ls
  974  docker stats mynginx1
  975  docker container ls
  976  free -g
  977  free -m
  978  docker run --name mynginx2 -p 6080:80 -d nginx 
  979  docker container ls
  980  docker stats 
  981  docker container update --help
  982  clear
  983  docker container upgrade --memory 3mb mynginx1
  984  docker container update --memory 3mb mynginx1
  985  docker container update --memory 10mb mynginx1
  986  docker stats 
  987  docker run --help
  988  docker container ls
  989  docker image ls
  990  docker exec -it mynginx2 /bin/sh
  991  docker exec -it mynginx2 /bin/bash
  992  docker container ls
  993  docker commit --help
  994  docker commit mynginx2 custom-nginx:1.0
  995  docker images
  996  docker run -d custom-nginx
  997  docker run -d custom-nginx:1.0
  998  docker container ls
  999  docker diff d0e371985992
 1000  docker exec -it d0e371985992 /bin/sh
 1001  docker run ubuntu
 1002  docker conatiner ls
 1003  docker container ls
 1004  docker run -d ubuntu
 1005  docker exec -it d88 /bin/bash
 1006  docker run -d ubuntu /bin/bash
 1007  docker run -d ubuntu pint google.com
 1008  docker run -d ubuntu ping google.com
 1009  docker run -d ubuntu sleep 1d
 1010  docker exec -it f8f /bin/bash
 1011  docker container ls
 1012  docker commit f8f608bd1096 my-ubuntu
 1013  docker image ls
 1014  docker history my-ubuntu
 1015  docker run 4ac0b0a1a0ff ping google.com
 1016  docker run 4ac0b0a1a0ff
 1017  docker ls
 1018  docker ps
 1019  clear
 1020  docker ls
 1021  docker ps
 1022  clear
 1023  docker ps
 1024  docker export --help
 1025  docker export mynginx1 -o mynginx1.tar
 1026  ls
 1027  tar -xvf mynginx1.tar