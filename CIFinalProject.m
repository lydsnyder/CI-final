% CS 4770 - Computational Intelligence
% Group 3
% K-nearest Neighbor
% Fall 2018

% Lia ???
% Lydia Snyder

%% Import the data %%

filename = 'fuzzy_wine_inputs.csv';
coffeeInputs = csvread(filename);
filename = 'fuzzy_wine_labelVectors.csv';
coffeeLabels = csvread(filename);

%% Separate the data into Test and Reference Data %%
[referenceData, referenceLabel, testData, expectedTestLabel] = generateData(coffeeInputs, coffeeLabels, .3);

%% Run K-nearest Neighbor %%

[outputLabel] = kNN(referenceData, referenceLabel, testData, expectedTestLabel, 15);

%% Determine Error %%

[calculatedError] = calculateError(outputLabel, expectedTestLabel);

%% Display Output %%

resultVisualization(calculatedError);