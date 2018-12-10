% CS 4770 - Computational Intelligence
% Group 3
% K-nearest Neighbor
% Fall 2018

% Lia ???
% Lydia Snyder

%% Import the data %%

filename = 'coffee_inputs.csv';
coffeeInputs = csvread(filename);
filename = 'coffee_labelVectors.csv';
coffeeLabels = csvread(filename);

%% Separate the data into Test and Reference Data %%
[referenceData, referenceLabel, testData, expectedTestLabel] = generateData(coffeeInputs, coffeeLabels);

%% Run K-nearest Neighbor %%

[outputLabel] = kNN(referenceData, referenceLabel, testData);

%% Determine Error %%

[calculatedError] = calculateError(outputLabel, expectedTestLabel);

%% Display Output %%