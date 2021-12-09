function kimenet=fuggveny_3(c, Xdata, Ydata_1, x0)
ydata_1=nan([1,52]);
ydata_1(1)=x0(3)/2;
ydata_2=nan([1,52]);
ydata_2(1)=x0(6)/2;
for t=2:52
    ydata_2(t)=ydata_2(t-1)+ydata_2(t-1)*(x0(4)+x0(5)*ydata_2(t-1)+c(2)*ydata_1(t-1));
    ydata_1(t)=ydata_1(t-1)+ydata_1(t-1)*(x0(1)+x0(2)*ydata_1(t-1)+c(1)*ydata_2(t-1));
end
Y55=ydata_1';
W303=ydata_2';
kimenet=sum(((ydata_2+ydata_1)-Ydata_1).^2); %referenciától négyzetes különbség összeg

%y(1)=y(1)*(g1+d1*y(1)+c1*y(2));
%y(2)=y(2)*(g2+d2*y(2)+c2*y(1));
