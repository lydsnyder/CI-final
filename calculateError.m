function [calculatedError] = calculateError(outputLabel,expectedLabel)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

correctNum = 0;
totalNum = 0;
true = 1;
%% Not sure how we want to do this, whether we want some sort of matrix or percent error%%

for i = 1:size(outputLabel)
    actual = outputLabel(i);
    expected = expectedLabel(i);
    correct = isequal(actual,expected);
    if correct == true
        correctNum = correctNum + 1;
    end
    totalNum = totalNum + 1;
end

calculatedError = (correctNum)/(totalNum) * 100;
        
end

