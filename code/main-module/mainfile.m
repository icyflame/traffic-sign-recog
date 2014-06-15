clc;
clear all;

input = imread('D:\project-images\test5.jpg');

[red_comp, blue_comp] = roi(input);

% figure;
% subplot(1,2,1),imshow(red_comp), title('Red component');
% subplot(1,2,2), imshow(blue_comp), title('Blue component');

[numRed, blobsRed, shapesRed] = blob(red_comp, input);
[numBlue, blobsBlue, shapesBlue] = blob(blue_comp, input);

message = sprintf('Blobs from \nRed: %d\nBlue: %d', numRed, numBlue);
questdlg(message, 'Information');

if(numRed == 1 && numBlue == 1)
    figure, imshow(blobsRed), title('Extracted from Red');
    figure, imshow(blobsBlue), title('Extracted from Blue');
elseif(numRed == 1)
    figure, imshow(blobsRed), title('Extracted from Red');
elseif(numBlue == 1)
    figure, imshow(blobsBlue), title('Extracted from Blue');
elseif(numBlue > 4)
    % Red is important
    imshow(blobsRed);
elseif(numRed > 4)
    % Blue is important
    imshow(blobsBlue);
end