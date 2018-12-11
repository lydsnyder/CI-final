fuzzyWineInput = 'fuzzy_wine_inputs.csv';
fuzzyWineLabel = 'fuzzy_wine_labelVectors.csv';
fuzzyCoffeeInput = 'fuzzy_coffee_inputs.csv';
fuzzyCoffeeLabel = 'fuzzy_coffee_labelVectors.csv';
wineInput = 'binary_wine_inputs.csv';
wineLabel = 'binary_wine_labelVectors.csv';
coffeeInput = 'binary_coffee_inputs.csv';
coffeeLabel = 'binary_coffee_labelVectors.csv';

for x = 1:20
    string = sprintf('Fuzzy Wine %d', x);
    disp(string);
    CIFinalProject(fuzzyWineInput, fuzzyWineLabel, randi([5,40],1), randi([1,20],1));
end

for x = 1:20
    string = sprintf('Fuzzy Coffee %d', x);
    disp(string);
    CIFinalProject(fuzzyCoffeeInput, fuzzyCoffeeLabel, randi([5,40],1), randi([1,20],1));
end

for x = 1:20
    string = sprintf('Wine %d', x);
    disp(string);
    CIFinalProject(wineInput, wineLabel, randi([5,40],1), randi([1,20],1));
end

for x = 1:20
    string = sprintf('Coffee %d', x);
    disp(string);
    CIFinalProject(coffeeInput, coffeeLabel, randi([5,40],1), randi([1,20],1));
end