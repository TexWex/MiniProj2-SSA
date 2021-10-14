function nr  = stochCovModel()
% Stoichiometry matrix, nr, for the SEIRD model:

nr = [ -1 1 0 0 0 0 0; %r1
       0 -1 1 0 0 0 0; %r2
       0 0 -1 1 0 0 0; %r3
       0 0 -1 0 1 0 0; %r4
       -1 0 0 0 0 1 0; %r5
       0 0 0 0 0 -1 1; %r6
       0 0 0 0 0 -1 0; %r7
       0 0 0 0 0 0 -1; %r8
       0 0 0 -1 0 0 0;]; %r9
end