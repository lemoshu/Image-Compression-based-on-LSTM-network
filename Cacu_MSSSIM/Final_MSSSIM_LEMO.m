a=imread('F:\image_encoder\dog\example.png');
b=imread('F:\image_encoder\dog\image_15.png');
a=rgb2gray(a);%ת��Ϊ�Ҷ�ͼ
b=rgb2gray(b);
overall_mssim = msssim(a, b)