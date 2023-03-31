% % % Lab 4
% % % Step Response
% % % -------------------
% % % Exercise 1:
% % <--o--o--o--o--o--o-->
% %   -1  0  1  2  3  4
% h1 = [2, 1, 2, 0, 0, 0];
% % <--o--o--o--o--o--o-->
% %   -1  0  1  2  3  4
% x1 = [0, 3, 2,-4, 1,-3];
% s = conv(x1,h1);
% ax = -2:8;
% subplot(2,3,1)
% stem(h1)
% subplot(2,3,2)
% stem(x1)
% subplot(2,3,3)
% stem(ax, s)
% %
% % % Exercise 2:
% % <--o--o--o--o--o--o--o--o--o--o-->
% %   -2 -1  0  1  2  3  4  5  6  7
% h2 = [3,-0+ 2, 0, 2, 3, 0, 0, 0, 0, 0];
% % <--o--o--o--o--o--o--o--o--o--o-->
% %   -2 -1  0  1  2  3  4  5  6  7
% x2 = [0, 0, 0, 3,-1,0,-2, 4, 0, 5];
% s = conv(x2,h2);
% ax = -4:14;
% subplot(2,3,4)
% stem(h2)
% subplot(2,3,5)
% stem(x2)
% subplot(2,3,6)
% stem(ax, s)

% % Exercise 3
p =[ones(1 ,9) zeros(1 ,6)]; % Create one pulse and zeros
p =[p p p p p]; % stack 5 of them together
p =0.25* p ; % adjust its amplitude to be 0.25
subplot (3 ,1 ,1)
stem (0:74 , p ) % look at the sequence of pulses
xlabel ("Sample Index , n")
ylabel ("Pulsed Signal p[n]")
x = p + cos (( pi /2)*(0:74)); % add in an interfering sinusoid
subplot (3 ,1 ,2)
stem (0:74 , x )
xlabel ( "Sample Index , n ")
ylabel ( "x [n ] Input = pulse + sinusoid ")
y = conv (x , ones (1 ,4)); % filter out sinusoid with DT Conv .
subplot (3 ,1 ,3); stem (0:77 , y)
xlabel ( "Sample Index , n ")
ylabel ( "y [n ] = Output ")
