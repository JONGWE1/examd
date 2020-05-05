function [y1] = NNF_LMPM25(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 05-May-2020 15:36:54.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx11 matrix, input #1
% and returns:
%   y = Qx1 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [4;5;0.2;0;2;0;0.1;996.6;0;-4;10];
x1_step1.gain = [0.00809716599190283;0.00400801603206413;0.740740740740741;0.0121212121212121;0.00181653042688465;0.00826446280991736;0.5;0.0461893764434179;0.00640820249919897;0.0476190476190476;0.0222222222222222];
x1_step1.ymin = -1;

% Layer 1
b1 = [-2.4738670508924180957;-4.4126246860766036306;-1.4031210555713928834;-2.7566532442050282192;0.85009333808984322012;-1.054277675642059986;-1.7913798186252198885;3.3771624577664502986;-0.41349076647069255008;-1.2238469381500647337;-5.0348524876111566684;-0.71923019981662128508;1.344333502503012312];
IW1_1 = [1.1498674267445005981 2.8489779174925087268 -1.2763762092949306748 1.5597348932902708185 -0.59811222361590132834 0.54502560345605877146 0.97082804127493671498 1.7672892711699872414 -4.1272376810077107123 2.4844989685371681176 -0.39256957908474149344;2.8331236960051162654 1.9509296929271209287 2.6761661150784830099 2.4461207260113830841 2.478651033536350301 -1.03624977636658544 2.0547125441082596531 -0.091822265078761386436 1.3386155731400672941 2.9012436035723920824 -7.6874259552069110768;3.5032624407700665436 -3.1859116093326522723 -0.20955636815863726286 -0.089074936495681739101 -1.0325789584232563101 -1.0650569361732968865 0.50979346640366418608 -0.6405982393496725269 -0.12596431898265633698 -1.7648564387424436894 -0.3573143891769041125;-2.9592203656293403213 -2.8026191561570570343 0.61654259508475628415 -0.64609165313161076583 -1.9415754340106818887 0.14781408524229922019 -0.56044505115501996872 0.31369856663160283761 -0.068452746596074171004 -1.3987769522415138823 0.31301691280038651533;0.49936345608981691502 -0.76309010288047007808 2.1833011260684243027 1.9496372385784959125 -0.25728237470746512239 -1.775545819109055401 -0.25973956629543337726 -0.062226112888850035332 0.11548929458699734585 -1.0184168522096106457 -0.32039007286070736447;0.55970428275096950621 -1.6355303110605134975 -0.39707473874237797506 0.83060337847804222022 -1.1935958567174269618 0.50714088620556818654 -0.4748968820973744065 1.8955164968506368339 0.24541058983617886069 2.7190233727206307712 -1.4691684723255993283;-3.3851499350138007927 0.044614316544353049832 -0.087188717246370853187 -0.12028411996230239933 0.36367448914452704667 -0.013554575656718324816 0.098609116134308089086 -0.15189195541415867474 -0.088002521551581683323 -0.88156423227880298388 -0.025339948407001246233;-3.1689382410831252734 5.1516407016244567529 0.70976499327638054027 2.4323289881704535098 -1.2643407229400227543 0.41070215501224238697 0.45863544336894485065 0.0082739813476073523213 -0.18338912531199647038 1.2281037179819616068 0.65273123711618941112;0.20462487894916650544 -1.1028730483275381857 -0.27975469796862745264 -0.66947857503715768601 -0.64624004349501662503 -0.20300612627065645066 0.22821497179272348665 -1.1206179707434908988 0.51784153590629833364 -1.4190964893095623367 1.2606015363279960972;4.318294341812042525 -4.3115779188603688965 -0.17647145091239707648 -0.019482645013124334776 -0.56327515093273061719 -1.2048970547996789016 0.58089063032005694431 -0.7036394901534314128 -0.12491084499099185112 -1.9206155584687276683 -0.37490935041603429267;-0.24590427890794447352 -0.34389487645514077441 0.14257271236172958107 0.0086956462501942069498 -4.9110309657458195431 0.82413746708794644036 -0.047538904702967003935 0.27029152890565960599 0.075227662316260615616 1.5168038194781117145 1.0950737245214707816;-0.22950641183986719707 1.4293573491158655386 0.23718495335048780936 0.65637686822081842131 -0.72596609546676005298 0.20062186540706306026 -0.14633925287058402454 0.85055650871611554464 -0.59028813910600141934 1.2812241542409030792 -1.0347131640125659668;-1.0480959824626920884 1.2917129192012812844 0.010736744560556940598 -0.4490232599233789923 -1.5749666002886535399 0.40410762651194376271 0.6942629798311615863 -0.94645205245611740974 0.19306753031949674959 1.7630312513363775029 3.3315772820075659766];

% Layer 2
b2 = -1.996150825217156477;
LW2_1 = [-0.18486833936922003607 -1.5740302635732692504 -1.9942732825542499597 -0.22137775631059877779 -0.1157153155796069588 -0.15321798931441990566 -0.3695231547148015161 0.10287521143714606353 1.6535469696725710875 1.5581323257275112582 -0.52625090836068877387 1.7652609246449024738 -0.14816978356339075007];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00930232558139535;
y1_step1.xoffset = 1;

% ===== SIMULATION ========

% Dimensions
Q = size(x1,1); % samples

% Input 1
x1 = x1';
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
y1 = y1';
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end