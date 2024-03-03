% Audio Processor

clc
clear
close all

% Configurables
playSound = 1;

audioFileName = 'assets/gunshot.wav';

startTimeS = 0.1;
endTimeS = 0.35;

downSampleFactor = 2;
smoothingTimeConstant = 10000;
bytesPerSample = 2;



[audioData, sampleRateHz] = audioread(audioFileName);
% audioData = m x n matrix, m = number of samples, n = number of audio channels

startSample = startTimeS * sampleRateHz;
endSample = endTimeS * sampleRateHz;

shortenedAudioData = audioData(startSample : endSample, 1);

for i = 1:1:length(shortenedAudioData)
    shortenedAudioData(i, :) = shortenedAudioData(i, :) .* (1 - exp((i - length(shortenedAudioData)) / smoothingTimeConstant));
end

downsampledAudio = downsample(shortenedAudioData, downSampleFactor);
newSampleRateHz = sampleRateHz / downSampleFactor;

% figure;
% plot ((1:1:length(downsampledAudio)) / newSampleRateHz, downsampledAudio)
% title(audioFileName + " Shortened and Downsampled")
% xlabel("Time (s)")
% ylabel("Sound Wave")

if(playSound)
    %sound(shortenedAudioData, sampleRateHz);
    sound(downsampledAudio, newSampleRateHz);
end

intAudio = cast(round(downsampledAudio * 10000), "int" + 8 * bytesPerSample);

outFileId = fopen('processed_audio.audioData', 'w');
fclose(outFileId);

outFileId = fopen('processed_audio.audioData', 'a');

fwrite(outFileId, length(intAudio), "integer*4");
fwrite(outFileId, bytesPerSample, "integer*4");
fwrite(outFileId, newSampleRateHz, "integer*4");
fwrite(outFileId, intAudio, "integer*" + bytesPerSample);

fclose(outFileId);



