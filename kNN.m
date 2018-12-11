function [outputLabel] = kNN(referenceData, referenceLabel, testData, expectedLabel, k)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

outputLabel = expectedLabel;
topDistance = 100*(ones(k));
[~, expectedLabelRow] = size(expectedLabel); 
topDistanceLabel= zeros(k,expectedLabelRow);
%% plot referencedata, label with referenceLabel %%

%% one by one, find the K-nearest neighbors for each "point" (row) in testData %%
for i = 1:size(testData)
    %find K-nearest neighbors%
    difference = 0;
    for j = 1:size(referenceData)
        difference = testData(i,:) - referenceData(i,:);
        % for some reason the distance is always the same? %
        distance = sqrt(difference * difference');
        for m = 1:k
            if distance < topDistance(m)
                topDistance(m) = distance;
                topDistanceLabel(m) = referenceLabel(j);
                break;
            end
        end
    end
    % determine the category based on the highest number of same category in
    % K-nearest neighbors
    sumLabel = sum(topDistanceLabel,1);
    [value, index] = max(sumLabel);
    % append our determined category to our output matrix %
    categoryRow = zeros(expectedLabelRow,1); %temporary label row%
    categoryRow(index) = 1;
    outputLabel(i,:) = categoryRow;
end

end

