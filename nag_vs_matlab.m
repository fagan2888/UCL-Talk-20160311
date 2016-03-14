clc, clear, close all
x = [0;0.2;0.4;0.6;0.75;0.9;1];
y = [1;1.22140275816017;1.49182469764127;1.822118800390509;2.117000016612675;2.45960311115695; 2.718281828459045];
figure
fig1 = plot(x,y,'o');
%% MATLAB
tic
t=0:0.00005:1;
y1 = interp1(x,y,t,'pchip');
toc
figure
fig2 = plot(x,y,'o',t,y1);
%% NAG
tic
[d,ifail] = e01be(x,y);
[y2, ifail] = e01bf(x,y,d,t);
toc
fig2 = plot(x,y,'o',t,y2);