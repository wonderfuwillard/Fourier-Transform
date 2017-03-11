% function G = myJPEGCompress(f, T, D)
%
% Input
%    f is the input image, a 2D array of real numbers
%    T is the tile size to break the input image into
%    D is the size of the block of Fourier coefficients to keep
%      (Bigger values of D result in less loss, but less compression)
%
% Output
%    G is the compressed encoding of the image, the same size as f
%
function G = myJPEGCompress(f, T, D)

	[h,w] = size(f);  % returns the width and height of f
    
    
    % === Replace the code below with your code ===
    ch=floor(h/T)*D;
    cw=floor(w/T)*D;
    r=zeros(ch,cw);
    i=0;
    while i*D<ch
        j=0;
        while j*D<cw
            dct=myDCT(f(i*T+1:i*T+T,j*T+1:j*T+T));
            r(i*D+1:i*D+D,j*D+1:j*D+D)=dct(1:D,1:D);
            j=j+1;
        end
        i=i+1;
    end
            
    
    G = r;

    
