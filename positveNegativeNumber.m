input_number = input("Enter a number: ");
checkPositiveNegative(input_number);

function checkPositiveNegative(num)
    if num < 0 
        fprintf("Number is negative: %d\n", num);
    elseif num > 0
        fprintf("Number is positive: %d\n", num);
    else
        fprintf("Number is zero: %d\n", num);    
    end
end
