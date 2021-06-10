Fs=10;  %frequency sampling rate in Hz
Accvalues= table2array(Acceleration);   %used to convert table values to array
numSamples= size(Accvalues,1);
time= (0:(numSamples-1))'/Fs;       %time scale used in graph 

gz=[0,0,9.82];           %gravity components in x, y and z direction 
gx=[9.82,0,0];
gy=[0,9.82,0];
Accvaluesx= (Accvalues(:,1));        %acceleration values sorted in x, y and z directions 
Accvaluesy= (Accvalues(:,2));
Accvaluesz= (Accvalues(:,3));

alpha= 0.8;           %alpha is used as a dependence on the actual reading and calculated gravity component below
gx= alpha*gx+(1-alpha)*Accvaluesx;
gy= alpha*gy+(1-alpha)*Accvaluesy;
gz= alpha*gz+(1-alpha)*Accvaluesz;
%the new acceleration values after subtracting the gravity component or basically the linear acceleration values 
Accvalues1x= Accvaluesx-gx;
Accvalues1y= Accvaluesy-gy;
Accvalues1z= Accvaluesz-gz;

%plot for the acceleration values after gravity removed 
figure(1)
plot(Accvalues1x(:,1))
title('X-Axis')
xlabel('time(s)')
ylabel('Acceleration values')
legend({'y = Accelerometer','y = Linear acceleration'})
%before " "
figure(2)
plot(Accvaluesx(:,1))
title('X-Axis')
xlabel('time(s)')
ylabel('Acceleration values')
legend({'y = Accelerometer','y = Linear acceleration'})
%after gravity component was removed 
figure(3)
plot(Accvalues1y(:,1))
title('Y-Axis')
xlabel('time(s)')
ylabel('Acceleration values')
legend({'y = Accelerometer','y = Linear acceleration'})
%before it was removed 
figure(4)
plot(Accvaluesy(:,1))
title('Y-Axis')
xlabel('time(s)')
ylabel('Acceleration values')
legend({'y = Accelerometer','y = Linear acceleration'})











