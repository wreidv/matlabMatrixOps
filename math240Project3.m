% William Reid
% MATH 240 Fall 2019 Project 3
% Section 0122

%% Problem 1
format rat
A = [-6 8 -9 4; 4 -3 5 7; -9 7 -8 -8; 4 -3 3 3]
rref(A)
% Since the first 3 columns have a pivot, B is a basis for H
% Since the system has a solution, x is in H
% B-coordinate vector of x would be [3; 5; 2]

%% Problem 2
format short
syms x
% 2(a)
A = [1 cos(0) cos(0).^2 cos(0).^3; 1 cos(0.1) cos(0.1).^2 cos(0.1).^3; 
    1 cos(0.2) cos(0.2).^2 cos(0.2).^3; 1 cos(0.3) cos(0.3).^2 cos(0.3).^3]

% 2(b)
rref(A)
det(A)

% 2(c)
% rref(A) is the identity matrix and if rref(A) is the identity matrix
% then A is invertible

% 2(d)
A = [1 cos(0) cos(0).^2 cos(0).^3; 1 cos(0.2) cos(0.2).^2 cos(0.2).^3; 
    1 cos(0.5) cos(0.5).^2 cos(0.5).^3; 1 cos(1) cos(1).^2 cos(1).^3]
det(A)
% Since A is invertible we know that the determinant can't be zero

% 2(e)
% Using the trig identity sin^2 + cos^2 = 1 we know that 
% 1 - sin^2 - cos^2 = 0. Therefore, the set is linearly dependent
%% Problem 3
format rat
% part (a)
A = [1 0 -1 0 1 0 -1 0; 0 1 0 -3 0 5 0 0; 0 0 2 0 -8 0 18 0; 0 0 0 4 0 -20 0 0;
    0 0 0 0 8 0 -48 0; 0 0 0 0 16 0 0 0; 0 0 0 0 0 0 32 0]
% A is the augmented matrix of the B-coordinate vectors of the vectors
% in C = 0. Since Ax = 0 has a solution, C is a linearly independent set
% in H

% part (b)
% C is linearly independent and it spans H so C is a basis for H
%% Problem 4
format rat
A = [-2 1 1 8 1; 1 -8 4 11 -2; 1 -3 1 1 -1; -2 -4 4 18 0]
% 4(a)
rref(A)
% A basis of NulA would be [4/5 5 2/5; 3/5 2 -1/5; 1 0 0; 0 1 0]
% A basis of ColA would be [-2 1; 1 -8; 1 -3; -2 -4]

% 4(b)
% dim(NulA) = 3
% dim(ColA) = 2
%% Problem 5
format rat
% 5(a)
v1 = [2; 1; 3; 1]
v2 = [1; 5; 8; -3]
v3 = [-1; 1; 1; 2]
v4 = [0; 3; 5; 5]
v5 = [3; 3; 7; 4]

% 5(b)
A = [v1 v2 v3 v4 v5]
% Basis for Span{v1, v2, v3, v4, v5} = [2 1 -1; 1 5 1; 3 8 1; 1 -3 2]

% 5(c)
% W = {2 + t - t^2, 1 + 5t + t^2, 3 + 8t + t^2, 1 - 3t + 2t^2}

% 5(d)
% W = P3 because there are 3 pivot columns in A 
%% Problem 6
format rat
% 6(a)
V1 = [-12; -2; 1; 3; 2; 2]
V2 = [0; -1; 2; 5; -2; 4]
V3 = [-4; 1; 0; -3; 2; 0]
V4 = [-3; 2; 2; -2; 1; 4]

% 6(b)
A = [V1 V2 V3 V4]
% There are only 3 pivot columns which is less than the amount of vectors
% thus they are linearly dependent

% 6(c)
x = [v1 v2 v3] \ v4
% A4 can be written as 1 * A1 + 1/14763210078288504 * A2 + 2 * A3