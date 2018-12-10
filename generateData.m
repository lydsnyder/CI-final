function [referenceData, referenceLabel, testData, expectedTestLabel] = generateData(inputs, labels)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[inputEnd, ~] = size(inputs);
[labelEnd, ~] = size(labels);
inputEnd = int16(inputEnd);
labelEnd = int16(labelEnd);
referenceData = inputs(inputEnd*.2:inputEnd, :);
referenceLabel = labels(labelEnd*.2:labelEnd, :);
testData = inputs(1:inputEnd*.2, :);
expectedTestLabel = labels(1:labelEnd*.2, :);
end

