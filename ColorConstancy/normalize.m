
function Y = normalize(X, min, max)
% Normalize the data into the range of 0 and 1 according to the name of the
% camera 
% input:
%       X: data needed to be normalized
%       min: minimum value
%       max: maximum value
% output:
%       Y: data after normalizing

% Normalize the data X
X = double(X);
Y = (X - min) / (max - min);
Y(Y<0) = 0;
Y(Y>1) = 1;