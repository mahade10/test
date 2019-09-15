clear;
bits=[1,0,1,1,0,0,1,1];
bitrate=2;
Time=length(bits)/bitrate;
samplingRate=100;
prev=1;
amp=1;
amp=prev*amp;
for i=1:length(bits)
  if(bits(i)==0)
  ampl(i)=0;
else
  ampl(i)=amp;
  amp=-ampl(i);
  end
endfor
x=1;
time=0:0.01:Time
for i=1:length(time)
  y(i)=0;
  yvalue(i)=ampl(x);
  if(time(i)*bitrate>=x)
    x=x+1;
    end
endfor
plot(time,yvalue,time,y,':');
axis([0 Time -3 3]);