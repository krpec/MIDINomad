MIDI Program number list, Mesa Nomad 100, Arduino based controller

The program number is a result of a simple formula:
`Pn = channel_value [+ eq] [+ rev] [+ solo]`

CH1 = 0
CH2 = 10
CH3 = 20
EQ = 1
REV = 2
SOLO = 4

With the formula applied, this is the list of all possible programs for Nomad 100:

0.  CH1
1.  CH1 EQX
2.  CH1    REV
3.  CH1 EQ REV
4.  CH1        SOLO
5.  CH1 EQ     SOLO
6.  CH1    REV SOLO
7.  CH1 EQ REV SOLO

---

10. CH2
11. CH2 EQ
12. CH2    REV
13. CH2 EQ REV
14. CH2        SOLO
15. CH2 EQ     SOLO
16. CH2    REV SOLO
17. CH2 EQ REV SOLO

---

20. CH3
21. CH3 EQ
22. CH3    REV
23. CH3 EQ REV
24. CH3        SOLO
25. CH3 EQ     SOLO
26. CH3    REV SOLO
27. CH3 EQ REV SOLO

Arduino will do the mapping of the MIDI program change messages to the proprietary Mesa DIN footswitch connector.

For the FXL8 Pro, the value has to be incremented by one as it does 1-128 range, instead of 0-127.
