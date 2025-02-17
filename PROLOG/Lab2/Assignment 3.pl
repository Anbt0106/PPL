love("Tuan",b). 
love(b, c). 
love(X, Y):-love(X,Z), love (Z,Y). 