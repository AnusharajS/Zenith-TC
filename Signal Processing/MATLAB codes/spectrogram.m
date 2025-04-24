clc;
clear all;
close all;

a1=2;
a2=3;
a3=4;

f1=500;
f2=100;
f3=300;

fs=2000;
t=0:1/fs:1;

s1=a1*sin(2*pi*f1*t);
s2=a2*sin(2*pi*f2*t);
s3=a3*sin(2*pi*f3*t);

S=s1+s2+s3;
pspectrum(S,fs,'spectrogram'); %time frequency plot


%!!Any reason or way to choose a fs value?