% Specify the video file path
videoFile = 'images/burn.mp4';

% Create a VideoReader object
videoObj = VideoReader(videoFile);

% Read audio data from the video file
[y, Fs] = audioread(videoFile);

% Create an audioplayer object for audio playback
audioObj = audioplayer(y, Fs);

% Initialize video player
figure;
videoPlayer = vision.VideoPlayer('Position', [100, 100, 640, 480]);

% Main loop
while hasFrame(videoObj)
    % Read video frame
    videoFrame = readFrame(videoObj);
    
    % Display video frame
    videoPlayer(videoFrame);
    
    % Play audio
    play(audioObj);
    
    % User controls
    userInput = input('Enter command (f: forward, b: backward, s: skip 10s, q: quit): ', 's');
    
    switch userInput
        case 'f' % Forward
            seek(audioObj, audioObj.CurrentSample + Fs);
        case 'b' % Backward
            seek(audioObj, audioObj.CurrentSample - Fs);
        case 's' % Skip 10 seconds
            seek(audioObj, audioObj.CurrentSample + 10 * Fs);
        case 'q' % Quit
            break;
        otherwise
            disp('Invalid command. Please try again.');
    end
end

% Clean up
release(videoPlayer);
release(audioObj);
