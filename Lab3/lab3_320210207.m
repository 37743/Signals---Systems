% % Lab 3
% % Task 1
% figure;
% % Sine Wave:
% % Sin(theta), where 0 <= theta <=  2pi
% s = 1/50; % Sampling
% freq = 2;
% period = (1/freq)*2;
% t = 0:s:period;
% fn = sin(2*pi*freq*t);
% subplot(3,3,1)
% stem(t,fn)
% 
% % Cosine Wave:
% % Cos(theta), where 0 <= theta <= 2pi
% subplot(3,3,2)
% freq = 3;
% period = (1/freq)*6;
% t = 0:s:period;
% fn = cos(2*pi*freq*t);
% stem(t,fn)
% 
% % Exponential function:
% % Exp()
% subplot(3,3,3)
% s = 1/100;
% t = -5:s:1;
% fn = exp(2*t);
% stem(t,fn)
% 
% % Step function:
% subplot(3,3,4)
% s = 1/100;
% t = -100:s:100;
% ustep = t>=0;
% stem(t,ustep)
% 
% % Impulse function:
% subplot(3,3,5);
% t = -1:s:1;
% imp = t==0;
% stem(t,imp)
% 
% % Rectangle function:
% subplot(3,3,6);
% t = -1:s:1;
% freq = 2;
% sqr = square(2*pi*freq*t);
% stem(t,sqr)
% 
% % Triangle function: NEEDS FIXING
% subplot(3,3,7)
% t = -2:1/10:2;
% freq = 1;
% T = 1;
% cond = abs(t)<=T;
% tri = (1-abs(t)/T).*cond;
% stem(t,tri)
% 
% Task 2
% figure;
% freq = 2;
% s = 1/100;
% t = 0:s:2;
% func = sin(2*pi*t*freq);
% for k = 3:2:201
%     func = func + (1/k)*sin(2*pi*freq*t*k);
% end
% plot(t,func)
