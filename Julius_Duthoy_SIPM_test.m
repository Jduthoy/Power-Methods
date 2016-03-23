% Julius_Duthoy_SIPM_test.m

%Converging Example
A=[-4 14 0;-5 13 0;-1 0 2];
x0=[1;1;1];
mu=(x0'*A*x0)/(x0'*x0);
disp('We wish to approximate the eigenvalue closest to:')
disp(mu)
M=1000;
val=eig(A);
[V,D]=eig(A);
[h,k]=size(V);
for i=1:k
   V(1:h,i)=V(1:h,i)/norm(V(1:h,i),inf); 
end
disp('Actual Eigenvalues of A')
disp(val)
disp('Actual Corresponding Unit Eigenvectors of A')
disp(V)
[ lambda,x ] = ShiftedIPM( A,x0,mu,M )


%Non-Converging Example
A=[2 1 -1;-1 0 2;-1 -2 4];
x0=[1;1;1];
mu=2.0001;
disp('We wish to approximate the eigenvalue closest to:')
disp(mu)
M=1000;
val=eig(A);
[V,D]=eig(A);
[h,k]=size(V);
for i=1:k
   V(1:h,i)=V(1:h,i)/norm(V(1:h,i),inf); 
end
disp('Actual Eigenvalues of A')
disp(val)
disp('Actual Corresponding Unit Eigenvectors of A')
disp(V)
[ lambda,x ] = ShiftedIPM( A,x0,mu,M )