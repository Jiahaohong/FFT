function [ outputMat ] = myft1( inputMat )
%FTImg = myft1(OrigImg) 
%   ��ȫ���ն�����㷨

[M,N] = size(inputMat);
inputMat = double(inputMat);
outputMat = double(zeros(M,N));

for v = 1:M
    for u = 1:N
        sum = 0.0;
        for y = 1:M
            for x = 1:N
                sum = sum + inputMat(y,x)*exp(-2*1i*pi*((v-1)*(y-1)/M+(u-1)*(x-1)/N));
            end
        end
        outputMat(v,u) = sum;
    end
end

end

