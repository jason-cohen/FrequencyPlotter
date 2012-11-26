%adcPlot
quantStep = 5/(2^10);
x = 1:1:100;
%Turn Data into voltage values
for i = 1:100,
    x1(i) = x0(i)*quantStep;
end

Data = vertcat(x,x1);

maxData = MaxInterpolationWindow(Data); %Find the 4 maximum points to interpolate
minData = MinInterpolationWindow(Data); %Find the 4 minimum points to interpolate

[xMax, fxMax] = CubicInterpolation(maxData);
[xMin, fxMin] = CubicInterpolation(minData);

maxValue = max(fxMax); %Find the max value of the interpolated waveform
minValue = min(fxMin); %Find the min value of the interpolated waveform

pkToPk = maxValue + abs(minValue);
