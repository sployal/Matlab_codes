
%microphone 

freq = [500 1000];
microphone = phased.CustomMicrophoneElement(...
    'PolarPatternFrequencies',freq);
microphone.PolarPattern= mag2db([...
    0.5+0.5*cosd(microphone.PolarPatternAngles);...
    0.6+0.4*cosd(microphone.PolarPatternAngles)]);

pattern(microphone,freq,[-180:180],0,'CoordinateSystem','polar','Type','powerdb',...
    'Normalize',true);

array = phased.ULA('NumElements',4,'ElementSpacing',0.5,...
    'Element',microphone);

pattern(array,freq,[-180:180],0,'CoordinateSystem','polar','Type','powerdb',...
    'Normalize',true,'PropagationSpeed',340.0);