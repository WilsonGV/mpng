function mgc = ng_case48
%% ========================================================================
% 48-node natural gas system for optimal power & natural gas flow.
% =========================================================================
% Authors:  (1) Wilson Gonz�lez Vanegas, M.Sc 
%           (2) Sergio Garc�a Mar�n, M.Sc(c)  
% (1) Automatic Research Group, Universidad Tecnol�gica de Pereira.
% (2) GIPEM, Universidad Nacional de Colombia - Sede Manizales.
% =========================================================================
%% ---------------------- Matpower gas case version ----------------------
mgc.version = '1'; 

%% ------------------------------ Gas bases ------------------------------

mgc.pbase = 500; % base pressure [psia]
mgc.fbase = 100;  % base flow [MMSCFD]: "Million Standard Cubic Feet per Day" 
mgc.wbase = 100; % base power [KW]

%% ------------------------------ Node data ------------------------------
                          
% node_id  type  p 	Pmax    Pmin	pi_+	pi_-	al_pi_+     al_pi_-     gd  #gd              

mgc.node.info = [
    1	2	1000        1450	900	0	0   100e3   100e3   0	2;
    2	2	950         1400	900	0	0	100e3   100e3   0	2;
    3	1	763.527 	1450	300	0	0	100e3   100e3   0	2;
    4	2	935.161     1400	300	0	0	100e3   100e3   0	2;
    5	2	933.285     1400	300	0	0	100e3   100e3   0	2;
    6	2	897.055     1400	300	0	0	100e3   100e3   0	2;
    7	2	878.369     1400	300	0	0	100e3   100e3   0	2;
    8	1	833.448     1400	300	0	0	100e3   100e3   0	2;
    9	1	931.494     1400	300	0	0	100e3   100e3   300	2;
    10	1	1007.671	1400	300	0	0	100e3   100e3   0	2;
    11	1	909.309     1400	300	0	0	100e3   100e3   100	2;
    12	1	839.048     1400	300	0	0	100e3   100e3   0	2;
    13	1	929.032     1400	300	0	0	100e3   100e3   0	2;
    14	1	865.125     1400	300	0	0	100e3   100e3   0	2;
    15	2	800.913     1400	300	0	0	100e3   100e3   0	2;
    16	1	851.332     1400	300	0	0	100e3   100e3   50	2;
    17	1	852.458     1400	300	0	0	100e3   100e3   0	2;
    18	2	781.837     1400	300	0	0	100e3   100e3   0	2;
    19	1	796.105     1400	300	0	0	100e3   100e3   0	2;
    20	2	672.384     1400	300	0	0	100e3   100e3   0	2;
    21	1	726.750     1400	300	0	0	100e3   100e3   0	2;
    22	1	785.512     1400	300	0	0	100e3   100e3   0	2;
    23	1	645.666     1400	300	0	0	100e3   100e3   100	2;
    24	1	517.395     1400	300	0	0	100e3   100e3   0	2;
    25	1	753.619     1400	300	0	0	100e3   100e3   400	2;
    26	1	631.640     1400	300	0	0	100e3   100e3   0	2;
    27	1	628.360     1400	300	0	0	100e3   100e3   80	2;
    28	1	531.710     1400	300	0	0	100e3   100e3   0	2;
    29	1	439.519     1400	300	0	0	100e3   100e3   0	2;
    30	1	416.563     1400	300	0	0	100e3   100e3   70	2;
    31	1	412.988     1400	300	0	0	100e3   100e3   70	2;
    32	1	414.406     1400	300	0	0	100e3   100e3   0	2;
    33	1	415.820     1400	300	0	0	100e3   100e3   60	2;
    34	1	411.250     1400	300	0	0	100e3   100e3   50	2;
    35	1	401.610     1400	300	0	0	100e3   100e3   60	2;
    36	1	401.374     1400	300	0	0	100e3   100e3   60	2;
    37	1	492.950     1400	300	0	0	100e3   100e3   0	2;
    38	1	450.870     1400	300	0	0	100e3   100e3   40	2;
    39	1	425.873     1400	300	0	0	100e3   100e3   30	2;
    40	1	411.528     1400	300	0	0	100e3   100e3   30	2;
    41	1	405.328     1400	300	0	0	100e3   100e3   40	2;
    42	1	404.838     1400	300	0	0	100e3   100e3   40	2;
    43	1	405.983     1400	300	0	0	100e3   100e3   40	2;
    44	1	429.873     1400	300	0	0	100e3   100e3   40	2;
    45	1	474.613     1400	300	0	0	100e3   100e3   100	2;
    46	1	576.135     1400	300	0	0	100e3   100e3   100	2;
    47	1	463.664     1400	300	0	0	100e3   100e3   200	2;
    48	1	711.844     1400	300	0	0	100e3   100e3   0	2;    
    ];

%   Res     Ind         Com     NGV         Ref     Pet      <---- [MMSCFD]
mgc.node.dem = [
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    180	120	;
    0	0	;
    70	30	;
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    35	15	;
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    0	0	;
    70	30	;
    0	0	;
    280	120	;
    0	0	;
    56	24	;
    0	0	;
    0	0	;
    49	21	;
    49	21	;
    0	0	;
    42	18	;
    35	15	;
    42	18	;
    42	18	;
    0	0	;
    28	12	;
    21	9	;
    21	9	;
    28	12	;
    28	12	;
    28	12	;
    28	12	;
    70	30	;
    70	30	;
    140	60	;
    0	0	;    
    ];

% al_Res    al_Ind	al_Com  al_NGV	al_Ref	al_Pet          <----[$/MMSCFD]
mgc.node.demcost = 1e5*[
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    200	500	;
    ];
    
%% ------------------------------ Well data ------------------------------     

% node  I   pw  Imax   Imin     status      Cg
mgc.well = [
    1	200	950	950	0	1	5e3;
    2	200	950	750	0	1	5e3;
    4	200	950	350	0	1	5e3;
    5	200	950	300	0	1	5e3;
    6	200	950	300	0	1	5e3;
    7	200	950	300	0	1	5e3;
    15	100	950	150	0	1	5e3;
    18	100	950	150	0	1	5e3;
    20	450	950	600	0	1	5e3;
    ];

%% ---------------------------- Pipeline data ----------------------------

% fnode  tnode  FG_O	Kij        D   L   Fg_max Fg_min C_O
mgc.pipe = [
    1	8	300	1.3023	0	0	950     -950    0.050e3;
    2	4	300	1.9474	0	0	1172	-1172   0.050e3;
    4	7	300	1.8238	0	0	1098	-1098   0.050e3;
    5	6	300	0.6032	0	0	363     -363    0.050e3;
    6	7	300	1.8238	0	0	1098	-1098   0.050e3;
    7	3	300	4.1012	0	0	2469	-2469   0.050e3;
    9	11	300	1.3023	0	0	950     -950    0.050e3;
    10	11	300	4.1012	0	0	2469	-2469	0.050e3;
    11	12	300	8.3042	0	0	4999	-4999	0.050e3;
    13	14	300	1.3023	0	0	950     -950	0.050e3;
    14	19	300	1.3023	0	0	950     -950	0.050e3;
    15	19	300	1.3023	0	0	950     -950	0.050e3;
    19	20	300	1.3023	0	0	950     -950	0.050e3;
    13	17	300	2.8505	0	0	1716	-1716	0.050e3;
    17	16	300	1.3023	0	0	784     -784	0.050e3;
    17	18	300	2.8505	0	0	1716	-1716	0.050e3;
    18	20	300	2.8505	0	0	1716	-1716	0.050e3;
    25	26	300	1.3023	0	0	950     -950	0.050e3;
    26	27	300	1.5487	0	0	932     -932	0.050e3;
    26	28	300	1.3023	0	0	784     -784	0.050e3;
    28	29	300	0.6092	0	0	367     -367	0.050e3;
    29	30	300	0.6441	0	0	388     -388	0.050e3;
    30	31	300	0.6092	0	0	367     -367	0.050e3;
    31	32	300	0.6441	0	0	388     -388	0.050e3;
    32	33	300	0.6441	0	0	388     -388	0.050e3;
    33	44	300	0.6441	0	0	388     -388	0.050e3;
    29	34	300	0.6092	0	0	367     -367	0.050e3;
    34	35	300	0.6441	0	0	388     -388	0.050e3;
    35	36	300	0.6441	0	0	388     -388	0.050e3;
    36	43	300	0.6441	0	0	388     -388	0.050e3;
    28	37	300	0.6092	0	0	367     -367	0.050e3;
    37	38	300	0.6092	0	0	367     -367	0.050e3;
    38	39	300	0.6092	0	0	367     -367	0.050e3;
    39	40	300	0.6092	0	0	367     -367	0.050e3;
    40	41	300	0.6092	0	0	367     -367	0.050e3;
    41	42	300	0.6092	0	0	367     -367	0.050e3;
    43	42	300	0.6441	0	0	388     -388	0.050e3;
    44	43	300	0.6441	0	0	388     -388	0.050e3;
    45	44	300	1.4341	0	0	863     -863	0.050e3;
    45	47	300	3.8938	0	0	2344	-2344	0.050e3;
    46	45	300	2.7427	0	0	1651	-1651	0.050e3;
    22	23	300	2.7427	0	0	1651	-1651	0.050e3;
    23	24	300	2.7533	0	0	1657	-1657	0.050e3;
    ];
%% ---------------------------- Compressor data ----------------------------
% fnode  tnode  Type    fgc     pcc     gcc     ratio   bc  zc  al  be  ga      fmaxc   costc
mgc.comp = [
    8	9	2	0	0	0	1.2     4.8808	0.236	0	0.00025	0	5000    0.050e3;
    3	10	2	0	0	0	1.3     4.8808	0.236	0	0.00025	0	5000	0.050e3;
    12	13	2	0	0	0	1.2     4.8808	0.236	0	0.00025	0	5000	0.050e3;
    20	21	2	0	0	0	1.1     4.8808	0.236	0	0.00025	0	5000	0.050e3;
    20	48	2	0	0	0	1.15	4.8808	0.236	0	0.00025	0	5000	0.050e3;
    21	22	2	0	0	0	1.2     4.8808	0.236	0	0.00025	0	5000	0.050e3;
    48	25	2	0	0	0	1.1     4.8808	0.236	0	0.00025	0	5000	0.050e3;
    24	46	2	0	0	0	1.05	4.8808	0.236	0	0.00025	0	5000	0.050e3;
    ];
%

%% -------------------------------- Storage --------------------------------
%node   V	V0 Vmax V_max   fs  fs+ fs- fsmax   fsmin   sta	C_V C_S+ C_S-
mgc.sto = [
    3	0   0   0   0	0   0   0   0   0   0   0   0   0;
    5 	0   0   0   0	0   0   0   0   0   0   0   0   0;
    7 	0   0   0   0	0   0   0   0   0   0   0   0   0;
    ];


             
                  