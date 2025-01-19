% Ensure you have the Audio Toolbox installed
% Create an audio device reader to capture audio from the microphone
deviceReader = audioDeviceReader('SampleRate', 44100, 'SamplesPerFrame', 1024);

% Create a time scope to visualize the audio signal
scope = timescope('SampleRate', deviceReader.SampleRate, ...
    'TimeSpan', 1, ...
    'YLimits', [-1, 1], ...
    'Title', 'Real-Time Audio Signal', ...
    'YLabel', 'Amplitude');

% Loop to continuously read and display audio data
disp('Press Ctrl+C to stop the program');
while true
    % Read audio data from the microphone
    audioData = deviceReader();
    
    % Process the audio data (e.g., apply a filter, compute features, etc.)
    % For this example, we will just pass the data through
    
    % Display the audio data on the scope
    scope(audioData);
end

% Release the audio device reader and scope
release(deviceReader);
release(scope);
