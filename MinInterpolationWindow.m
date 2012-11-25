function [ output ] = MinInterpolationWindow( Data )
%MinInterpolationWindow Determines the minimum 4 points for use in a cubic
%interpolation
%   
%Data is of the form
%|x1|x2|x3...
%|y1|y2|y3...
%***************************
%Output is of the form
%|x1|x2|x3...
%|y1|y2|y3...

%Four points are used to make up the interpolation

Ymin = min(Data(2,:)); %Find the min value
Xmin = find(Data(2,:) == Ymin); %Ymin's corresponding X-value

output(1,1) = Xmin;
output(2,1) = Ymin; %Assign Ymin

%Check that a point exists to the left
if(Xmin -1 < 1)
    output(1,2) = Xmin +1; 
    output(2,2) = Data(2,(Xmin +1)); 

    output(1,3) = Xmin +2; 
    output(2,3) = Data(2, (Xmin +2));

    output(1,4) = Xmin +3; 
    output(2,4) = Data(2, (Xmin +3));
    
elseif(Xmin +1 > length(Data(1,:)))
    output(1,2) = Xmin -3; 
    output(2,2) = Data(2,(Xmin -3)); 

    output(1,3) = Xmin -2; 
    output(2,3) = Data(2, (Xmin -2));

    output(1,4) = Xmin -1; 
    output(2,4) = Data(2, (Xmin -1));

elseif(Xmin +2 > length(Data(1,:)))
    output(1,2) = Xmin -2; 
    output(2,2) = Data(2,(Xmin -2)); 

    output(1,3) = Xmin -1; 
    output(2,3) = Data(2, (Xmin -1));

    output(1,4) = Xmin +1; 
    output(2,4) = Data(2, (Xmin +1));
else
    output(1,2) = Xmin -1; 
    output(2,2) = Data(2,(Xmin -1)); 

    output(1,3) = Xmin +1; 
    output(2,3) = Data(2, (Xmin +1));

    output(1,4) = Xmin +2;
    output(2,4) = Data(2, (Xmin +2));
end

end

