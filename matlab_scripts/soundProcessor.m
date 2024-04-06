% Sound Processor

clc
clear
close all

% Configurables
inputFileName = '../assets/sources/gunshot.wav';
outputFileName = '../assets/processed/gunshot.sound';

startTimeS = 0.1;
endTimeS = 0.4;
playSound = 1;

downSampleFactor = 2;
smoothingTimeConstant = 10000;

volumeCoef = 10000;

% End of Configurables



BYTES_PER_SAMPLE = 2;
[audioData, sampleRateHz] = audioread(inputFileName);
% audioData = m x n matrix, m = number of samples, n = number of audio channels

startSample = startTimeS * sampleRateHz + 1;
endSample = endTimeS * sampleRateHz + 1;

shortenedAudioData = audioData(startSample : endSample, 1);

for i = 1:1:length(shortenedAudioData)
    shortenedAudioData(i, :) = shortenedAudioData(i, :) .* (1 - exp((i - length(shortenedAudioData)) / smoothingTimeConstant));
end

downsampledAudio = downsample(shortenedAudioData, downSampleFactor);
newSampleRateHz = sampleRateHz / downSampleFactor;
newSamplePeriodUs = 1 / newSampleRateHz * 1000000;

figure;
plot ((1:1:length(audioData)) / sampleRateHz, audioData)
title(outputFileName)
xlabel("Time (s)")
ylabel("Sound Wave")

figure;
plot ((1:1:length(downsampledAudio)) / newSampleRateHz, downsampledAudio)
title(outputFileName + " Shortened and Downsampled")
xlabel("Time (s)")
ylabel("Sound Wave")

if(playSound)
    %sound(audioData, sampleRateHz);
    %sound(shortenedAudioData, sampleRateHz);
    sound(downsampledAudio, newSampleRateHz);
end

intAudio = cast(round(downsampledAudio * volumeCoef), "int" + 8 * BYTES_PER_SAMPLE);

outFileId = fopen(outputFileName, 'w');
fclose(outFileId);

outFileId = fopen(outputFileName, 'a');

fwrite(outFileId, length(intAudio),                     "integer*4");
fwrite(outFileId, intAudio,                             "integer*" + BYTES_PER_SAMPLE);

fclose(outFileId);



