% William Reid
% MATH 240 Fall 2019 Project 1

%% Problem 1
format rat
% Problem 1(a)
A = [1 2 1 10; 5 4 6 44; 1 14 -10 -32]

% Problem 1(b)
A(3,:) = A(3,:) + (-1) * A(1,:)
A(2,:) = A(2,:) + (-5) * A(1,:)
A(3,:) = A(3,:) + 2 * A(2,:)

%Problem 1(c)
A(2,:) = (-1/6) * A(2,:)
A(1,:) = A(1,:) + (-2) * A(2,:)
A(3,:) = (-1/9) * A(3,:)
A(2,:) = A(2,:) + 1/6 * A(3,:)
A(1,:) = A(1,:) + (-4/3) * A(3,:)

%Problem 1(d)
% x1 = 0
% x2 = 2
% x3 = 6

%% Problem 2
format rat
%Problem 2(a)
B = [1 -2 0 5 1 7; -5 10 -3 -31 -2 -26; 1 -2 -21 -39 28 74; -2 4 -9 -28 7 13]

%Problem 2(b)
B(2,:) = B(2,:) + 5 * B(1,:)
B(3,:) = B(3,:) + (-1) * B(1,:)
B(4,:) = B(4,:) + 2 * B(1,:)
B(3,:) = B(3,:) + (-7) * B(2,:)
B(4,:) = B(4,:) + (-3) * B(2,:)

%Problem 2(c)
B(2,:) = B(2,:) + (-3) * B(3,:)
B(1,:) = B(1,:) + (5/2) * B(3,:)
B(2,:) = (-1/3) * B(2,:)
B(3,:) = (-1/2) * B(3,:)

%Problem 2(d)
B = [1 -2 0 5 1 7; -5 10 -3 -31 -2 -26; 1 -2 -21 -39 28 74; -2 4 -9 -28 7 13]
rref(B)

%Problem 2(e)
% x1 * [1 0 0 0] + x2 * [-2 0 0 0] + x3 * [0 1 0 0] + x4 * [0 0 1 0] +
% x5 * [16 5 -3 0] = [17 1 -2 0]

%% Problem 3
format short
A = [1.3 0.4 6.7 4.6; 9.9 5.6 1.9 9.8; 1.7 8.8 3.7 1.6]

%Problem 3(a)
rref(A)

%Problem 3(b)
format rat
rref(A)

%Problem 3(c)
% x1 = 4088/4001
% x2 = -29/128
% x3 = 136/271

%% Problem 4 
format short

%Problem 4(a)
A = [270 51 70 400; 10 5.4 15 30; 2 5.2 0 10]
rref(A)

% 1 serving of Mac
% 1.5 servings of Broccoli
% 0.8 serving of Chicken

%Problem 4(b)
A = [260 51 70 400; 9 5.4 15 30; 5 5.2 0 10]
rref(A)

% 1.1 servings of Shells
% 0.9 servings of Broccoli
% 1 serving of Chicken

%% Problem 5

%Problem 5(a)
format short
A = [17.5 26.0 41.5; 16.0 21.0 34.0; 11.9 13.8 22.7]
rref(A)

%Problem 5(b)
% Yes the vector is in the span of the other two because the row reduced
% echelon matrix is consisten meaning the vector at question is a linear
% combination of the other two vectors.

%Problem 5(c)
A = [17.5 26.0 41.5 0; 16.0 21.0 34.0 0; 11.9 13.8 22.7 0]
rref(A)
% They are lineraly dependent because we have a free variable in the
% reduced row echelon form.

%% Problem 6

%Problem 6(a)
syms a b

%Problem 6(b)
A = [ 1 -6 a; 9 4 b]
rref(A)

%Problem 6(c)
%w1 = (2*a)/29 + (3*b)/29
%w2 = b/58 - (9*a)/58

%% Problem 7

%Problem 7(a)
A = [-2 4 3 0 4 0; 5 -2 2 6 3 0; -3 1 5 -2 1 0; 5 -4 -1 4 -1 0]
rref(A)

%Problem 7(b)
% There is a free variable in the rref form causing it to be lineraly
% dependent.

%Problem 7(c)
% x1 = 15/17
% x2 = -8/17
% x3 = -2/17
% x4 = -23/17
% x5 = 1

%Problem 7(d)
% Theroem 8 in 1.7 shows us that there are more vectors than there are
% entries in each vector making the set linearly dependent.

%Problem 7(e)
syms a b c d
A = [-2 4 3 0 4 a; 5 -2 2 6 3 b; -3 1 5 -2 1 c; 5 -4 -1 4 -1 d]
rref(A)

% Yes it does span R^4 because there is a unique solution for the set.
