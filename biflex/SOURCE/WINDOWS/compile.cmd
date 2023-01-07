@ECHO OFF


REM Copyright 2020 Dennis Earl Smiley

REM This file is part of biflex.

REM    biflex is free software: you can redistribute it and/or modify
REM    it under the terms of the GNU General Public License as published by
REM    the Free Software Foundation, either version 3 of the License, or
REM    (at your option) any later version.

REM    biflex is distributed in the hope that it will be useful,
REM    but WITHOUT ANY WARRANTY; without even the implied warranty of
REM    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM    GNU General Public License for more details.

REM    You should have received a copy of the GNU General Public License
REM    along with pnfasm.  If not, see <https://www.gnu.org/licenses/>.
 
REM CHANGELOG
REM =========
 
REM 8/5/20 Origional a - 1. The first version.


ECHO Cleaning...
DEL *.cpp 2> NUL
DEL *.exe 2> NUL

ECHO Flex...
flex -l -obiflex.cpp biflex.lpp

ECHO C++...
g++ biflex.cpp -o biflex.exe -lfl -Wno-write-strings -fpermissive -static