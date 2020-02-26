start https://start.microprofile.io/
curl -L -s  "https://start.microprofile.io/api/1/project?supportedServer=QUARKUS&groupId=com.lyra.microprofile&artifactId=demo&mpVersion=MP32&javaSEVersion=SE8&selectedSpecs=CONFIG&selectedSpecs=FAULT_TOLERANCE&selectedSpecs=JWT_AUTH&selectedSpecs=METRICS&selectedSpecs=HEALTH_CHECKS&selectedSpecs=OPEN_API&selectedSpecs=OPEN_TRACING&selectedSpecs=REST_CLIENT" -o d:\temp\microprofile.zip 
jar xvf d:\temp\microprofile.zip 
rm -rf d:\temp\microprofile.zip 
mvn -f ./demo/service-a package -Pquarkus && ^
mvn -f ./demo/service-b package  -Pquarkus && ^
start java -Dquarkus.http.port=8180 -jar ./demo/service-b/target/demo-runner.jar && ^
start java  -jar ./demo/service-a/target/demo-runner.jar && ^
start https://petstore.swagger.io/ && ^
start http://localhost:8080 && ^
pause && ^
echo "Stop 8080"  && ^
pause && ^
echo "Mode dev"  && ^
start mvn compile quarkus:dev -f ./demo/service-a && ^
pause && ^
echo "Mode Thorntail"  && ^
cp -r ./demo/service-a ./demo/service-a-tmp  && ^
cp pom.xml ./demo/service-a/ && ^
cp microprofile-config.properties ./demo/service-a/src/main/resources/META-INF/ && ^
start mvn -f ./demo/service-a clean package -Pthorntail && ^
pause
start java  -jar ./demo/service-a/target/thorntail-thorntail.jar && ^
pause
http :8080/data/hello && ^
pause
echo "Open pom.xml Thorntail"  && ^
start pom.xml && ^
mvn -f ./demo/service-a-tmp clean package -Pquarkus 
