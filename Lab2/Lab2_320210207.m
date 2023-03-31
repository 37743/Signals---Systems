% % Lab 2
% % Introduction
% % Counting number of positive and negative integers in a Matrix.
% % ------------------
% p = 0;
% n = 0;
% mat = [[1 2 3];
%        [-4 -5 -6];
%        [7 8 9]];
% 
% for y = 1:3
%     for x = 1:3
%         if mat(x,y) < 0
%             n = n + 1;
%         else
%             p = p + 1;
%         end
%     end
% end
% disp('Method 1: Number of positive integers:')
% disp(p)
% disp('Method 1: Number of negative integers:')
% disp(n)

% % Another method for the previous problem.
% 
% p = 0;
% n = 0;
% mat = [[1 2 3];
%        [-4 -5 -6];
%        [7 8 9]];
% 
% for x = 1:9
%     if mat(x) < 0
%         n = n + 1;
%     else
%         p = p + 1;
%     end
% end
% disp('Method 2: Number of positive integers:')
% disp(p)
% disp('Method 2: Number of negative integers:')
% disp(n)
% 
% Task 1
% Ticket Problem
% ------------------
% 
% Let A be the Adult Ticket price
% Let B be the Children Ticket price
% 
% figure;
% Eq = [[2 1];  % 2A + B = 32
%       [1 3]]; % A + 3B = 36
% 
% Res = [32; 36]; 
% 
% Ans = linsolve(Eq,Res);
% fplot(@(x) 32-2*x, [5 15]);   % B = 32 - 2A
% title("Adults/Children Ticket Problem")
% xlabel("Adults' Ticket Price");
% ylabel("Children's Ticket Price");
% grid on;
% hold on;
% fplot(@(y) (36-y)/3, [5 15]); % B = (32 - A)/3
% hold off;
% 
% disp("Solution for the Adults' and Childrens' ticket price respectively:")
% disp(Ans)
% 
% Task 2
% Displaying Continous/Discrete Sine Waves.
% ------------------
figure;
t = 0:pi/20:2*pi;
f = sin(2*t);
subplot(2,2,1)
plot(t,f);
title("Continuous Sine Wave");
subplot(2,2,2)
stem(t,f)
title("Discrete Sine Wave");
subplot(2,2,[3 4])
plot(t,f)
title("Discrete+Continuous Sine Waves");
hold on;
stem(t,f)
hold off;
legend(["Continuous Sine Wave" "Discrete Sine Wave"],"Location","eastoutside")
