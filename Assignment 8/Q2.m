clc;
clear;

cgpa = input('Enter the CGPA (between 0 to 10): ');
sop = input('Enter the points for SOP (between 0 to 10): ');
lor = input('Enter the points for LOR (between 0 to 10): ');

cgpa = cgpa / 10;
sop = sop / 10;
lor = lor / 10;

fis = readfis('selection.fis');
% all elements should be between 0 and 1
input = [cgpa sop lor];
output = evalfis(fis, input);

fprintf('The proabablity of selection would be %f %% \n',output*100);
