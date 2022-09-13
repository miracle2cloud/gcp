docker network
    ls
    create
    connect
    disconnect
    rm
    prune

network
    bridge
    host
    overlay
    none
    macvlan

 
 1209  docker container ls
 1210  docker images
 1211  docker port 7e
 1212  docker info
 1213  docker network
 1214  docker network ls
 1215  clear
 1216  docker container ls
 1217  docker inspect 5d3a36a0aac1
 1218  docker container ls
 1219  clear
 1220  docker inspect  jenkins-1
 1221  docker container ls
 1222  clear
 1223  docker run -d nginx
 1224  docker inspect ae
 1225  docker network ls
 1226  docker inspect 5d3a36a0aac1
 1227  docker inspect kind_mclaren
 1228  docker run -d --network bridge  nginx
 1229  docker network ls
 1230  docker inspect 5d3a36a0aac1
 1231  docker container ls
 1232  docker container rm 7668d61443c9 aedd895dd6c0 7eb4507411ef -f
 1233  docker container ls
 1234  docker network ls
 1235  docker inspect 5d3a36a0aac1
 1236  clear
 1237  docker run -dt ubuntu 
 1238  docker container ls
 1239  docker inspect 88c65588da31
 1240  docker run -dt --network bridge ubuntu 
 1241  docker inspect 22
 1242  docker network ls
 1243  docker inspect 5d3a36a0aac1
 1244  clear
 1245  docker conatiner ls
 1246  docker container ls
 1247  docker exec -it 22b41952598f bash
 1248  docker container ls
 1249  docker exec -it 88 bash
 1250  ping 172.17.0.3
 1251  docker exec -it 88 bash
 1252  docker container ls
 1253  docker network ls
 1254  docker network create mybridge
 1255  docker network ls
 1256  docker network create -d bridge mybridge1
 1257  docker network ls
 1258  docker network rm mybridge1
 1259  docker network ls
 1260  docker inspect mybridge
 1261  docker run -dt --network mybridge ubuntu 
 1262  docker container ls
 1263  docker inspect mybridge
 1264  docker exec -it 88 bash
 1265  clear
 1266  docker network ls
 1267  docker network create -d host myhost
 1268  docker run -d --network host nginx
 1269  hostname -i
 1270  docker inspect host
 1271  docker inspect naughty_kalam
 1272  docker ps
 1273  docker inspect 88
 1274  docker inspect naughty_kalam
 1275  docker exec -it naughty_kalam bash
 1276  docker run -d --network host nginx
 1277  docker container ls
 1278  docker run --network host nginx
 1279  clear
 1280  docker nginx
 1281  docker conatiner ls
 1282  docker container ls
 1283  docker stop c6c0a8a488f4
 1284  clear
 1285  docker network 
 1286  docker container ls
 1287  docker inspect mybridge
 1288  docker network connect
 1289  docker network connect bridge 43ea
 1290  docker inspect bridge
 1291  docker exec -it 43ea bash
 1292  docker exec -it 88 bash
 1293  docker network
 1294  history 