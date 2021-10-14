function nr  = stochCovModel()
% Stoichiometry matrix, nr, for the SEIRD model:

nr = [ -1 1 0 0 0 0; %r1
       0 -1 1 0 0 0; %r2
       0 1 0 0 0 -1; %r3
       0 0 -1 1 0 0; %r4
       0 0 -1 0 1 0; %r5
       0 1 0 -1 0 0; %r6
       -1 0 0 0 0 1; %r7
       0 0 0 -1 0 1]; %r8
end