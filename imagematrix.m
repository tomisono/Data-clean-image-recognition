function [gray] = imagematrix(imageNo,NP1,NP2)
 pkg load image    %Ensure to load image package
features = NP1*NP2;
 vex = zeros(imageNo,features);      % No of images by No of features
for n=1:imageNo
images{n} = imread(sprintf('%d.png',n));
NP1 = NP1;
NP2 = NP2;
vex(n,:) = imageprocessor(cell2mat(images(1,n)),NP1,NP2);
endfor
gray = vex;
  
  
 
endfunction
