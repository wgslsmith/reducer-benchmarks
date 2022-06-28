// Seed: 1629130667060417813

struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_4( arg_0: Struct_4) ->  i32 {
    switch (2005065421) {
        case -1660153006: {
        }
        default: {
        }
    }
    loop {
        switch ((((((-740461970) / (644416424)) << ((2416892503u) + (2923454507u))) & (-737111025)) | (1423251348)) + (reverseBits((countOneBits((vec4<i32>(-1720311689, 1847424436, 354716776, -745216124)) - (vec4<i32>(-612374855, -2062542008, 812035446, 48225482)))) % ((countOneBits(vec4<i32>(-370494415, 1282043138, 1613198400, -1169321207))) / (max(vec4<i32>(876801057, -3542445, -1036100124, 1329842037), vec4<i32>(1766316141, -1341905773, 728830348, -553642772))))).x)) {
            default: {
            }
        }
    }
    let var_0 = Struct_1(vec4<u32>(957471169u, ~((clamp(1015340678u, 2937253005u, 28792945u)) * (~(2041545298u))), (select(select(vec4<u32>(1351458819u, 3559262428u, 62729942u, 2423320635u), vec4<u32>(2083711454u, 2313213746u, 3277831954u, 2973435153u), vec4<bool>(true, false, true, false)), (vec4<u32>(1642215628u, 3685868299u, 1712842183u, 2571842475u)) | (vec4<u32>(981195806u, 1996839206u, 224849153u, 3145038549u)), !(vec4<bool>(false, false, true, true))).x) << (478896609u), (3546728159u) | (min(clamp(vec4<u32>(1638743953u, 3600754883u, 90048904u, 2885160446u), vec4<u32>(3804733157u, 3611070705u, 90374434u, 3449771935u), vec4<u32>(3499848819u, 1750430514u, 2898397469u, 1879453334u)).xx, countOneBits(vec3<u32>(1937542694u, 3496056578u, 4212948153u)).yx).x)), !(!((min(-229067803, -1115287059)) >= ((-1252693279) + (1495639951)))));
    let var_1 = clamp(clamp(~(~(~(vec3<i32>(-1413929204, 1901033008, -1109127856)))), (~(select(vec4<i32>(529878297, -1280936441, 2013227237, -1664663865), vec4<i32>(1832991638, -1108744561, 739215895, 698162322), var_0.b).yyw)) ^ (vec3<i32>(select(vec2<i32>(-73309009, 17970024), vec2<i32>(-52720922, 2025194158), true).x, (1004991776) ^ (1351686409), abs(vec4<i32>(670281844, 1224099180, 1567833298, 97678060)).x)), countOneBits(select(vec4<i32>(-1449894276, 330372934, 1338526501, 449365056), vec4<i32>(-1819138827, -1658721671, 1710876576, -2083286875), vec4<bool>(true, false, false, var_0.b))).yzy).yx, ((~(vec2<i32>(-1543010222, -1766594570))) >> ((~(var_0.a.yx)) ^ (~(vec2<u32>(var_0.a.x, var_0.a.x))))) | (vec2<i32>(((1271179855) >> (490160002u)) | ((1966683875) * (-1839879675)), 1516404024)), -((vec2<i32>(select(vec2<i32>(-1425969269, -485786147), vec2<i32>(518007643, -1172084545), var_0.b).x, (1379529975) ^ (486066971))) ^ (min(~(vec3<i32>(2117581245, 815566956, 439921688)), vec3<i32>(-1087449268, 1982400959, -1291492383)).yz)));
    let var_2 = 104139088u;
    return (1784836428) >> (dot(vec3<u32>(((var_0.a.x) >> (3876683541u)) * (21479229u), var_2, 2795170178u), reverseBits(select(abs(vec4<u32>(3422516454u, 619336158u, 2925229760u, 588287243u)), var_0.a, var_0.b)).xxw));
}

fn func_3( arg_0: Struct_2,  arg_1: u32,  arg_2: Struct_2) ->  Struct_1 {
    let var_0 = ~(vec2<u32>(1600334797u, 2236184418u));
    if (true) {
        let var_1 = ~(3576764319u);
    }
    if (!((1920976909) <= (-(1171946483)))) {
        for (var var_1 = 36526038; true; var_1 -= 1) {
            var var_1 = !(!(true));
        }
    }
    loop {
        var var_1 = reverseBits(abs((~(vec4<i32>(916692408, -1535908121, -2062877475, -2014683759))) | (vec4<i32>(~(-1774858446), func_4(Struct_4(3412560126u, Struct_3(1596580648, -888460912, 1777767239u, vec4<bool>(true, false, false, true), 3524492662u), Struct_1(vec4<u32>(var_0.x, var_0.x, 3351373108u, 3942492029u), false), Struct_3(721347152, 1392699154, 3637867499u, vec4<bool>(true, true, false, true), var_0.x), -1485385329)), clamp(vec4<i32>(798691422, 1966075434, 6452030, -416048933), vec4<i32>(-1156948542, 886323810, 194301245, 1777319338), vec4<i32>(-375172135, -1533824255, 1380944158, -788084778)).x, ~(-2039124324)))).x);
    }
    var var_1 = Struct_1((reverseBits(~((vec4<u32>(var_0.x, 66240639u, var_0.x, var_0.x)) & (vec4<u32>(2947925722u, 3584549665u, var_0.x, var_0.x))))) >> ((vec4<u32>((621610456u) & (889079670u), var_0.x, ~(var_0.x), (var_0.x) & (1119346164u))) & (~(~(vec4<u32>(var_0.x, 1256190838u, var_0.x, var_0.x))))), ((1915159058u) <= (1161584404u)) | (!((clamp(vec3<u32>(4262505303u, 3581354663u, var_0.x), vec3<u32>(var_0.x, 2930147746u, 1970927655u), vec3<u32>(var_0.x, var_0.x, var_0.x)).x) >= ((3221525205u) << (var_0.x)))));
    return var_1;
}

fn func_2( arg_0: i32,  arg_1: i32,  arg_2: vec3<u32>,  arg_3: u32) ->  Struct_3 {
    var var_0 = func_3(Struct_2(func_3(Struct_2(Struct_1(vec4<u32>(1527486087u, 3072232643u, 1938795292u, 1164998342u), false)), 1623469673u, Struct_2(Struct_1(vec4<u32>(3014003691u, 4050631694u, 199865527u, 2448205358u), false)))), ~((clamp(~(vec4<u32>(948160972u, 3394819419u, 3594327344u, 2898944209u)), vec4<u32>(1255491156u, 3781863193u, 2026647917u, 3456876525u), reverseBits(vec4<u32>(1494307109u, 877372736u, 1296830981u, 2416587407u))).x) * ((4027544225u) + (~(2051829025u)))), Struct_2(Struct_1(vec4<u32>((3212749187u) + (1958095100u), abs(vec2<u32>(1914598827u, 1767887638u)).x, (2276069258u) ^ (4152248718u), dot(vec2<u32>(2636688683u, 1108743470u), vec2<u32>(2326548253u, 1753425044u))), !(false))));
    var var_1 = ~(~(var_0.a.x));
    for (var var_2 = -410608872; ; var_2 -= 1) {
        loop {
            var var_2 = ~(1329297025);
        }
    }
    var_1 = 1362462315u;
    switch (-137939915) {
        default: {
        }
    }
    return Struct_3(-1461240351, (~(((-1626596913) * (-1606951289)) / (abs(vec4<i32>(1073995496, -653958907, 61421205, 320674311)).x))) - (reverseBits(-(-2018398718))), 1872856879u, select(select(vec4<bool>(true, !(false), (var_1) != (var_0.a.x), true), !(vec4<bool>(false, var_0.b, true, false)), vec4<bool>(var_0.b, (var_0.b) == (var_0.b), func_3(Struct_2(var_0), var_0.a.x, Struct_2(var_0)).b, var_0.b)), select(!(select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_0.b, true, true), var_0.b)), vec4<bool>(true, var_0.b, !(false), !(false)), select(!(vec4<bool>(false, var_0.b, var_0.b, var_0.b)), !(vec4<bool>(var_0.b, false, false, true)), !(vec4<bool>(true, var_0.b, var_0.b, var_0.b)))), !(!(any(vec3<bool>(var_0.b, var_0.b, false))))), abs(abs(~(countOneBits(var_0.a)))).x);
}

fn func_1( arg_0: i32,  arg_1: Struct_5) ->  bool {
    loop {
        var var_0 = 1148992960;
    }
    let var_0 = Struct_4(~(1551829610u), func_2(~(max((vec3<i32>(1379162312, -89304630, 940500011)) / (vec3<i32>(-1994600228, -775271956, -894038444)), countOneBits(vec4<i32>(1665682059, 606487046, 1444523790, -1051825989)).zyy).x), 1353760750, clamp((select(vec4<u32>(2822795671u, 1154102654u, 4158906903u, 925853606u), vec4<u32>(1096014057u, 2422498211u, 325445280u, 3830281491u), true).ywx) - (~(vec3<u32>(1024440997u, 1147358587u, 2583287129u))), clamp((vec4<u32>(2589090258u, 320194831u, 270433379u, 2069415185u)) << (vec4<u32>(1588895104u, 4151723282u, 3193039176u, 4147307007u)), vec4<u32>(3871462593u, 1435073345u, 1984356067u, 375795277u), vec4<u32>(3262815427u, 3776303623u, 3081573222u, 18341351u)).zyz, vec3<u32>(abs(3984880749u), select(2863577023u, 3412872826u, false), 1697067380u)), (~(countOneBits(vec4<u32>(4085085523u, 4270257738u, 1548495256u, 2021652076u)).x)) | (3377828u)), func_3(Struct_2(func_3(Struct_2(Struct_1(vec4<u32>(3713407487u, 3730490655u, 799379449u, 3732281125u), false)), ~(2558205905u), Struct_2(Struct_1(vec4<u32>(3843248876u, 2509575726u, 1627374948u, 2594442216u), false)))), ((~(2194117192u)) / (1460565256u)) + (func_2(-964304432, -(1707333603), abs(vec4<u32>(332156164u, 413867197u, 894675894u, 3507816991u)).yzy, (2744268362u) | (1952869556u)).e), Struct_2(Struct_1((vec4<u32>(1161029691u, 100234580u, 1346585683u, 1321946369u)) % (vec4<u32>(2452385340u, 338243539u, 2878440263u, 4027687144u)), !(false)))), func_2((((1917550420) | (2001162672)) >> (min(vec2<u32>(2216236173u, 1157493582u), vec2<u32>(1532545617u, 2939691322u)).x)) >> (select(vec2<u32>(2674519357u, 27970461u), countOneBits(vec2<u32>(2979493536u, 1362817237u)), !(true)).x), -810190546, clamp(vec3<u32>(max(524228823u, 1543204061u), 3522102439u, (193957388u) ^ (967902833u)), min((vec3<u32>(1689588621u, 1262078935u, 722694789u)) ^ (vec3<u32>(255263422u, 1502063409u, 2033330729u)), vec3<u32>(91608715u, 1780839535u, 3738197544u)), select(~(vec3<u32>(162738506u, 606291875u, 4065735662u)), select(vec4<u32>(1194421385u, 3703813313u, 3842348628u, 4026244628u), vec4<u32>(671566852u, 1678511538u, 1522497500u, 3201994997u), false).yxw, (-758650151) <= (-248187286))), 1545023499u), (((-(1573613699)) + (select(vec3<i32>(-1876148836, 588524552, -539083292), vec3<i32>(649844064, 1392268363, 665088073), vec3<bool>(true, true, true)).x)) | (select((vec3<i32>(1796778248, -645562579, -479232458)) << (vec3<u32>(2804870892u, 525926860u, 513946402u)), (vec3<i32>(365710248, -1689638647, 1422753674)) & (vec3<i32>(-938727970, -1727821198, 960124603)), !(vec3<bool>(true, true, false))).x)) / (~(1589667231)));
    if (((1432831042u) > (reverseBits(abs(var_0.c.a.xyz)).x)) != (func_2(1582338833, (var_0.e) ^ (~(min(vec4<i32>(var_0.b.b, -864963449, -1044330062, var_0.b.a), vec4<i32>(var_0.e, 121946243, var_0.b.a, 1704189580)).x)), vec3<u32>(reverseBits((var_0.c.a.yx) | (vec2<u32>(3712339562u, 1740488018u))).x, ~(var_0.a), 861974462u), clamp(max(clamp(var_0.c.a, vec4<u32>(var_0.d.e, 1867203193u, 3216650000u, 2721247314u), var_0.c.a), ~(var_0.c.a)).xx, var_0.c.a.zx, select(abs(vec2<u32>(var_0.c.a.x, 4055868537u)), ~(vec2<u32>(1253934352u, var_0.a)), !(var_0.d.d.x))).x).d.x)) {
        let var_1 = abs(var_0.c.a).wxw;
    }
    loop {
        let var_1 = abs((abs(var_0.c.a)) | (~(vec4<u32>(min(var_0.c.a, var_0.c.a).x, (var_0.d.e) >> (2083208459u), min(vec3<u32>(var_0.d.c, 3711950603u, var_0.d.e), var_0.c.a.zwx).x, var_0.d.c))));
    }
    var var_1 = Struct_5(var_0.d.d, var_0.c.a.yx, select(var_0.b.d, vec4<bool>(var_0.d.d.x, all(var_0.b.d), (!(var_0.c.b)) || ((var_0.d.e) >= (var_0.d.e)), select(select(var_0.b.d, vec4<bool>(var_0.c.b, var_0.b.d.x, true, true), true), var_0.b.d, true).x), select(var_0.d.d, var_0.d.d, !(!(var_0.b.d)))).wz, !((!(true)) && (any(!(var_0.d.d)))));
    return func_2(min(-(abs(reverseBits(vec4<i32>(2073835987, var_0.e, -1572509482, var_0.b.a)))), (vec4<i32>(-376201055, (-885191579) * (var_0.d.a), -189129949, -(var_0.b.b))) / (((vec4<i32>(var_0.b.b, var_0.d.a, var_0.b.a, 1947595845)) << (var_0.c.a)) * ((vec4<i32>(848093736, var_0.b.a, -19340272, 435729469)) ^ (vec4<i32>(977335820, var_0.e, var_0.b.b, var_0.b.a))))).x, ~(-1811254983), vec3<u32>(dot(func_3(Struct_2(var_0.c), ~(1403608258u), Struct_2(Struct_1(vec4<u32>(var_0.a, var_0.b.c, 321907565u, 399703385u), false))).a, (vec4<u32>(566698309u, var_1.b.x, var_0.b.e, var_0.b.e)) / (vec4<u32>(var_1.b.x, var_0.a, var_0.a, var_0.a))), (~(var_1.b.x)) >> (~(263880072u)), select(var_0.c.a.x, clamp(var_0.c.a.wwz, var_0.c.a.wyy, vec3<u32>(var_0.d.e, 384846634u, 964104693u)).x, true)), 333712059u).d.x;
}

@stage(compute)
@workgroup_size(1)
fn main() {
    switch (~(~(-(reverseBits(182305761))))) {
        case 317781009: {
        }
        case 1379090586: {
        }
        case -1119218078: {
        }
        default: {
        }
    }
    {
        let var_0 = vec2<bool>(select(!(all(!(vec2<bool>(true, false)))), !(((2060479215u) % (u_input.c)) >= (1306443950u)), all(vec2<bool>(!(true), !(true)))), !((((true) && (false)) == (func_1(488517780, Struct_5(vec4<bool>(false, true, true, true), vec2<u32>(u_input.c, u_input.b), vec2<bool>(false, true), true)))) && (!(false))));
    }
    switch (~(-(reverseBits((vec4<i32>(-82308774, -478222209, 1266639603, 306779986)) % ((vec4<i32>(1687298415, -849738869, 1846644849, 1524683958)) >> (vec4<u32>(3923825820u, u_input.a, u_input.b, 2336913343u)))).x))) {
        case 1343489614: {
        }
        default: {
        }
    }
    var var_0 = ~((reverseBits(~(select(vec4<i32>(-2029735084, -429004562, -1542821866, 641517354), vec4<i32>(351666358, 1258674576, -1122838408, -378314916), vec4<bool>(false, true, true, true))))) << (~(~(~(vec4<u32>(u_input.b, u_input.c, 1814676350u, u_input.a))))));
    var_0.x = var_0.x;
    let var_1 = any(vec4<bool>(true, !(true), false, !((!(false)) | (any(vec2<bool>(false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -(~(min(clamp(var_0, vec4<i32>(-1369364149, 1427737299, var_0.x, 1939468386), var_0).zx, ~(vec2<i32>(803424029, 2005288134))).x)), ~((~(abs(vec4<u32>(u_input.b, u_input.a, 4032552064u, u_input.b)))) + (~(vec4<u32>(2762262098u, u_input.b, u_input.a, u_input.c)))), clamp(~(((vec3<u32>(3420922579u, u_input.a, 3288464629u)) * (vec3<u32>(u_input.a, u_input.c, 2479211581u))) & ((vec3<u32>(u_input.c, u_input.c, 579004273u)) ^ (vec3<u32>(u_input.c, u_input.b, u_input.c)))), vec3<u32>(4201910369u, dot(countOneBits(vec4<u32>(u_input.b, u_input.b, 198012565u, 2690307673u)).xzz, (vec3<u32>(u_input.a, 2550565558u, u_input.a)) * (vec3<u32>(u_input.c, u_input.b, 1778485808u))), u_input.b), (~(~(vec3<u32>(3995896039u, u_input.a, 54157578u)))) + (vec3<u32>(u_input.c, u_input.c, ~(u_input.b)))).xx, ~(~((4013468882u) | (~(3874915313u)))));
}

