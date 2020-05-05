function [Gcy,Gcypre,coef]=cy_jsR(gmubiao,zshuru,n,gas,Algorithm)
    %����������R
    %�����gmubiao��zshuru�ֱ���ѵ��������ʱ�õ�����ֵ������ֵ
    %AlgorithmΪ�㷨�����롮BYS����'LM'
    switch gas
        case 'PM25'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysPM25(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMPM25(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'PM10'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysPM10(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMPM10(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'CO'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysCO(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMCO(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'NO2'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysNO2(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMNO2(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'SO2'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysSO2(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMSO2(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
        case 'O3'
            switch Algorithm
            case 'BYS'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_BysO3(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            case 'LM'
                [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n);
                [Gcypre] = NNF_LMO3(Zcy);%ʹ��ǰ��ע�����
                a=corrcoef(Gcypre,Gcy);
                coef=a(2);
            end
    end
end
