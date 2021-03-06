%NOAHs Logistic Regrestion
clc, clear, close all;
load 'data.mat'

data = [bimodal,circles,spiral,unimodal];
datanames = {'bimodal','circles','spiral','unimodal'};

mu = 0;
s = 1;

sigmf = @(x,a,c) 1./(1+exp(-a*(x-c)));

basis = @(x) x;

basisBi = @(x) 0;     %probably find two centroids and 
basisCi = @(x) 0;
basisSp = @(x) 0;
basisUn = @(x) 0;

for ii = 1:length(data)
    
    class1 = data(ii).x(data(ii).y == 0,:);
    class2 = data(ii).x(data(ii).y == 1,:);
    figure; hold on;
    plot(basis(class1(:,1)),basis(class1(:,2)),'ob');
    plot(basis(class2(:,1)),basis(class2(:,2)),'or');
    hold off;
    title(datanames{ii});
end