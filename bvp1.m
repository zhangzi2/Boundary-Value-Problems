%solves u''=f, x in (0,1), u(0)u_a, u(1)=u_b 
function [U] = bvp1(ua,ub,a,b,M,rhsfun,truefun)
        
        dx=(b-a)/M; x=(a:dx:b);
        f=zeros(length(x),1);
        for j=1:length(x)
            f(j)=rhsfun(x(j));
        end
        A=zeros(M+1,M+1);
        for j=2:M
            A(j,j)=2; A(j,j-1)=-1; A(j,j+1)=-1;
        end
        A=A/(dx*dx);
        A(1,1)=1; f(1)=ua;
        A(M+1,M+1)=1; f(M+1)=ub;
        U=A\(f);
        true=zeros(length(x),1);
        for j=1:M+1
            true(j)=truefun(x(j));
        end
        error=zeros(length(x),1);
        for j=1:M
            error(j)=abs(true(j)-U(j));
        end
        %plots
        %{
        plot(x,true);hold on;
        plot(x,U,'*');
        plot(x,error,'r+');
        legend('True','Approximation','Error');
        %} 
        norm(error,inf)
        norm(error,2)
end
%rhsfun=@(t)(-1*exp(t));
%truefun=@(t)(exp(t));
%rhsfun=@(t)(pi*pi*sin(pi*t));
%truefun=@(t)(sin(pi*t));
%U=bvp1(0,0,0,1,100,rhsfun,truefun);