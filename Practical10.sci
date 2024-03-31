x=input('Enter Input Sequence:');
N=length(x);
s=log2(N);
if(N==8) then
    stage1=1;
    x=[x(1) x(5) x(3) x(7) x(2) x(6) x(4) x(8)];
    for stage=1:s
        for index=0:(2^stage1):(N-1);
            for n=0:(stage1-1);
                pos=n+index+1;
                pow=(2^(s-stage))*n;
                w=exp((-1*%i)*(2*%pi)*pow/N);
                a=x(pos)+x(pos+stage1).*w;
                b=x(pos)-x(pos+stage1).*w;
                x(pos)=a;
                x(pos+stage1)=b;
             end
         end
    stage1=2*stage1;
    end
    y=x;
    disp('FFT of the given input sequence is y(n):');
    disp(y);
else
    stage1=1;
    x=[x(1) x(3) x(2) x(4)];
    for stage=1:s
        for index=0:(2^stage):(N-1)
            for n=0:(stage1-1);
                pos=n+index+1;
                pow=(2^(s-stage))*n;
                w=exp((-1*%i)*(2*%pi)*pow/N);
                a=x(pos)+x(pos+stage1).*w;
                b=x(pos)-x(pos+stage1).*w;
                x(pos+stage1)=b;
            end
        end
    stage1=2*stage1;  
end
y=x;
disp('FFT of the given Input Sequence y(n):');
disp(y);
end
