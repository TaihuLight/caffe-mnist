%�ó���Ϊ��ʾѵ����־�е�ѧϰ���ߣ�Loss��

% ---------------------------------------��д����--------------------------------------
clc;clear all;close all;

fid=fopen('caffe_train.log','r');
L=1;
while ~feof(fid)
        str=fgetl(fid);
    if ~isempty(str) 
        datafind=['Iteration ',num2str((L-1)*100),', loss =']
        len=length(datafind);
        endlen=length(str);
        index=strfind(str,datafind);
        if index ~=' '
            data=str(index+len:endlen);
            result(L,1)=str2num(data);
            L=L+1;
        end
    end
end
figure;plot(result);%����Lossѧϰ����
axis([0, 100, 0, 3]);%�����᷶Χ  
grid on %������ 
fclose(fid);
