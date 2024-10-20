# Proyecto de Pruebas Apis/Karate
## Requisitos Previos
Crear y configurar el proyecto Maven.
## Instalación de dependencias
En la terminal ejecutar el comando 'mvn test' para verificar que no falte ninguna dependencia.
Revisar las dependencias de Karate configuradas en el archivo pom.xml.
## Instalación de Configuración 
Revisar los archivos de cada prueba en el formato .feature en la ruta: src/test/java.
	add_pet.feature
	requestID_pet.feature
	update_pet.feature
	requestStatus_pet.feature
Revisar también en la misma ruta la clase KararteRunner.java. Aquí se establecen los archivos anteriores en el orden de ejecución.
## Ejecucion de pruebas
Clic en el botón de "play" en la parte superior derecho de la pantalla. (Aquí ejecuta todo lo que tiene el archivo KarateRunner.java).
Revisar que el status de cada ejecución sea: 200.
