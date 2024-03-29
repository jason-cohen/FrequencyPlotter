function [ pkToPk ] = adcMeasure( step,value )
%adcMeasure Finds the peak to peak voltage of a given sine wave
%   Detailed explanation goes here

Data = vertcat(step,value); %Create correctly formatted data array

maxData = MaxInterpolationWindow(Data); %Find the 4 maximum points to interpolate
minData = MinInterpolationWindow(Data); %Find the 4 minimum points to interpolate

[xMax,fxMax] = CubicInterpolation(maxData);
[xMin, fxMin] = CubicInterpolation(minData);

maxValue = max(fxMax); %Find the max value of the interpolated waveform
minValue = min(fxMin); %Find the min value of the interpolated waveform

pkToPk = maxValue + abs(minValue);

end

