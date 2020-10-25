function [ outputMat ] = myft2( inputMat )
%ft 此处显示有关此函数的摘要
%   此处显示详细说明

[M,N] = size(inputMat);
inputMat = double(inputMat);
tempMat = double(zeros(M,N));
outputMat = double(zeros(M,N));

for x = 1:N
    for v = 1:M
        sum = 0.0;
        for y = 1:M
            sum = sum + inputMat(y,x)*exp((-2*1i*pi*(v-1)*(y-1)/M));
        end
        tempMat(v,x) = sum;
    end
end

for v = 1:M
    for u = 1:N
        sum = 0.0;
        for x = 1:N
            sum = sum + tempMat(v,x)*exp((-2*1i*pi*(u-1)*(x-1)/N));
        end
        outputMat(v,u) = sum;
    end
end



end
