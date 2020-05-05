N=1000;
    a=zeros(N,1);b=zeros(N,1);
    for ii=1:N
        [coef1]=cy_jsR(gPM25,zsomedata,1000,'LM');
        a(ii)=coef1;
        [coef2]=cy_jsR(gPM25,zsomedata,1000,'BYS');
        b(ii)=coef2;
    end
    LM_m=mean(a);
    BYS_m=mean(b);
