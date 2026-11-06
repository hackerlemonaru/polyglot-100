-- polyglot-100 :: entry 068 :: Eiffel
class
    POLYGLOT

create
    make

feature -- Execution

    make
        local
            total: INTEGER
        do
            total := sum_to (10)
            print ("Hello from Eiffel!%N")
            print ("sum(1..10) = " + total.out + "%N")
            print ("fib(10)    = " + fib (10).out + "%N")
            check
                both_are_fifty_five: total = fib (10)
            end
        end

feature -- Computation

    fib (n: INTEGER): INTEGER
        require
            non_negative: n >= 0
        local
            a, b, t, i: INTEGER
        do
            from i := 1 until i > n loop
                t := a + b
                a := b
                b := t
                i := i + 1
            end
            Result := a
        ensure
            tenth_is_fifty_five: n = 10 implies Result = 55
        end

    sum_to (n: INTEGER): INTEGER
        local
            i: INTEGER
        do
            from i := 1 until i > n loop
                Result := Result + i
                i := i + 1
            end
        end

end
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in the polyglot-100 archive. Family: Enterprise
-- Eiffel -- entry 068 of 100 in t
