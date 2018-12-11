% CS 4770 - Computational Intelligence
% Group 3
% K-nearest Neighbor
% Fall 2018

% Lia Howe
% Lydia Snyder

function CIFinalProject(inputFilename, labelFilename, percentage, numNeighbors)

    %% Import the data %%

    coffeeInputs = csvread(inputFilename);
    coffeeLabels = csvread(labelFilename);

    %% Separate the data into Test and Reference Data %%
    [referenceData, referenceLabel, testData, expectedTestLabel] = generateData(coffeeInputs, coffeeLabels, percentage/100);

    %% Convert Label into Index %%
    [x,~] = size(referenceLabel);
    convRefLabel = zeros(1,x);
    for i = 1:x
        [~, idx] = max(referenceLabel(i,:));
        convRefLabel(i) = idx;
    end 

    [x,~] = size(expectedTestLabel);
    convTestLabel = zeros(1,x);
    for i = 1:x
        [~, idx] = max(expectedTestLabel(i,:));
        convTestLabel(i) = idx;
    end 

    %% Run K-nearest Neighbor %%

    %[outputLabel] = kNN(referenceData, referenceLabel, testData, expectedTestLabel, 15);
    Mdl = fitcknn(referenceData,convRefLabel,'NumNeighbors',numNeighbors,'Standardize',1);
    [outputLabel] = predict(Mdl,testData);

    %% Determine Error %%

    [calculatedError] = calculateError(outputLabel, convTestLabel);

    %% Display Output %%

    resultVisualization(calculatedError);
end