program min_eg
    use iso_fortran_env, only: dp => real64
    implicit none
    NUMBER_PREPROCESSED(dp) :: some_number = 1.
    ! should be preprocessed to:
    ! real(dp) :: some_number = 1.
    print*, some_number
end program min_eg