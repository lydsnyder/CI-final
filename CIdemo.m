function CIdemo(inputFilename, labelFilename, numNeighbors, testData)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


%%%gather test data from user here %%%
CIFinalProject2(inputFilename, labelFilename, numNeighbors, testData);

end

function CIFinalProject2(inputFilename, labelFilename, numNeighbors, testData)

    %% Import the data %%

    coffeeInputs = csvread(inputFilename);
    coffeeLabels = csvread(labelFilename);

    %% Convert Label into Index %%
    [x,~] = size(coffeeLabels);
    convRefLabel = zeros(1,x);
    for i = 1:x
        [~, idx] = max(coffeeLabels(i,:));
        convRefLabel(i) = idx;
    end 

    %% Run K-nearest Neighbor %%

    %[outputLabel] = kNN(referenceData, referenceLabel, testData, expectedTestLabel, 15);
    Mdl = fitcknn(coffeeInputs,convRefLabel,'NumNeighbors',numNeighbors,'Distance','correlation','Standardize',1);
    [outputLabel, score, ~] = predict(Mdl,testData);
    disp(score);

    %% Determine Error %%
    
    %%% display top three %%%
    
    
end