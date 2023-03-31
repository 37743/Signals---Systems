%%%%%% Task 1

% a = 1/100 + 1/1000 + 1/270;
% b = 1/270 + 1/3300 + 1/480;
% c = 1/480 + 1/50;
% 
% x = [a                   -1/270                   0;
%     -1/270               b                        -1/480;
%      0                   -1/450                   c];
% 
% y = [10/100;
%      0;
%      0.1];
% 
% z = linsolve(x,y);
% 
% disp(z);

%%%%%% Task 2

% a = complex(1,1.5);
% b = complex(0,pi/18);
% 
% Vc = (5*exp(b))/a;
% 
% disp(Vc);

%%%%%% Task 3
x = 0;
for loop = [5 6 7 1 2 3]
    x = x+loop;
    disp(x);
end


