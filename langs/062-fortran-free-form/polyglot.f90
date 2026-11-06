! polyglot-100 :: entry 062 :: Fortran (free form, 2008)
program polyglot
    implicit none
    integer :: i, total, k
    integer(kind=8) :: a, b, t

    total = 0
    do i = 1, 10
        total = total + i
    end do

    a = 0
    b = 1
    do k = 1, 10
        t = a + b
        a = b
        b = t
    end do

    print '(A)', 'Hello from Fortran!'
    print '(A,I0)', 'sum(1..10) = ', total
    print '(A,I0)', 'fib(10)    = ', a

    if (int(a) /= total) then
        error stop 'the 55 coincidence failed'
    end if
end program polyglot
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100 in the polyglot-100 archive. Family: 
! Fortran Free Form -- entry 062 of 100
