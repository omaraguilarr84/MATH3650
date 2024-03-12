% Omar Aguilar

[root,numits] = newton(@myNDfun,@myNDfunprime,[0;0;1],10^-6)

value = myNDfun(root)