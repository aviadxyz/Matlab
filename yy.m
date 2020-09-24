img_name = 'circle_c.png';
img_name = 'cats.jpg';
im = imread(img_name);
A= im2double(im);
A=rgb2gray(A);
% A=A.*2.-1;

% B is a rectangle
B = zeros(size(A,1),size(A,2));
w = floor(size(B,1)*3/4) - floor(size(B,1)/4) +1 ;
h = floor(size(B,2)*3/4) - floor(size(B,2)/4) +1 ;
B(floor(size(B,1)/4) : floor(size(B,1)*3/4) , floor(size(B,2)/4) : floor(size(B,2)*3/4 )) = ones(w , h) ;

% SVD
[u,s,v]=svd(A);
eigenIm = zeros(size(A,1),size(A,2));

m=2;
n=6;
subplot(m,n,1)
imshow(A);
for i=1:(n-1)  
    eigenElement = u(:,i)*(v(:,i))'.*s(i,i) ;
    eigenIm = eigenIm + eigenElement ;
    
    subplot(m,n,[2 i+1]);
    imshow(fft(eigenElement));
end
subplot(m,n,m*n);
imshow(eigenIm) ;

fft_A=fft(A);
imshow(fft_A);

A_e = ifft(fft_A);
imshow(A_e);