function [ OutputName ] = FaceRec(m, A, Eigen_imgs)
%cd TestImage;
while (1==1)
choice=menu('Skin Disease Recognition',...
      'Input Image From File',...
                'Capture Now',...
'Recognition',...
                'Exit');
if (choice ==1)
try cd TestImage;close all; end; 
ChooseFile = imgetfile;
capcha = imread(ChooseFile);
         %capcha = imcrop(capcha,[180,20,280,380]);
imshow(capcha);
saveimage(capcha);
end
if (choice == 2)
try cd TestImage;close all; end;
capturenow;

end
if (choice == 3)
OutputName=Recognition(m, A, Eigen_imgs);
       n=((OutputName+1)/2);

im=imread('InputImage.jpg');
cd ..;
img=strcat('TrainDatabase\s',int2str(n),'\1.png');
SelectedImage=imread(img);
subplot(121);
imshow(im)
title('Test Image');
subplot(122),imshow(SelectedImage);
title('Equivalent Image');
disp('Disease No');
disp(int2str(n));

end

if (choice == 4) 
clc; 
close all;
return;
end
end
