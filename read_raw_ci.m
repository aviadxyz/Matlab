clear

fName = '/home/aviadl/easycheck/trunk/daemon/src/buildDbg/CNN_DETECTOR::FEMALE_CHEST_6.dat' ;
fName = '/mnt/raid/DeepLearning/TrainingData/BELLYGROIN/train/1/session_25701_0_135_0_0_0_GROIN_FRONT_cc_17_TATP.ci'
fName = 'session_26700_0_128_0_0_0.ci'
fName = '/home/aviadl/easycheck/trunk/daemon/utilities/deepLearning/Python/DlibWrapper/ggg.dat'
cols = 50;
rows = 100;
channels = 2;

size = rows*cols*channels ;
fileID = fopen(fName,'r');
% fwrite(fileID,[1:9]);
dat = fread(fileID , 'float');
fclose(fileID);

%% 
dat =[1,1,1,1,1,2,2,2,2,2,5,5,5,5,5];
imshow(reshape(dat,5,3));
%%
image = reshape(dat,cols,rows*channels);
imshow ((image)') ;

%%

data = zeros(channels, rows*cols);
j= 1;
for i=1:3:size
    for ch = 1:channels        
        data(ch,j)=dat(i+(ch-1));
    end
    j = j+1;
end

image = zeros(channels, rows, cols);
for ch = 1:3
    image(ch,:,:) = flipud((reshape(data(ch,:),cols,rows))') ;
    im=squeeze(image(ch,:,:)) ;
%     im = im./max(max(im)) ; 
%     figure ;
%     imshow (im) ;
    
end

intensity = squeeze(image(1,:,:)) ;
depth = squeeze(image(2,:,:)) ;
mask = squeeze(image(3,:,:)) ;

imshow (depth) ;
% mesh(squeeze(image(2,:,:)) ) ;

