function [y] = fuzz(x, Fs, gain , mix)
  q=x./abs(x);
  y=q.*(1-exp(gain*(q.*x)));
  y=mix*y+(1-mix)*x;
end