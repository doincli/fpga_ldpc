%H1是高斯消元后的矩阵
% hexStr = ["1" "2" "c"] 
%D = hex2dec(hexStr)
%16进制转2进制的函数 dec2bin(hex2dec('FF'))
clear;clc;
load('H.mat');
H1=H_GUESS(H,512);
%H2是参与运算的生成p矩阵
H2=H1(:,1:256);
% string S; 这部分也可以改成读txt文件，后面同字符串转换  s就是输入的信息元
% S=["0" "4" "0" "3" "0" "6" "0" "5" "0" "7" "7" "c" "0" "9" "0" "8" "0" "b" "0" "a" "0" "d" "0" "c" "0" "f" "0" "e" ...
%     "1" "1" "1" "0" "1" "3" "1" "2" "1" "5" "1" "4" "1" "7" "1" "6" "1" "9" "1" "8" "1" "b" "1" "a" "1" "d" "1" "c" "0" "1" "0" "0" "1" "2" "3" "4" ];
S=["0" "2" "0" "3" "0" "4" "0" "3" "0" "6" "0" "5" "0" "8" "0" "7" "0" "a" "0" "9" "0" "c" "0" "b" "0" "e" "0" "d" ...
    "1" "0" "0" "f" "1" "2" "1" "1" "1" "4" "1" "3" "1" "6" "1" "5" "1" "8" "1" "7" "1" "a" "1" "9" "1" "c" "1" "b" ...
    "1" "e" "1" "d" "0" "1" "0" "0" ];
%先转换成10进制
D = hex2dec(S);
%先转换成2进制
B = dec2bin(D);

%信息码字s
s=[];
for j=1:1:64
     for i=1:1:4
    s(i+(j-1)*4)=str2num(B(j,i));
    end
end

P=s*H2';
%小p1为最后的校验位
p1=rem(P,2);
c=[s p1];%生成的全部码字

%校验位的查看。在生成的txt文件中可以直接查看
rrr = fopen('final_p.txt','a');%% 打开文件
for i = 1:1:16;
y(i)=string(strrep(num2str(p1(16*i-15:16*i)), ' ', ''));
fprintf(rrr,'%04s',num2str(dec2hex(bin2dec(y(i))),'%04d'));
fprintf(rrr,' ');  %% 换行
end
fclose(rrr);
%%
%data_test

%%
%测试代码
test=[s(1:9),1,s(11:256)];
rrr = fopen('test.txt','a');%% 打开文件
for i = 1:1:16;
    y(i)=string(strrep(num2str(test(16*i-15:16*i)), ' ', ''));
fprintf(rrr,'%04s',num2str(dec2hex(bin2dec(y(i))),'%04d'));
fprintf(rrr,' ');  %% 换行
end
fclose(rrr);
%%
% a1=num2str(p1(1:32));
% a11=num2str(p1(33:64));
% a2=num2str(p1(65:96));
% a21=num2str(p1(97:128));
% a3=num2str(p1(129:160));  % 数字转换成字符串
% a31=num2str(p1(161:192));
% a4=num2str(p1(193:224));
% a41=num2str(p1(225:256));
% c1 = strrep(a1, ' ', '') ;
% c2 = strrep(a2, ' ', '') ;
% c3 = strrep(a3, ' ', '') ;
% c4 = strrep(a4, ' ', '') ; %去掉空格
% c11 = strrep(a11, ' ', '') ;
% c21= strrep(a21, ' ', '') ;
% c31 = strrep(a31, ' ', '') ;
% c41 = strrep(a41, ' ', '') ; %去掉空格
% d1=string(c1);
% d2=string(c2);
% d3=string(c3);
% d4=string(c4);
% d11=string(c11);
% d21=string(c21);
% d31=string(c31);
% d41=string(c41);
% final_p1=dec2hex(bin2dec(d1));
% final_p2=dec2hex(bin2dec(d2));
% final_p3=dec2hex(bin2dec(d3));
% final_p4=dec2hex(bin2dec(d4));
% final_p11=dec2hex(bin2dec(d11),'%08d');
% final_p21=dec2hex(bin2dec(d21));
% final_p31=dec2hex(bin2dec(d31));
% final_p41=dec2hex(bin2dec(d41));
% final_p=[final_p1,' ',final_p11,' ',final_p2,' ',final_p21,' ',final_p3,' ',final_p31,' ',final_p4,' ',final_p41]
%%


