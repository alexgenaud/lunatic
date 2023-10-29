# Sumerian Calendar

Modern interpretation of lunisolar Sumerian calendar.
Features precise arithmetic cycles,
considering practical human perception (hourly tolerances more than a minute and less than a day),
adjustments within a human lifetime, perpetuation over millenia,
modern conventions (such as SI seconds, 24 hour days, seven day weeks, and the Gregorian calendar),
grounded in elegant ancient knowledge (such as the Octaeteris, Meton, Saros cycle,
Kidinnu's anomalistic-synodic cycles, Pythagorean harmonics).

## License (MPL v2, Exhibit A)

This "Source Code Form" is subject to the terms of the Mozilla Public License, v. 2.0.
"Source Code Form" and "Software" include artifacts in any form and medium, digital and material.

## Influences

From the Sumerians to NASA, a few astronomic intellects stand tallest through history:
Pythagoras of Samos (~500 BCE), Chaldean Kidinnu of Babylon (~300 BCE),
Isaac Newton (1643-27) and JS Bach (1685-50).

Innumerable calendars, ancient and modern, have influenced my thinking over the past three years or more.
Notably, the Sumerian observational and Babylonian lunisolar calendars, post-Christian Scandinavian rune sticks,
the calendars of Enoch and the ISO week calendar, Julian day numbers, the Solar Hijri calendar, and the Hillel Hebrew and Gregorian calendars with reservation.

Additionally, I hope to be able to harmonize (accidental but appropriate pun) the calendar with
Pythagorean cycles, meantone, temperament, 53 tet, or an approximately 365.25 day "octave",
12 month chromatic scale, or some such vague ideas that must either be made concrete or die.

## Requirements

MUST
 - be perpetual
 - arithmetic
 - astronomically accurate
   - 24 hour tolerance from true tropical year
   - 24 hour tolerance from true lunar phase
 - easy to construct on paper from definition
 - consider SI day, tropical year, synodic lunar phases
 - Consider quarters (tropical seasons, lunar phases, daily quarters)
 - Incorporate prominent astronomic influences
   - perceived cycles (like lunar phases)
   - anomalistic cycles (perigee, apogee, perihelion, aphelion)

SHOULD
 - Seasonally accurate
   - within seven days of each tropical season (based on lunar phase)
 - Easily convertible to/from Gregorian calendar
 - Approximately convertible to (rectified) Hebrew calendar
 - Approximately convertible to (predictive of) Islamic calendar
 - Similar to Babylonian and Hillel II Hebrew calendars
 - Discover zero point(s) where all cycles align
 - Consider Babylonian System A
 - Consistent holographic metaphor
   - four quarter: day, lunar phase, season of year
   - recalibrate on the quarter xor whole
   - season begins on lunar phase; lunar phase begins on quarter day.
   - xor season begins on whole lunation; lunar phase on whole day.
   - midnight is to dark new moon is to winter (hemisphere?)
 - Distinguish frequent from generational adjustments
   - Frequent human perceivable adjustments
     - once every year to ten years per cycle
     - to keep accurate to the day
     - easily predictable
     - a leap day every four years
     - leap 13th lunar months every two to three years
     - possibly include leap seven day week
     - Octaeteris, every eight years
     - approximately realigns tropical, synodic, anomalistic cycles
     - Octaeteris versus Metonic synodic-tropical cycle
       - 99 synodic months in 8 years
       - 235 in 19 years
       - consistently deviate from each other after 152 years
       - both have too many leap months.
   - Infrequent generational adjustments
     - intended for adjustments over twenty, hundred, or thousand years
     - recalibrating Meton cycle every 216 years (drop a day)
     - recalibrate Kidinnu ever gazillion years (TODO)
     - remove leap day every 128 years
       - Gregorian: 4 except 100 except 400 (and maybe 3236)
       - Revised Julian: 4 except 100 when modulo 900 not 200 nor 600

COULD
 - Pythagorean, meantone, or tempered harmonics
 - Consider perpetual seven day weeks
 - Use Gregorian leap day schedule
 - Use Metonic cycle
 - Consider Chinese and Indian lunar calendars
 - Consider Iranian solar calendar
 - Consider sliding rune stick calendar
 - Indirectly calculate Easter and golden numbers
 - Consider eclipse cycles
 - Incorporate Pythagorean, meantone, or equal temperaments
 - Julian days
 - Consider Babylonian System B
 - Include visible planetary cycles
   - (Mercury, Venus, Mars, Jupiter, Saturn)
 - Assert opinion regarding local vs universal time
   - Day and night are always local concepts
   - Moon phase angle from center of earth
   - Seasons from center of the Earth
   - Can different locations experience different lunar durations?
   - Can the full moon occur on a different days?

WON'T
 - Consider Julian or Gregorian months


 - perpetual
   - frequent predictable adjustments
   - infrequent refinements
     - on the order of hundreds to thousands of years
     - Kidannu's cycle repeats every 20.4 years (no refinement)
     - Add a day to Kidannu's cycle approximately every 111 years.
     - recalibrate Kidinnu's anomaly-synodic cycle after several millennia
     - Perhaps a different set of refinements every hundred years

 - astronomically accurate and precise to the day.
   - must stay within one day of the tropical year for ever
   - lunations within one day of accuracy 
   - lunar quarter phases within a day (7.0 or 8.0 integer days from 7.4 (TODO: verify 6.3-8.5)).

 - Incorporate the tropical year, four seasons, four lunar phases.


## Constants and Findings

29.30589 days in an average synodic month (lunation)
27.554551 days to return to anomaly (anomalistic month)
365.2421897 days in an average tropical year

### Kidinnu synodic-anomalistic cycle (KSAC)
251 synodic months ~= 269 anomalistic months
20.29387 years = 7412.1759 days (5' 36" diff)

### Rectified Hebrew Calendar
353 year Rectified hebew calendar by Irv Bromberg

Mean Northward Equinoctial Year / Mean Synodic Month

≈ ( 365 days 5 hours 49 minutes 0 seconds ) /
( 29 days 12 hours 44 minutes 2 (11/15) seconds )

= 365.242361 days / 29.53058719



### Alex Kidinnu Alignment (AKA)
17 KSAC cycles ~= 345 years ~= 4267 synodic months ~= 126007 days
126007 days = 4266.9992 syn = 4573.0016 anom = 344.9957 years
126008.56 days = 345 years
126007.02 days = 4267 synodic months
126006.96 days = 4573 anomalistic
(1.6 day diff in 345 years, slightly better than Meton)

TODO: Prove/Find least deviation less than 345 years

    for ((X=19;X<=191;X++)); do ... done | 


If we ignore anomalistic months for the purpose of
aligning the synodic month with the tropical year:

4131 synodic months in 334 years
(independent of Dr. William Moses Feldman, 1880-1939
tropical 365.242199074 days)


NASA

Average Synodic Month: Length: 29d 12h43m35s
Mean Synodic Month: Length: 29d 12h44m03s

29.530590278

http://astropixels.com/ephemeris/moon/synodicmonth2001.html



353 year Rectified hebew calendar by Irv Bromberg
http://individual.utoronto.ca/kalendis/hebrew/rect.htm
Current:
29.530587665
Different mean synodic
29.530594135802469...


11 cycles in 223.23 years (223 years, 2 months, 23 days)
2761 synodic = 81533.96 days
2959 anomaly = 81533.91 days

334 years
4131.000955 synod

1021 years
12627.99993 synod




### Meton cycle
235 synodic months in 19 tropical years

235 synodic months = 19.0002 years
19 tropical years = 234.997 synodic months

12 cycles ~= 228 years ~= 2820 synodic ~= 83275 +1 days (1 day diff)
83275.22 - 83276.26 (>1 day diff in 228 years)



 == Wikipedia Links

 - https://en.wikipedia.org/wiki/Solar_Hijri_calendar
