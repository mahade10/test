clear;
N=8;

F1=1000;
f1s=2000;
f2s=750;
n=0:N-1

x1n=5*sin(2*pi*(F1/f1s)*n+(pi/2));
 x1n
 
 n=0:N-1
 x2n=5*sin(2*3.14*(F1/f2s)*n+(3.14/2));
 x2n
 
 
 t=0:N-1
subplot(3,1,1)
stem(t,x1n)
xlabel('Time');

ylabel('amplitude');

title('Time domain');

subplot(3,1,2)
stem(t,x2n)
xlabel('Time');

ylabel('amplitude');

title('Time domain');

X1=zeros(8,1);

for m=0:N-1
  for n=0:N-1
    X1(m+1)=X1(m+1)+x2n(n+1)*[cos((2*pi*n*m)/N)-j*sin((2*pi*n*m)/N)];
  endfor
endfor
X1

t=0:N-1
subplot(313)

stem(t,X1)
xlabel('Frequency');

ylabel('|X1(k)|');

title('Magnitude response')