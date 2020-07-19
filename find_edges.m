mImage = imread('cameraman.tif');

h = fspecial('sobel');
horizontalE = imfilter(mImage,h);

v = h';
verticalE = imfilter(mImage,v);

allE = horizontalE + verticalE;

figure();
subplot(2,2,1);
imshow(mImage);
title('Orijinal Goruntu')

subplot(2,2,2)
imshow(horizontalE)
title('Yatay Kenarlar')

subplot(2,2,3)
imshow(verticalE) 
title('Dikey Kenarlar')
subplot(2,2,4)
imshow(allE)
title('Tüm Kenarlar')