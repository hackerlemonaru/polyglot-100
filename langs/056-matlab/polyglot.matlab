% polyglot-100 :: entry 056 :: MATLAB
total = sum(1:10);

fprintf('Hello from MATLAB!\n');
fprintf('sum(1..10) = %d\n', total);
fprintf('fib(10)    = %d\n', polyglotFib(10));
assert(total == polyglotFib(10), 'the 55 coincidence failed');

sequence = zeros(1, 11);
sequence(1) = 0;
sequence(2) = 1;
for k = 3:11
    sequence(k) = sequence(k - 1) + sequence(k - 2);
end
disp(sequence);

function value = polyglotFib(n)
    a = 0;
    b = 1;
    for k = 1:n
        t = a + b;
        a = b;
        b = t;
    end
    value = a;
end
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archive. Family: Data & Scie
% MATLAB -- entry 056 of 100 in the polyglot-100 archi
