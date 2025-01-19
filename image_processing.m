
% Deep learning 
%image aquisition

net = alexnet;
imput_size=[227,227];
I = imread("images\file01.png");
imshow(I)
size(I)
I =imresize(I,imput_size);
size(I)
classify(net,I)




