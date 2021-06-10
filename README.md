# DSP_MRMTP
Contains files of projects I did related to digital signal processing.
## Overview

### Approach 1
For the sensor data, I used the mobile application of MATLAB abd used it to log the sensor data to my matlab cloud. i kept frequency of sampling at 10Hz and collected data from the accelerommeter. 
I used this data and sorted it into its components and subtracted the gravity component from the individual components of the accelereometer reading data and hence got the values for linear acceleration. For gravity isolation, i used a simple low pass filter and then subracted it from the data. 

### Approach 2
For this approach, i planned on using complementary filter for sensor fusion of magnetometer, gyroscope and accelerometer readings for more precise measurements of linear acceleration. To estimate the orientation of the device, using a complementary filter to fuse the accelerometer, magnetometer and gyroscope readings would allow the filter to react to quick orientation and prevents the orientation estimates from drifting over longer periods of time. Then the received quaternion is used tto align the accelerometer data and in the end the "g" vector is subtracted from it to get the linear acceleration.   

## Low Pass Filter 
So a low pass filter can be used to discretise the continuous data or can be used as a simple infinite impulse response filter. Here, alpha also known as the smoothing constant is used to find the dependence of gravity estimate and the measures accelerometer values. 
<img width="177" alt="Screenshot 2021-06-10 at 16 16 52" src="https://user-images.githubusercontent.com/67947994/121512506-68fe2500-ca07-11eb-9564-b481c90d87c2.png">

