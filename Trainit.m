function [m, A, Eigen_imgs]=Trainit()

clear all
clc
close all

TrainDatabasePath = uigetdir('C:\Users\KdAcharya\Desktop\facerec_PCA\TrainDatabase', 'Select training database path' );
T = TrainDatabase(TrainDatabasePath);
[m, A, Eigen_imgs] = EigenfaceCore(T);
End
