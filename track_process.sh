#! /bin/bash

## store the usernames in .aux.tmp temporary file
ps aux | awk 'NR>2{arr[$1]+=$6}END{for(i in arr) print i}' > .aux.tmp 

## print each user, then calcultate each CPU-usage with top
# this will only print the 9 firsts users. if you expect more than 
# 9 users, add lines following the pattern (by replacing "9p" 
# by "10p" for the 10st user, for example).

# print user 1 :
echo `sed -n '1p' .aux.tmp` 
top -b -n 1 -u `sed -n '1p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }' 
echo ""

# print user 2 :
echo `sed -n '2p' .aux.tmp`  
top -b -n 1 -u `sed -n '2p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 3 :
echo `sed -n '3p' .aux.tmp`  
top -b -n 1 -u `sed -n '3p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 4 :
echo `sed -n '4p' .aux.tmp`  
top -b -n 1 -u `sed -n '4p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 5 :
echo `sed -n '5p' .aux.tmp`  
top -b -n 1 -u `sed -n '5p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 6 :
echo `sed -n '6p' .aux.tmp`  
top -b -n 1 -u `sed -n '6p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 7 :
echo `sed -n '7p' .aux.tmp`  
top -b -n 1 -u `sed -n '7p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 8 :
echo `sed -n '8p' .aux.tmp`  
top -b -n 1 -u `sed -n '8p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 9 :
echo `sed -n '9p' .aux.tmp`  
top -b -n 1 -u `sed -n '9p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""
# print user 9 :
echo `sed -n '10p' .aux.tmp`  
top -b -n 1 -u `sed -n '10p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 9 :
echo `sed -n '11p' .aux.tmp`  
top -b -n 1 -u `sed -n '11p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 9 :
echo `sed -n '12p' .aux.tmp`  
top -b -n 1 -u `sed -n '12p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""

# print user 9 :
echo `sed -n '13p' .aux.tmp`  
top -b -n 1 -u `sed -n '13p' .aux.tmp`  | awk 'NR>7 { sum += $9; } END { print sum; }'
echo ""