function [Gcy,Gcypre,coef]=cy_jsR(gmubiao,zshuru,n,gas,Algorithm)
    %抽样、计算R
    %输入的gmubiao和zshuru分别是训练神经网络时用的期望值和输入值
    %Algorithm为算法，输入‘BYS’或'LM'
    switch gas
        case 'PM25'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysPM25(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMPM25(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'PM10'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysPM10(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMPM10(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'CO'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysCO(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMCO(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'NO2'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysNO2(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMNO2(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'SO2'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysSO2(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMSO2(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'O3'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysO3(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMO3(Zcy);%使用前请注意更改
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
    end
end
