
%Translation-Oteleme Islemi
dx = 3;
dy = 2;
dz = 4;

shape=[1 1 4 4 1;1 4 4 1 1 ;1 1 4 4 1];
subplot(2,4,1); 
plot3(shape(1,1:end),shape(2,1:end),shape(3,1:end)); grid on; title('Orijinal');

xlabel('x-ekseni'); ylabel('y-ekseni'); zlabel('z-ekseni'); 
trans=[1 0 0 dx;0 1 0 dy;0 0 1 dz;0 0 0 1];
homogeneous_shape = [shape; ones(1,5)];
trans_shape = trans*homogeneous_shape;

subplot(2,4,2); 
plot3(trans_shape(1,1:end),trans_shape(2,1:end),trans_shape(3,1:end));grid on; title('Translation');
xlabel('x-ekseni'); ylabel('y-ekseni'); zlabel('z-ekseni'); 

%Scaling – Olceklendirme Islemi
sx = 10;
sy = 20;
sz = 15;

scale=[sx 0 0 0;0 sy 0 0;0 0 sz 0;0 0 0 1];
scale_shape = scale*homogeneous_shape;

subplot(2,4,3); 
plot3(scale_shape(1,1:end),scale_shape(2,1:end),scale_shape(3,1:end));grid on; title('Scaling');
xlabel('x-ekseni'); ylabel('y-ekseni'); zlabel('z-ekseni'); 

%Rotation – Dondurme Islemi
rotateX = [1 0 0 0; 0 cos(30) -sin(30) 0;0 sin(30) cos(30) 0;0 0 0 1];
rot_shape = rotateX*homogeneous_shape;
subplot(2,4,4); 
plot3(rot_shape(1,1:end),rot_shape(2,1:end),rot_shape(3,1:end));grid on; title('X-Rotation');

rotateY = [cos(30) 0 sin(30) 0; 0 1 0 0;-sin(30) 0  cos(30) 0;0 0 0 1];
rot_shape = rotateY*homogeneous_shape;
subplot(2,4,5); 
plot3(rot_shape(1,1:end),rot_shape(2,1:end),rot_shape(3,1:end));grid on; title('Y-Rotation');

rotateZ = [ cos(30) -sin(30) 0 0;sin(30) cos(30) 0 0;0 0 1 0;0 0 0 1];
rot_shape = rotateZ*homogeneous_shape;
subplot(2,4,6); 
plot3(rot_shape(1,1:end),rot_shape(2,1:end),rot_shape(3,1:end));grid on; title('Z-Rotation');

%Once Scaling Sonra Translation Islemi
scaletrans_shape = scale*trans*homogeneous_shape;
subplot(2,4,7); 
plot3(scaletrans_shape(1,1:end),scaletrans_shape(2,1:end),scaletrans_shape(3,1:end));grid on; 
title('Once Scaling Sonra Translation');
xlabel('x-ekseni'); ylabel('y-ekseni'); zlabel('z-ekseni'); 

%Once Translation Sonra Rotation Islemi
transrotate_shape = trans*rotateX*homogeneous_shape;
subplot(2,4,8); 
plot3(transrotate_shape(1,1:end),transrotate_shape(2,1:end),transrotate_shape(3,1:end));grid on; 
title('Once Translation Sonra Rotation');
xlabel('x-ekseni'); ylabel('y-ekseni'); zlabel('z-ekseni'); 

  
