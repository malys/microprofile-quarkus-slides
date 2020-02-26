set GRAAL_VERSION=19.3.1
rem cp -r ./demo/service-a ./demo/service-a-tmp
rem hey ^
rem docker run --rm -v "C:\Users\smalnuit\.sdkman\candidates\java\19.3.1.r8-grl\jre\lib\security\cacerts:/usr/lib/jvm/java-1.8-openjdk/jre/lib/security/cacerts"  -v "D:\:/D" -v "D:\prog\Box\Documents\maven\settingsLinux.xml:/usr/share/maven/conf/settings.xml" quay.io/quarkus/centos-quarkus-maven:%GRAAL_VERSION%-java8  mvn package -Pnative -Dnative-image.docker-build=false -DskipTests=true -f /D/Developpement/old/microprofile-quarkus-slides/demo/service-a-tmp/pom.xml
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker rm -f %%i
docker build -t demo-native .
docker build -t demo -f Dockerfile.jre .
start docker run --rm -p 9091:8080 --name native demo-native 
start docker run --rm -p 9092:8080 --name jre demo 
start docker run --rm -p 9093:8080 --name golang http-go-server
echo Java Native 47.5Mo
echo Golang Native 15Mo
pause
http :9091/data/hello
pause
http :9092/data/hello
pause
http :9093/hello/sylvain
pause
docker stats  --no-stream
pause
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker rm -f %%i
echo "Native build"
hey ^
docker run --rm -v "C:\Users\smalnuit\.sdkman\candidates\java\19.3.1.r8-grl\jre\lib\security\cacerts:/usr/lib/jvm/java-1.8-openjdk/jre/lib/security/cacerts"  -v "D:\:/D" -v "D:\prog\Box\Documents\maven\settingsLinux.xml:/usr/share/maven/conf/settings.xml" quay.io/quarkus/centos-quarkus-maven:%GRAAL_VERSION%-java8  mvn clean package -Pnative -Dnative-image.docker-build=false -DskipTests=true -f /D/Developpement/old/microprofile-quarkus-slides/demo/service-a-tmp/pom.xml


