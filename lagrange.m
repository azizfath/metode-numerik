clc; clear; clear all; format compact;

fprintf('PROGRAM METODE NUMERIK - INTERPOLASI LAGRANGE\n');
fprintf('SOAL TERAPAN INTERPOLASI\n');
fprintf('MODUL 9A\n\n');
fprintf('Dibuat oleh :\n');
fprintf('FATHURRAHMAN NUR AZIZ (20.11.3694)\n');
fprintf('----------------------------------------------------------------------------------\n');

suhu = [5 10 15 20 25 30];
konsen10 = [11.6 10.3 9.1 8.2 7.4 6.8];
konsen20 = [10.5 9.2 8.2 7.4 6.7 6.1];

fprintf('Diketahui:\n');
fprintf('==============================================\n');
fprintf('Suhu\tKelembaban 10mg/L\tKelembaban 20mg/L\n');
fprintf('==============================================\n');
for i=1:6
    fprintf(' %d\t\t\t%.2f\t\t\t\t%.1f\n', suhu(i),konsen10(i),konsen20(i));
end
fprintf('==============================================\n');
fprintf('Berapa konsentrasi yang larut jika Suhu 22.4?\n');
fprintf('==============================================\n');
fprintf('Penyelesaian:\n\n');
fprintf('Karena terdapat 6 data dan memperhatikan ketelitian,\nmaka kita menggunakan ordo 5\n');

syms x;
target=22.4;
fprintf('\n');
fprintf('----------------------------------------------------------------------------------\n');
fprintf('\t\t\t\t\t\tKONSENTRASI KLORIDA 10mg/L\n');
fprintf('----------------------------------------------------------------------------------\n');
fprintf('Rumus Nilai L(X) untuk konsentrasi 10mg/L\n');
fx=0;
for i = 1:6
	y = 1;
	for j = 1:6
		if (i~=j)
			y=y*(x-suhu(j));
		end
    end
	y1 = subs(y,x,suhu(i));
    
	fprintf('\tL%d(X)\t\t= ',i);
    lx=y/y1;
	disp(lx);
    
    fprintf('\tL%d(%.1f)\t= ',i,target);
	fx=fx+konsen10(i)*lx;
    
    ss=subs(fx,x,target);
    fprintf('%f\n\n',ss);
end

fprintf('Rumus P5(X) untuk konsentrasi 10mg/L = \n\t');
disp(fx);
fprintf('atau\n\t');
px10=collect(fx);
disp(px10);

fprintf('\nMaka konsentrasi larutan oksigen untuk suhu 22.4 pada konsentrasi klorida 10mg/L adalah = \n');
a=subs(px10,x,22.4);
fprintf('\tP5(%.1f) = %.10f\n',target,a);


fprintf('\n\n\n');
fprintf('----------------------------------------------------------------------------------\n');
fprintf('\t\t\t\t\t\tKONSENTRASI KLORIDA 20mg/L\n');
fprintf('----------------------------------------------------------------------------------\n');
fprintf('Rumus Nilai L(X) untuk konsentrasi 20mg/L\n');
fx=0;
for i = 1:6
	y = 1;
	for j = 1:6
		if (i~=j)
			y=y*(x-suhu(j));
		end
    end
	y1 = subs(y,x,suhu(i));
    
	fprintf('\tL%d(X)\t\t= ',i);
    lx=y/y1;
	disp(lx);
    
    fprintf('\tL%d(%.1f)\t= ',i,target);
	fx=fx+konsen20(i)*lx;
    
    ss=subs(fx,x,target);
    fprintf('%f\n\n',ss);
end

fprintf('Rumus P5(X) untuk konsentrasi 20mg/L = \n\t');
disp(fx);
fprintf('atau\n\t');
px20=collect(fx);
disp(px20);

fprintf('\nMaka konsentrasi larutan oksigen untuk suhu 22.4 pada konsentrasi klorida 20mg/L adalah = \n');
b=subs(px20,x,22.4);
fprintf('\tP5(%.1f) = %.10f\n',target,b);
fprintf('\n\n\n');