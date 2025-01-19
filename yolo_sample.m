% Load the pretrained GoogLeNet network
net = googlenet;

% Create a connection to the webcam
camera = webcam;

% Get the input size of the network
inputSize = net.Layers(1).InputSize(1:2);

% Create a larger figure
figure('Position', [100, 100, 1200, 800]); % Adjust dimensions as needed

% Continuously classify images from the camera
while true
    % Capture a snapshot from the camera
    im = snapshot(camera);
    
    % Resize the image to the input size of the network
    im = imresize(im, inputSize);
    
    % Classify the image using GoogLeNet
    [label, score] = classify(net, im);
    
    % Calculate the center of the frame
    center_x = size(im, 2) / 2;
    center_y = size(im, 1) / 2;
    
    % Define the bounding box around the center
    roi_width = 200; % Customize the width of the bounding box
    roi_height = 150; % Customize the height of the bounding box
    roi_x = center_x - roi_width / 2;
    roi_y = center_y - roi_height / 2;
    
    % Draw bounding box and label (green color)
    annotatedImage = insertObjectAnnotation(im, 'rectangle', ...
        [roi_x, roi_y, roi_width, roi_height], char(label), 'Color', 'g');
    
    % Display the annotated image
    imshow(annotatedImage);
    title({char(label), num2str(max(score), 2)});
    drawnow;
end
