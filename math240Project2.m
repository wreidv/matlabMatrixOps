% William Reid
% MATH 240 Fall 2019 Project 2
% Section 0122

%% Problem 1
format short
% Problem 1(a)
A = [cos(pi/7) -sin(pi/7); sin(pi/7) cos(pi/7)]
v = [2; -7]
A*v

% Problem 1(b)
B = [cos(pi/13) -sin(pi/13); sin(pi/13) cos(pi/13)]
A*B
B*A
% A*B = B*A which can be seen in the output

% Problem 1(c)
% The rotation operations are not affected by order when they are
% mulitplied together.

% Problem 1(d)
C = A*B
t = acos(C(1,1))
format rat
t / pi
% t = (20/91) * pi

% Problem 1(e)
format short
R = [cos(-pi/7) -sin(-pi/7); sin(-pi/7) cos(-pi/7)]
inv(A)
% The inverse of A of R(-pi/7) are the same

% Problem 1(f)
L = [1 0; 0 -1]
X = A * L * R

% Problem 1(g)
X * L
L * X
% L(pi/7) * L(0) does not equal L(0) * L(pi/7)

% Problem 1(h)
C = X * L
t = acos(C(1,1))
format rat
t / pi
% The angle is (2/7) * pi

%% Problem 2
format rat
A = [8 1 7; 9 8 7; 9 6 7]
% Problem 2(a)
M = [A eye(3)]
N = rref(M)
X = N(:,4:6)

% Problem 2(b)
inv(A)

%% Problem 3
format rat
A = [4 24 6 11; 0 5 4 0; 0 0 -1 13; 0 0 0 -5]
B = [2 -1 3 1; 2 0 1 -1; 2 3 3 3; 1 -1 -1 -1]
det(A)
det(B)
% Problem 3(a)
% A is in echelon form so the determinant is equal to the product of the
% diagonals in A

% Problem 3(b)
C = A*B
det(C)

% Problem 3(c)
% det(A*B) = det(A) * det(B)

%% Problem 4
format rat
A = [-1 2 7 -3; 1 -2 -3 0; 0 0 -4 -1; 3 -7 -1 8]

% Problem 4(a)
det(A)

% Problem 4(b)
% det(B) = -det(A) = 16
% det(C) = (1/4)det(A) = -4
% det(D) = det(A) = -16

% Problem 4(c)
B = A
C = A
D = A
X = B(1,:)
B(1,:) = B(4,:)
B(4,:) = X
C(4,:) = (1/4) * C(4,:)
D(3,:) = D(3,:) + (-5) * D(2,:)

% Problem 4(d)
det(B)
det(C)
det(D)
% They are same values as in part 4(b)

%% Problem 5

% Problem 5(a)
syms a b c d
A = [a b; c d]

% Problem 5(b)
inv(A)

% Problem 5(c)
syms e f g h i
B = [a b c; d e f; g h i]
inv(B)

% Problem 5(d)
inv(B) * det(B)
