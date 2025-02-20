%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:画出卷积积分 f1(t)* f2(t)图形
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%function sconv
%计算连续信号卷积积分 f(t) = f1(t) * f2(t);
% f: 卷积积分 f(t)对应的非零样值向量;
% f_1_t : f1(t)非零样值向量;
% f_2_t : f2(t)的非零样值向量;
% t1 : f1(t)的对应时间向量;
% t2 : f2(t)的对应时间向量;
% t_conv：f(t)的对应时间向量;
% dt：取样时间间隔;

dt = 0.01;
t1 = 0 : dt : 1;
t2 = 1 : dt : 2;
f_1_t = 1 + t1;
f_2_t = t2 .* 0 + 1;


sconv(f_1_t, f_2_t, t1, t2, dt);

t = 1: 0.1: 3;
y = (t.^2 /2 - 0.5).*(t>=1) + (-t.^2 + t + 2).*(t>=2) + (t.^2/2 - t - 1.5).*(t>=3);
hold on
plot(t, y ,'*');
legend('Function Solve','Equation Solve');
