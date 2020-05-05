function [y1] = NNF_BysPM10(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 05-May-2020 23:11:32.
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
b1 = [0.23707198987612562724;0.20647460901509570586;0.24184342861769617117;0.1070044020888349795;-0.10672483115522643504;-0.25239268146394666648;-0.12822498072216126364;-0.049341596219502396881;-0.094676996698747600822;-0.078275381244443165141;0.26908806884101632573;0.57183650556633547346;-0.26794232832868147831];
IW1_1 = [-0.22857461164591333369 -0.16529705097997549057 0.16998202698639194863 -0.30857862661630131029 -0.13562026473148072747 -0.22054789059721155442 -0.18058885529279705695 0.22596873955696011871 -0.1874120484890544891 -0.37221091838679770669 0.27137789477398394089;0.16362567571970115798 0.53680679094432326437 0.30999725922999488148 0.44903452155244960586 -0.17042058510971871965 0.64607627909620579665 -0.43202864644363780933 -0.33989109206618189907 -0.34568355240990072952 -0.0031830355761709502177 -0.31537654715013968554;0.23495097229877207057 -0.18571059565829817206 -0.1612367627602130371 0.061596252369995947717 -0.22251671527996130795 -0.36749893212638007345 -0.12997034369258889108 -0.38956361225345087496 0.074834647082337085733 -0.19732203875094156409 -0.40104079937155073798;0.40156140341111162817 -0.37569790328839391957 0.067689233476460830552 -0.65159804001786092442 -0.13298672892468349493 0.29040113068268225138 0.26074395653525572758 0.47916020184631219481 0.08849359837450576638 0.42156151811756237269 0.2215609935373759054;0.55583286964274392083 -0.47165407917236462643 0.11559175110490491067 -0.35716744553602391976 0.0012647345521886376937 0.85438010784090046013 -0.22255162934914532458 0.31511100557831195346 0.043412253975407731621 0.37685347412056974248 -0.34664255020298206933;0.19993466493730910338 -0.12902153697928811504 0.25936007072137634566 -0.15732417817569982477 0.21943723036575468743 -0.1933839508329456558 -0.074895260615015044059 -0.73065819369185980303 -0.0937965660639113602 0.34532477396759059252 0.38101755198691339421;0.025240956313212450923 -0.48499042638566447483 -0.59195735854233599849 0.098346232460773341799 0.14621674280997873363 0.28595126381637908652 0.11996515024164952634 0.44396635532724243456 0.22473981903109888081 0.39836855294039147379 0.18179381794243831827;0.5316473175589851996 -0.36037187437390305611 0.070756608103395526865 -0.10825400131372568679 0.0016089932840824506741 0.83137990747981826978 -0.38474540815358382329 0.14172012278892556769 -0.45104473962273805565 -0.091510676581774752503 0.033675628069293965516;-0.62679263429307663369 -0.15682574592236786515 -0.057528893022238472565 0.016452135457747787267 -0.079174887907389676633 -0.99424242092068060295 0.18607640467413044671 0.2065398007490601151 0.011851065806932153945 -0.51382253847581016437 0.6872024693004057383;-0.1071050497990285455 -0.35085228855428324257 0.20884921748973031552 -0.15326420484826924762 0.14752556140426162368 -0.42498709170343784702 0.49115140796429290759 0.54341089776587581106 -0.02486044926551642803 0.22037396451940791109 0.77184767933761366798;-0.13268175440190477232 -0.30317048551797443068 0.52174436197923823588 0.20804471595826309893 -0.12891644136453367375 -0.16605818410783157457 0.09064642151615846799 -0.10931211371888530093 0.17100164468949907715 -1.0150698589921001158 -0.36911869578618111687;-0.21471782256917135157 -0.1398696908858010346 -0.037198409706039228806 -0.34681132449356882885 -0.5381552683058966613 0.12259448322893348737 -0.25366220839551423261 0.23047001301858122124 0.039112186334339930915 -0.03271295978109158703 -0.79454755518572139916;0.61752408764326638391 -1.3268912541367703373 -0.28578151740107526901 -0.25351633971568826587 0.25619412854100487298 -0.075643826061712965414 0.27892505871192196931 -0.1149025027984610231 0.41538478233990272503 -0.91748943139235727973 -0.10185630804446731135];

% Layer 2
b2 = -0.20733962803104885597;
LW2_1 = [-0.46484517106744266401 0.77854998819216447714 -0.56450111509705247492 -0.74719477366724407208 1.0797527982774606237 -0.46848579286298969171 -0.99300676493942829914 -0.63780886596030661462 0.61161590320359415784 0.6300250581686552831 -1.0915263941645110268 0.52100175955906546932 0.80787120717305715978];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00203458799593082;
y1_step1.xoffset = 2;

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
