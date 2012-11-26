function [ output ] = MaxInterpolationWindow( Data )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%Data is of the form
%|x1|x2|x3...
%|y1|y2|y3...

Ymax = max(Data(2,:)); %Find the max value
Xmax = find(Data(2,:) == Ymax); %Ymax's corresponding X-value

%Check if Xmax had multiple find results and if so pick the first one
[n,m] = size(Xmax);
if(m>1)
    Xmax = Xmax(1); 
end 

output(1,1) = Xmax;
output(2,1) = Ymax; %Assign Ymax

%Check that a point exists to the left
if(Xmax -1 < 1)
    output(1,2) = Xmax +1; 
    output(2,2) = Data(2,(Xmax +1)); 

    output(1,3) = Xmax +2; 
    output(2,3) = Data(2, (Xmax +2));

    output(1,4) = Xmax +3; 
    output(2,4) = Data(2, (Xmax +3));
    
elseif(Xmax +1 > length(Data(1,:)))
    output(1,2) = Xmax -3; 
    output(2,2) = Data(2,(Xmax -3)); 

    output(1,3) = Xmax -2; 
    output(2,3) = Data(2, (Xmax -2));

    output(1,4) = Xmax -1; 
    output(2,4) = Data(2, (Xmax -1));

elseif(Xmax +2 > length(Data(1,:)))
    output(1,2) = Xmax -2; 
    output(2,2) = Data(2,(Xmax -2)); 

    output(1,3) = Xmax -1; 
    output(2,3) = Data(2, (Xmax -1));

    output(1,4) = Xmax +1; 
    output(2,4) = Data(2, (Xmax +1));
else
    output(1,2) = Xmax -1; 
    output(2,2) = Data(2,(Xmax -1)); 

    output(1,3) = Xmax +1; 
    output(2,3) = Data(2, (Xmax +1));

    output(1,4) = Xmax +2;
    output(2,4) = Data(2, (Xmax +2));
end

end


