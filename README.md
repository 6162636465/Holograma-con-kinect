# Proyecto streaming de Holograma con Kinects


## 1. Obtención de Point Clouds con LiveScan

se uso [LiveScan3D](https://github.com/MarekKowalski/LiveScan3D) para obtener los poin clouds, para este proceso se tuvo que calibrar como indica la documentación, se uso la estrategia de usar un cubo con medidas de 20cm.


![image](https://github.com/6162636465/Holograma-con-kinect/assets/70419764/d90bdffd-38d2-4920-ad50-c7ca5fb8e017)

Para la Calibración se usaron los siguientes marcadores 

![image](https://github.com/6162636465/Holograma-con-kinect/assets/70419764/b38cbe2a-6ccb-4532-82a8-6fc2dd6a8ebb)
![image](https://github.com/6162636465/Holograma-con-kinect/assets/70419764/620170ed-e3a9-4d7d-b5c3-dcda39853ba3)

## 2. Streaming de Point Clouds a Unity 

Modificamos el [repositorio original](https://github.com/MarekKowalski/LiveScan3D-Hololens) quitando todo lo relacionado a Hololens y eliminar errores con sus dependencias. publicando un nuevo [repositorio](https://github.com/Misash/LiveScan3D-Unity-) con estas modificaciones.


## 3. Streaming de Point Clouds de Manera Local 

Para realizar el streaming de manera local, usamos [Unity Render Streaming](https://github.com/Unity-Technologies/UnityRenderStreaming/blob/main/com.unity.renderstreaming/Documentation~/tutorial.md) donde creamos un compilado de nuestro servidor en NodeJs para enviar los Point Clouds por web-sockets.

![image](https://github.com/6162636465/Holograma-con-kinect/assets/70419764/9182b4c1-aed5-44e6-a7b0-f0bb9fc30193)

El servidor se ejecutara en el puerto 80.
![Alt text](image-1.png)

https://github.com/6162636465/Holograma-con-kinect/assets/70419764/9dd124be-6dc7-47c9-989e-023d6a013add

## 4. Streaming de Point Clouds a Internet en multiples dispositivos 





