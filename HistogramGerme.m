I = imread('pout.tif');
figure,imshow(I); title('pout.tif - Orjinal Imge')
oldMin = min(I(:));
oldMax = max(I(:));
newMax=255; newMin=2;
I=(newMax-newMin)/(oldMax-oldMin)*(I-oldMin)+newMin;
figure,imshow(I); title('pout.tif - Germeden Sonraki Imge')
