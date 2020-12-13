% William Reid
% MATH 240 Fall 2019 Project 4
% Section 0122

%% Problem 1
format rat
% 1(a)
P = [1 1 2 4; 0 2 -1 -1; 0 0 3 0; 0 0 0 1]
Q = [1 2 0 0; 3 1 3 3; 0 0 -1 0; 1 0 4 0]

% 1(b)
R = inv(P) * Q

% 1(c)
A = [1 2 0 0 0; 3 1 3 3 0; 0 0 -1 0 0; 1 0 4 0 1]
rref(A)
C = [1; -1/2; 0; -5/6]

% 1(d)
R * [0; 3; 2; 1]
Y = [1 1 2 4 0; 0 2 -1 -1 3; 0 0 3 0 2; 0 0 0 1 1]
rref(Y)

% 1(e)
% p(t) = t^3 + (2/3) * t^2 + (7/3) * t - (23/3)
%% Problem 2
format short
A = [163 34 -8; -522 -108 26; 990 210 -47];
% 2(a)
[P,D] = eig(A)

% 2(b)
P*D*P^(-1)

% 2(c)
% Eigenvalue: 1
% [0.1333; -0.4; 1]
% Eigenvalue: 4
% [0.2; -0.7; 1]
% Eigenvalue: 3
% [0.3333; -1.3333; 1]

%% Problem 3
format short
A = [-23 -32 -10; 11 15 5; 18 26 7];
% 3(a)
A^2
A^3
A^4
A^5
A^6
A^7
A^8
% Multiples of 4 result in the identitiy matrix

% 3(b)
[P,D] = eig(A)

% 3(c)
% It repeats every 4 powers

% 3(d)
% A^20000001 = A = [-23 -32 -10; 11 15 5; 18 26 7]

%% Problem 4
A = [3 1; 0 3];
% 4(a)
[P,D] = eig(A)

% 4(b)
P*D*P^(-1)

% 4(c)
null(A - 3*eye(2))
% [-1; 0]

% 4(d)
% No, there is no basis for R^2 consisiting of the eigenvectors of A since
% the eigenspace for the eigenvalue 3 is 1-dimensional, A is not
% diagonalizable.

%% Problem 5
% 5(a)
v1 = [9; 14; -11; 3; 0]
v2 = [-14; -4; -10; 9; -5]
v3 = [1; -10; 4; -7; 5]
v4 = [6; 8; -1; -12; -8]

% 5(b)
A = [v1 v2 v3 v4]
rank(A)
% Since the rank is 4 it has 4 pivots and that?s equivalent to number of 
% columns so it?s linearly dependent

% 5(c)
w1 = v1
w2 = v2 - (dot(w1,v2) / dot(w1,w1)) * w1

% 5(d)
w3 = v3 - (dot(w1,v3) / dot(w1,w1)) * w1 - (dot(w2,v3) / dot(w2,w2)) * w2
w4 = v4 - (dot(w1,v4)/ dot(w1,w1)) * w1 - (dot(w2,v4) / dot(w2,w2)) * w2 - (dot(w3,v4) / dot(w3,w3)) * w3

% 5(e)
u1 = w1 / norm(w1)
u2 = w2 / norm(w2)
u3 = w3 / norm(w3)
u4 = w4 / norm(w4)

% 5(f)
Q = [u1 u2 u3 u4]
rref(Q)
% pivot in each column

% 5(g)
R = Q' * A
Q * R

% 5(h)
[Q1, R1] = qr(A,0)

%% Problem 6
% 6(a)
A = [5 9 -2 2 -1; -5 -12 -4 3 -2; 0 2 4 -2 2; -4 -3 10 -4 5; -3 -7 -2 -2 -1; 4 2 -12 7 -6]
rank(A)

% 6(b)
rref(A)
% [5 9 2; -5 -12 3; 0 2 -2; -4 -3 -4; -3 -7 -2; 4 2 7]

% 6(c)
B = [5 9 2; -5 -12 3; 0 2 -2; -4 -3 -4; -3 -7 -2; 4 2 7]
[Q, R] = qr(B,0)
% The orthonormal basis are any of the columns of Q

% 6(d)
E = Q * Q'
E * [1; 1; 1; 1; 1; 1]

% 6(e)
D = null(B')

% 6(f)
[Q,R] = qr(D,0)
% The orthonormal basis are any of the columns of Q

% 6(g)
F = D * (transpose(D) * D)^(-1) * transpose(D)
% E + F is the identity matrix
