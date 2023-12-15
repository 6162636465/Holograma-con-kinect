# Proyecto streaming de Holograma con Kinects


## 1. Obtención de Point Clouds con LiveScan

Se usó [LiveScan3D](https://github.com/MarekKowalski/LiveScan3D) para obtener los poin clouds, para este proceso se tuvo que calibrar como indica la documentación usando un cubo con medidas de 20cm.


![image](https://github.com/6162636465/Holograma-con-kinect/assets/70419764/d90bdffd-38d2-4920-ad50-c7ca5fb8e017)


## 2. Streaming de Point Clouds a Unity 

Modificamos el [repositorio original](https://github.com/MarekKowalski/LiveScan3D-Hololens) quitando todo lo relacionado a Hololens y eliminando errores con sus dependencias. publicando uno nuevo [repositorio](https://github.com/Misash/LiveScan3D-Unity-) con estas modificaciones.


## 3. Streaming de Point Clouds de Manera Local 

Para realizar el streaming de manera local, usamos [Unity Render Streaming](https://github.com/Unity-Technologies/UnityRenderStreaming/blob/main/com.unity.renderstreaming/Documentation~/tutorial.md) donde creamos un compilado de nuestro servidor en NodeJs para enviar los Point Clouds por web-sockets.

![image](https://github.com/6162636465/Holograma-con-kinect/assets/70419764/9182b4c1-aed5-44e6-a7b0-f0bb9fc30193)

El servidor se ejecutara en el puerto 80.
![Alt text](image-1.png)

https://github.com/6162636465/Holograma-con-kinect/assets/70419764/9dd124be-6dc7-47c9-989e-023d6a013add

## 4. Streaming de Point Clouds a Internet en multiples dispositivos 

Para hacer nuestro servidor publico en el puerto 80 usamos [ngrok](https://ngrok.com/), ahora se puede acceder en cualquier dispositivo que tenga un navegador.

https://github.com/6162636465/Holograma-con-kinect/assets/70419764/c0874503-65ad-4ea7-9af0-6f4b9e16bd8e

## 5. UI para manipulacion de Point Clouds durante el Streaming

https://github.com/6162636465/Holograma-con-kinect/assets/70419764/f926bdaf-1601-4ea5-874f-8021a7ad0cdc





