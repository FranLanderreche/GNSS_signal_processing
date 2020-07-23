# GNSS_signal_processing
Algoritm for GNSS signal processing on MATLAB

1- Generate a Gold Code for the n satellite by using gold.m. There are up to 24 satellite.

2- You can check the correlation beetwen them by plotting the the result of corr.m.

NOTE: Remember that the Gold Codes are orthogonal beetwen them. Thus if you use i.e.: plot(corr(gold(1), gold(4))) is expect a graph without maximun. Otherwise if you use plot(corr(gold(1), gold(1))), you will see a maximun of value 1023.

