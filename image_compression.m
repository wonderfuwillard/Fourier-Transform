
% image_compression.m

f = imread('./house.jpg');
f = double(f(:,:,1));

T = 20;


%% Display the reconstructed compressed images
figure(1);

D = 20;  % compression ratio of 3:1
G = myJPEGCompress(f, T, D);
fc = myJPEGDecompress(G, T, D);
imshow(fc, [0 255]);
title(['Compression Ratio = ' num2str(1) ':1']);



% ==== Complete the script below ====

figure(2);

D = 12;  % compression ratio of 3:1
G = myJPEGCompress(f, T, D);
fc = myJPEGDecompress(G, T, D);
imshow(fc, [0 255]);
title(['Compression Ratio = ' num2str(3) ':1']);


figure(3);

D = 9;  % compression ratio of 3:1
G = myJPEGCompress(f, T, D);
fc = myJPEGDecompress(G, T, D);
imshow(fc, [0 255]);
title(['Compression Ratio = ' num2str(5) ':1']);

figure(4);

D = 6;  % compression ratio of 3:1
G = myJPEGCompress(f, T, D);
fc = myJPEGDecompress(G, T, D);
imshow(fc, [0 255]);
title(['Compression Ratio = ' num2str(10) ':1']);
figure(5);

D = 4;  % compression ratio of 3:1
G = myJPEGCompress(f, T, D);
fc = myJPEGDecompress(G, T, D);
imshow(fc, [0 255]);
title(['Compression Ratio = ' num2str(25) ':1']);
