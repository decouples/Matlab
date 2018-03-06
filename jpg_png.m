imgname='03.jpg';
I=imread(imgname);
I_gray=rgb2gray(I);
I_bw=uint8(im2bw(I_gray))*128;
I1=uint8(zeros(size(I,1),size(I,2),3));
I1(:,:,1)=I_bw;
[x,map]=rgb2ind(I1,256);
imgSaveName=imgname(1:length(imgname)-4);
imwrite(x,map,strcat(imgSaveName,'.png'));