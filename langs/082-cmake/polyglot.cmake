# polyglot-100 :: entry 082 :: CMake
cmake_minimum_required(VERSION 3.20)

set(POLYGLOT_ENTRIES 100 CACHE STRING "number of language exhibits")
set(POLYGLOT_TARGET_BYTES 4096 CACHE STRING "bytes per exhibit")

function(polyglot_fib out_var n)
  set(a 0)
  set(b 1)
  foreach(k RANGE 1 ${n})
    math(EXPR t "${a} + ${b}")
    set(a ${b})
    set(b ${t})
  endforeach()
  set(${out_var} ${a} PARENT_SCOPE)
endfunction()

set(POLYGLOT_SUM 0)
foreach(i RANGE 1 10)
  math(EXPR POLYGLOT_SUM "${POLYGLOT_SUM} + ${i}")
endforeach()

polyglot_fib(POLYGLOT_FIB 10)

message(STATUS "Hello from CMake!")
message(STATUS "sum(1..10) = ${POLYGLOT_SUM}")
message(STATUS "fib(10)    = ${POLYGLOT_FIB}")

if(NOT POLYGLOT_SUM EQUAL POLYGLOT_FIB)
  message(FATAL_ERROR "the 55 coincidence failed")
endif()
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in the polyglot-100 archive. Family: Infra & Conf
# CMake -- entry 082 of 100 in 
