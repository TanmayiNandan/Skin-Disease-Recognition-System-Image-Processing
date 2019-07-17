close all
clear all
clc
while (1==1)
choice=menu('Disease Recognition System',...
                'Create Database of Skin Disease Images',...
                'Delete DataBase',...
                'Train System',...
                'Disease Recognition',...
                'Exit');
if (choice ==1)
CreateDatabase;
end

if (choice == 2)
DeleteDatabase;
end

if (choice ==3)
        [m, A, Eigen_imgs]=Trainit();
end
if (choice == 4)
if exist('train.mat');
load train;
end
FaceRec(m, A, Eigen_imgs);
end

if (choice == 5)
clear all;
clc;
close all;
return;
end
end
