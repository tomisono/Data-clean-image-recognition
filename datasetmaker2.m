function [gray] = datasetmaker2(X,NP1,NP2,L)
 pkg load image
 DIF =  randi([3,10]);
 Mx = DIF + 1;            % DIF is how many columns u want to move to back
 IMAGE = X;
 resize = imresize(IMAGE,[NP1 NP2]); 
 grayIMAGE = rgb2gray(resize);         % to turn image into gray scale
 
 
 
if (L == 1)
 R = grayIMAGE(:,1:DIF);
 K = grayIMAGE(:,Mx:NP2);
 gray = [K R ];

 %=========================================================
elseif (L == 0)
 Mz = NP2-DIF;
 P = Mz-1;
 R = grayIMAGE(:,1:P);
 K = grayIMAGE(:,Mz:NP2);
 gray = [K R ];
  %=========================================================
else
disp('DEFAULT TO LEFT SET')
 R = grayIMAGE(:,1:DIF);
 K = grayIMAGE(:,Mx:NP2);
 gray = [K R ];
endif
 
 

 endfunction
