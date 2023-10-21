first_number = input("Enter the first number: ");
second_number = input("Enter the second number: ");
operation_menu = menu("Choose any operator", "Addition", "Subtraction", "Multiplication", "Division");

switch operation_menu
    case 1
        result = first_number + second_number;
    case 2
        result = first_number - second_number;
    case 3
        result = first_number * second_number;
    case 4
        result = first_number / second_number;
    otherwise
        disp("Wrong value");
        return;  % End the program if an invalid option is selected
end

disp("Result: " + result);
