function [ phimat ] = getPhiMatWithGausBasis( x,numgaus )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
mu = linspace(0,1,numgaus);
s = 0.05;

%gausbasis = exp(-(x-muj)^2/(2*s^2));
phimat = zeros(length(x),numgaus);

for ii = 1:numgaus
   phimat(:,ii) = exp(-(x-mu(ii)).^2./(2.*s)); 
end



end

