program highlighting_eg
    use iso_fortran_env, only: sp => real32, dp => real64
    implicit none
    #:for dtype in ['real', 'complex']
    #:for prec in ['sp', 'dp']
    ${dtype}$(${prec}$) :: a_${dtype}$_${prec}$
    #:endfor
    #:endfor

    #:for dtype in ['real', 'complex']
    type literally_anything_${dtype}$_t
    endtype literally_anything_${dtype}$_t
    #:endfor

    contains

    subroutine print(arg)
        real, intent(in) :: arg
        print*, arg
    end subroutine print
end program highlighting_eg
