function [gray] = imageprocessor(X,NP1,NP2)
   pkg load image
  IMAGE = X;
  resize = imresize(IMAGE,[NP1 NP2]);    
  grayIMAGE = rgb2gray(resize);         % to turn image into gray scale
  grayIMAGE1= [grayIMAGE(:)];            % to unroll matrix
  gray = grayIMAGE1';                     % to turn into column vector
  
 
endfunction
