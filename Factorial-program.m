input_number = input("Enter a number: ");
result = factorialProgram(input_number);

function [factorial_result] = factorialProgram(input_num)
fact = 1;
for i = 1:input_num
   fact = fact * i;
end    
factorial_result = fact;
end
