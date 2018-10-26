function [y] = tremolo(x,Fs,Fx, alpha)
  index = 1:length(x);
  trem=(1+ alpha*sin(2*pi*index*(Fx/Fs)))';
  y = trem.*x;
end