a=imread('F:\pytorch-image-comp-rnn\test_pic\kodim24.png');%��ȡδѹ����Ƭ
m=24;
%%
for i=0:15
imageName=strcat(num2str(i),'.png');%��Ҫ��ͼƬ��nameȫ������Ϊ0.png��ʽ
b = imread(imageName);
%b=imread('F:\image_encoder\kodim08\image_num2str(i).png');
[PSNR, MSE]=psnr(a,b);%����±꾭���е�����
img1=rgb2gray(a);%ת��Ϊ�Ҷ�ͼ
img2=rgb2gray(b);
MSSSIM = msssim(img1, img2);
%% ����洢
resPSNR(m,i+1)=PSNR;%��kodim�ڼ��ž������ϸ�����
resMSSSIM(m,i+1)=MSSSIM;%��kodim�ڼ��ž������ϸ�����
end