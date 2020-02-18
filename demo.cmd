curl -L -s  "https://start.microprofile.io/api/1/project?supportedServer=QUARKUS&groupId=com.lyra.microprofile&artifactId=demo&mpVersion=MP32&javaSEVersion=SE8&selectedSpecs=CONFIG&selectedSpecs=FAULT_TOLERANCE&selectedSpecs=JWT_AUTH&selectedSpecs=METRICS&selectedSpecs=HEALTH_CHECKS&selectedSpecs=OPEN_API&selectedSpecs=OPEN_TRACING&selectedSpecs=REST_CLIENT" -o d:\temp\microprofile.zip 
jar xvf d:\temp\microprofile.zip 
rm -rf d:\temp\microprofile.zip 
mvn -f ./demo/service-a package && ^
mvn -f ./demo/service-b package && ^
start java -Dquarkus.http.port=8180 -jar ./demo/service-b/target/demo-runner.jar && ^
start java  -jar ./demo/service-a/target/demo-runner.jar && ^
start http://localhost:8080 && ^
pause && ^
echo "Stop 8080"  && ^
pause && ^
echo "Mode dev"  && ^
mvn compile quarkus:dev -f ./demo/service-a
