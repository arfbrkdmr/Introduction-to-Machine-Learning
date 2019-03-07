function [train_x,train_y, test_x, test_y] = splitData(data,p)
    [m,n] = size(data);
    index = randperm(m);
    train_x= data(index(1:round(p*m)),1:n-1);
    train_y= data(index(1:round(p*m)),n);
    test_x = data(index(round(p*m)+1:end),1:n-1);
    test_y = data(index(round(p*m)+1:end),n);
end
