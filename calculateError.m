function [calculatedError] = calculateError(outputLabel,expectedLabel)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

%% Not sure how we want to do this, whether we want some sort of matrix or percent error%%

for i = 1:sizeof(outputLabel)
    actual = outputLabel(i,:);
    expected = expectedLabel(i,:);
    correct = actual == expected;
    if correct == true
        correctNum = correctNum + 1;
    end
end

calculatedError = (sizeof(inputLabel) - correctNum)/sizeof(inputLabel);
        
end

