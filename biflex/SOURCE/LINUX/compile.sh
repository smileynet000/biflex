#    This file is part of biflex.

#    biflex is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    biflex is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with pnfasm.  If not, see <https://www.gnu.org/licenses/>.
 
# CHANGELOG
# =========
 
# 1/8/23 Origional a - 1. The first version.


echo Cleaning...
rm *.cpp
rm biflex

echo Flex...
flex -l -obiflex.cpp biflex.lpp

echo C++...
g++ biflex.cpp -o biflex -lfl -Wno-write-strings -fpermissive -static
