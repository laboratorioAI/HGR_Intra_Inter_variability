
# A New Methodology For Pattern Recognition Applied To Hand Gestures Recognition Using EMG. Analysis Of Intrapersonal And Interpersonal Variability
Systems used for pattern recognition are usually divided into 4 stages: signal acquisition, preprocessing, feature extraction and classification. However, the use of algorithms in these last 3 stages is not justified and researchers use them without criteria other than the result achieved at the end of the process. In this paper we propose a new methodology and show its particular application to the recognition of five hand gestures based on 8 channels of Electromyography using the Myo armband device placed on the forearm. If n features are extracted, they will form clusters of points in n-dimensional space and now the selection of the best preprocessing algorithms and the best features are based on maximizing the distance among clusters. On the other hand, both intrapersonal and interpersonal variability are treated to facilitate the understanding of the phenomenon. As a demonstration, it was applied to 12 people and the recognition accuracy was 97%.


## INSTALACIÓN DE SOFTWARE Y DE LIBRERIAS UTILIZADAS
Los programas y librerías para la comunicación entre Myo y la PC se encuentran inmersos en el directorio INSTALADOR donde se encuentra este manual.
Los programas y librerías utilizados se muestran en la figura A4

![image](https://user-images.githubusercontent.com/33075700/161790544-8126f168-3631-4f0c-9980-39ea797a033e.png)

También puede encontrar myo_connect_installer y las librerías MyoMex-Master y myo-sdk-win-0.9.0 en el siguiente enlace:
https://drive.google.com/drive/folders/1JagNHPRv5RXJXARTTMfHfGMFvgqSHmr6?usp=sharing
Además de estos programas y librerías, utilizamos el software Matlab en cualquier versión superior a la 2015a y los toolbox: MinGW-w64, Deep Learning y Signal Processing. Para versiones anteriores de Matlab las librerías para la comunicación entre el Myo y Matlab no están disponibles.

### INSTALACIÓN DE myo_connect_installer
1. Ubicamos el instalador myo_connect_installer y procedemos a dar doble click
2. Proporcionamos permisos de administrador, permitiendo que la aplicación haga cambios en el equipo.
3. En la ventana Myo Connect Setup desplegada, damos click en I Agree (Estoy de acuerdo) para proceder con la instalación.
4. Damos click en el botón install y automáticamente procederá con la instalación.
5. Una vez instalado damos click en finish para terminar la instalación.
6. Procedemos a conectar el cable de alimentación al Myo Armband y a la PC tal como nos indica en la ventana de instalación.
7. Damos click en el botón continue y saltamos la verificación de internet hasta que nos muestra que debemos desconectar el brazalete, tal como se muestra en la figura A6 y procedemos a continuar.
8. A continuación nos indica que debemos realizar el gesto WAVE OUT para sincronizar el dispositivo como se muestra en la figura A7.
9. Una vez finalizada la sincronización, procedemos a cerrar la ventana y verificar el estado del led de la marca Thalmic que se encuentre en constante color azul sin parpadear (Necesario cada vez que se utiliza el programa de reconocimiento de gestos de la mano).

### INSTALACIÓN DE LA LIBRERÍA myo-sdk-win-0.9.0
1. Colocamos los dos directorios myo-sdk-win-0.9.0 y MyoMex-master en el Disco local (C:) tal como se muestra en la figura A8.
Figura
![image](https://user-images.githubusercontent.com/33075700/161790919-bc27b7a3-8589-4d7f-9971-72faf34cda57.png)
2. Luego nos dirigimos a las variables de entorno de windows como se muestra a continuación.
2.1. Ir a sistema, por medio del buscador de Windows, como se muestra en la figura A9.
2.2. En sistema y se procede a elegir configuración avanzada de sistema
2.3. En propiedades del sistema y se procede a elegir variables de entorno
2.4. En variables de entorno se procede a seleccionar path e ingresar a editar
2.5. En editar se va a crear un nuevo path con la ubicación donde se encuentra la carpeta myo-sdk-win-0.9.0/bin/ y se procede a aceptar todas las ventanas siguientes para finalizar la instalación de la librería, figura . Importante (Reiniciar la PC obligatoriamente después de añadir la carpeta)
![image](https://user-images.githubusercontent.com/33075700/161791467-82428b4f-8b7f-4c66-9e3d-495457fd478a.png)

### INSTALACIÓN DE LA LIBRERÍA MyoMex-master
1. Ingresamos a Matlab
2. Dentro de Matlab ubicamos set_path como se muestra en la figura A14, en donde agregaremos el directorio MyoMex-master
3. En la ventana Set Path procedemos al dar click en el botón Add with subfolders.
4. Ubicamos en el disco C la carpeta MyoMex-master y procedemos a seleccionar la carpeta
5. Guardamos la configuración y procedemos a cerrar

### INSTALACIÓN DE MingW-w64, Deep Learning Toolbox y Signal
La instalación de los toolbox mencionados se realizó mediante Add/Ons, disponible dentro de la barra de herramientas Home de Matlab, para ello seguimos los siguientes pasos:
1. Ingresar a Add/Ons para la instalación del toolbox de Matlab
 ![image](https://user-images.githubusercontent.com/33075700/161791745-a20ae71b-7009-4c14-b3b8-7432895e7a4c.png)
 
 2. Buscamos e instalamos MinGW-w64
 3. Buscamos e instalamos Deep Learning Toolbox
 4. Buscamos e instalamos Signal Processing Toolbo
 
 ## EJECUCIÓN DE SCRIPTS DE INSTALACIÓN
 1. Abrimos el script install_myo_mex.m ubicado el directorio MyoMex-master y procedemos a ejecutar
 ![image](https://user-images.githubusercontent.com/33075700/161792097-51de5688-8ba1-441b-8341-6b21ff5c1979.png)

2. Abrimos el script MyoMex_Quickstart.m ubicado en directorio MyoMex-master y procedemos a ejecutar. Al finalizar la ejecución se despliega información acerca de las señales EMG y el IMU, lo cual procedemos a cerrar, figura A20.

![image](https://user-images.githubusercontent.com/33075700/161792138-53782795-9c54-4477-b060-411a1280b263.png)

## EJECUCIÓN DEL PROGRAMA DE RECONOMIENTO DE GESTOS DE LA MANO
1. Nos ubicamos en el script PROGRAMA_PRINCIPAL_PARA_RECONOCIMIENTO_DE_GESTOS_DE_LA
_MANO creado como parte de este proyecto de titulación. Debemos verificar que este script se encuentre con todas sus funciones en el mismo directorio y procedemos a ejecutar.
3. Al ejecutar el script principal de reconocimiento de gestos de la mano, verificamos la información proporcionada en el comand windows sobre los gestos que es capaz de reconocer, algunas recomendaciones y la configuración inicial requerida al inicio de cada sesión. También nos muestra los dos métodos de clasificación utilizados para este proyecto, siendo necesario utilizar uno de ellos para realizar las pruebas correspondientes, figura A21.
![image](https://user-images.githubusercontent.com/33075700/161792360-fc0b024e-e8c9-42ad-941c-e50a064c407c.png)
4. Si elige el primer método de clasificación DISTANCIA EUCLIDIANA (CENTROIDE), se procede a realizar una configuración rápida, que consiste en proporcionar 3 muestras de cada gesto.
5. Al iniciar el programa con el primer método de clasificación se despliega una ventana de figura de Matlab, la cual servirá de guía para la configuración inicial guiada, en donde el programa solicitará realizar los gestos tal como se muestra en las siguientes figuras. Cabe mencionar que el usuario debe iniciar el programa con la mano en reposo (sin realizar ningún gesto) y se debe realizar los gestos en el momento que el programa lo solicite. Una vez que se realice el gesto indicado por el sistema, se mostrará la palabra listo para indicar que se ha grabado correctamente el gesto y que el usuario debe volver al reposo.
![image](https://user-images.githubusercontent.com/33075700/161792458-55a58b3d-55ba-4678-bb80-543260556cf8.png)

![image](https://user-images.githubusercontent.com/33075700/161792505-44a00680-a0c7-408e-a875-8417328e7230.png)
![image](https://user-images.githubusercontent.com/33075700/161792539-cbb4b78d-cdfb-4206-b460-b558ba9a6ade.png)
![image](https://user-images.githubusercontent.com/33075700/161792568-514e747b-df1a-4a69-8be0-2128fa5c5b94.png)
![image](https://user-images.githubusercontent.com/33075700/161792616-ac857b6e-f91d-4b66-bc2c-265c1b64adb0.png)

6. Al finalizar la configuración inicial, en la ventana de la figura 1, se indicará un mensaje con la palabra empecemos, para poder utilizar el sistema de reconocimiento de gestos de la mano. Al realizar cualquier gesto con mano el sistema debe ser capaz de reconocerlo correctamente. También se mostrará en la figura 1 el gesto realizado y el command windows de Matlab el tiempo de procesamiento requerido desde la adquisición de señales hasta la determinación del gesto, además del nombre del gesto realizado.
7. Si el reconocimiento de gestos de la mano presenta inconvenientes al reconocer correctamente los gestos, se recomienda finalizar la sesión realizando el gesto WAVE_OUT por aproximadamente 5 segundos de manera sostenida y volver a empezar la configuración rápida.
Si utilizamos el método 2 de clasificación con redes neuronales artificiales, los procedimientos son exactamente los mismos.



