version = "0.1.0"
author = "Lorenzo Liuzzo"
description = "Compile Time Dimensional Analysis in NIM"
license = "GPL3"

srcDir = "src"
bin = @["ctda"]

requires "nim >= 2.0.0"

task hello, "This is a hello task":
  echo("Hello World!")

task test, "Runs the test suite":
  withDir "tests":
    exec "nim c -r --gc:refc base_quantity.nim"