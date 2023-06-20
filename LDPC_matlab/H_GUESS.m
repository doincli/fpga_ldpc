function arry=H_GUESS(H,N)                  %校验矩阵高斯消元

f=rank(H);
A=H;

for c=1:N                   %定义一个1*n的矩阵，下边会用到
    B(1,c)=0;
end

%变下三角进行高斯消元
for k=f:-1:2
    t=k+f;      %k+256
    for i=k-1:-1:1;
        if(A(k,t)~=0)        %除数不为0时，进行各行的计算
           divisor=A(i,t)/A(k,t); 
           A(i,:)=xor(A(i,:),A(k,:)*divisor);
        else
            for n= k:-1:1;
                if(A(n,t)~=0)
                    B(1,:)=A(k,:);
                    A(k,:)=A(n,:);
                    A(n,:)=B(1,:);
                end
            end
        end
    end
end

%变上三角进行高斯消元
for j=1:f-1                         %高斯消元法算法
    p=j+f;
    for i=(j+1):f
        if(A(j,p)~=0)        %除数不为0时，进行各行的计算
           divisor=A(i,p)/A(j,p);
           A(i,:)=xor(A(i,:),A(j,:)*divisor);
        else                           %除数为0时，找到当前列中，元素不为0的行数，两者进行交换
            for k=j:f                  %此时用到了上面定义的一行n列的矩阵
                if(A(k,p)~=0)     %矩阵行元素进行交换
                    B(1,:)=A(j,:);
                    A(j,:)=A(k,:);
                    A(k,:)=B(1,:);
                end
            end
        end
    end
end
arry=A;