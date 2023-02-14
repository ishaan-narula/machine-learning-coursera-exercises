function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% Set m
m = size(X, 1)

% Loop to find closest centroids
for i = 1:m
    for k = 1:K
        norm_squared(k, 1) = sum( (X(i, :) - centroids(k, :)).^2 ); % Get a vector of size K with distances from each centroid for example i
    end
    
    [minimum_val, minima] = min(norm_squared); % Pick the minimum distance from the above vector
    idx(i, 1) = minima; % The index/ location of the minimum distance in the vector norm_squared is the assigned centroid to example i

% =============================================================

end

