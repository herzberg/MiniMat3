%NOAHs Logistic Regrestion
clc, clear, close all;

sigmf = @(x,a,c) 1./(1+exp(-a*(x-c)));

x = 0:0.1:10;
y = sigmf(x,2,4);
plot(x,y);