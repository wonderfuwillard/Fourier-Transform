% function f = myJPEGDecompress(G, T, D)
%
% Input
%    G is the compressed encoding, a 2D array of real numbers
%    T is the tile size for reassembling the decompressed image
%    D is the size of the blocks of Fourier coefficients that were
%      kept when the image was compressed
%      (Bigger values of D result in less loss, but less compression)
%
% Output
%    f is the decompressed, reconstructed image, the same size as G
%
function f = myJPEGDecompress(G, T, D)

    % === Replace the code below with your code ===
    [h,w] = size(G);  % returns the width and height of f

    r=zeros((h/D)*T,(w/D)*T);
    i=0;
    while i*D<h
        j=0;
        while j*D<w
            e=zeros(T,T);
            e(1:D,1:D)=G(i*D+1:i*D+D,j*D+1:j*D+D)
            r(i*T+1:i*T+T,j*T+1:j*T+T)=myIDCT(e);
            j=j+1;
        end
        i=i+1;
    end
    f = r;
    
