[f,p] = uigetfile('*.tif','Select an image');

mImage = imread([p,f]);
h = fspecial('sobel');
horizontalE = imfilter(mImage,h);

v = h';
verticalE = imfilter(mImage,v);

allE = horizontalE + verticalE;

figure();
subplot(2,2,1);
imshow(mImage);
title('Original Image')

subplot(2,2,2)
imshow(horizontalE)
title('Horizontal Edges')

subplot(2,2,3)
imshow(verticalE) 
title('Vertical Edges')
subplot(2,2,4)
imshow(allE)
title('All Edges')
