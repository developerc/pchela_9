select telefon,kode,dat,tim,adres,car,cost,priznak from zvonki where 
(dat+tim between '2011-11-12 10:03:44' and '2011-11-12 10:03:44')
and ((cost > 0) or (priznak='призовая'));
output to c:\report2.txt format ASCII;
