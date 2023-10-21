function [xans] = QuadraticLagrange(X_values, Y_values, x_val)
x = sym('x');
ans = (((x - X_values(2)) * (x - X_values(3)) / ((X_values(1) - X_values(2)) * (X_values(1) - X_values(3))) * Y_values(1)) + ...
      (((x - X_values(1)) * (x - X_values(3)) / ((X_values(2) - X_values(1)) * (X_values(2) - X_values(3))) * Y_values(2)) + ...
      (((x - X_values(1)) * (x - X_values(2)) / ((X_values(3) - X_values(1)) * (X_values(3) - X_values(2))) * Y_values(3));
disp(ans);
xans = (((x_val - X_values(2)) * (x_val - X_values(3)) / ((X_values(1) - X_values(2)) * (X_values(1) - X_values(3))) * Y_values(1)) + ...
       (((x_val - X_values(1)) * (x_val - X_values(3)) / ((X_values(2) - X_values(1)) * (X_values(2) - X_values(3))) * Y_values(2)) + ...
       (((x_val - X_values(1)) * (x_val - X_values(2)) / ((X_values(3) - X_values(1)) * (X_values(3) - X_values(2))) * Y_values(3));
end
