function kimenet=fuggveny(x0, Xdata, Ydata)
g1=x0(1);
d1=x0(2);
ydata=nan([1,52]);
ydata(1)=x0(3);
for t=2:52
    ydata(t)=ydata(t-1)+ydata(t-1)*(x0(1)+x0(2)*ydata(t-1));
end
kimenet=sum((Ydata-ydata).^2); %referenciától négyzetes különbség összeg
%kimenet=sum(abs(Ydata-ydata)); %referenciától négyzetes különbség összeg