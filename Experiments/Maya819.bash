#!/bin/bash

# Results (post-formatted):
#
# Moon:     1 year =   12 synodic of 29.530589 +/- 10.8751217 days
# Moon:     2 year =   25 synodic of 29.530589 +/-  7.7803456 days
# Moon:     3 year =   37 synodic of 29.530589 +/-  3.0947761 days
# Moon:     8 year =   99 synodic of 29.530589 +/-  1.5907934 days
# Moon:    11 year =  136 synodic of 29.530589 +/-  1.5039827 days
# Moon:    19 year =  235 synodic of 29.530589 +/-  0.0868107 days
# Moon:   334 year = 4131 synodic of 29.530589 +/-  0.0282008 days
# ==
# Mercury:  1 year =    3 synodic of 115.88    +/- 17.6021897 days (819 / 117 = 7)
# Mercury:  6 year =   19 synodic of 115.88    +/- 10.2668618 days
# Mercury:  7 year =   22 synodic of 115.88    +/-  7.3353279 days
# Mercury: 13 year =   41 synodic of 115.88    +/-  2.9315339 days
# Mercury: 33 year =  104 synodic of 115.88    +/-  1.4722601 days
# Mercury: 46 year =  145 synodic of 115.88    +/-  1.4592738 days
# Mercury: 79 year =  249 synodic of 115.88    +/-  0.0129863 days
# ==
# Venus:    8 year =    5 synodic of 583.9     +/-  2.4375176 days
# Venus:  235 year =  147 synodic of 583.9     +/-  1.3854205 days
# Venus:  243 year =  152 synodic of 583.9     +/-  1.0520971 days
# Venus:  478 year =  299 synodic of 583.9     +/-  0.3333234 days
# ==
# Mars:    15 year =    7 synodic of 779.9     +/- 19.3328455 days
# Mars:    32 year =   15 synodic of 779.9     +/- 10.7499296 days
# Mars:    47 year =   22 synodic of 779.9     +/-  8.5829159 days
# Mars:    79 year =   37 synodic of 779.9     +/-  2.1670137 days
# Mars:   284 year =  133 synodic of 779.9     +/-  2.0818748 days
# Mars:   363 year =  170 synodic of 779.9     +/-  0.0851389 days
# ==
# Jupiter: 12 year =   11 synodic of 398.88    +/-  4.7737236 days
# Jupiter: 83 year =   76 synodic of 398.88    +/-  0.2217451 days
# ==
# Saturn:   1 year =    1 synodic of 378.09    +/- 12.8478103 days
# Saturn:  29 year =   28 synodic of 378.09    +/-  5.5035013 days
# Saturn:  59 year =   57 synodic of 378.09    +/-  1.8408077 days
# Saturn: 147 year =  142 synodic of 378.09    +/-  1.8218859 days
# Saturn: 206 year =  199 synodic of 378.09    +/-  0.0189218 days


calculate_closest_values() {
  #D=819
  #D=29.530588861
  #D=27.212220815
  #D=27.554549886
  D=365.2421897
  J=$1
  planet=$2
  closest_diff=25

  for ((A=1; A<=999; A++)); do
    #echo a1 A $A B $B D $D J $J diff $diff
    B=$(echo "9 k $A $D * $J / 0.5 + p" | dc | sed -e "s:^\..*:0:" -e "s:\..*::")
    #B=$(echo "9 k $A $D * $J / 0.5 + p" | dc)
    #B=$(echo "$B" | sed -e "s:^\..*:0:" -e "s:\..*::")
    diff=$(echo "scale=0; ( $A * $D ) - ( $B * $J )" | bc)

    NEGATIVE=$(echo "$diff" | sed "s:^\(.\).*:\1:")
    if [ "-" = "$NEGATIVE" ]; then diff=$(echo "$diff" | sed "s:^-::"); fi

    NEGATIVE=$(echo "$closest_diff $diff - p" | dc | sed "s:^\(.\).*:\1:")
    if [ "-" != "$NEGATIVE" ]; then
      closest_diff=$diff
      closest_A=$A
      closest_B=$B
      echo "${planet}: $closest_A x $D days = $closest_B synodic of $J +/- $diff days"
    fi
  done
}


calculate_closest_values 29.530589 "Moon"
echo ==
calculate_closest_values 115.88 "Mercury"
echo ==
calculate_closest_values 583.9 "Venus"
echo ==
calculate_closest_values 779.9 "Mars"
echo ==
calculate_closest_values 398.88 "Jupiter"
echo ==
calculate_closest_values 378.09 "Saturn"
exit
echo ==
calculate_closest_values 1446.998854189 "forty-nine-months"
echo ==
calculate_closest_values 6585.321316003 "Saros"
echo ==
calculate_closest_values 10571.950812238 "Inex"
echo ==
calculate_closest_values 133448.731062859 "Square Year"

