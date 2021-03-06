function attack_possible = CS4300_P_no_attack(i,a,j,b)
% CS4300_P_no_attack - P function from Mackworth paper 1977
% On input:
% i (int): start node index
% a (int): start node domain value
% j (int): end node index
% b (int): end node domain value
% On output:
% attack_possible (boolean): Says whether the attack is possible
% Call:
% CS4300_P_no_attack(i,a,j,b);
% Author:
% Rajul Ramchandani and Conan Zhang
% UU
% Fall 2016
%
attack_possible = 0;

% Check col
if a == b
    attack_possible = 1;
    return;
end

% Check right diagonal
right_index_difference = i-a;
right_domain_difference = j-b;

if right_index_difference == right_domain_difference
    attack_possible = 1;
end

% Check left diagonal
left_index_difference = abs(i-j);
left_domain_difference = abs(a-b);

if left_index_difference == left_domain_difference
    attack_possible = 1;
end