cmake_minimum_required(VERSION 3.12)

project(min_eg Fortran)

add_executable(tar min_eg.F90)
add_executable(ktar min_eg.F90)
target_compile_definitions(tar PUBLIC NUMBER_PREPROCESSED=real)
target_compile_definitions(ktar PUBLIC NUMBER_PREPROCESSED=complex)
