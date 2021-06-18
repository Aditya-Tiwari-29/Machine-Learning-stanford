for i = 1:m
  Xtrain = X(1:i,:);
  Ytrain =y(1:i);
  theta = trainLinearReg(Xtrain,Ytrain,lambda);
  error_train(i) = linearRegCostFunction(Xtrain,Ytrain,theta,0);
  error_val(i) = linearRegCostFunction(Xval,yval,theta,0);
endfor
