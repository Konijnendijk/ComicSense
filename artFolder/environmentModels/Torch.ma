//Maya ASCII 2015 scene
//Name: Torch.ma
//Last modified: Sun, Jan 25, 2015 12:39:37 AM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201410051530-933320";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.3889369792534358 6.9469861039811001 7.1820470604917865 ;
	setAttr ".r" -type "double3" 354.8616472695918 1078.9999999995186 1.2425934254441997e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.242827192949866;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.65426947266845881 6.3554157737035428 0.31224245396725897 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".rp" -type "double3" 1.124100812432971e-015 6.0056279720583348 0.58778524398803711 ;
	setAttr ".sp" -type "double3" 1.1657341758564144e-015 6.0056279720583348 0.58778524398803711 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48511635791510344 0.48882943391799927 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode mesh -n "polySurfaceShape3" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50773680210113525 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.59742022 0.034088783
		 0.46523106 0.0039175153 0.3592236 0.088455707 0.35922363 0.22404437 0.46523112 0.30858248
		 0.59742028 0.27841115 0.65625 0.15625 0.375 0.3125 0.4107143 0.3125 0.4464286 0.3125
		 0.4821429 0.3125 0.51785719 0.3125 0.55357146 0.3125 0.58928573 0.3125 0.625 0.3125
		 0.375 0.68843985 0.4107143 0.68843985 0.4464286 0.68843985 0.4821429 0.68843985 0.51785719
		 0.68843985 0.55357146 0.68843985 0.58928573 0.68843985 0.625 0.68843985 0.59742022
		 0.72158879 0.46523106 0.69141752 0.3592236 0.77595568 0.35922363 0.91154438 0.46523112
		 0.99608248 0.59742028 0.96591115 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  0.16656765 6.35979176 0.24917026 0.16656765 6.15062952 0.20143035
		 0.16656765 5.98289442 0.33519453 0.16656765 5.98289442 0.54973567 0.16656765 6.15062952 0.68349981
		 0.16656765 6.35979176 0.63575995 0.16656765 6.45287752 0.4424651 0 6.35979176 0.24917026
		 0 6.15062952 0.20143035 0 5.98289442 0.33519453 0 5.98289442 0.54973567 0 6.15062952 0.68349981
		 0 6.35979176 0.63575995 0 6.45287752 0.4424651 0.16656765 6.20564413 0.4424651 0 6.20564413 0.4424651;
	setAttr -s 35 ".ed[0:34]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 0 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 7 0 0 7 0 1 8 0 2 9 0 3 10 0 4 11 0
		 5 12 0 6 13 0 14 0 1 14 1 1 14 2 1 14 3 1 14 4 1 14 5 1 14 6 1 7 15 1 8 15 1 9 15 1
		 10 15 1 11 15 1 12 15 1 13 15 1;
	setAttr -s 21 -ch 70 ".fc[0:20]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 7 8 16 15
		f 4 1 16 -9 -16
		mu 0 4 8 9 17 16
		f 4 2 17 -10 -17
		mu 0 4 9 10 18 17
		f 4 3 18 -11 -18
		mu 0 4 10 11 19 18
		f 4 4 19 -12 -19
		mu 0 4 11 12 20 19
		f 4 5 20 -13 -20
		mu 0 4 12 13 21 20
		f 4 6 14 -14 -21
		mu 0 4 13 14 22 21
		f 3 -1 -22 22
		mu 0 3 1 0 30
		f 3 -2 -23 23
		mu 0 3 2 1 30
		f 3 -3 -24 24
		mu 0 3 3 2 30
		f 3 -4 -25 25
		mu 0 3 4 3 30
		f 3 -5 -26 26
		mu 0 3 5 4 30
		f 3 -6 -27 27
		mu 0 3 6 5 30
		f 3 -7 -28 21
		mu 0 3 0 6 30
		f 3 7 29 -29
		mu 0 3 28 27 31
		f 3 8 30 -30
		mu 0 3 27 26 31
		f 3 9 31 -31
		mu 0 3 26 25 31
		f 3 10 32 -32
		mu 0 3 25 24 31
		f 3 11 33 -33
		mu 0 3 24 23 31
		f 3 12 34 -34
		mu 0 3 23 29 31
		f 3 13 28 -35
		mu 0 3 29 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "pCube2";
	setAttr ".rp" -type "double3" 0.16656765146945651 6.1138134308827174 0.58032844724678612 ;
	setAttr ".sp" -type "double3" 0.16656765146945657 6.1138134308827174 0.58032844724678612 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.59478379786014557 0.57370000332593918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode mesh -n "polySurfaceShape4" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.16656765 6.1138134 0.58032846 0.77064133 6.32601213 0.58032846
		 0.16656765 6.30137062 0.58032846 0.77064133 6.51356983 0.58032846 0.16656765 6.30137062 0.39277086
		 0.77064133 6.51356983 0.39277086 0.16656765 6.1138134 0.39277086 0.77064133 6.32601213 0.39277086;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "pCone1";
	setAttr ".t" -type "double3" 0.73546239634590527 6.0082972470696436 0.511679239342271 ;
	setAttr ".r" -type "double3" 0 0 165.01221858926991 ;
	setAttr ".s" -type "double3" 0.5170639164744365 1.0410039544796605 0.5170639164744365 ;
createNode transform -n "polySurface1" -p "pCone1";
	setAttr ".rp" -type "double3" -2.2204460492503131e-016 0.13618484295747901 2.2204460492503131e-016 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-016 0.13618484295747901 2.2204460492503131e-016 ;
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.87435421347618103 0.28020787239074707 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode mesh -n "polySurfaceShape5" -p "polySurface1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:72]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37813401222229004 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.25 0.5 0.32142857
		 0.5 0.41071427 0.75 0.375 0.75 0.33380747 0.32076454 0.44642857 0.75 0.36952174 0.42923546
		 0.48214287 0.75 0.53571427 0.5 0.51785713 0.75 0.63150764 0.47272894 0.55357146 0.75
		 0.67857146 0.5 0.58928573 0.75 0.70293629 0.27727109 0.625 0.75 0.65587246 0.44545788
		 0.44436976 0.49373198 0.2747578 0.35847092 0.2747578 0.14152905 0.44436979 0.0062680244
		 0.65587246 0.054542154 0.75 0.25 0.44436976 0.49373198 0.2747578 0.35847092 0.44436976
		 0.49373198 0.44436979 0.0062680244 0.44436979 0.0062680244 0.2747578 0.14152905 0.65587246
		 0.054542154 0.65587246 0.44545788 0.75 0.25 0.59253955 0.61136448 0.52678573 0.625
		 0.4258323 0.58961773 0.390118 0.53538227 0.3660714 0.625 0.66396815 0.51363552 0.3125
		 0.625 0.6339286 0.625 0.61202359 0.54204673 0.53125 0.5625 0.397677 0.50942659 0.36196274
		 0.42807341 0.34375 0.5625 0.68345225 0.3954533 0.28125 0.5625 0.65625 0.5625 0.53125
		 0.5625 0.61202359 0.54204673 0.59253955 0.61136448 0.52678573 0.625 0.397677 0.50942659
		 0.4258323 0.58961773 0.36196274 0.42807341 0.390118 0.53538227 0.34375 0.5625 0.3660714
		 0.625 0.28125 0.5625 0.3125 0.625 0.65625 0.5625 0.68345225 0.3954533 0.66396815
		 0.51363552 0.6339286 0.625 0.53459823 0.515625 0.37656057 0.44928324 0.3408463 0.34759176
		 0.3270089 0.515625 0.69806528 0.30681664 0.2578125 0.515625 0.6729911 0.515625 0.62663662
		 0.49005836 0.25 0.5 0.32142857 0.5 0.3270089 0.515625 0.2578125 0.515625 0.33380747
		 0.32076454 0.3408463 0.34759176 0.36952174 0.42923546 0.37656057 0.44928324 0.53571427
		 0.5 0.53459823 0.515625 0.63150764 0.47272894 0.62663662 0.49005836 0.67857146 0.5
		 0.6729911 0.515625 0.70293629 0.27727109 0.69806528 0.30681664;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".pt";
	setAttr ".pt[77]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".pt[78]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[79]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".pt[82]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".pt[84]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".pt[85]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[87]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".pt[88]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".pt[90]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr -s 77 ".vt[0:76]"  0.40320194 -0.86381471 -0.48176897 -0.11811507 -0.86381423 -0.60075617
		 -0.53617775 -0.86381614 -0.2673617 -0.53617775 -0.86381614 0.26736158 -0.11811507 -0.86381423 0.60075611
		 0.40320194 -0.86381471 0.48176891 0.63520944 -0.86381519 2.028443e-016 -0.36909091 -0.86381471 0.19108862
		 -0.070293188 -0.86381519 0.42937213 -0.36909091 -0.86381471 -0.19108856 -0.070293188 -0.86381519 -0.42937219
		 0.30230224 -0.86381519 -0.34432966 0.46812332 -0.86381423 2.028443e-016 0.30230224 -0.86381519 0.34432966
		 -0.2601546 -0.27992806 0.14135963 -0.039114475 -0.27992949 0.31763226 -0.2601546 -0.27992806 -0.14135969
		 -0.039114475 -0.27992949 -0.31763226 0.23651731 -0.27993092 -0.25472116 0.35918367 -0.27992997 2.028443e-016
		 0.23651731 -0.27993092 0.25472122 0.080517411 0.62721312 0.075950086 -0.0016679764 0.62721503 0.094708264
		 -0.067574739 0.62721455 0.042149246 -0.067574739 0.62721455 -0.042149246 -0.0016679764 0.62721503 -0.094708383
		 0.080517411 0.62721312 -0.075950205 0.11709225 0.62721503 2.028443e-016 0.26739883 -0.11830172 0.31364697
		 -0.071995378 -0.11830029 0.39111143 -0.34416795 -0.11830124 0.174061 -0.34416795 -0.11830124 -0.17406106
		 -0.071995378 -0.11830029 -0.39111143 0.26739883 -0.11830172 -0.31364703 0.41844237 -0.11829981 2.028443e-016
		 0.33530033 -0.4910582 0.397708 -0.095055342 -0.49105772 0.49593383 -0.44017255 -0.49105772 0.22071129
		 -0.44017255 -0.49105772 -0.22071135 -0.095055342 -0.49105772 -0.49593386 0.33530033 -0.4910582 -0.39770794
		 0.52682579 -0.49105772 2.028443e-016 0.35924971 -0.48831066 0.42774063 -0.10360515 -0.48832783 0.53338724
		 0.29134762 -0.11555323 0.34367961 -0.080545425 -0.11557135 0.42856485 -0.47478878 -0.48834404 0.2373808
		 -0.37878406 -0.11558661 0.19073039 -0.47478878 -0.48834404 -0.2373808 -0.37878406 -0.11558661 -0.19073045
		 -0.10360515 -0.48832783 -0.53338718 -0.080545425 -0.11557135 -0.42856485 0.35924971 -0.48831066 -0.42774063
		 0.29134762 -0.11555323 -0.34367961 0.56523645 -0.48830113 2.028443e-016 0.45685279 -0.11554369 2.028443e-016
		 -0.11235011 -0.770625 0.57455045 -0.51217663 -0.77062595 0.25569898 -0.51217663 -0.77062595 -0.25569904
		 -0.11235011 -0.770625 -0.57455063 0.38622653 -0.77062595 -0.46075368 0.60811365 -0.77062547 2.028443e-016
		 0.38622653 -0.77062595 0.46075374 0.42367709 -0.840909 -0.50744522 -0.1254245 -0.84091723 -0.63277662
		 -0.11965954 -0.7918545 -0.60657108 0.40670192 -0.79184663 -0.48642993 -0.56577218 -0.8409245 -0.28161311
		 -0.54177129 -0.79186177 -0.26995051 -0.56577218 -0.8409245 0.28161293 -0.54177129 -0.79186177 0.26995033
		 -0.1254245 -0.84091723 0.63277644 -0.11965954 -0.7918545 0.60657078 0.42367709 -0.840909 0.50744516
		 0.40670192 -0.79184663 0.48642987 0.6680485 -0.84090567 2.028443e-016 0.64095247 -0.79184318 2.028443e-016;
	setAttr -s 149 ".ed[0:148]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 0 0
		 3 7 0 4 8 0 7 8 0 2 9 0 9 7 0 1 10 0 10 9 0 0 11 0 11 10 0 12 11 0 5 13 0 13 12 0
		 8 13 0 7 14 0 8 15 0 14 15 0 9 16 0 16 14 0 10 17 0 17 16 0 11 18 0 18 17 0 12 19 0
		 19 18 0 13 20 0 20 19 0 15 20 0 16 20 0 18 20 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0
		 26 27 0 27 21 0 6 12 0 28 21 0 29 22 0 30 23 0 31 24 0 32 25 0 33 26 0 34 27 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 28 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 35 0 35 42 0 36 43 0 42 43 0 28 44 0 42 44 0 29 45 0 44 45 0 43 45 0 37 46 0
		 43 46 0 30 47 0 45 47 0 46 47 0 38 48 0 46 48 0 31 49 0 47 49 0 48 49 0 39 50 0 48 50 0
		 32 51 0 49 51 0 50 51 0 40 52 0 50 52 0 33 53 0 51 53 0 52 53 0 41 54 0 52 54 0 34 55 0
		 53 55 0 54 55 0 54 42 0 55 44 0 56 36 0 57 37 0 58 38 0 59 39 0 60 40 0 61 41 0 62 35 0
		 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0 61 62 0 62 56 0 0 63 0 1 64 0 63 64 0 59 65 0
		 64 65 0 60 66 0 65 66 0 63 66 0 2 67 0 64 67 0 58 68 0 67 68 0 68 65 0 3 69 0 67 69 0
		 57 70 0 69 70 0 70 68 0 4 71 0 69 71 0 56 72 0 71 72 0 72 70 0 5 73 0 71 73 0 62 74 0
		 73 74 0 74 72 0 6 75 0 73 75 0 61 76 0 75 76 0 76 74 0 75 63 0 66 76 0;
	setAttr -s 73 -ch 291 ".fc[0:72]" -type "polyFaces" 
		f 4 116 118 120 -122
		mu 0 4 72 73 74 75
		f 4 123 125 126 -119
		mu 0 4 73 76 77 74
		f 4 128 130 131 -126
		mu 0 4 76 78 79 77
		f 4 133 135 136 -131
		mu 0 4 78 80 81 79
		f 4 138 140 141 -136
		mu 0 4 80 82 83 81
		f 4 143 145 146 -141
		mu 0 4 82 84 85 83
		f 4 147 121 148 -146
		mu 0 4 84 86 87 85
		f 4 -34 -23 -25 34
		mu 0 4 16 17 18 19
		f 4 -35 -27 -29 35
		mu 0 4 16 19 20 21
		f 3 -31 -33 -36
		mu 0 3 21 22 16
		f 4 -4 7 9 -9
		mu 0 4 23 6 24 25
		f 4 -2 12 13 -11
		mu 0 4 4 26 27 28
		f 4 -1 14 15 -13
		mu 0 4 26 14 29 27
		f 4 -5 8 19 -18
		mu 0 4 10 23 25 30
		f 4 -10 20 22 -22
		mu 0 4 25 24 18 17
		f 4 -12 23 24 -21
		mu 0 4 24 28 19 18
		f 4 -14 25 26 -24
		mu 0 4 28 27 20 19
		f 4 -16 27 28 -26
		mu 0 4 27 29 21 20
		f 4 -17 29 30 -28
		mu 0 4 29 31 22 21
		f 4 -19 31 32 -30
		mu 0 4 31 30 16 22
		f 4 -20 21 33 -32
		mu 0 4 30 25 17 16
		f 4 -7 43 16 -15
		mu 0 4 14 12 31 29
		f 4 -6 17 18 -44
		mu 0 4 12 10 30 31
		f 4 -3 10 11 -8
		mu 0 4 6 4 28 24
		f 4 -52 44 36 -46
		mu 0 4 33 32 11 9
		f 4 -53 45 37 -47
		mu 0 4 34 33 9 7
		f 4 -54 46 38 -48
		mu 0 4 35 34 7 5
		f 4 -55 47 39 -49
		mu 0 4 36 35 5 2
		f 4 -56 48 40 -50
		mu 0 4 38 36 2 3
		f 4 -57 49 41 -51
		mu 0 4 39 37 15 13
		f 4 -58 50 42 -45
		mu 0 4 32 39 13 11
		f 4 -68 69 71 -73
		mu 0 4 48 49 50 51
		f 4 -75 72 76 -78
		mu 0 4 52 48 51 53
		f 4 -80 77 81 -83
		mu 0 4 54 52 53 55
		f 4 -85 82 86 -88
		mu 0 4 56 54 55 57
		f 4 -90 87 91 -93
		mu 0 4 58 56 57 59
		f 4 -95 92 96 -98
		mu 0 4 60 61 62 63
		f 4 -99 97 99 -70
		mu 0 4 49 60 63 50
		f 4 -59 65 67 -67
		mu 0 4 41 40 49 48
		f 4 51 70 -72 -69
		mu 0 4 32 33 51 50
		f 4 -60 66 74 -74
		mu 0 4 42 41 48 52
		f 4 52 75 -77 -71
		mu 0 4 33 34 53 51
		f 4 -61 73 79 -79
		mu 0 4 43 42 52 54
		f 4 53 80 -82 -76
		mu 0 4 34 35 55 53
		f 4 -62 78 84 -84
		mu 0 4 44 43 54 56
		f 4 54 85 -87 -81
		mu 0 4 35 36 57 55
		f 4 -63 83 89 -89
		mu 0 4 46 44 56 58
		f 4 55 90 -92 -86
		mu 0 4 36 38 59 57
		f 4 -64 88 94 -94
		mu 0 4 47 45 61 60
		f 4 56 95 -97 -91
		mu 0 4 37 39 63 62
		f 4 -65 93 98 -66
		mu 0 4 40 47 60 49
		f 4 57 68 -100 -96
		mu 0 4 39 32 50 63
		f 4 -102 -108 100 59
		mu 0 4 42 65 64 41
		f 4 -103 -109 101 60
		mu 0 4 43 66 65 42
		f 4 -104 -110 102 61
		mu 0 4 44 67 66 43
		f 4 -105 -111 103 62
		mu 0 4 46 69 67 44
		f 4 -106 -112 104 63
		mu 0 4 47 70 68 45
		f 4 -107 -113 105 64
		mu 0 4 40 71 70 47
		f 4 -101 -114 106 58
		mu 0 4 41 64 71 40
		f 4 0 115 -117 -115
		mu 0 4 0 1 73 72
		f 4 110 119 -121 -118
		mu 0 4 67 69 75 74
		f 4 1 122 -124 -116
		mu 0 4 1 4 76 73
		f 4 109 117 -127 -125
		mu 0 4 66 67 74 77
		f 4 2 127 -129 -123
		mu 0 4 4 6 78 76
		f 4 108 124 -132 -130
		mu 0 4 65 66 77 79
		f 4 3 132 -134 -128
		mu 0 4 6 8 80 78
		f 4 107 129 -137 -135
		mu 0 4 64 65 79 81
		f 4 4 137 -139 -133
		mu 0 4 8 10 82 80
		f 4 113 134 -142 -140
		mu 0 4 71 64 81 83
		f 4 5 142 -144 -138
		mu 0 4 10 12 84 82
		f 4 112 139 -147 -145
		mu 0 4 70 71 83 85
		f 4 6 114 -148 -143
		mu 0 4 12 14 86 84
		f 4 111 144 -149 -120
		mu 0 4 68 70 85 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface2" -p "pCone1";
	setAttr ".rp" -type "double3" 0.049515843391417125 -0.92085200519977928 -2.9802321610539195e-008 ;
	setAttr ".sp" -type "double3" 0.049515843391417125 -0.92085200519977928 -2.9802321610539195e-008 ;
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape7" -p "polySurface2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0 0 0 1 1 1 1 0 0
		 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0
		 0 1 1 1 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  0.38950935 -1.14251196 -0.46311781 -0.11162542 -1.14251149 -0.57749856
		 -0.51350325 -1.14251232 -0.25701109 -0.51350325 -1.14251232 0.25701097 -0.11162542 -1.14251149 0.5774985
		 0.38950935 -1.14251196 0.46311775 0.6125347 -1.14251149 -1.1537651e-009 0.38950935 -0.78990364 -0.46311781
		 -0.1116253 -0.78990364 -0.57749856 -0.51350325 -0.78990448 -0.25701109 -0.51350325 -0.78990448 0.25701097
		 -0.1116253 -0.78990364 0.5774985 0.38950935 -0.78990364 0.46311775 0.61253494 -0.78990364 -1.1537653e-009;
	setAttr -s 21 ".ed[0:20]"  7 0 0 8 1 0 0 1 0 9 2 0 1 2 0 10 3 0 2 3 0
		 11 4 0 3 4 0 12 5 0 4 5 0 13 6 0 5 6 0 6 0 0 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0
		 13 7 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 0 2 -2 -15
		mu 0 4 0 1 2 3
		f 4 1 4 -4 -16
		mu 0 4 4 5 6 7
		f 4 3 6 -6 -17
		mu 0 4 8 9 10 11
		f 4 5 8 -8 -18
		mu 0 4 12 13 14 15
		f 4 7 10 -10 -19
		mu 0 4 16 17 18 19
		f 4 9 12 -12 -20
		mu 0 4 20 21 22 23
		f 4 11 13 -1 -21
		mu 0 4 24 25 26 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" 0.56129410003465519 5.4229315031091359 0.51258971184436752 ;
	setAttr ".r" -type "double3" 0 0 -13.548578708135727 ;
	setAttr ".s" -type "double3" 0.083116094939162527 0.083116094939162527 0.083116094939162527 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32185894995927811 0.36227267980575562 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0 0.2 0.16666667
		 0.2 0.33333334 0.2 0.5 0.2 0.66666669 0.2 0.83333337 0.2 1 0.2 0 0.40000001 0.16666667
		 0.40000001 0.33333334 0.40000001 0.5 0.40000001 0.66666669 0.40000001 0.83333337
		 0.40000001 1 0.40000001 0 0.60000002 0.16666667 0.60000002 0.33333334 0.60000002
		 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002 0.083333336
		 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669 0 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".vt[0:18]"  0.29389286 -0.80900955 -0.50903678 -0.29389334 -0.80900955 -0.50903702
		 -0.58778715 -0.80900955 0 -0.29389334 -0.80900955 0.50903749 0.29389286 -0.80900955 0.50903749
		 0.58778334 -0.80900955 0 0.47552872 -0.30901718 -0.82363892 -0.47553015 -0.30900955 -0.82363892
		 -0.95105743 -0.30901718 0 -0.47553015 -0.30900955 0.82363892 0.47552872 -0.30901718 0.82363892
		 0.95105553 -0.30900955 0 0.47552919 0.30901718 -0.82363892 -0.47552824 0.30902481 -0.82363892
		 -0.95105755 0.30901867 1.1307127e-006 -0.47552872 0.30902481 0.82363892 0.47552919 0.30901718 0.82363892
		 0.95105785 0.30902201 1.1307127e-006 0 -0.99999237 0;
	setAttr -s 38 ".ed[0:37]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 0 18 1 0 18 2 0 18 3 0 18 4 0 18 5 0 13 15 0 12 16 0;
	setAttr -s 21 -ch 76 ".fc[0:20]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 -1 -31 31
		mu 0 3 1 0 21
		f 3 -2 -32 32
		mu 0 3 2 1 22
		f 3 -3 -33 33
		mu 0 3 3 2 23
		f 3 -4 -34 34
		mu 0 3 4 3 24
		f 3 -5 -35 35
		mu 0 3 5 4 25
		f 3 -6 -36 30
		mu 0 3 6 5 26
		f 4 12 36 15 -38
		mu 0 4 14 15 17 18
		f 3 -37 13 14
		mu 0 3 27 28 29
		f 3 37 16 17
		mu 0 3 30 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.4820694625377655 0.4820694625377655 0.4820694625377655 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 27 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.0043049455 2.3841858e-007 ;
	setAttr ".uvtk[3]" -type "float2" 0.0043058991 2.9802322e-007 ;
	setAttr ".uvtk[4]" -type "float2" 0 0.042709947 ;
	setAttr ".uvtk[5]" -type "float2" 0.0043056011 0.042710125 ;
	setAttr ".uvtk[8]" -type "float2" -1.1026859e-006 6.5565109e-007 ;
	setAttr ".uvtk[9]" -type "float2" 6.8545341e-007 5.364418e-007 ;
	setAttr ".uvtk[10]" -type "float2" 2.3841858e-007 0.083279431 ;
	setAttr ".uvtk[11]" -type "float2" -1.4901161e-007 0.083278894 ;
	setAttr ".uvtk[14]" -type "float2" 0.0043057501 0 ;
	setAttr ".uvtk[15]" -type "float2" 0.0043057501 0 ;
	setAttr ".uvtk[18]" -type "float2" 0.01367414 -0.0017572045 ;
	setAttr ".uvtk[19]" -type "float2" 0.016717792 -0.002409637 ;
	setAttr ".uvtk[20]" -type "float2" -0.0034263134 0.0072471499 ;
	setAttr ".uvtk[21]" -type "float2" 0.008546412 0.0041669011 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[18]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[18]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[18]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[14]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[14]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[14]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[14]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
createNode polyMapSewMove -n "polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18]";
createNode polyMapSewMove -n "polyMapSewMove2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[19]";
createNode polyMapSewMove -n "polyMapSewMove3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[14]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -0.5167138 -0.97339106 -0.5178839
		 -1.1579653 -0.37454766 -1.1574291 -0.37710029 -0.97286987 -0.51719528 -1.34255922
		 -0.37385508 -1.3420229 -0.52037245 -0.064190425 -0.52030224 -0.25446498 -0.37256542
		 -0.254412 -0.37264711 -0.064133227 -0.51915908 -0.44476712 -0.37357107 -0.44472945
		 0.52275699 0.39087731 -0.51493675 -0.62949163 -0.37771645 -0.62948221 0.67149532
		 0.50949204 0.33728346 0.43321013 -0.51494086 -0.79778832 -0.38089031 -0.79851776
		 0.67149532 0.69973522 0.25474015 0.6046136 0.47397324 0.6046136 0.52275699 0.81835008
		 0.33728346 0.77601677;
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.60407367348670959 0.60407367348670959 0.60407367348670959 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode polyMapSewMove -n "polyMapSewMove4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyMapSewMove -n "polyMapSewMove5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyMapSewMove -n "polyMapSewMove6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" 0.62149471 0.35166672 0.35949504
		 0.81702089 0.20804264 0.78298259 0.46478173 0.33150202 0.086014763 0.068015553 -0.16544473
		 0.50554484 0.071737498 0.70647484 0.32827675 0.25492814 -0.03152376 0.58908677 0.22489254
		 0.1375303;
createNode polyAutoProj -n "polyAutoProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:72]";
	setAttr ".ix" -type "matrix" -0.49947391841732414 0.13371947704327622 0 0 -0.26921720885523226 -1.0055900395780029 0 0
		 0 0 0.5170639164744365 0 0.73546239634590527 6.0082972470696436 0.511679239342271 1;
	setAttr ".s" -type "double3" 1.5933405877446205 1.5933405877446205 1.5933405877446205 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:72]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode polyMapSewMove -n "polyMapSewMove7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[9]" "e[11]" "e[13]" "e[15:16]" "e[18:33]";
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27]";
createNode polyMapSewMove -n "polyMapSewMove8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27]";
createNode polyMapSewMove -n "polyMapSewMove9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[90]";
createNode polyMapSewMove -n "polyMapSewMove10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[85]";
createNode polyMapSewMove -n "polyMapSewMove11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[75]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 125 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.014386892 -0.00154154 ;
	setAttr ".uvtk[3]" -type "float2" -0.014441013 -0.0013803677 ;
	setAttr ".uvtk[4]" -type "float2" 0.008823812 -0.0019082869 ;
	setAttr ".uvtk[5]" -type "float2" 0.008823216 -0.0019005388 ;
	setAttr ".uvtk[6]" -type "float2" -0.035132289 0.026876211 ;
	setAttr ".uvtk[7]" -type "float2" -0.048022568 0.024308234 ;
	setAttr ".uvtk[8]" -type "float2" -0.022834122 -0.0034919083 ;
	setAttr ".uvtk[9]" -type "float2" -0.02292037 -0.003199514 ;
	setAttr ".uvtk[10]" -type "float2" -0.10127658 -0.0073117521 ;
	setAttr ".uvtk[11]" -type "float2" -0.10071206 -0.0078703314 ;
	setAttr ".uvtk[12]" -type "float2" -0.040148616 0.022577792 ;
	setAttr ".uvtk[13]" -type "float2" -0.11535668 0.014717042 ;
	setAttr ".uvtk[16]" -type "float2" 0.015124023 -5.9902668e-006 ;
	setAttr ".uvtk[17]" -type "float2" 0.015159726 -0.00010019541 ;
	setAttr ".uvtk[18]" -type "float2" -0.0091964602 1.7762184e-005 ;
	setAttr ".uvtk[19]" -type "float2" -0.0091964602 -1.7851591e-005 ;
	setAttr ".uvtk[20]" -type "float2" 0.036065638 -0.056500524 ;
	setAttr ".uvtk[21]" -type "float2" 0.049678862 -0.054301232 ;
	setAttr ".uvtk[22]" -type "float2" 0.023980975 5.0485134e-005 ;
	setAttr ".uvtk[23]" -type "float2" 0.024025679 -0.00016492605 ;
	setAttr ".uvtk[24]" -type "float2" 0.10647857 -0.00057816505 ;
	setAttr ".uvtk[25]" -type "float2" 0.1061337 2.30968e-005 ;
	setAttr ".uvtk[26]" -type "float2" 0.041920543 -0.05333972 ;
	setAttr ".uvtk[27]" -type "float2" 0.1213733 -0.046169162 ;
	setAttr ".uvtk[30]" -type "float2" 0.014456421 -0.0015674829 ;
	setAttr ".uvtk[31]" -type "float2" 0.014460802 -0.001554966 ;
	setAttr ".uvtk[32]" -type "float2" -0.0088039637 -0.0018993616 ;
	setAttr ".uvtk[33]" -type "float2" -0.0088054836 -0.0019007921 ;
	setAttr ".uvtk[34]" -type "float2" 0.022958159 -0.0034507513 ;
	setAttr ".uvtk[35]" -type "float2" 0.022956491 -0.003462851 ;
	setAttr ".uvtk[36]" -type "float2" 0.10195857 -0.008135736 ;
	setAttr ".uvtk[37]" -type "float2" 0.1019572 -0.0081358552 ;
	setAttr ".uvtk[40]" -type "float2" 0.011323452 0.0016847849 ;
	setAttr ".uvtk[41]" -type "float2" 0.012997031 0.0023520291 ;
	setAttr ".uvtk[42]" -type "float2" -0.0080233216 0.0034956634 ;
	setAttr ".uvtk[43]" -type "float2" -0.0071393251 -0.00063349307 ;
	setAttr ".uvtk[44]" -type "float2" 0.014702857 0.0064028273 ;
	setAttr ".uvtk[45]" -type "float2" 0.026369393 0.0058690058 ;
	setAttr ".uvtk[46]" -type "float2" 0.018737853 0.002549395 ;
	setAttr ".uvtk[47]" -type "float2" 0.020659685 0.0055866241 ;
	setAttr ".uvtk[48]" -type "float2" 0.0068885684 0.0012259195 ;
	setAttr ".uvtk[49]" -type "float2" 0.033247113 0.0034628082 ;
	setAttr ".uvtk[50]" -type "float2" 0.089657545 0.011406302 ;
	setAttr ".uvtk[51]" -type "float2" 0.087197602 0.0096332878 ;
	setAttr ".uvtk[52]" -type "float2" 0.099128127 0.0096670054 ;
	setAttr ".uvtk[54]" -type "float2" 0.11393878 0.092732996 ;
	setAttr ".uvtk[55]" -type "float2" 0.05395402 0.1148724 ;
	setAttr ".uvtk[56]" -type "float2" -0.00070098042 0.033908814 ;
	setAttr ".uvtk[58]" -type "float2" 0.12111802 0.088882148 ;
	setAttr ".uvtk[59]" -type "float2" 0.11695309 0.24520653 ;
	setAttr ".uvtk[60]" -type "float2" 0.054624394 0.22400011 ;
	setAttr ".uvtk[61]" -type "float2" -0.15069547 0.030858785 ;
	setAttr ".uvtk[62]" -type "float2" -0.14126441 0.06244421 ;
	setAttr ".uvtk[63]" -type "float2" -0.0024531037 0.34173873 ;
	setAttr ".uvtk[64]" -type "float2" 0.0061381161 0.29114956 ;
	setAttr ".uvtk[65]" -type "float2" -0.21855852 0.16909213 ;
	setAttr ".uvtk[66]" -type "float2" -0.17038582 0.17608543 ;
	setAttr ".uvtk[67]" -type "float2" 0.12549445 0.24918064 ;
	setAttr ".uvtk[68]" -type "float2" -0.00027582049 0.35085961 ;
	setAttr ".uvtk[69]" -type "float2" -0.15222359 0.30772167 ;
	setAttr ".uvtk[70]" -type "float2" -0.12587245 0.30451968 ;
	setAttr ".uvtk[73]" -type "float2" -0.12723254 0.21033575 ;
	setAttr ".uvtk[74]" -type "float2" -0.12720841 0.12884836 ;
	setAttr ".uvtk[75]" -type "float2" 0.0050546229 -0.0040314198 ;
	setAttr ".uvtk[76]" -type "float2" -0.12870151 0.21795176 ;
	setAttr ".uvtk[77]" -type "float2" 0.0050526261 -0.0040296912 ;
	setAttr ".uvtk[78]" -type "float2" -0.061747417 0.12436706 ;
	setAttr ".uvtk[81]" -type "float2" -0.095210195 0.24425732 ;
	setAttr ".uvtk[82]" -type "float2" -0.0050525963 -0.0040296316 ;
	setAttr ".uvtk[83]" -type "float2" -0.0050545931 -0.0040313005 ;
	setAttr ".uvtk[85]" -type "float2" -0.0025290102 0.18476546 ;
	setAttr ".uvtk[86]" -type "float2" 2.3961067e-005 -0.00010567904 ;
	setAttr ".uvtk[88]" -type "float2" -0.037608474 0.15086448 ;
	setAttr ".uvtk[89]" -type "float2" -6.8604946e-005 -8.5890293e-005 ;
	setAttr ".uvtk[90]" -type "float2" -4.5567751e-005 2.43783e-005 ;
	setAttr ".uvtk[91]" -type "float2" 5.236268e-005 -2.5182962e-005 ;
	setAttr ".uvtk[92]" -type "float2" 5.3226948e-005 2.2053719e-006 ;
	setAttr ".uvtk[94]" -type "float2" -0.048831403 -0.00030046701 ;
	setAttr ".uvtk[95]" -type "float2" -0.011828959 -7.1406364e-005 ;
	setAttr ".uvtk[97]" -type "float2" 0.030203508 0.0087406039 ;
	setAttr ".uvtk[98]" -type "float2" 0.0073080808 0.002112627 ;
	setAttr ".uvtk[100]" -type "float2" -0.051009476 -0.0044085979 ;
	setAttr ".uvtk[101]" -type "float2" -0.012349784 -0.0010681152 ;
	setAttr ".uvtk[103]" -type "float2" 0.014692664 0.012895525 ;
	setAttr ".uvtk[104]" -type "float2" 0.0035610199 0.0031279325 ;
	setAttr ".uvtk[107]" -type "float2" 0.017550588 -0.21409708 ;
	setAttr ".uvtk[108]" -type "float2" 0.017550647 -0.21409735 ;
	setAttr ".uvtk[110]" -type "float2" -0.041770667 0.0041785836 ;
	setAttr ".uvtk[111]" -type "float2" -0.010114908 0.0010118484 ;
	setAttr ".uvtk[113]" -type "float2" 0.041770652 0.0041785836 ;
	setAttr ".uvtk[114]" -type "float2" 0.010114789 0.0010118484 ;
	setAttr ".uvtk[116]" -type "float2" -0.059357762 0.029038534 ;
	setAttr ".uvtk[117]" -type "float2" -0.047693133 0.023329856 ;
	setAttr ".uvtk[119]" -type "float2" 0.039275587 -0.010668973 ;
	setAttr ".uvtk[120]" -type "float2" 0.032361388 -0.0077032223 ;
	setAttr ".uvtk[121]" -type "float2" 0.079527289 -0.068964422 ;
	setAttr ".uvtk[122]" -type "float2" -1.180172e-005 -5.2183867e-005 ;
	setAttr ".uvtk[123]" -type "float2" 1.3053417e-005 5.7220459e-005 ;
	setAttr ".uvtk[124]" -type "float2" 0.065442383 -0.053529382 ;
	setAttr ".uvtk[125]" -type "float2" 0.090322733 -0.082987599 ;
	setAttr ".uvtk[126]" -type "float2" 0.075739801 -0.064059019 ;
	setAttr ".uvtk[127]" -type "float2" 0.10252056 -0.15148655 ;
	setAttr ".uvtk[128]" -type "float2" 5.236268e-005 2.5212765e-005 ;
	setAttr ".uvtk[129]" -type "float2" 3.3915043e-005 -4.23491e-005 ;
	setAttr ".uvtk[130]" -type "float2" 0.086769193 -0.1183991 ;
	setAttr ".uvtk[131]" -type "float2" 0.070480108 -0.21562719 ;
	setAttr ".uvtk[132]" -type "float2" -5.9902668e-005 0 ;
	setAttr ".uvtk[133]" -type "float2" -4.7713518e-005 -2.3037195e-005 ;
	setAttr ".uvtk[134]" -type "float2" 0.060538441 -0.16998702 ;
	setAttr ".uvtk[135]" -type "float2" 0.045749068 -0.27624649 ;
	setAttr ".uvtk[136]" -type "float2" 0.040721744 -0.21871102 ;
	setAttr ".uvtk[138]" -type "float2" -3.683567e-005 -4.6163797e-005 ;
	setAttr ".uvtk[139]" -type "float2" 3.4272671e-005 4.285574e-005 ;
	setAttr ".uvtk[141]" -type "float2" -5.9425831e-005 0 ;
	setAttr ".uvtk[142]" -type "float2" 5.5193901e-005 0 ;
	setAttr ".uvtk[143]" -type "float2" 5.1915646e-005 -2.4989247e-005 ;
	setAttr ".uvtk[144]" -type "float2" -4.8190355e-005 2.323091e-005 ;
	setAttr ".uvtk[145]" -type "float2" -3.683567e-005 4.6160072e-005 ;
	setAttr ".uvtk[146]" -type "float2" 3.4272671e-005 -4.2848289e-005 ;
	setAttr ".uvtk[147]" -type "float2" 5.1915646e-005 2.4996698e-005 ;
	setAttr ".uvtk[148]" -type "float2" -4.8190355e-005 -2.3253262e-005 ;
	setAttr ".uvtk[149]" -type "float2" 1.296401e-005 5.6827441e-005 ;
	setAttr ".uvtk[150]" -type "float2" -1.1980534e-005 -5.2801799e-005 ;
	setAttr ".uvtk[151]" -type "float2" -3.7193298e-005 4.658103e-005 ;
createNode polyAutoProj -n "polyAutoProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:69]";
	setAttr ".ix" -type "matrix" -0.49947391841732414 0.13371947704327622 0 0 -0.26921720885523226 -1.0055900395780029 0 0
		 0 0 0.5170639164744365 0 0.73546239634590527 6.0082972470696436 0.511679239342271 1;
	setAttr ".s" -type "double3" 1.5933405877446205 1.5933405877446205 1.5933405877446205 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 132 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.014520586 -0.001569584 ;
	setAttr ".uvtk[3]" -type "float2" -0.014575541 -0.0014678305 ;
	setAttr ".uvtk[4]" -type "float2" 0.0088734031 -0.001920016 ;
	setAttr ".uvtk[5]" -type "float2" 0.0088743567 -0.0019098669 ;
	setAttr ".uvtk[6]" -type "float2" -0.035647094 0.027259767 ;
	setAttr ".uvtk[7]" -type "float2" -0.048701167 0.024639606 ;
	setAttr ".uvtk[8]" -type "float2" -0.023051798 -0.0035141706 ;
	setAttr ".uvtk[9]" -type "float2" -0.02310127 -0.0033181105 ;
	setAttr ".uvtk[10]" -type "float2" -0.10229951 -0.0076799076 ;
	setAttr ".uvtk[11]" -type "float2" -0.10195971 -0.0080369413 ;
	setAttr ".uvtk[12]" -type "float2" -0.040632367 0.023264349 ;
	setAttr ".uvtk[13]" -type "float2" -0.11693734 0.015128404 ;
	setAttr ".uvtk[16]" -type "float2" 0.015199125 -5.6922436e-006 ;
	setAttr ".uvtk[17]" -type "float2" 0.015252411 -0.00020140409 ;
	setAttr ".uvtk[18]" -type "float2" -0.0092668533 1.1205673e-005 ;
	setAttr ".uvtk[19]" -type "float2" -0.0092669725 -1.1235476e-005 ;
	setAttr ".uvtk[20]" -type "float2" 0.036175072 -0.05678466 ;
	setAttr ".uvtk[21]" -type "float2" 0.049863517 -0.05457966 ;
	setAttr ".uvtk[22]" -type "float2" 0.024109542 5.6147575e-005 ;
	setAttr ".uvtk[23]" -type "float2" 0.024180651 -0.00028848648 ;
	setAttr ".uvtk[24]" -type "float2" 0.10711914 -0.00074917078 ;
	setAttr ".uvtk[25]" -type "float2" 0.10661453 -7.0750713e-005 ;
	setAttr ".uvtk[26]" -type "float2" 0.042227745 -0.053341001 ;
	setAttr ".uvtk[27]" -type "float2" 0.12183088 -0.046148121 ;
	setAttr ".uvtk[30]" -type "float2" 0.014586091 -0.0015656352 ;
	setAttr ".uvtk[31]" -type "float2" 0.014562488 -0.0015733242 ;
	setAttr ".uvtk[32]" -type "float2" -0.0088726282 -0.0019147396 ;
	setAttr ".uvtk[33]" -type "float2" -0.0088738203 -0.0019143224 ;
	setAttr ".uvtk[34]" -type "float2" 0.023121178 -0.003491044 ;
	setAttr ".uvtk[35]" -type "float2" 0.023144186 -0.0034843087 ;
	setAttr ".uvtk[36]" -type "float2" 0.10274547 -0.0081981421 ;
	setAttr ".uvtk[37]" -type "float2" 0.10274452 -0.0081979632 ;
	setAttr ".uvtk[40]" -type "float2" 0.011547148 0.0016825944 ;
	setAttr ".uvtk[41]" -type "float2" 0.013076961 0.0024809837 ;
	setAttr ".uvtk[42]" -type "float2" -0.0081056952 0.0035337806 ;
	setAttr ".uvtk[43]" -type "float2" -0.0072304606 -0.00067855418 ;
	setAttr ".uvtk[44]" -type "float2" 0.015353918 0.0054946477 ;
	setAttr ".uvtk[45]" -type "float2" 0.027270555 0.0051016361 ;
	setAttr ".uvtk[46]" -type "float2" 0.019092381 0.0025593787 ;
	setAttr ".uvtk[47]" -type "float2" 0.020799816 0.0058056116 ;
	setAttr ".uvtk[48]" -type "float2" 0.0073603392 0.00022944994 ;
	setAttr ".uvtk[49]" -type "float2" 0.034263194 0.0027498715 ;
	setAttr ".uvtk[50]" -type "float2" 0.090806067 0.01227963 ;
	setAttr ".uvtk[51]" -type "float2" 0.088784516 0.010146171 ;
	setAttr ".uvtk[52]" -type "float2" 0.10131615 0.009665668 ;
	setAttr ".uvtk[54]" -type "float2" 0.036412224 0.04838261 ;
	setAttr ".uvtk[55]" -type "float2" 0.016250953 0.051711768 ;
	setAttr ".uvtk[56]" -type "float2" -0.0099222809 0.017204791 ;
	setAttr ".uvtk[58]" -type "float2" 0.037853014 0.051694959 ;
	setAttr ".uvtk[59]" -type "float2" 0.020470545 0.10448881 ;
	setAttr ".uvtk[60]" -type "float2" 0.0053802058 0.091618299 ;
	setAttr ".uvtk[61]" -type "float2" -0.05915454 -0.0018115342 ;
	setAttr ".uvtk[62]" -type "float2" -0.052175015 0.015511304 ;
	setAttr ".uvtk[63]" -type "float2" -0.032381885 0.12630779 ;
	setAttr ".uvtk[64]" -type "float2" -0.032472767 0.1070333 ;
	setAttr ".uvtk[65]" -type "float2" -0.096072912 0.042921618 ;
	setAttr ".uvtk[66]" -type "float2" -0.078531444 0.047216401 ;
	setAttr ".uvtk[67]" -type "float2" 0.019555241 0.10360048 ;
	setAttr ".uvtk[68]" -type "float2" -0.036103055 0.12656689 ;
	setAttr ".uvtk[69]" -type "float2" -0.084074363 0.099357724 ;
	setAttr ".uvtk[70]" -type "float2" -0.069794431 0.08753565 ;
	setAttr ".uvtk[73]" -type "float2" 0.17352849 1.1920929e-007 ;
	setAttr ".uvtk[74]" -type "float2" 0.17352837 0 ;
	setAttr ".uvtk[75]" -type "float2" 0.0097629428 -0.041417331 ;
	setAttr ".uvtk[76]" -type "float2" 0.18075031 -0.030639172 ;
	setAttr ".uvtk[77]" -type "float2" 0.0097629428 0.041417122 ;
	setAttr ".uvtk[78]" -type "float2" 0.18075007 0.030638993 ;
	setAttr ".uvtk[81]" -type "float2" 0.0066008568 0.16474479 ;
	setAttr ".uvtk[82]" -type "float2" 0.0066007972 0.16474426 ;
	setAttr ".uvtk[85]" -type "float2" 0.13927799 0.012384653 ;
	setAttr ".uvtk[86]" -type "float2" 0.13928241 0.012385309 ;
	setAttr ".uvtk[87]" -type "float2" 0.0080140829 0.00032317638 ;
	setAttr ".uvtk[88]" -type "float2" 0.14520705 0.012620509 ;
	setAttr ".uvtk[91]" -type "float2" 0.0066007376 -0.16474476 ;
	setAttr ".uvtk[92]" -type "float2" 0.0066007972 -0.16474408 ;
	setAttr ".uvtk[94]" -type "float2" -0.049207941 -0.00030273199 ;
	setAttr ".uvtk[95]" -type "float2" -0.011920169 -7.1883202e-005 ;
	setAttr ".uvtk[97]" -type "float2" 0.030436389 0.0088078976 ;
	setAttr ".uvtk[98]" -type "float2" 0.0073644146 0.0021288991 ;
	setAttr ".uvtk[100]" -type "float2" -0.051402807 -0.0044425726 ;
	setAttr ".uvtk[101]" -type "float2" -0.012444973 -0.0010762811 ;
	setAttr ".uvtk[103]" -type "float2" 0.014806002 0.012995064 ;
	setAttr ".uvtk[104]" -type "float2" 0.0035885572 0.0031520724 ;
	setAttr ".uvtk[107]" -type "float2" 0.017685622 -0.21574301 ;
	setAttr ".uvtk[108]" -type "float2" 0.017686546 -0.21575308 ;
	setAttr ".uvtk[110]" -type "float2" -0.042092741 0.0042107701 ;
	setAttr ".uvtk[111]" -type "float2" -0.010192871 0.0010196567 ;
	setAttr ".uvtk[113]" -type "float2" 0.042092755 0.0042107701 ;
	setAttr ".uvtk[114]" -type "float2" 0.010192811 0.0010195971 ;
	setAttr ".uvtk[116]" -type "float2" -9.0688467e-005 0.066586643 ;
	setAttr ".uvtk[117]" -type "float2" -7.1644783e-005 0.05350098 ;
	setAttr ".uvtk[119]" -type "float2" 0.008431673 -0.040458262 ;
	setAttr ".uvtk[120]" -type "float2" 0.0067726374 -0.032507479 ;
	setAttr ".uvtk[122]" -type "float2" -0.0043006539 0.069780946 ;
	setAttr ".uvtk[123]" -type "float2" -0.0034594834 0.056066692 ;
	setAttr ".uvtk[125]" -type "float2" 0.012592815 -0.01883173 ;
	setAttr ".uvtk[126]" -type "float2" 0.010129333 -0.015125334 ;
	setAttr ".uvtk[129]" -type "float2" -0.1061461 -0.0062890649 ;
	setAttr ".uvtk[130]" -type "float2" -0.10614753 -0.0062891841 ;
	setAttr ".uvtk[132]" -type "float2" 0.0042094588 0.056652039 ;
	setAttr ".uvtk[133]" -type "float2" 0.0033821762 0.045518577 ;
	setAttr ".uvtk[135]" -type "float2" 0.004209429 -0.056652009 ;
	setAttr ".uvtk[136]" -type "float2" 0.003382206 -0.045518577 ;
	setAttr ".uvtk[138]" -type "float2" -3.7074089e-005 -4.6491623e-005 ;
	setAttr ".uvtk[139]" -type "float2" 3.4511089e-005 4.3153763e-005 ;
	setAttr ".uvtk[141]" -type "float2" -5.9902668e-005 0 ;
	setAttr ".uvtk[142]" -type "float2" 5.5670738e-005 0 ;
	setAttr ".uvtk[143]" -type "float2" 5.2303076e-005 -2.5182962e-005 ;
	setAttr ".uvtk[144]" -type "float2" -4.8577785e-005 2.3409724e-005 ;
	setAttr ".uvtk[145]" -type "float2" -3.7074089e-005 4.65177e-005 ;
	setAttr ".uvtk[146]" -type "float2" 3.4511089e-005 -4.317984e-005 ;
	setAttr ".uvtk[147]" -type "float2" 5.2303076e-005 2.5190413e-005 ;
	setAttr ".uvtk[148]" -type "float2" -4.8577785e-005 -2.3424625e-005 ;
	setAttr ".uvtk[149]" -type "float2" 1.308322e-005 5.7266094e-005 ;
	setAttr ".uvtk[150]" -type "float2" -1.2099743e-005 -5.3210417e-005 ;
	setAttr ".uvtk[152]" -type "float2" 1.3172626e-005 5.7637691e-005 ;
	setAttr ".uvtk[153]" -type "float2" -1.1920929e-005 -5.2571297e-005 ;
	setAttr ".uvtk[155]" -type "float2" 5.2750111e-005 2.5391579e-005 ;
	setAttr ".uvtk[156]" -type "float2" -4.8041344e-005 -2.3186207e-005 ;
	setAttr ".uvtk[157]" -type "float2" -6.0319901e-005 0 ;
	setAttr ".uvtk[158]" -type "float2" 5.5015087e-005 0 ;
	setAttr ".uvtk[159]" -type "float2" 5.2720308e-005 -2.5421381e-005 ;
	setAttr ".uvtk[160]" -type "float2" -4.8071146e-005 2.3216009e-005 ;
	setAttr ".uvtk[161]" -type "float2" -3.7372112e-005 -4.6849251e-005 ;
	setAttr ".uvtk[162]" -type "float2" 3.4153461e-005 4.2676926e-005 ;
	setAttr ".uvtk[163]" -type "float2" 1.3172626e-005 -5.7578087e-005 ;
	setAttr ".uvtk[164]" -type "float2" -1.1920929e-005 5.2511692e-005 ;
	setAttr ".uvtk[167]" -type "float2" 0.0050917268 0.0040605664 ;
	setAttr ".uvtk[168]" -type "float2" 0.0050938725 0.0040622354 ;
	setAttr ".uvtk[171]" -type "float2" -0.0050938129 0.0040623546 ;
	setAttr ".uvtk[172]" -type "float2" -0.0050917268 0.0040605068 ;
createNode polyMapSewMove -n "polyMapSewMove12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[67]";
createNode polyMapSewMove -n "polyMapSewMove13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[90]";
createNode polyMapSewMove -n "polyMapSewMove14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[85]";
createNode polyTweakUV -n "polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 136 ".uvtk";
	setAttr ".uvtk[116]" -type "float2" -0.00025179982 -0.00032126904 ;
	setAttr ".uvtk[117]" -type "float2" 0.00047180057 -0.00023251772 ;
	setAttr ".uvtk[119]" -type "float2" -9.2387199e-007 4.7087669e-006 ;
	setAttr ".uvtk[120]" -type "float2" 9.2387199e-007 3.5762787e-006 ;
	setAttr ".uvtk[121]" -type "float2" -0.01131025 0.054620698 ;
	setAttr ".uvtk[122]" -type "float2" -0.011138469 0.053494781 ;
	setAttr ".uvtk[123]" -type "float2" -0.0093072653 0.053965271 ;
	setAttr ".uvtk[124]" -type "float2" -0.0094595253 0.05489099 ;
	setAttr ".uvtk[125]" -type "float2" 0.014309615 0.062189549 ;
	setAttr ".uvtk[126]" -type "float2" -0.035337359 0.049467862 ;
	setAttr ".uvtk[127]" -type "float2" 0.025879055 0.0011710227 ;
	setAttr ".uvtk[130]" -type "float2" -0.025027096 -0.0050664246 ;
	setAttr ".uvtk[131]" -type "float2" -0.00045478344 -0.0010137856 ;
	setAttr ".uvtk[134]" -type "float2" 0.00096830726 -0.00082474947 ;
	setAttr ".uvtk[137]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[138]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[139]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[140]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[141]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[142]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[143]" -type "float2" -0.062885448 -0.10367604 ;
	setAttr ".uvtk[144]" -type "float2" -0.062885448 -0.10367604 ;
	setAttr ".uvtk[145]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[146]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[147]" -type "float2" -0.062885448 -0.10367604 ;
	setAttr ".uvtk[148]" -type "float2" -0.062885448 -0.10367604 ;
	setAttr ".uvtk[149]" -type "float2" -0.062885448 -0.10367604 ;
	setAttr ".uvtk[150]" -type "float2" -0.062885478 -0.10367604 ;
	setAttr ".uvtk[151]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[152]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[153]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[154]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[155]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[156]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[157]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[158]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[159]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[160]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[161]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[162]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[163]" -type "float2" -0.1410674 -0.38751045 ;
	setAttr ".uvtk[164]" -type "float2" -0.1410674 -0.38751045 ;
createNode polyMapSewMove -n "polyMapSewMove15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyMapSewMove -n "polyMapSewMove16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyMapSewMove -n "polyMapSewMove17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[125]";
createNode polyMapSewMove -n "polyMapSewMove18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[120]";
createNode polyTweakUV -n "polyTweakUV8";
	setAttr ".uopa" yes;
	setAttr -s 132 ".uvtk";
	setAttr ".uvtk[16]" -type "float2" -0.0015913248 0.00035059452 ;
	setAttr ".uvtk[17]" -type "float2" -0.0014542341 -0.00033086538 ;
	setAttr ".uvtk[18]" -type "float2" -0.0026189685 -0.00083017349 ;
	setAttr ".uvtk[19]" -type "float2" -0.0028175712 0.00089401007 ;
	setAttr ".uvtk[20]" -type "float2" -0.002074182 0.00034016371 ;
	setAttr ".uvtk[21]" -type "float2" -0.0020704269 0.00028644502 ;
	setAttr ".uvtk[22]" -type "float2" -0.0017068386 0.00033983588 ;
	setAttr ".uvtk[23]" -type "float2" -0.0015246868 -0.00032883883 ;
	setAttr ".uvtk[24]" -type "float2" -0.0023257732 -0.00058072805 ;
	setAttr ".uvtk[25]" -type "float2" -0.0023733377 -5.3673983e-005 ;
	setAttr ".uvtk[26]" -type "float2" -0.0023409128 0.00077167153 ;
	setAttr ".uvtk[27]" -type "float2" -0.0026756525 0.00018528104 ;
	setAttr ".uvtk[54]" -type "float2" -0.034631371 -0.046021551 ;
	setAttr ".uvtk[57]" -type "float2" -0.029723465 -0.050691992 ;
	setAttr ".uvtk[63]" -type "float2" -0.03187108 0.043259919 ;
	setAttr ".uvtk[68]" -type "float2" -0.028038204 0.047290087 ;
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[126]";
createNode polyTweakUV -n "polyTweakUV9";
	setAttr ".uopa" yes;
	setAttr -s 169 ".uvtk[0:168]" -type "float2" -0.43074897 0.52611715 -0.43074989
		 0.46419027 -0.41958568 0.46544915 -0.41956347 0.52477199 -0.43677327 0.52455252 -0.4367736
		 0.46575525 -0.41692692 0.40395728 -0.40633142 0.40768018 -0.41388306 0.4670276 -0.41386396
		 0.52318025 -0.35162207 0.51912838 -0.35175374 0.47073197 -0.40706554 0.41155115 -0.34594551
		 0.42282671 -0.61280161 -0.34440511 -0.61276871 -0.29250944 -0.42351305 0.27506366
		 -0.42358989 0.2120855 -0.60777485 -0.34305295 -0.60774463 -0.29386449 -0.42601913
		 0.34053335 -0.43729791 0.33659223 -0.42955056 0.27337027 -0.4296537 0.21379451 -0.49557257
		 0.21818915 -0.49534538 0.26947877 -0.43660042 0.33212733 -0.50135708 0.32024437 0.11461159
		 -0.23881596 0.016048482 -0.079127774 -0.010725323 -0.10030786 0.083774872 -0.25336051
		 0.12764931 -0.22518936 0.034077358 -0.073579684 -0.022944925 -0.11341388 0.066527724
		 -0.25843096 -0.10039092 -0.34799838 -0.17763618 -0.2228419 -0.030007279 0.47245979
		 -0.030007608 0.52232689 -0.038730916 0.52175832 -0.039247494 0.47368661 -0.025017302
		 0.47378895 -0.025313014 0.52255613 -0.035195503 0.5703373 -0.044043656 0.56840491
		 -0.043365601 0.52146202 -0.043942485 0.47508639 -0.030243419 0.56959319 -0.048491929
		 0.56667632 -0.095071681 0.47909439 -0.094388664 0.51889843 -0.098623157 0.55814385
		 0.45307574 -0.19637458 -0.58310997 -0.25143501 0.42406693 -0.05679452 0.40758651
		 -0.16880555 -0.58680177 -0.24777927 0.47647229 -0.03949197 0.36600626 0.080182716
		 0.34434542 0.028267791 0.31431219 -0.27753231 0.3078762 -0.22644506 -0.5831275 -0.38551092
		 0.22678052 0.019782828 0.16247168 -0.22101256 0.19898383 -0.18582097 0.20172521 0.067920648
		 -0.58682215 -0.38916859 0.11154152 -0.066795588 0.16240059 -0.075787351 -0.49110353
		 0.29204825 -0.55561566 0.40319297 -0.89055556 0.18944797 -0.84283209 0.10722779 -0.62964118
		 0.50824118 -0.94531608 0.26715931 -0.4366039 0.1756669 -0.80251426 0.021133758 -0.65185386
		 0.051997848 -0.69573957 0.051997848 -0.69066459 -0.083496906 -0.65819955 -0.083496898
		 -0.51665306 0.22241686 -0.58109933 0.32255453 -0.88221198 0.1112528 -0.8345412 0.037171569
		 -0.65335095 0.41721177 -0.9356634 0.18127942 -0.71961933 0.2550447 -0.67573363 0.2550447
		 -0.68207932 0.39053968 -0.7145443 0.3905392 0.71951377 -0.59388655 0.72980064 -0.59394956
		 0.7262547 -0.54884034 0.7237646 -0.54882532 0.70938867 -0.59205598 0.72131163 -0.54838282
		 0.11770636 -0.55624938 0.12743704 -0.55711675 0.12755328 -0.51412779 0.12519649 -0.51391768
		 0.10827266 -0.55371201 0.12291275 -0.51330221 0.37071845 -0.29309428 0.40964308 -0.29309416
		 0.39460281 -0.12251084 0.38517669 -0.12250702 0.64474106 -0.33826017 0.6551615 -0.33736703
		 0.64726436 -0.2920509 0.64474106 -0.29226705 0.63432056 -0.33736703 0.64221776 -0.29205093
		 -0.3388004 -0.15453042 -0.3409704 -0.1659576 -0.32252884 -0.16820949 -0.32088283
		 -0.15903454 -0.33528543 -0.14350742 -0.31805885 -0.15017778 -0.33535704 -0.21217345
		 -0.33046573 -0.22293982 -0.31377986 -0.21407324 -0.31771177 -0.20541866 -0.338893
		 -0.20089285 -0.3205952 -0.19633442 -0.34101367 -0.189308 0.35415 -0.11087075 0.32331511
		 -0.07220345 -0.3223781 -0.18699116 -0.34171078 -0.17759983 0.34525135 -0.16421016
		 0.37445942 -0.12758443 -0.32302892 -0.17756766 0.37899646 -0.12953298 0.34816131
		 -0.16820069 0.20492016 0.35545149 0.18191947 0.36071134 0.18062596 0.35908926 0.20537718
		 0.35344917 0.17168444 0.38196486 0.16960971 0.38196486 0.22336105 0.37016994 0.22523022
		 0.36926982 0.18191947 0.40321839 0.18062596 0.40484047 0.22336105 0.39375979 0.22523022
		 0.39465988 0.20491776 0.40846771 0.2053794 0.41049033 -0.053178441 0.37394071 -0.035037853
		 0.37807113 -0.034576155 0.38009354 -0.054458693 0.37554616 -0.020495567 0.36647418
		 -0.018626569 0.36737421 -0.061241679 0.35717407 -0.063316166 0.35717407 -0.020495566
		 0.34787393 -0.018626569 0.34697393 -0.053171568 0.34041601 -0.054464955 0.33879408
		 -0.035037853 0.33627695 -0.034576155 0.33425456 0.35705993 -0.10688027 0.32785204
		 -0.070254892 -0.41169834 0.21058789 -0.41173401 0.27647483;
createNode polyMapCut -n "polyMapCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[114]";
createNode polyMapSewMove -n "polyMapSewMove19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[113]";
createNode polyMapSewMove -n "polyMapSewMove20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[112]";
createNode polyMapCut -n "polyMapCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[141]" "e[145]";
createNode polyMapSewMove -n "polyMapSewMove21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[135]";
createNode polyMapCut -n "polyMapCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[136]";
createNode polyTweakUV -n "polyTweakUV10";
	setAttr ".uopa" yes;
	setAttr -s 133 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" 0.012756526 0.0051172376 ;
	setAttr ".uvtk[5]" -type "float2" -3.6180019e-005 0.0006839633 ;
	setAttr ".uvtk[15]" -type "float2" 0.00072413683 0.00027662516 ;
	setAttr ".uvtk[18]" -type "float2" 1.1324883e-006 -5.6624413e-006 ;
	setAttr ".uvtk[19]" -type "float2" 0.00062903762 0.0002720952 ;
	setAttr ".uvtk[28]" -type "float2" -0.020243406 -0.013218462 ;
	setAttr ".uvtk[29]" -type "float2" 0.0020836592 0.0033621788 ;
	setAttr ".uvtk[32]" -type "float2" -0.01806885 -0.014988482 ;
	setAttr ".uvtk[33]" -type "float2" 0.0034098625 0.00061243773 ;
	setAttr ".uvtk[39]" -type "float2" 0.034475565 0.0089660287 ;
	setAttr ".uvtk[40]" -type "float2" 0.00045949221 0.00044983625 ;
	setAttr ".uvtk[41]" -type "float2" -0.00040882826 0.00022858381 ;
	setAttr ".uvtk[42]" -type "float2" 0.012988508 0.0034261346 ;
	setAttr ".uvtk[43]" -type "float2" 0.033768713 0.0083022714 ;
	setAttr ".uvtk[44]" -type "float2" 0.0063614845 -0.00096601248 ;
	setAttr ".uvtk[45]" -type "float2" 0.0058675408 0.00019133091 ;
	setAttr ".uvtk[46]" -type "float2" 0.00069051981 0.00069266558 ;
	setAttr ".uvtk[47]" -type "float2" -0.00061219931 0.00040030479 ;
	setAttr ".uvtk[49]" -type "float2" 0.0054900646 0.00071597099 ;
	setAttr ".uvtk[50]" -type "float2" -0.0015038252 0.0032317638 ;
	setAttr ".uvtk[51]" -type "float2" 0.00068080425 0.00394696 ;
	setAttr ".uvtk[52]" -type "float2" 0.0038743019 0.0047495961 ;
	setAttr ".uvtk[54]" -type "float2" -0.00052627921 -0.0013191104 ;
	setAttr ".uvtk[55]" -type "float2" -0.00014510751 0.00011686981 ;
	setAttr ".uvtk[57]" -type "float2" -0.00038850307 -0.0014766455 ;
	setAttr ".uvtk[58]" -type "float2" -0.00019431114 0.00017204881 ;
	setAttr ".uvtk[59]" -type "float2" -6.9081783e-005 -7.1942806e-005 ;
	setAttr ".uvtk[60]" -type "float2" -4.8369169e-005 -1.5199184e-005 ;
	setAttr ".uvtk[61]" -type "float2" 5.9902668e-005 -6.0111284e-005 ;
	setAttr ".uvtk[62]" -type "float2" 5.1081181e-005 -4.7259033e-005 ;
	setAttr ".uvtk[64]" -type "float2" 9.8586082e-005 0.00012794137 ;
	setAttr ".uvtk[65]" -type "float2" -3.2782555e-005 4.8168004e-006 ;
	setAttr ".uvtk[66]" -type "float2" -1.3679266e-005 -8.9071691e-006 ;
	setAttr ".uvtk[67]" -type "float2" 0.00010201335 0.00014348328 ;
	setAttr ".uvtk[69]" -type "float2" 6.8157911e-005 -3.2253563e-005 ;
	setAttr ".uvtk[70]" -type "float2" 8.2522631e-005 -3.7841499e-005 ;
createNode polyMapSewMove -n "polyMapSewMove22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[104]" "e[137:138]";
createNode polyMapSewMove -n "polyMapSewMove23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[105]" "e[127]" "e[134]";
createNode polyMapSewMove -n "polyMapSewMove24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[107]" "e[115]" "e[124]";
createNode polyMapSewMove -n "polyMapSewMove25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[98]" "e[132:133]";
createNode polyMapSewMove -n "polyMapSewMove26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[100]" "e[122:123]";
createNode polyTweakUV -n "polyTweakUV11";
	setAttr ".uopa" yes;
	setAttr -s 123 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.0016345382 -0.0031442642 ;
	setAttr ".uvtk[3]" -type "float2" -0.00022500753 0.00028681755 ;
	setAttr ".uvtk[6]" -type "float2" 0.00014197826 -0.00050270557 ;
	setAttr ".uvtk[7]" -type "float2" 0.0022822022 0.00024425983 ;
	setAttr ".uvtk[8]" -type "float2" -0.0017175078 -0.0027598143 ;
	setAttr ".uvtk[9]" -type "float2" -0.00029098988 0.00047242641 ;
	setAttr ".uvtk[10]" -type "float2" 0.002725482 0.0031569004 ;
	setAttr ".uvtk[11]" -type "float2" 0.0049089789 0.00091814995 ;
	setAttr ".uvtk[12]" -type "float2" 0.003478229 -0.0016871691 ;
	setAttr ".uvtk[13]" -type "float2" 0.0076166987 -0.0021634698 ;
	setAttr ".uvtk[16]" -type "float2" 0.0030388832 -0.0054901242 ;
	setAttr ".uvtk[20]" -type "float2" 0.0023835897 0.00045442581 ;
	setAttr ".uvtk[21]" -type "float2" 0.0035307407 0.0013589859 ;
	setAttr ".uvtk[22]" -type "float2" 0.0025835037 -0.0051383376 ;
	setAttr ".uvtk[23]" -type "float2" 1.3411045e-006 1.7881393e-007 ;
	setAttr ".uvtk[24]" -type "float2" -2.9861927e-005 3.7372112e-005 ;
	setAttr ".uvtk[25]" -type "float2" 0.0065101981 -0.0021711588 ;
	setAttr ".uvtk[26]" -type "float2" 0.0048920512 -0.00045049191 ;
	setAttr ".uvtk[27]" -type "float2" 0.0064162016 -0.0033182502 ;
	setAttr ".uvtk[30]" -type "float2" 0.002009809 0.002425015 ;
	setAttr ".uvtk[31]" -type "float2" -4.7683716e-007 -1.2814999e-006 ;
	setAttr ".uvtk[34]" -type "float2" 0.0019366145 0.0022060275 ;
	setAttr ".uvtk[37]" -type "float2" 0.001096487 -0.0015777946 ;
	setAttr ".uvtk[38]" -type "float2" 0.0026545525 0.0028127432 ;
	setAttr ".uvtk[40]" -type "float2" -0.00076639652 0.0045749545 ;
	setAttr ".uvtk[41]" -type "float2" 2.849102e-005 -3.567338e-005 ;
	setAttr ".uvtk[44]" -type "float2" -0.0047515631 0.0062453747 ;
	setAttr ".uvtk[45]" -type "float2" -0.0048166513 0.0054347515 ;
	setAttr ".uvtk[46]" -type "float2" -0.0009290576 0.0042142272 ;
	setAttr ".uvtk[47]" -type "float2" -0.00047785044 0.0052750111 ;
	setAttr ".uvtk[48]" -type "float2" 0.0040258169 -0.0020360947 ;
	setAttr ".uvtk[49]" -type "float2" -0.0047703981 0.0050321817 ;
	setAttr ".uvtk[50]" -type "float2" 0 -2.9802322e-008 ;
	setAttr ".uvtk[51]" -type "float2" -0.0024183393 -0.00032180548 ;
	setAttr ".uvtk[52]" -type "float2" -0.0056296587 0.00075387955 ;
	setAttr ".uvtk[128]" -type "float2" -2.9802322e-008 0 ;
	setAttr ".uvtk[129]" -type "float2" 2.9802322e-008 0 ;
	setAttr ".uvtk[132]" -type "float2" -5.9604645e-007 -9.5367432e-007 ;
	setAttr ".uvtk[136]" -type "float2" 0 2.9802322e-008 ;
	setAttr ".uvtk[137]" -type "float2" 1.0430813e-005 -4.5895576e-005 ;
	setAttr ".uvtk[138]" -type "float2" -9.5367432e-007 2.9802322e-007 ;
	setAttr ".uvtk[139]" -type "float2" -9.5367432e-007 1.1920929e-007 ;
	setAttr ".uvtk[140]" -type "float2" -1.001358e-005 4.4226646e-005 ;
	setAttr ".uvtk[143]" -type "float2" 7.7486038e-007 7.1525574e-007 ;
	setAttr ".uvtk[144]" -type "float2" 7.7486038e-007 5.0663948e-007 ;
createNode polyMapSewMove -n "polyMapSewMove27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[44]";
createNode polyMapSewMove -n "polyMapSewMove28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[46]";
createNode polyMapSewMove -n "polyMapSewMove29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[42]";
createNode polyTweakUV -n "polyTweakUV12";
	setAttr ".uopa" yes;
	setAttr -s 144 ".uvtk[0:143]" -type "float2" -0.092317894 -0.81419629
		 0.15856975 -0.046500232 -0.068602435 -0.7833901 -0.096285954 -0.80850554 0.14352852
		 -0.081784897 0.16160905 -0.049089614 -0.040279474 -0.75695223 -0.046257976 -0.75322843
		 -0.071416132 -0.78082681 -0.097902536 -0.80524188 -0.12329151 -0.77544856 -0.1014291
		 -0.75433528 -0.049433291 -0.75125307 -0.083251089 -0.7299642 0.19048722 -0.021681225
		 0.23044278 -0.016459733 -0.029196784 -0.72022432 0.47713944 0.42204887 0.19205268
		 -0.025435233 0.22994526 -0.020491103 -0.010738232 -0.68702322 -0.017423304 -0.68532765
		 -0.032601465 -0.71878016 0.47633019 0.41850638 0.4445672 0.41125676 -0.069127962
		 -0.70307267 -0.020971803 -0.6844188 -0.059253633 -0.674447 0.17343082 -0.17588374
		 0.1476097 -0.15059938 -0.010962933 -0.64934886 0.43043187 0.38190323 0.17523892 -0.1727277
		 0.15065785 -0.14865835 -0.014585736 -0.64897043 0.50507712 0.39976946 0.50180328
		 0.398193 -0.053761054 -0.64474773 -0.004138133 -0.65005124 0.13576908 -0.11699007
		 -0.0098243626 -0.61297917 0.4423016 0.41409776 0.13990007 -0.080633946 0.13938424
		 -0.11658384 -0.0078304717 -0.57517606 -0.014510298 -0.5768227 -0.013467784 -0.61316335
		 -0.0029499347 -0.6126352 -0.022785161 -0.72292984 -0.017849121 -0.57822001 0.44456735
		 0.35254905 -0.052681539 -0.61465329 -0.055978339 -0.58477998 -0.23590662 0.65050364
		 0.26578626 -0.034628414 -0.20206416 0.62202865 -0.21955356 0.65250051 0.26818839
		 -0.031333242 -0.21149111 0.60776132 -0.16173409 0.59986967 -0.16640776 0.61663371
		 -0.21768397 0.69685274 -0.20633291 0.68564183 -0.063300915 -0.78824252 -0.13946727
		 0.64115095 -0.16985896 0.71213657 -0.17201848 0.69658375 -0.12415253 0.63422197 -0.1881654
		 0.4113133 -0.12797418 0.68435538 -0.1420837 0.67680973 0.53100801 0.031294692 0.55642802
		 0.031294692 0.55312037 0.10981894 0.53431576 0.10981894 0.58174974 0.033527546 0.57185245
		 0.11147054 0.50568634 0.033527538 0.51558369 0.11147053 0.52081126 0.079883292 0.49540672
		 0.079883292 0.49834454 0.0014481432 0.51713783 0.0014482234 0.8129037 -1.0927786e-007
		 0.83829755 -4.7383331e-008 0.83515692 0.078379884 0.8163715 0.078380913 0.86360937
		 0.0020321531 0.85388249 0.079883292 0.63484585 0.0014484939 0.66025031 0.0014484939
		 0.65657693 0.079883352 0.63778371 0.079883061 -0.66102707 0.53648525 -0.72101003
		 0.50059897 -0.54158473 0.2509906 -0.52704656 0.25964415 -0.59574389 0.56152332 -0.51123297
		 0.26569259 -0.52709955 0.57488877 -0.18897402 0.40777087 -0.15339871 0.38358778 -0.49461314
		 0.26890823 -0.45719886 0.57613075 -0.47767192 0.26923862 -0.38814116 0.56534302 -0.15667242
		 0.38201141 -0.23151873 0.40141809 -0.4609251 0.26665419 -0.77397436 0.45500457 -0.81842184
		 0.40109298 -0.56519765 0.22693199 -0.55442655 0.23998652 -0.2292532 0.39857721 -0.15339904
		 0.33911932 0.81727254 0.19106814 0.82315439 0.22204153 0.77316844 0.22814533 0.76870698
		 0.20327656 0.80774522 0.16119026 0.76105249 0.17927024 0.80793929 0.34730977 0.79468149
		 0.37649199 0.74945426 0.35245913 0.76011175 0.32900089 0.8175236 0.31673369 0.76792729
		 0.30437803 0.82327163 0.28533292 0.50507712 0.36403587 0.50180334 0.36561239 0.77275985
		 0.27905306 0.82516116 0.25359783 0.42679808 0.38190311 0.47713944 0.34175655 0.77452391
		 0.25351065 0.47633085 0.34529904 0.44230193 0.34970811 -0.18897389 0.31493622 -0.22925287
		 0.32413009 -0.23151833 0.32128918 -0.18816528 0.31139377 -0.24717888 0.36135367 -0.25081268
		 0.36135367 -0.1566727 0.34069565;
createNode polyAutoProj -n "polyAutoProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 0.080803110519162127 -0.019471583612124355 -0 0 0.019471583612124355 0.080803110519162127 0 0
		 0 -0 0.083116094939162527 0 0.56129410003465519 5.4229315031091359 0.51258971184436752 1;
	setAttr ".s" -type "double3" 0.16573103340471923 0.16573103340471923 0.16573103340471923 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSewMove -n "polyMapSewMove30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[19]" "e[25]";
createNode polyMapSewMove -n "polyMapSewMove31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[18]" "e[24]";
createNode polyMapSewMove -n "polyMapSewMove32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[22]" "e[28]";
createNode polyTweakUV -n "polyTweakUV13";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk[0:33]" -type "float2" -0.13082972 -0.20271675 -0.15395261
		 -0.12793748 -0.21364386 -0.13441586 -0.16410466 -0.22711276 -0.084235296 -0.18749839
		 -0.11063031 -0.11045478 0.41543198 0.36803511 -0.13627683 -0.059470437 -0.20342886
		 -0.059317887 0.41543198 0.17367317 0.49959293 0.31944466 -0.09757641 -0.056502365
		 -0.15750961 0.016596092 -0.21993744 0.0058819992 -0.11468184 -0.016298532 0.036699131
		 -0.35039088 -0.04505714 -0.30768588 -0.091404617 -0.35668451 0.0085222097 -0.40680218
		 0.047819819 -0.30953836 -0.016778568 -0.26553708 -0.39904943 0.12339894 -0.076012731
		 -0.23465173 -0.12665936 -0.2746276 -0.39904943 0.18077047 -0.34936419 0.094713062
		 -0.044614352 -0.21379477 0.49959293 0.22226366 0.33127084 0.22226371 0.33127084 0.31944466
		 -0.29967904 0.12339894 -0.2996791 0.18077047 -0.34936419 0.15208474 -0.34936419 0.20945603;
createNode polyAutoProj -n "polyAutoProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:6]";
	setAttr ".ix" -type "matrix" -0.49947391841732414 0.13371947704327622 0 0 -0.26921720885523226 -1.0055900395780029 0 0
		 0 0 0.5170639164744365 0 0.73546239634590527 6.0082972470696436 0.511679239342271 1;
	setAttr ".s" -type "double3" 0.65735503373918891 0.65735503373918891 0.65735503373918891 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 7 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]";
createNode polyMapSewMove -n "polyMapSewMove33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:1]" "e[3]" "e[5]" "e[7]" "e[11]";
createNode polyTweakUV -n "polyTweakUV14";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.36350903 0.26715368 0.55042583
		 0.26715368 0.55042475 0.5831154 0.36350936 0.58311188 0.55042583 0.82614124 0.3635118
		 0.82614225 0.36351007 -0.020870592 0.55042481 -0.020870861 0.55042583 1.15156662
		 0.3635101 1.15156841 0.55042744 1.33479702 0.36350965 1.33479583 0.55042702 -0.30889738
		 0.36350778 -0.30889714 0.55042791 1.65075541 0.36351171 1.65075648;
createNode polyMapCut -n "polyMapCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[18]" "e[24]";
createNode polyTweakUV -n "polyTweakUV15";
	setAttr ".uopa" yes;
	setAttr -s 37 ".uvtk[0:36]" -type "float2" -0.24097884 0.027122917 -0.22778368
		 0.0030733079 -0.22673701 0.0072950148 -0.23283812 0.0062405765 0.020122286 -0.16209579
		 -0.23016427 -0.0039313636 -0.16494706 0.060360122 -0.22022164 -0.00057084655 -0.21771787
		 0.0048320722 -0.16494706 0.074680895 -0.17114815 0.063940331 -0.22319745 -0.0062657115
		 -0.21206011 -0.0059026014 -0.20865339 1.0063196e-008 -0.21767187 -0.010206596 0.43892646
		 -0.09369947 0.3165814 -0.20311353 0.37323189 -0.2939243 0.51094258 -0.18302231 0.33679941
		 -0.036018472 0.25589478 -0.11291306 -0.10187954 0.08688014 0.17860612 -0.26832485
		 0.21070002 -0.3730875 -0.10187954 0.08230675 -0.10584021 0.089166842 0.14839222 -0.1569149
		 -0.17114815 0.071100719 -0.15874602 0.071100712 -0.15874602 0.063940331 -0.10980087
		 0.08688014 -0.10980087 0.08230675 -0.10584021 0.084593445 -0.10584021 0.08002013
		 0.020297401 -0.30266681 0.022908777 -0.40920705 -0.23935424 -0.0030909195;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 1\n                -niceNames 0\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 1\n            -niceNames 0\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 10 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition axis;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV3.out" "pCylinderShape1.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
connectAttr "polyTweakUV4.out" "pCubeShape2.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
connectAttr "polyTweakUV12.out" "polySurfaceShape1.i";
connectAttr "groupId7.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "polyTweakUV12.uvtk[0]" "polySurfaceShape1.uvst[0].uvtw";
connectAttr "polyTweakUV14.out" "polySurfaceShape2.i";
connectAttr "groupId8.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "polyTweakUV14.uvtk[0]" "polySurfaceShape2.uvst[0].uvtw";
connectAttr "polyTweakUV15.out" "pSphereShape1.i";
connectAttr "polyTweakUV15.uvtk[0]" "pSphereShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape3.o" "polyAutoProj1.ip";
connectAttr "pCylinderShape1.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV3.ip";
connectAttr "polySurfaceShape4.o" "polyAutoProj2.ip";
connectAttr "pCubeShape2.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV4.ip";
connectAttr "groupParts1.og" "polyAutoProj3.ip";
connectAttr "polySurfaceShape1.wm" "polyAutoProj3.mp";
connectAttr "polySurfaceShape5.o" "groupParts1.ig";
connectAttr "groupId7.id" "groupParts1.gi";
connectAttr "polyAutoProj3.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyAutoProj4.ip";
connectAttr "polySurfaceShape1.wm" "polyAutoProj4.mp";
connectAttr "polyAutoProj4.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyMapSewMove14.ip";
connectAttr "polyMapSewMove14.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove19.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove20.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapSewMove21.ip";
connectAttr "polyMapSewMove21.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyMapSewMove23.ip";
connectAttr "polyMapSewMove23.out" "polyMapSewMove24.ip";
connectAttr "polyMapSewMove24.out" "polyMapSewMove25.ip";
connectAttr "polyMapSewMove25.out" "polyMapSewMove26.ip";
connectAttr "polyMapSewMove26.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyMapSewMove27.ip";
connectAttr "polyMapSewMove27.out" "polyMapSewMove28.ip";
connectAttr "polyMapSewMove28.out" "polyMapSewMove29.ip";
connectAttr "polyMapSewMove29.out" "polyTweakUV12.ip";
connectAttr "polySurfaceShape6.o" "polyAutoProj5.ip";
connectAttr "pSphereShape1.wm" "polyAutoProj5.mp";
connectAttr "polyAutoProj5.out" "polyMapSewMove30.ip";
connectAttr "polyMapSewMove30.out" "polyMapSewMove31.ip";
connectAttr "polyMapSewMove31.out" "polyMapSewMove32.ip";
connectAttr "polyMapSewMove32.out" "polyTweakUV13.ip";
connectAttr "groupParts2.og" "polyAutoProj6.ip";
connectAttr "polySurfaceShape2.wm" "polyAutoProj6.mp";
connectAttr "polySurfaceShape7.o" "groupParts2.ig";
connectAttr "groupId8.id" "groupParts2.gi";
connectAttr "polyAutoProj6.out" "polyMapSewMove33.ip";
connectAttr "polyMapSewMove33.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV13.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV15.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
// End of Torch.ma
