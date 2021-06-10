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
is the formula used to calculate the alpha and this should be high which is more than 0.8 or 0.9 in this case since we have a large sampling period.  
<img width="581" alt="Screenshot 2021-06-10 at 16 21 16" src="https://user-images.githubusercontent.com/67947994/121513025-022d3b80-ca08-11eb-8f12-aa24db52cffa.png">

## Method 
We need to first find teh direction gravity is operating and then divide it into its components. The magnitude will always be teh same taht is 9.81 m/s^2 but the direction keeps on changing and hence we stored the magnitude or value of gravity and stored it in a vector. the most difficult part is finding gravity because there is only one accelerometer in the phone and measure the gravity and other forces at the same time. So we need to filter out the slow changing and fast changing forces, teh mag of gravity doesnt change at all since it is a const force. however other forces will change overtime. so we use to a low pass filter to isolate the gravity from the data. 

## Plots 
<img width="1135" alt="Screenshot 2021-06-10 at 14 20 17" src="https://user-images.githubusercontent.com/67947994/121514227-67cdf780-ca09-11eb-9c79-ec5ae0dbc35d.png">


