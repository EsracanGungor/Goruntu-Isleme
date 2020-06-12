A=imread('peppers.png');
B=rgb2gray(A);
C=double(B);
for i=1:size(C,1)-1
    for j=1:size(C,2)-1
        Gx=((C(i+1,j))-(C(i,j+1)));
        Gy=((C(i,j))-(C(i,j)));
        B(i,j)=sqrt(Gx.^2+Gy.^2);
    end
end
figure,imshow(B); title('Robert Algoritmasi ile Kenar Belirleme');
