x_coordinate_1 = input('Enter x-coordinate of the first point: ');
y_coordinate_1 = input('Enter y-coordinate of the first point: ');

x_coordinate_2 = input('Enter x-coordinate of the second point: ');
y_coordinate_2 = input('Enter y-coordinate of the second point: ');

midPoint(x_coordinate_1, x_coordinate_2, y_coordinate_1, y_coordinate_2);

function midPoint(x1, x2, y1, y2)
    midpoint_x = (x1 + x2) / 2;
    midpoint_y = (y1 + y2) / 2;
    
    fprintf('Midpoint coordinates: (%.2f, %.2f)', midpoint_x, midpoint_y);
end
