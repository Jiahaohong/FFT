img = imread('3.jpg');

figure(1);
imshow(img);

ft_img = fft2(img);
figure(2);
imshow(abs(log(abs(ft_img)+1)),[]);

shift_img = fftshift(img);
shift_ft_img = fft2(shift_img);
figure(3);
imshow(abs(log(abs(shift_ft_img)+1)), []);

ift_img = ifft2(ft_img);
figure(4);
imshow(ift_img);