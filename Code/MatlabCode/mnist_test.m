%�ó���Ϊʹ��caffe��mnistѵ��������model����Ԥ�����ͼƬ�ı�ǩ

% ---------------------------------------��д����--------------------------------------
clc;clear all;close all;

im=imread('/testimage/1.png');

figure;imshow(im);
%����imҪ����ת��
[scores,maxlabel]=classification_fuction(im',0);%��ȡ�÷� �ڶ�������0��cpu 1:gpu

figure;plot(scores);%�����÷����
axis([0,10,-0.1,1.5]);%�����᷶Χ
grid on;%������

fid=fopen('label.txt','r');
i=0;
while ~feof(fid)%test for end-of-file
    i=i+1;
    lin=fgetl(fid);%read line from file
    lin=strtrim(lin);%remove the leading and trailing white-space from string
    if(i==maxlabel)
        fprintf('(English)the maxlabel of %d in label txt is %c\n',i,lin);
        break;
    end
end