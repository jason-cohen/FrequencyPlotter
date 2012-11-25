function [fx] = CubicInterpolation(Data)
%CubicInterpolation Summary of this function goes here
%   Detailed explanation goes here
%Data is of the form
%|x1|x2|x3...
%|y1|y2|y3...

minX = min(Data(1,:)); %lower range
maxX = max(Data(1,:)); %upper range
subdivision = 1000;
range  = (maxX - minX)/subdivision; %Determine minimum range condition
x = minX:range:maxX;

x1 = Data(1,1);
x2 = Data(1,2);
x3 = Data(1,3);
x4 = Data(1,4);

y1 = Data(2,1);
y2 = Data(2,2);
y3 = Data(2,3);
y4 = Data(2,4);

alpha1 = ( (x - x2).*(x - x3).*(x - x4) ) / ((x1-x2).*(x1-x3).*(x1-x4));
alpha2 = ( (x - x1).*(x - x3).*(x - x4) ) / ((x2-x1).*(x2-x3).*(x2-x4));
alpha3 = ( (x - x1).*(x - x2).*(x - x4) ) / ((x3-x1).*(x3-x2).*(x3-x4));
alpha4 = ( (x - x1).*(x - x2).*(x - x3) ) / ((x4-x1).*(x4-x2).*(x4-x3));

fx = y4.*alpha4 + y3.*alpha3 + y2.*alpha2 + y1.*alpha1; %Find the interpolated waveform


% figure(1)
% plot(x,fx);
% hold on;
% scatter(Data(1,:),Data(2,:));

end

