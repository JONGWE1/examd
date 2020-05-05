function [y1] = NNF_BysCO(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 05-May-2020 23:24:18.
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
b1 = [-0.13414879835258688989;-0.2268262403562056051;1.9031849331846475426;0.65992179237917936163;-1.5694389457296327173;0.50760483525482025247;-0.85306303334500144242;-0.60599818246002989941;1.025427692345020958;-1.4725482463596988314;3.3498648873656202696;-0.57963597790798448983;-0.85662096463984360728];
IW1_1 = [-0.62619473858967800162 -0.65589703407503141541 -1.6071408597563807685 -0.8042107781028241531 0.083673384677794351849 1.7578548264305617899 0.2120554655077784012 -0.29889537031762097863 -0.36074658593322134204 1.6080454945543087852 0.45277261002049656868;0.54754875747649200957 1.8022027359378380851 0.054650682633695768509 0.23079649862040477193 0.94707333268642268642 0.29568728125641491333 -0.0057092355732196471002 -0.58267760088124620488 -2.0832609730044913121 0.010760897141231316743 -1.521626988100893918;0.25236986948029632716 -0.096113019384348977181 0.64788858280028760461 -0.046416888080257560911 2.7788314428536655676 0.49923583515671776656 -0.044221270985849076007 0.26395372419871421243 -2.9890396745613698748 0.32733195332545939049 0.35762411510963576511;-0.076739129698124783352 -1.2268816567603380019 0.74527009622180973025 0.0079275670150066382402 -0.77336287246844859222 -0.6728078271892355966 0.21202371111232135026 0.40382324397725538612 1.3423566311505956694 -0.0080062013309359428281 0.59871031120183815233;0.39735943627870845551 -0.54099669852190312991 -1.4919966885345425922 0.31757641131270192281 -1.1989956786130280264 -0.65002548117321423682 -0.041350079589604599173 1.1428799352546907819 -0.88688703718080874605 1.8059756946389160515 0.56007002565098973346;-0.31299962515129814422 -1.1417214133042268287 0.41088032389755274609 -0.5282676128028100937 -1.0044965109156960281 0.60795344268278794786 0.14049815812025076567 0.51204246120613294835 3.6684387565819935872 2.5062684163498381018 1.103028945623137913;-0.64884728124342105904 0.52300498928931760112 2.0526388343616557286 -0.59035041465451310039 -1.0645056500401601784 1.0606792483449511977 0.093144835869167247333 -1.4056767195423087724 1.3199909203066433339 -2.0838532830521483419 -0.50455452585477333916;-0.33494859464432191754 0.65076344235687610951 -0.35647215973830537195 0.058724489173064435554 0.11299569397207452626 0.23074088588677574285 -0.13605418004481478755 0.67766922523717676441 -0.78255889280100254801 -0.28144464271196051319 0.22263258819900186292;-0.29043078710505032536 0.040688353700975378457 -0.37210824937926323397 -0.039358911521527963073 0.80363331955954531161 -0.22564179271961959383 0.043485211054818381782 -0.0018566412226726151762 1.9114759251818231878 -0.13026176684619256152 -0.065638808528585307345;1.6659187503570569433 -2.2034717338417517674 -1.0509764446389473491 -0.28493736170088318493 -0.85595203435350231125 -0.22208670062104174381 0.073102243309872666499 -0.94834708903405173785 0.39025174273051488338 0.25732171554494503996 -0.49283317587505981461;-0.81313081275040588469 1.3068644564140168285 2.5962840911503741737 0.016235916647621449066 1.9803975448853581298 -0.12060604712352888945 -0.05442501043685914891 -0.10117783740199265408 0.015230971035392840834 -1.4066244213854623979 -0.40682777796884189714;2.4346606231015965882 -2.8219203285836593764 -2.9128318122843306348 -0.13426334040922380253 1.2181052648771462099 -0.086511656660647612282 0.0071101525314270844214 -0.53369123728946266105 0.2754684087377237689 1.0181203794204192192 -0.13392835905748531888;0.60050086978667238657 -0.16044564742906583521 0.36190379722585619415 0.044048389174508914556 -1.6723514732437161356 0.51855122114922058696 -0.094704937854825976817 -0.62194278454930651545 -2.4328666041375495155 -0.63362586849199098449 -0.11245601953914974303];

% Layer 2
b2 = -0.65823637988925087772;
LW2_1 = [0.40585324525415622521 -0.93135010846751264957 2.3695185832895684364 -1.4613753411388732406 2.3884308370667048926 -0.39336094681993882816 1.46675105861141164 -1.822387725644331935 4.1839582796059344716 -2.0800313694537977405 2.6990792780627841374 2.4242463512034997386 1.3263698205205742831];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.520156046814044;
y1_step1.xoffset = 0.05;

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
