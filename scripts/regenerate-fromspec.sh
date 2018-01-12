if [ ! -f "swagger-codegen-cli-2.2.2.jar" ]
then
  wget https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.2.2/swagger-codegen-cli-2.2.2.jar -O swagger-codegen-cli-2.2.2.jar --referer https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/
fi


java -jar swagger-codegen-cli-2.2.2.jar generate -i https://esi.tech.ccp.is/latest/swagger.json?datasource=tranquility -l typescript-node
