function kimenet=fuggveny_2(c, Xdata, Ydata_1, Ydata_2, x0)
ydata_1=nan([1,52]);
ydata_1(1)=x0(3)/2;
ydata_2=nan([1,52]);
ydata_2(1)=x0(6)/2;
osszefuz_eredeti=[Ydata_1 Ydata_2];
for t=2:52
    ydata_1(t)=ydata_1(t-1)+ydata_1(t-1)*(x0(1)+2*x0(2)*ydata_1(t-1)+c(1)*ydata_2(t-1));
    ydata_2(t)=ydata_2(t-1)+ydata_2(t-1)*(x0(4)+2*x0(5)*ydata_2(t-1)+c(2)*ydata_1(t-1));
end
osszefuz_becsult=[ydata_1 ydata_2];
kimenet=sum((osszefuz_eredeti-osszefuz_becsult).^2);