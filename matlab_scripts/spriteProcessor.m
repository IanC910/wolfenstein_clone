% Sprite Processor

clc
clear
close all

% Configurables

inputFileName   = '../assets/sources/health_drop.png';
outputFileName  = '../assets/processed/health_drop.sprite';

upScaleFactor = 2;

% End of Configurables



[inputImageData, colourMap, alpha] = imread(inputFileName);

image(inputImageData);

[numRows, numCols] = size(alpha);

firstNonTransparentPixel = uint16(zeros(numRows, 1));
lastNonTransparentPixel = uint16(zeros(numRows, 1));

% -1 signifies these values have not yet been assigned
startRow = -1;
endRow = -1;

% Find first non transparent pixel for each row and cut off transparent
% rows from top
for i = 1 : numRows
    for j = 1 : numCols
        if(alpha(i, j) ~= 0)
            firstNonTransparentPixel(i) = j;

            % Cut off transparent rows from top
            if(startRow == -1)
                startRow = i;
            end

            break;
        end
    end
end

% Cut off transparent rows from the bottom
for i = numRows : -1 : 1
    for j = 1 : numCols
        if(alpha(i, j) ~= 0)
            endRow = i;
            break;
        end
    end

    if(endRow ~= -1)
        break;
    end
end

% Find last transparent pixel for each row
for i = 1 : numRows
    for j = numCols : -1 : 1
        if alpha(i, j) ~= 0
            lastNonTransparentPixel(i) = j;
            break;
        end
    end
end

% Cut off transparent columns from left and right
startCol = min(firstNonTransparentPixel(startRow:endRow));
endCol = max(lastNonTransparentPixel(startRow:endRow));

% Trim
trimmedImageData = inputImageData(startRow:endRow, startCol:endCol, :);
firstNonTransparentPixel = firstNonTransparentPixel(startRow:endRow) - startCol + 1;
lastNonTransparentPixel = lastNonTransparentPixel(startRow:endRow) - startCol + 1;
numNonTransparentPixels = lastNonTransparentPixel - firstNonTransparentPixel + 1;

figure;
image(trimmedImageData);

numRows = endRow - startRow + 1;
numCols = endCol - startCol + 1;

colourR = uint32(trimmedImageData(:, :, 1));
colourG = uint32(trimmedImageData(:, :, 2));
colourB = uint32(trimmedImageData(:, :, 3));

colourG = bitshift(colourG, 8);
colourB = bitshift(colourB, 16);

intermediateSpriteData = colourR + colourB + colourG;

% 0-index pixel indices
firstNonTransparentPixel = firstNonTransparentPixel - 1;
lastNonTransparentPixel = lastNonTransparentPixel - 1;

% Perform horizontal upscaling

newNumCols = numCols * upScaleFactor;

spriteData = uint32(zeros(numRows, newNumCols));

for j = 0 : (numCols - 1)
    for jj = 0 : (upScaleFactor - 1)
        spriteData(:, j * upScaleFactor + jj + 1) = intermediateSpriteData(:, j + 1);
    end
end

firstNonTransparentPixel = firstNonTransparentPixel * upScaleFactor;
numNonTransparentPixels = numNonTransparentPixels * upScaleFactor;

% Open and close with write permission to clear the file
outFileId = fopen(outputFileName, 'w');
fclose(outFileId);

outFileId = fopen(outputFileName, 'a');

fwrite(outFileId, numRows, "integer*4");
fwrite(outFileId, newNumCols, "integer*4");
fwrite(outFileId, upScaleFactor, "integer*4");
fwrite(outFileId, firstNonTransparentPixel, "integer*2");
fwrite(outFileId, numNonTransparentPixels, "integer*2");
fwrite(outFileId, transpose(spriteData), "integer*4");

fclose(outFileId);
