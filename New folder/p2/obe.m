clc;
%MATRIK 3 X 3
A = [4 3 1; 2 2 3; 1 2 3];
B = [0;3;4];
C = [A B]

%ITERASI PERTAMA
%BARIS 1
C(1,:) = C(1,:)/C(1,1)

%BARIS 2
C(2,:) = C(2,:) - C(2,1)*C(1,:)
%BARIS 3
C(3,:) = C(3,:) - C(3,1)*C(1,:)

%ITERASI KEDUA
%BARIS 2
C(2,:) = C(2,:)/C(2,2)
%BARIS 3
C(3,:) = C(3,:) - C(3,2)*C(2,:)

%ITERASI KETIGA
%BARIS 3
C(3,:) = C(3,:)/C(3,3)
