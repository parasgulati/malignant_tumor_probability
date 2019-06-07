% Predict the probability that tumor is malignant 
% feature scaling 
Q=[1;0]
x=[1 1 1;1 0.76 0.8]; % 25 19 20 divide by 25 (data set)  
y=[1;0.71;0.78];% probability 70 ,50 ,55 %divide by 70
X=[1;0.8];% 20/25 (Tumor size /25) 
m=3;
L=0.004; %Learning rate alpha 
i=0;
while(i<80),
	A=Q' * x;
	C=-(A');
	B=exp(C);
	D=B+ones(3,1);
	E=((D-y)' * x')';
	Q=Q-E*L;
	i++;
end
Q;
Z=-(Q' * X);
Y=1/(1+e^Z);
P=-log(Y)*70;
disp("The probability that your tumor is Malignant is");
disp(P);