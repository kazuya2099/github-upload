<?xml version='1.0' encoding='utf-8'?>
<!-- web application context file for tomcat. -->
<!-- this file should be place at CATALINA_HOME/conf/Catalina/localhost/terasoluna-tourreservation-web.xml -->
<Context>

  <Resource name="jdbc/tourreservationDataSource" type="javax.sql.DataSource"
    driverClassName="oracle.jdbc.driver.OracleDriver" username="TOURRESERVE" password="password"
    url="jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=DESKTOP-ITP21F1)(PORT=1521))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=TOURRESERVE)))" maxIdle="16"
    minIdle="0" maxWaitMillis="60000" maxTotal="96" />

  <Resources className="org.apache.catalina.webresources.StandardRoot">
    <PreResources className="org.apache.catalina.webresources.DirResourceSet"
      base="${VM_TOMCAT_ENV_JAR_DIR!'/opt/tomcat/tomcat/webapps-env-jars/terasoluna-tourreservation-env-tomcat9-postgresql'}/"
      internalPath="/" webAppMount="/WEB-INF/lib" />
  </Resources>
  <JarScanner scanAllDirectories="true" />

</Context>

