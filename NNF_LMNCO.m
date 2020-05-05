function [y1] = NNF_LMNCO(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 05-May-2020 23:23:14.
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
b1 = [-1.8066459808773727147;-1.9321205509856502758;0.74545322667592972543;0.49372764971277838253;-1.0086955980964478208;-0.84950414228030224351;-0.90862870198380885078;-0.31273958817240604668;-1.1576986026281919084;-0.22390352712254787959;1.3582459566917284288;1.5759526794014702133;-0.92757429189588658236];
IW1_1 = [0.73851887850678521463 0.30033706098799262119 -0.90431241912529847227 0.20988985175023747165 0.32684026529802950867 0.56314391415726205992 0.24726832048311189749 -0.70085177842066448406 0.08442143411190333735 1.2573003565943909887 0.081456111595897912059;0.91899125734247522068 0.0509287133520178667 -0.44696510341933137767 0.75680769777726586423 0.63196330026971003768 -1.1225395123719854595 0.2069184950869704942 -1.0019992294715263093 -0.13427817209425754741 -1.3515002974092233945 0.52781644113760084469;-1.5502866566091646483 1.509401441156241086 2.3920298254688545647 -0.13994897911443726635 -0.54201039913312565321 0.82612037633799462188 0.24787489458691006061 -0.29018694055660010367 0.061527498101802795272 -1.6263263244727994561 0.46013495165202450421;-1.3133590848483545077 0.49390209416585878488 0.16017666868068239361 -0.52921475422723607274 -0.16022324254161704471 -0.097879167397795951988 -0.29388236991983357482 0.67755039655802218324 0.12071752953319114798 0.86886567107938394994 -0.57809631688055662657;0.84243808349755122666 0.20192414429851290869 -1.2570884742299581749 0.14628978198220093931 -0.053771791017249999378 -1.4303261765144605899 0.37604718082049126693 0.93424076319874327368 -2.5184099796147578765 -0.97093298281934004024 0.24313823093325584446;1.223759915571032586 -0.91543780969443366846 -0.94793828151454828657 0.090755196521261544129 0.39179155156357625689 -0.80656278606339015802 0.056277889896961766358 -0.02467328158897244203 -1.1903936510502859392 -0.80320212391925116524 -0.032949288545670224471;0.36288240883823080773 0.29794183439854476925 0.66533424567266274963 0.32275421362238215783 -0.15661838659986779265 -0.22996170975958740712 0.0034260216165562379365 -0.52113010120713099127 -0.62832463590826403976 -1.1620927052814877811 -1.0804158824103351488;-1.2212837882694216329 0.20445532836545710076 0.8344723831683273918 -0.18357381227751135011 0.80048509145561208555 -0.44677832420788227141 0.12154422848190836459 0.16867010021213837967 -1.7751288745562598947 1.2544385195330303162 -0.021095228935464446079;-0.26742568733349780796 -0.92762329253753250669 -0.27568586063844141565 -0.29411892691662383514 -0.29843815886510183244 -0.0049371334500402930257 -1.5705914117740624736 0.47376101396239606034 -0.59665014555405171404 0.7414138725558441223 -1.2028139165888962481;-0.97273569533117532071 1.2815644466571869398 0.17029670546491457173 0.53798083910301564003 -0.094192222644758086258 0.2586435383130614718 -0.0404961151067989647 0.021045573111764567797 -1.0084975766803405683 0.78062972828299503902 -0.85992386776143336924;-0.023883499209993899748 0.32782082147850177822 1.5230597473185802926 0.11161023972481906585 0.84979977217904500986 0.1800751911711565012 0.06596581270241910766 -0.38632266527086739361 -0.085552745520232245657 -1.269751898701892312 -0.068307623957166122008;0.65096029385689258007 -0.89723017814217465027 0.15362466531821517002 0.48747419748802556239 -0.17159500232816518595 0.83096370418998399821 0.10192902197103245743 -0.66701020451256720634 0.13569524526140064324 0.68365785570631532053 -0.83938139182947590911;-1.6685393724375430224 1.7635640165713186711 0.49585312864444586189 -0.52901026154040042826 -0.54782661583066782907 0.29469520834401802256 0.050950462059285703265 0.65764682309336386368 0.20012411569563026692 0.57826506976362102019 1.0915571829170633844];

% Layer 2
b2 = 0.42887040145098154209;
LW2_1 = [1.0254297914304453254 0.58599385485120536465 -1.0892484177852121974 0.78270196495612454068 -0.43234607888578124868 1.0287016535530519867 -1.7580423600392722783 -0.39810989936276985901 -0.12615654426400665922 0.57685944409660627752 2.4444556313282448379 0.58255111906127532428 0.98731826346805973138];

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
