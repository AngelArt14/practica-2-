clear all
clc;
%angle_rad = deg2rad(90);
    
prompt = 'Introduzca los grados de la rotación en X (phi):';
phiDeg = input(prompt);

prompt = 'Introduzca los grados de la rotación en Y (theta):';
thetaDeg = input(prompt);

prompt = 'Introduzca los grados de la rotación en Z (psi):';
psiDeg = input(prompt);

phiRad = deg2rad(phiDeg);
thetaRad = deg2rad(thetaDeg);
psiRad = deg2rad(psiDeg);

for phiRad = 0:0.1:phiRad
    clf;
  for thetaRad = 0:0.1:thetaRad
     clf;
    for psiRad = 0:0.1:psiRad
      clf;
            

 line([-10 10],[0 0],[0 0],'color',[1 0 0],'linewidth',1.5);
 line([0 0],[-10 10],[0 0],'color',[0 1 0],'linewidth',1.5); 
 line([0 0],[0 0],[-10 10],'color',[0 0 1],'linewidth',1.5); 
 


 rx = [ 1 0 0 ; 0 cos(phiRad) -sin(phiRad); 0 sin(phiRad) cos(phiRad)];
 ry = [ cos(thetaRad) 0 sin(thetaRad); 0 1 0 ; -sin(thetaRad) 0 cos(thetaRad) ];
 rz = [ cos(psiRad) -sin(psiRad) 0 ; sin(psiRad) cos(psiRad) 0 ; 0 0 1 ];
 
 
 p1=[0 0 0];
 p2=[7 0 0];
 p3=[7 3 0];
 p4=[0 3 0]; 
 p5=[0 3 2];
 p6=[0 0 2];
 p7=[7 0 2];
 p8=[7 3 2];

 
 view(120,30)
 grid on
 
 line([p1(1) p2(1)],[p1(2) p2(2)],[0 0],'color',[0 0 1],'linewidth',1); 
 line([p2(1) p3(1)],[p2(2) p3(2)],[0 0],'color',[0 0 1],'linewidth',1);
 line([p3(1) p4(1)],[p3(2) p4(2)],[0 0],'color',[0 0 1],'linewidth',1);
 line([p1(1) p4(1)],[p1(2) p4(2)],[0 0],'color',[0 0 1],'linewidth',1);
 line([p4(1) p5(1)],[p4(2) p5(2)],[p4(3) p5(3)],'color',[0 0 1],'linewidth',1);
 line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)],'color',[0 0 1],'linewidth',1);
 line([p5(1) p8(1)],[p5(2) p8(2)],[p5(3) p8(3)],'color',[0 0 1],'linewidth',1);
 line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)],'color',[0 0 1],'linewidth',1);
 line([p6(1) p1(1)],[p6(2) p1(2)],[p6(3) p1(3)],'color',[0 0 1],'linewidth',1);
 line([p7(1) p8(1)],[p7(2) p8(2)],[p7(3) p8(3)],'color',[0 0 1],'linewidth',1);
 line([p7(1) p2(1)],[p7(2) p2(2)],[p7(3) p2(3)],'color',[0 0 1],'linewidth',1);
 line([p8(1) p3(1)],[p8(2) p3(2)],[p8(3) p3(3)],'color',[0 0 1],'linewidth',1);
 

 rt = rx*ry*rz;
 
 p1= rt * p1';
 p2= rt * p2';
 p3= rt * p3';
 p4= rt * p4';
 p5= rt * p5';
 p6= rt * p6';
 p7= rt * p7';
 p8= rt * p8';
 
 line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[0 0 1],'linewidth',2); 
 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[0 0 1],'linewidth',2);
 line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[0 0 1],'linewidth',2);
 line([p1(1) p4(1)],[p1(2) p4(2)],[p1(3) p4(3)],'color',[0 0 1],'linewidth',2);
 line([p4(1) p5(1)],[p4(2) p5(2)],[p4(3) p5(3)],'color',[0 0 1],'linewidth',2);
 line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)],'color',[0 0 1],'linewidth',2);
 line([p5(1) p8(1)],[p5(2) p8(2)],[p5(3) p8(3)],'color',[0 0 1],'linewidth',2);
 line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)],'color',[0 0 1],'linewidth',2);
 line([p6(1) p1(1)],[p6(2) p1(2)],[p6(3) p1(3)],'color',[0 0 1],'linewidth',2);
 line([p7(1) p8(1)],[p7(2) p8(2)],[p7(3) p8(3)],'color',[0 0 1],'linewidth',2);
 line([p7(1) p2(1)],[p7(2) p2(2)],[p7(3) p2(3)],'color',[0 0 1],'linewidth',2);
 line([p8(1) p3(1)],[p8(2) p3(2)],[p8(3) p3(3)],'color',[0 0 1],'linewidth',2);
 
 grid
  pause(0.1)
  
    end
  end
end

