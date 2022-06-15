function idx = findClosestCentroids(X, centroids)

K = size(centroids, 1);

idx = zeros(size(X,1), 1);

for i = 1:size(X,1)
	min = Inf;
	for j = 1:K
		diff = sum((X(i,:) - centroids(j,:)).^2);
		if min > diff
			min = diff;
			idx(i) = j;
		end
	end
end			

end