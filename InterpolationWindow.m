function [ output ] = MaxInterpolationWindow( Data )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%Data is of the form
%|x1|x2|x3...
%|y1|y2|y3...

n = 4; %The number of points to make up the interpolation

Ymax = max(Data(2,:)); %Find the max value
Xmax = find(Data(2,:) == Ymax); %Ymax's corresponding X-value

output(1,1) = Xmax;
output(2,1) = Ymax; %Assign Ymax

output(1,2) = Xmax -1; %Take a value one to the left
output(2,2) = Data(2,(Xmax -1)); 

output(1,3) = Xmax +1; %Take a value one to the right
output(2,3) = Data(2, (Xmax +1));

output(1,4) = Xmax +2; % Take a value two to the right
output(2,4) = Data(2, (Xmax +2));
end

