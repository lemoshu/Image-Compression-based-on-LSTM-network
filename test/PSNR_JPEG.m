a=imread('F:\pytorch-image-comp-rnn\test pic\kodim24.png');%��ȡδѹ����Ƭ
for i=1:16
imageName=strcat(num2str(i),'.jpg');%��Ҫ��ͼƬ��nameȫ������Ϊ0.png��ʽ
b = imread(imageName);
%b=imread('F:\image_encoder\kodim08\image_num2str(i).png');
[PSNR, MSE]=psnr(a,b);%����±꾭���е�����
%img1=rgb2gray(a);%ת��Ϊ�Ҷ�ͼ
%img2=rgb2gray(b);
%MSSSIM = msssim(img1, img2);
%% ����洢
resPSNR(24,i)=PSNR;%��kodim�ڼ��ž������ϸ�����
%resMSSSIM(8,i)=MSSSIM;%��kodim�ڼ��ž������ϸ�����
end
