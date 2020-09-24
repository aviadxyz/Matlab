% function ShowOpenCVImage(filename)

% if nargin < 1
    %clear all
    %close
    filename = '/home/erani/Branch/daemon/src/modules/auto_detection/filename.txt';
    filename = '/home/aviadl/easycheck/trunk/daemon/src/modules/auto_detection/cvMat.txt'
% end

fileID = fopen(filename,'r');

str = fscanf(fileID,'%s');
str = strrep(str,'[','');
str = strrep(str,']','');

X = str2num(str);

figure, imshow(X,[])
fclose(fileID);

