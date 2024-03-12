% Omar Aguilar
format long

[root,numits] = newton(@myNDfun,@myNDfunprime,[0;0;0],10^-6);
value = myNDfun(root);

% Other root
[root2,numits2] = newton(@myNDfun,@myNDfunprime,[1,1,8],10^-6);
value = myNDfun(root2);