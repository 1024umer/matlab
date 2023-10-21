function sumResult = calculateSumOf100NaturalNumbers
n = 100;
totalSum = 0;
for i = 1:n
  totalSum = totalSum + i;
end   
sumResult = totalSum;
fprintf('Sum of 100 Natural Numbers is %d\n', sumResult);
end
