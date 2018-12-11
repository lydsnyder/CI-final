function [referenceData, referenceLabel, testData, expectedTestLabel] = generateData(inputs, labels, percentage)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[inputEnd, ~] = size(inputs);
[labelEnd, ~] = size(labels);
inputEnd = int16(inputEnd);
labelEnd = int16(labelEnd);
numberOfRows = size(inputs, 1);
newRowOrder = randperm(numberOfRows);
inputs = inputs(newRowOrder, :);
labels = labels(newRowOrder, :);
referenceData = inputs(inputEnd*percentage:inputEnd, :);
referenceLabel = labels(labelEnd*percentage:labelEnd, :);
testData = inputs(1:inputEnd*percentage, :);
expectedTestLabel = labels(1:labelEnd*percentage, :);
end

