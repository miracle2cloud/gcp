docker volume
    bind/host
    named volume
    anonymous volume

1104  docker run -itd -v /usr nginx
 1105  docker container ls
 1106  docker image ls
 1107  docker volume ls
 1108  docker exec -it 51affe4de439 /bin/bash
 1109  docker volume inspect be064882cb9cc9bb92fc22c616dce930000bb58014a3383b6729030d86d8a020
 1110  cd /var/lib/docker/volumes/be064882cb9cc9bb92fc22c616dce930000bb58014a3383b6729030d86d8a020/_data
 1111  hostnam,e
 1112  hostname
 1113  ls
 1114  cat nginx-custom-file
 1115  docker container rm 51affe4de439 -f
 1116  ll
 1117  cd
 1118  docker volume ls
 1119  docker volume rm be064882cb9cc9bb92fc22c616dce930000bb58014a3383b6729030d86d8a020
 1120  cd /var/lib/docker/volumes
 1121  ll
 1122  clear
 1123  cd
 1124  clear
 1125  docker run -itd -v myvol-nginx:/usr nginx
 1126  docker volume ls
 1127  docker inspect myvol-nginx
 1128  cd /var/lib/docker/volumes/myvol-nginx/_data
 1129  ll
 1130  touch file-on-vm
 1131  ll
 1132  docker container ls
 1133  docker exec -it cd9ccc01062d /bin/bash
 1134  clear
 1135  cd
 1136  docker volume ls
 1137  docker volume 
 1138  clear
 1139  docker volume create leo-volume
 1140  docker volume ls
 1141  docker run -d -v leo-volume:/home nginx
 1142  docker inspect 310cc6d656f12bbaf7314711591528551b49a0485f393fb2d27f16e941bad5e5
 1143  clear
 1144  docker run -d --mount source=leo-volume,target=/app nginx
 1145  docker inspect ee73c6d8bafd66f8d19002cf42654c5b0ad0a680f217babe1640266d525a685e
 1146  docker volume ls
 1147  clear
 1148  docker volume ls
 1149  docker inspect leo-volume
 1150  df
 1151  mdkir /data/nginx
 1152  mdkir -p /data/nginx
 1153  mkdir -p /data/nginx
 1154  cd /data
 1155  ll
 1156  cd nginx/
 1157  cd
 1158  ls -l /data/nginx/
 1159  ls -ld /data/nginx/
 1160  clear
 1161  ls -ld /data/nginx/
 1162  docker run -d -v /data/nginx/:/home nginx
 1163  docker volume ls
 1164  docker inspect a16a8ad9ba7e9592346c7704696ea106ce94d98a5a8447a88936518f9eeedc6f
 1165  ll
 1166  cd /data/nginx/
 1167  ll
 1168  touch file
 1169  ll
 1170  clear
 1171  docker container ls
 1172  docker container rm $(docker container ls -aq) -f
 1173  docker container ls -a
 1174  docker volume 
 1175  docker volume ls
 1176  docker volume rm leo-volume myvol-nginx
 1177  ll
 1178  clear
 1179  cd
 1180  docker volume create jenkins-vol
 1181  docker volume ls
 1182  docker inspect jenkins-vol
 1183  docker run --name jenkins-1 -v jenkins-vol:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins
 1184  docker container ls
 1185  docker container start jenkins-1
 1186  docker container ls

 docker run --name jenkins-2 -v jenkins-vol:/var/jenkins_home -p 8090:8080 -p 50010:50000 jenkins/jenkins

 docker run --name jenkins-3 -v jenkins-vol:/var/jenkins_home -p 8095:8080 -p 50015:50000 jenkins/jenkins

