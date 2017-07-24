function x = vexfunc(S)

% S should be a Skew matrix

[r,c] = size(S);

if (r == 3 && c == 3)

        x(1) = S(3,2);
        x(2) = S(1,3);
        x(3) = S(2,1);
else
    disp('S is not a 3x3 matrix')
end

x = x';