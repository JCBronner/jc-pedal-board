clc;
close all;
clear all;

%Importing one channel of audio wav sound
 [sig, sr] =audioread('guitar_sound_1.wav');
 sig = sig(:,1);
 
% EFFECT 1 : Fuzz, taking gain and proportion of mix 
% sig_out = fuzz(sig, sr, 5, 0.5);
 
% EFFECT 2 : Overdrive, taking threshold in arg
% sig_out = overdrive(sig, sr, 1/10);

% EFFECT 3 : Tremolo, taking modulation frequency and modulation index in arg
sig_out = tremolo(sig, sr, 10, 0.4);
 
 figure(1)
    subplot(211)
      plot(sig);
    subplot(212)
      plot(sig_out)
      
 sound(sig_out,sr);