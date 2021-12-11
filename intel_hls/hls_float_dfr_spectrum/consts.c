#include "HLS/hls_float.h"

#include "dfr.h"

using namespace ihc;

using DFR_FP = hls_float<8, 17, fp_config::FP_Round::RNE>;

DFR_FP MASK[] = {
DFR_FP(0.28709830748868337),
DFR_FP(-0.26063055700704785),
DFR_FP(0.3764842308107038),
DFR_FP(-0.44143196519480565),
DFR_FP(-0.16388293945433963),
DFR_FP(-0.34972053310516094),
DFR_FP(-0.049660633350713024),
DFR_FP(0.29632427028729424),
DFR_FP(-0.26935779100625257),
DFR_FP(-0.4479786989355904),
DFR_FP(-0.0954481601784718),
DFR_FP(-0.30148695549074467),
DFR_FP(-0.4092469543808781),
DFR_FP(0.08033238598685066),
DFR_FP(-0.2013038671810774),
DFR_FP(0.17199487795635937),
DFR_FP(-0.3004845560317867),
DFR_FP(0.4421131105064978),
DFR_FP(-0.13488983175517144),
DFR_FP(-0.3945047204297705),
DFR_FP(0.12910815153970923),
DFR_FP(0.4271545530678674),
DFR_FP(-0.05962284528421602),
DFR_FP(0.45459049369073723),
DFR_FP(-0.00010418631235298292),
DFR_FP(-0.07477137515092447),
DFR_FP(0.12021345201537781),
DFR_FP(0.4950965052353241),
DFR_FP(0.4489436749377653),
DFR_FP(-0.039954860690903926),
DFR_FP(0.25772884530829143),
DFR_FP(-0.002577304512381029),
DFR_FP(0.02931216019677041),
DFR_FP(0.2857857007138075),
DFR_FP(-0.08534415064432921),
DFR_FP(0.23448357178872936),
DFR_FP(0.21114287798974984),
DFR_FP(0.43205968661337824),
DFR_FP(-0.3850673667190948),
DFR_FP(0.2290151170763094),
DFR_FP(0.4274239286245599),
DFR_FP(0.4679261899246464),
DFR_FP(-0.4852936950346307),
DFR_FP(0.36364009024557575),
DFR_FP(0.4811950400663443),
DFR_FP(0.45721017961096355),
DFR_FP(-0.3512359877675021),
DFR_FP(0.47262881382295496),
DFR_FP(0.38993555572052063),
DFR_FP(0.3223738275430704)
};


DFR_FP W[] = {
DFR_FP(-326.79762138426304),
DFR_FP(-864.0784753374755),
DFR_FP(1492.1478373035789),
DFR_FP(252.51285012438893),
DFR_FP(465.9910881356336),
DFR_FP(-888.5389967029914),
DFR_FP(-2940.6063591875136),
DFR_FP(2082.605362802744),
DFR_FP(1875.3745745196939),
DFR_FP(1396.6612711250782),
DFR_FP(0.6322677813004702),
DFR_FP(-1196.4039914365858),
DFR_FP(507.9544500745833),
DFR_FP(-7.925127757713199),
DFR_FP(5.295079180737957),
DFR_FP(0.7783339730468697),
DFR_FP(-0.8624041080474854),
DFR_FP(-0.07576443449457315),
DFR_FP(-1.0467177675434982),
DFR_FP(-21.02536929398775),
DFR_FP(0.033533209955763255),
DFR_FP(-938.9594937134534),
DFR_FP(969.8280302770436),
DFR_FP(-0.14148225651752),
DFR_FP(0.1660645192807806),
DFR_FP(0.20825019902463282),
DFR_FP(-58.40651255985722),
DFR_FP(0.13113851030117019),
DFR_FP(1439.8434500992298),
DFR_FP(0.7244673132845492),
DFR_FP(2233.2011120580137),
DFR_FP(0.8289083587333153),
DFR_FP(-1084.7108524609357),
DFR_FP(-157.0017043352127),
DFR_FP(-3.9879306621151045),
DFR_FP(-6.962985664664302),
DFR_FP(0.7553578862032282),
DFR_FP(267.92937512509525),
DFR_FP(-496.8682664632797),
DFR_FP(-0.025153507673053355),
DFR_FP(1029.6067376211286),
DFR_FP(-30.89086416363716),
DFR_FP(-585.8222900629044),
DFR_FP(0.04658917278857899),
DFR_FP(-1405.8514784947038),
DFR_FP(-2.5163356160046533),
DFR_FP(1034.6377458563074),
DFR_FP(3102.9425930790603),
DFR_FP(-1.4733424335718155),
DFR_FP(66.96617555618286)
};

void config_mask_weight(){
    return;
}