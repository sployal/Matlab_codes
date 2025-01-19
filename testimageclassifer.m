


% Load the pretrained GoogLeNet network
net = googlenet;

% Connect to the webcam
camera = webcam;

% Get the input size of the network
inputSize = net.Layers(1).InputSize(1:2);

% Create a figure to display the webcam feed
h = figure;

% Continuously classify images from the camera
while ishandle(h)
    % Capture a snapshot from the webcam
    im = snapshot(camera);
    
    % Resize the image to match the input size of the network
    im = imresize(im, inputSize);
    
    % Classify the image using GoogLeNet
    [label, score] = classify(net, im);
    
    % Display the predicted label and its probability
    title({char(label), num2str(max(score), 2)});
    
    % Update the figure
    drawnow
end
