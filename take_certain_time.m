function [t1,t2,n]=take_certain_time(tdata,varargin)
% tdataΪʱ�����ݣ�����ΪzTIME��gTIME
    narginchk(2,3);
    if nargin==2            
%         ֻ����һ��ʱ���ʱ��������ʱ���������е�λ�ã�ֻ��Ҫ���t1
%         ʾ����[t1,~,~]=take_certain_time(zTIME,'2018/11/14 10:38')
%         ����>>t1=16���������ʱ��������ĵ�16��
        t1=find(tdata==varargin{1});
        t2=find(tdata==varargin{1});
        n=t2-t1;
    elseif nargin==3
%         ��������ʱ���ʱ�򣬷ֱ����������ʱ���������е�λ��t1��t2
%         nΪ����ʱ��֮��ļ��
%         ʾ����[t1,t2,n]=take_certain_time(zTIME,'2018/11/14 10:02','2018/11/14 10:38')
%         ����>>t1=1        t2=16        n=15�����ֱ��Ӧ��1���͵�16��ʱ��
        t1=find(tdata==varargin{1});    
        t2=find(tdata==varargin{2});
        n=t2-t1;
    end
end