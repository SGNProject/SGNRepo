function x = vexfunc(S)

% S should be a Skew matrix

[r,c] = size(S);

x_ = zeros(1,3);

if (r == 3 && c == 3)

        x_(1) = S(3,2);
        x_(2) = S(1,3);
        x_(3) = S(2,1);
else
    disp('S is not a 3x3 matrix')
end

x = x_';