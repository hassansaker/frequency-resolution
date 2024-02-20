N=input('enter N value');
n=0:(N-1);
T=0.02;
t=n.*T;
x=sin(2.*pi.*10.*t)+sin(2.*pi.*12.*t);% x[n]
X=fft(x,256);% 256 point DFT of x[n]
w=0:2*pi/256:(2*pi-(2*pi/256));
plot(w,abs(X));
xlabel('w');
ylabel('|X(k)|');
title('N=',N);