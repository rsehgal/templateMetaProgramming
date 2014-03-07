cmake_minimum_required(VERSION 2.8)
set(OUTDIR ${PROJECT_SOURCE_DIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTDIR}/bin)

include_directories(inc)
file(GLOB testsources tests/*.cpp)

foreach( test ${testsources} )
        get_filename_component( TESTEXEC ${test} NAME_WE)
        add_executable(${TESTEXEC} ${test})
endforeach( test )
