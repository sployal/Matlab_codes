% Load the pretrained GoogLeNet network
net = googlenet;

% Read and resize the image you want to classify
I = imread('images/file02.jpeg'); % Replace with your image file
inputSize = net.Layers(1).InputSize;
I = imresize(I, inputSize(1:2));

% Classify the image and calculate class probabilities
predLabel = classify(net, I);

% Display the image and predicted label
imshow(I);
title(string(predLabel));