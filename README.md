# min_cmake_preproc

Just two minimal examples for some issues I am having with Fortran in vscode.

highlighting_eg.fpp has a lot of red squiggles everywhere. If I rename it to highlighting_eg.fypp then those red squiggles go away. However, everything after the type definition loses syntax highlighting. 

min_eg.F90 is builds two binaries from CMakeLists.txt, which defines `NUMBER_PREPROCESSED` to be either real or complex. I have defined it to be real for the purposes of vscode, in `.vscode/settings`. This gives an error (red squiggle) even though when you hover over it you correctly see `#define NUMBER_PREPROCESSED real`. 

More annoyingly, if this is a module instead of a program, e.g. 
```fortran
module min_eg
    use iso_fortran_env, only: dp => real64
    implicit none
    contains
    subroutine print_stuff(some_number)
        NUMBER_PREPROCESSED(dp) :: some_number ! = 1.
        ! should be preprocessed to:
        ! real(dp) :: some_number ! = 1.
        print*, some_number
    end subroutine
end module min_eg
```

then the .mod file gets deleted. In the context of a bigger project, this then messes up intellisense in other files, as it thinks the module doesn't exist. 
