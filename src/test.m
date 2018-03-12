clear all
close all
 clc
%% dct
[data,fs]=audioread('AC_DC_Back_In_Black_Official_Video_.wav');

data2 = data;
data2 = data2.*1/10;
%%
figure
plot(abs(fft(data2(:,1))));
figure()
dct=dct(data2(:,1));
plot(dct);