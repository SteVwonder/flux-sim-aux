uses "Node"
-- Hierarchy: cluster -> pod -> l2_switch -> node
-- Generated via gen_conf.R
Hierarchy "default" {
Resource { "cluster", name = "cab",
children = {
	Resource { "pod", name = "pod1", children = {
		Resource { "switch", name = "l2_switch7", children = {
			ListOf { Node,
			ids = "1,2,3,4,5,6,7,8,9,10,11,12,13,14,16,17,18,19",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch5", children = {
			ListOf { Node,
			ids = "15,20,21,22,23,24,25,26,27,28,29,30,31,32,33,36,37,38",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch6", children = {
			ListOf { Node,
			ids = "34,35,39,40,41,42,43,44,45,46,47,48,49,50,51,52,56,57",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch8", children = {
			ListOf { Node,
			ids = "53,54,55,58,59,60,61,62,63,64,65,66,67,68,69,70,71,76",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch4", children = {
			ListOf { Node,
			ids = "72,73,74,75,77,78,79,80,81,82,83,84,85,86,87,88,89,90",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch2", children = {
			ListOf { Node,
			ids = "91,92,93,94,95,96,97,98,99,100,101,102,103,104,106,107,108,109",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch0", children = {
			ListOf { Node,
			ids = "105,110,111,112,113,114,115,116,117,118,119,120,121,122,123,126,127,128",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch3", children = {
			ListOf { Node,
			ids = "124,125,129,130,131,132,133,134,135,136,137,138,139,140,141,142,146,147",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch1", children = {
			ListOf { Node,
			ids = "143,144,145,148,149,150,151,152,153,154,631,632,633,634,663,667,671,672",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch20", children = {
			ListOf { Node,
			ids = "155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,171,172,173",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch43", children = {
			ListOf { Node,
			ids = "170,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,191,192",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch32", children = {
			ListOf { Node,
			ids = "189,190,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,211",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch65", children = {
			ListOf { Node,
			ids = "208,209,210,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch63", children = {
			ListOf { Node,
			ids = "227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch66", children = {
			ListOf { Node,
			ids = "245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,261,262,263",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch47", children = {
			ListOf { Node,
			ids = "260,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,281,282",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch13", children = {
			ListOf { Node,
			ids = "279,280,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,301",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch50", children = {
			ListOf { Node,
			ids = "298,299,300,302,303,304,305,306,307,308,635,636,637,638,664,668,673,674",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
	}}, -- pod
	Resource { "pod", name = "pod0", children = {
		Resource { "switch", name = "l2_switch68", children = {
			ListOf { Node,
			ids = "309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,326,327",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch29", children = {
			ListOf { Node,
			ids = "325,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,346",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch60", children = {
			ListOf { Node,
			ids = "344,345,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch14", children = {
			ListOf { Node,
			ids = "363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,381",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch28", children = {
			ListOf { Node,
			ids = "380,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch64", children = {
			ListOf { Node,
			ids = "399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,416,417",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch10", children = {
			ListOf { Node,
			ids = "415,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,436",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch9", children = {
			ListOf { Node,
			ids = "434,435,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch42", children = {
			ListOf { Node,
			ids = "453,454,455,456,457,458,459,460,461,462,639,640,641,642,665,669,675,676",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch12", children = {
			ListOf { Node,
			ids = "463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,481",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch21", children = {
			ListOf { Node,
			ids = "480,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch15", children = {
			ListOf { Node,
			ids = "499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,516,517",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch40", children = {
			ListOf { Node,
			ids = "515,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,536",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch18", children = {
			ListOf { Node,
			ids = "534,535,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch44", children = {
			ListOf { Node,
			ids = "553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,571",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch53", children = {
			ListOf { Node,
			ids = "570,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch33", children = {
			ListOf { Node,
			ids = "589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,606,607",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch45", children = {
			ListOf { Node,
			ids = "605,608,609,610,611,612,613,614,615,616,643,644,645,646,666,670,677,678",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
	}}, -- pod
	Resource { "pod", name = "pod2", children = {
		Resource { "switch", name = "l2_switch58", children = {
			ListOf { Node,
			ids = "617,618,619,620,621,622,623,624,625,626,627,628,629,630,691,692,693,694",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch67", children = {
			ListOf { Node,
			ids = "647,648,649,650,679,680,687,819,820,823,824,825,826,827,828,829,830,971",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch31", children = {
			ListOf { Node,
			ids = "651,652,653,654,681,682,688,972,977,978,979,982,983,984,985,986,987,988",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch52", children = {
			ListOf { Node,
			ids = "695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,711,712,713",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch46", children = {
			ListOf { Node,
			ids = "710,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,731,732",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch11", children = {
			ListOf { Node,
			ids = "729,730,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,751",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch59", children = {
			ListOf { Node,
			ids = "748,749,750,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch30", children = {
			ListOf { Node,
			ids = "767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch69", children = {
			ListOf { Node,
			ids = "785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,801,802,803",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch71", children = {
			ListOf { Node,
			ids = "800,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,821,822",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch62", children = {
			ListOf { Node,
			ids = "831,832,833,834,835,836,837,838,839,840,841,842,843,844,846,847,848,849",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch54", children = {
			ListOf { Node,
			ids = "845,850,851,852,853,854,855,856,857,858,859,860,861,862,863,866,867,868",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch55", children = {
			ListOf { Node,
			ids = "864,865,869,870,871,872,873,874,875,876,877,878,879,880,881,882,886,887",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch36", children = {
			ListOf { Node,
			ids = "883,884,885,888,889,890,891,892,893,894,895,896,897,898,899,900,901,906",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch35", children = {
			ListOf { Node,
			ids = "902,903,904,905,907,908,909,910,911,912,913,914,915,916,917,918,919,920",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch49", children = {
			ListOf { Node,
			ids = "921,922,923,924,925,926,927,928,929,930,931,932,933,934,936,937,938,939",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch23", children = {
			ListOf { Node,
			ids = "935,940,941,942,943,944,945,946,947,948,949,950,951,952,953,956,957,958",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch56", children = {
			ListOf { Node,
			ids = "954,955,959,960,961,962,963,964,965,966,967,968,969,970,975,976,980,981",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
	}}, -- pod
	Resource { "pod", name = "pod3", children = {
		Resource { "switch", name = "l2_switch19", children = {
			ListOf { Node,
			ids = "655,656,657,658,683,684,689,973,1132,1133,1134,1136,1137,1138,1139,1140,1141,1142",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch25", children = {
			ListOf { Node,
			ids = "659,660,661,662,685,686,690,974,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch39", children = {
			ListOf { Node,
			ids = "989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1005,1006,1007",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch57", children = {
			ListOf { Node,
			ids = "1004,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1025,1026",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch61", children = {
			ListOf { Node,
			ids = "1023,1024,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1045",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch38", children = {
			ListOf { Node,
			ids = "1042,1043,1044,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch27", children = {
			ListOf { Node,
			ids = "1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch16", children = {
			ListOf { Node,
			ids = "1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1095,1096,1097",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch17", children = {
			ListOf { Node,
			ids = "1094,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1115,1116",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch37", children = {
			ListOf { Node,
			ids = "1113,1114,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1135",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch24", children = {
			ListOf { Node,
			ids = "1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1160,1161",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch26", children = {
			ListOf { Node,
			ids = "1159,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1180",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch34", children = {
			ListOf { Node,
			ids = "1178,1179,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch51", children = {
			ListOf { Node,
			ids = "1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1215",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch41", children = {
			ListOf { Node,
			ids = "1214,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch70", children = {
			ListOf { Node,
			ids = "1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1250,1251",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch22", children = {
			ListOf { Node,
			ids = "1249,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1270",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
		Resource { "switch", name = "l2_switch48", children = {
			ListOf { Node,
			ids = "1268,1269,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286",
			args = {
				basename = "cab",
				sockets = { "0-7,8-15" },
				memory_per_socket = 16000
			}} -- Node
		}}, -- l2_switch
	}}, -- pod

} -- children
} -- Resource
} -- Hierarchy
