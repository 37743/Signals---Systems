% % Lab 4
% % Convolution Sum
% % ------------------
% % Example 1
%
% h = [1, 0.5];
% x = [2, 4, -2];
% y = conv(x,h);
% y
%
% % Example 2
% 
% h = (1/4)*ones(1,4);
% x = ones(1,10);
% y = conv(x,h);
% ex = 0:12;
% stem(ex,y);
%
% % Exercise 1

x = ones(1,6);
h = ones(1,6);
y = conv(x,h);
yn = 0:10;
stem(yn,y);
yn2 = conv(yn,h);

% % Step Response

% h = (-0.9).^[0:49];
% u = ones(1,50);
% s = conv(u,h);
% ns = 0:49;
% stem(ns, s(1:50))

% % Exercise 2

% subplot(2,2,1)
% h = (0.25).^[0:3];
% u = ones(1,20);
% s = conv(u,h);
% ns = 0:20;
% stem(ns, s(1:21))
% subplot(2,2,2)
% h = ((-1).^[0:3])/4;
% u = ones(1,20);
% s = conv(u,h);
% ns = 0:20;
% stem(ns, s(1:21))
