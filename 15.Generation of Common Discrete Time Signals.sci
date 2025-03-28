clear all;  
close all;  
N = 5; 

t1 = -5:5; 
x1 = [zeros(1, N), 1, zeros(1, N)];  
subplot(2,3,1);  
plot2d(t1, x1)  
xlabel('Time');  
ylabel('Amplitude');  
title('Unit Impulse Signal');  

t2 = -5:5;  
x2 = [zeros(1, N), ones(1, N+1)];  
subplot(2,3,2);  
plot2d(t2, x2)  
xlabel('Time');  
ylabel('Amplitude');  
title('Unit Step Signal');  
  
t3 = 0:1:20;  
x3 = exp(-t3);  
subplot(2,3,3);  
plot2d(t3, x3);  
xlabel('Time');  
ylabel('Amplitude');  
title('Exponential Signal');  
 
t4 = 0:20;  
x4 = t4;  
subplot(2,3,4);  
plot2d(t4, x4);  
xlabel('Time');  
ylabel('Amplitude');  
title('Unit Ramp Signal');  
  
t5 = 0:0.04:1;  
x5 = sin(2 * %pi * t5);  
subplot(2,3,5);  
plot2d(t5, x5);  
xlabel('Time');  
ylabel('Amplitude');  
title('Sinusoidal Signal');  
  
t6 = -10:1:20; 
x6 = rand(1, length(t6));  
subplot(2,3,6);  
plot2d(t6, x6);  
xlabel('Time');  
ylabel('Amplitude');  
title('Random Signal');  
