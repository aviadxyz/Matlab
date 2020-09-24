img_name = 'im2.jpg';
im = imread(img_name);
A= im2double(rgb2gray(im));

B = zeros(size(A,1),size(A,2));
w = floor(size(B,1)*3/4) - floor(size(B,1)/4) +1 ;
h = floor(size(B,2)*3/4) - floor(size(B,2)/4) +1 ;
B(floor(size(B,1)/4) : floor(size(B,1)*3/4) , floor(size(B,2)/4) : floor(size(B,2)*3/4 )) = ones(w , h) ;


A=B ;

[u,s,v]=svd(A);
eigenIm = zeros(size(A,1),size(A,2));
for i=2  
    eigenIm = eigenIm + u(:,i)*(v(:,i))'.*s(i,i) ;
end

imshow(eigenIm) ;
