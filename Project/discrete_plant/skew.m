function [Skew] = skew(w)


Skew = zeros(3,3);

Skew(1,2) = -w(3,1);
Skew(2,1) = w(3,1);
Skew(1,3) = w(2,1);
Skew(3,1) = -w(2,1);
Skew(2,3) = -w(1,1);
Skew(3,2) = w(1,1);


end