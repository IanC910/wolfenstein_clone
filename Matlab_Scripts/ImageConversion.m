clear
%read the image
[I,colormap, alpha] = imread('orb.png');

nt1 = 0;
nt2 = 0;
[rows, cols] = size(alpha);
matrix = zeros(rows,cols);

%Calculate first non transparent pixel
for i = 1:rows
    for j = 1:cols
        if nt1 == 0
            if alpha(i,j) ~= 0
                nt1 = j;
            end
        end
    end
    matrix(i,1) = nt1;
    nt1 = 0;
end

%Calculate last non transparent pixel

for i = 1:rows
    for j = cols:-1:1
        if nt2 == 0
           if alpha(i,j) ~= 0
               nt2 = j;
           end
        end
    end
    matrix(i,2) = nt2;
    nt2 = 0;
end

%Set the second column hold the number of non transparent pixels
matrix(:,2) = matrix(:,2)-matrix(:,1);

%Extract RED, GREEN and BLUE components from the image
R = I(:,:,1);			
G = I(:,:,2);
B = I(:,:,3);

%make the numbers to be of double format for 
R = double(R);	
G = double(G);
B = double(B);

%Raise each member of the component by appropriate value. 
R = R.^(4/8); % 8 bits -> 4 bits
G = G.^(4/8); % 8 bits -> 4 bits
B = B.^(4/8); % 8 bits -> 4 bits

 %tranlate to integer
R = uint32(R); % float -> uint32
G = uint32(G);
B = uint32(B);
matrix = uint32(matrix);
% 
 %minus one cause sometimes conversion to integers rounds up the numbers wrongly
R = R-1; % 3 bits -> max value is 111 (bin) -> 7 (dec)(hex)
G = G-1;
B = B-1; % 11 (bin) -> 3 (dec)(hex)

%shift bits and construct one Byte from 3 + 3 + 2 bits
R = bitshift(R, 4);
G = bitshift(G, 12); % 3 << G (shift by 3 bits)
B = bitshift(B, 20); % 6 << B (shift by 6 bits)
matrixBS = bitshift(matrix, 24);

COLOR = matrixBS+B+G+R;      % R + 3 << G + 6 << B

%save variable COLOR to file
fileID = fopen ('image.data', 'w');
fwrite(fileID, COLOR',"uint32");
fclose(fileID);

% fileID2 = fopen ('image.data', 'r');
% OUT = fread(fileID);
% fclose(fileID2);

fprintf("DONE\n");