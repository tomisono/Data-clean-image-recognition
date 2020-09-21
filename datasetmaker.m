function [gray] = datasetmaker(NP,NP1,NP2,L)                                           
% datasetmaker(number of pictures, pixel by pixel, left or right)

for n = 1:NP                % NP == No of pictures
images{n}=  imread(sprintf('%d.png',n));
IMAGE=  images{n};
G = datasetmaker2(IMAGE,NP1,NP2,L);
s = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
numRands = length(s);
sLength = 5;
randString = s(ceil(rand(1,sLength)*numRands))
imwrite(G,sprintf("%d.png",randString));
gray = 'DONE'
endfor
  
  
  
  
 
  
 
endfunction
