%取图像
origImg = imread('3.jpg');
grayImg = rgb2gray(origImg);
figure(1)
imshow(grayImg);


%不平移快速傅里叶变换
ftImg = fft2(grayImg);
%ftImg = myft3(grayImg);
figure(2)
imshow(abs(log(ftImg)+1),[]);


%平移快速傅里叶变换
shiftGrayImg = grayImg;
[M,N] = size(shiftGrayImg);
for y=1:M
    for x=1:N
        shiftGrayImg(y,x) = grayImg(y,x)*(-1)^(x+y);
    end
end
%shiftFtImg = myft3(shiftGrayImg);
shiftFtImg = fft2(shiftGrayImg);
figure(4)
imshow(abs(log(shiftFtImg)+1),[]);


%反变换验证
iftImg = abs(ifft2(ftImg));
figure(3)
imshow(iftImg,[]);