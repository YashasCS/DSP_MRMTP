Fs=10;
Accvalues= table2array(Acceleration);
numSamples= size(Accvalues,1);
time= (0:(numSamples-1))'/Fs;

gz=[0,0,9.82];
gx=[9.82,0,0];
gy=[0,9.82,0];
Accvaluesx= (Accvalues(:,1));
Accvaluesy= (Accvalues(:,2));
Accvaluesz= (Accvalues(:,3));

alpha= 0.8;
gx= alpha*gx+(1-alpha)*Accvaluesx;
gy= alpha*gy+(1-alpha)*Accvaluesy;
gz= alpha*gz+(1-alpha)*Accvaluesz;

Accvalues1x= Accvaluesx-gx;
Accvalues1y= Accvaluesy-gy;
Accvalues1z= Accvaluesz-gz;

figure(1)
plot(Accvalues1x(:,1))
title('X-Axis')
xlabel('time(s)')
ylabel('Acceleration values')
legend({'y = Accelerometer','y = Linear acceleration'})

figure(2)
plot(Accvaluesx(:,1))
title('X-Axis')
xlabel('time(s)')
ylabel('Acceleration values')
legend({'y = Accelerometer','y = Linear acceleration'})

figure(3)
plot(Accvalues1y(:,1))
title('Y-Axis')
xlabel('time(s)')
ylabel('Acceleration values')
legend({'y = Accelerometer','y = Linear acceleration'})

figure(4)
plot(Accvaluesy(:,1))
title('Y-Axis')
xlabel('time(s)')
ylabel('Acceleration values')
legend({'y = Accelerometer','y = Linear acceleration'})











