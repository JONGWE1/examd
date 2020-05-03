function [t1,t2,n]=take_certain_time(tdata,varargin)
% tdata为时间数据，必须为zTIME或gTIME
    narginchk(2,3);
    if nargin==2            
%         只传入一个时间的时候，输出这个时间在数组中的位置，只需要输出t1
%         示例：[t1,~,~]=take_certain_time(zTIME,'2018/11/14 10:38')
%         返回>>t1=16，代表这个时间在数组的第16个
        t1=find(tdata==varargin{1});
        t2=find(tdata==varargin{1});
        n=t2-t1;
    elseif nargin==3
%         传入两个时间的时候，分别输出这两个时间在数组中的位置t1和t2
%         n为两个时间之间的间隔
%         示例：[t1,t2,n]=take_certain_time(zTIME,'2018/11/14 10:02','2018/11/14 10:38')
%         返回>>t1=1        t2=16        n=15，即分别对应第1个和第16个时间
        t1=find(tdata==varargin{1});    
        t2=find(tdata==varargin{2});
        n=t2-t1;
    end
end