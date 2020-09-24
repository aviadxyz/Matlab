fName = '/home/aviadl/easycheck/trunk/daemon/utilities/deepLearning/Python/DlibWrapper/probs.dat';

fName = '/home/aviadl/easycheck/trunk/daemon/utilities/deepLearning/Python/DlibWrapper/nof_FRONT_THIGH.dat';

fName = '/home/aviadl/x_shifts.dat'
dat=load(fName);
%%
values=dat(:,3);
xvalues=1:15;
%%

%%
[n,x] = hist(values,xvalues);
hist(values,xvalues);
barstrings = num2str(n');
text(x,n,barstrings,'horizontalalignment','center','verticalalignment','bottom')
xlabel('frames per pass');
ylabel('# passes');
title('THIGH FRONT frames per pass');