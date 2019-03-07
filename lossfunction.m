function e = lossfunction(ytrue,yestimated)
m = length(ytrue);
e = (1/(2*m))*sum((ytrue-yestimated).^2);
end
