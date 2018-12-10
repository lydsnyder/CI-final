function [outputLabel] = kNN(referenceData, referenceLabel, testData)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%% plot referencedata, label with referenceLabel %%

%% one by one, find the K-nearest neighbors for each "point" (row) in testData %%
for i = 1:size(testData)
    %find K-nearest neighbors%
    
    % determine the category based on the highest number of same category in
    % K-nearest neighbors
    
    % append our determined category to our output matrix %
    categoryRow = [0 0 0 0 0 0 0 0 0 0 0]; %temporary label row%
    outputLabel = [outputLabel;categoryRow];
end

end

