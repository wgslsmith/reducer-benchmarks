// Seed: 8558967389621771414

struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<f32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(490048973, -1236454882);

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(3797768263u, true, vec2<bool>(true, true), vec2<u32>(475984711u, 1662198809u), -1741517901), Struct_1(140836104u, true, vec2<bool>(true, true), vec2<u32>(1478912462u, 984144324u), -1825075118), Struct_1(3228382788u, true, vec2<bool>(true, true), vec2<u32>(1523176290u, 2217083221u), -1051388894), Struct_1(2576484955u, true, vec2<bool>(false, false), vec2<u32>(2524155806u, 980771860u), 405081701), Struct_1(955826191u, false, vec2<bool>(true, false), vec2<u32>(1334125316u, 2179717352u), 1430780066), Struct_1(3687297015u, true, vec2<bool>(false, false), vec2<u32>(799392689u, 2012319066u), 1006946338), Struct_1(3602539996u, true, vec2<bool>(true, true), vec2<u32>(3725474909u, 3823928874u), 700192749));

var<private> global2: vec2<f32>;

fn func_4( arg_0: f32,  arg_1: Struct_1) ->  bool {
    let var_0 = select(!(vec3<bool>((abs(3509582233u)) <= (1685120807u), false, ((1438596429) | (637390683)) > (~(185912203)))), !(vec3<bool>(!(!(false)), select(!(true), all(vec4<bool>(false, true, false, true)), false), !(!(true)))), vec3<bool>((dot((vec4<i32>(2042354005, 1468051347, -104378288, 1397967620)) << (vec4<u32>(3680910566u, 4103883982u, 2200630811u, 2367592713u)), firstTrailingBit(vec4<i32>(1871115846, -1066730376, 1420919392, 72552392)))) >= (~(min(-1025689769, -800201719))), false, false));
    var var_1 = -(cos((floor(vec2<f32>(10.0, -735.0))) % (-((vec2<f32>(132.0, -17.0)) / (vec2<f32>(458.0, 760.0))))));
    let var_2 = Struct_1(firstLeadingBit(~(1097456693u)), any((var_0).yx), !((var_0).xz), (vec2<u32>(~(1447121138u), 60804560u)) - ((vec2<u32>((3360965105u) * (3340644556u), (4162549002u) + (1252823143u))) + (vec2<u32>(countOneBits(355761392u), ~(464574488u)))), select((~((969278428) / (1662329952))) & ((~(-965037821)) >> (max(44041692u, 1516055961u))), dot(~((vec3<i32>(563515613, -751803195, 792090543)) * (vec3<i32>(-1508846510, -1796099533, 891548501))), vec3<i32>(select(16842406, -1660377222, (var_0).x), abs(-1937483192), -1781535639)), all(!(select(vec4<bool>((var_0).x, (var_0).x, false, false), vec4<bool>(false, (var_0).x, true, (var_0).x), vec4<bool>(true, false, false, (var_0).x))))));
    var var_3 = !(true);
    var var_4 = Struct_1(dot((var_2).d, vec2<u32>(2394736792u, firstTrailingBit(~((var_2).a)))), false, !(vec2<bool>(!((((var_2).d).x) < ((var_2).a)), !(!((var_0).x)))), abs(clamp(~((var_2).d), (var_2).d, (var_2).d)), (~((534079121) % ((1914502068) >> (2276331169u)))) | ((var_2).e));
    return select((var_0).x, ((~(~((var_4).e))) * ((reverseBits((var_4).e)) >> (3023703494u))) < ((var_2).e), false);
}

fn func_3( arg_0: bool) ->  vec4<u32> {
    var var_0 = Struct_1((1434455593u) & ((((3017413236u) >> (3713463005u)) * (~(1790143633u))) / (4035836076u)), !(func_4(779.0, Struct_1((4230751013u) | (1444825193u), (false) || (true), vec2<bool>(false, false), (vec2<u32>(3666700600u, 4020253182u)) | (vec2<u32>(2449360632u, 1739980568u)), dot(vec4<i32>(-346538921, -343996854, 1196904269, -980625719), vec4<i32>(1146356860, -1605897620, -219382001, -434376194))))), vec2<bool>((all(!(vec4<bool>(true, true, false, false)))) | ((true) || (!(true))), !(!(all(vec4<bool>(false, false, true, false))))), abs(((vec2<u32>(1741536262u, 286895497u)) << (~(vec2<u32>(2107235390u, 1780553506u)))) ^ ((vec2<u32>(4222397104u, 2128686018u)) - (vec2<u32>(3051277449u, 3240271655u)))), -1171795056);
    let var_1 = (-492.0) - (-(mix(-833.0, 58.0, -((512.0) / (818.0)))));
    var var_2 = ~((var_0).e);
    let var_3 = ~(-(select(~(vec4<i32>(948553748, (var_0).e, 1421204744, -1908866390)), (-(vec4<i32>(-1472610604, -1902453455, 2006060334, (var_0).e))) * (min(vec4<i32>((var_0).e, (var_0).e, (var_0).e, (var_0).e), vec4<i32>(-773791760, -779372325, (var_0).e, 2058394339))), select(select(vec4<bool>(true, (var_0).b, false, false), vec4<bool>(((var_0).c).x, (var_0).b, false, (var_0).b), ((var_0).c).x), vec4<bool>(false, ((var_0).c).x, ((var_0).c).x, false), (false) || (true)))));
    let var_4 = select(!((var_0).c), vec2<bool>(!(!((var_0).b)), (false) != (!(select(true, false, true)))), ((var_0).c).x);
    return (~(firstTrailingBit((~(vec4<u32>(((var_0).d).x, ((var_0).d).x, 2863508073u, 264977427u))) + (vec4<u32>((var_0).a, ((var_0).d).x, 1459201976u, ((var_0).d).x))))) * (abs(select((max(vec4<u32>(((var_0).d).x, 4146703529u, (var_0).a, ((var_0).d).x), vec4<u32>(1479765547u, 3313406165u, (var_0).a, (var_0).a))) - (~(vec4<u32>(1319146673u, 1267551354u, 2095152091u, ((var_0).d).x))), ~(vec4<u32>(((var_0).d).x, (var_0).a, (var_0).a, 954565958u)), ((var_0).a) > (((var_0).d).x))));
}

fn func_2( arg_0: i32,  arg_1: u32,  arg_2: vec3<i32>) ->  Struct_1 {
    loop {
        if (((!(true)) | (((false) & (false)) | (false))) | ((true) && (false))) {
            let var_0 = ~(func_3(!(!((-453645772) < (-371921538)))));
        }
    }
    loop {
        let var_0 = -726.0;
    }
    let var_0 = (~(dot(~((vec4<u32>(3251366127u, 3693540081u, 725948504u, 2683090018u)) % (vec4<u32>(605075830u, 2872194692u, 3135613075u, 1744897884u))), abs(vec4<u32>(3614080831u, 1452009291u, 2598761867u, 2118314839u))))) <= (~(3122555153u));
    var var_1 = (dot((clamp(-(vec3<i32>(-227004307, -761815487, -1682151799)), vec3<i32>(-1655031508, -1408017292, -265943215), vec3<i32>(1982561304, -1257811359, 1682334059))) / (select(~(vec3<i32>(1989192877, -258526983, -933390802)), -(vec3<i32>(-978856913, 1847365473, 1921998108)), any(vec2<bool>(false, false)))), (~((vec3<i32>(686663208, 1644653560, -946736920)) % (vec3<i32>(1655521412, -1962927926, 249033838)))) - (vec3<i32>(-402584463, -(-113211990), dot(vec4<i32>(702628771, -720915245, 1348747009, -25995451), vec4<i32>(-132248707, 548646574, 1862488221, -2116897781)))))) - (max(dot(vec3<i32>(934442427, (358787743) & (1513789735), ~(-2144478191)), ~(countOneBits(vec3<i32>(-580486140, 85047845, 141216849)))), ~(abs(-17475807))));
    let var_2 = ((~(reverseBits(-1034838405))) + (-899606350)) != ((-(-1529779702)) - (abs(-(reverseBits(-542714888)))));
    return Struct_1(~(~(~(reverseBits(1422630365u)))), !(true), vec2<bool>(all(!(!(vec3<bool>(true, var_0, false)))), (any(!(vec3<bool>(var_2, var_2, var_0)))) == (!(any(vec4<bool>(var_0, var_2, var_2, var_2))))), ~((clamp(vec2<u32>(181268529u, 210551061u), ~(vec2<u32>(122207119u, 304509703u)), (vec2<u32>(2044399519u, 4071498004u)) / (vec2<u32>(1900643123u, 3393737849u)))) - (~(vec2<u32>(2728247899u, 2006536703u)))), (select(-(abs(472430383)), ~(-(261949197)), (all(vec4<bool>(var_2, false, var_0, true))) != ((900481262u) < (2354580802u)))) & (clamp(dot((vec4<i32>(1228240221, 394953523, 1590108423, -2110847130)) % (vec4<i32>(-2103397822, -1576479090, 1519503040, 264024284)), -(vec4<i32>(-52879395, -1745843369, -106847106, 837995266))), (1623181778) - (25926404), ~((890871051) << (2783769541u)))));
}

fn func_1( arg_0: Struct_1,  arg_1: i32) ->  array<Struct_1, 7> {
    let var_0 = func_2((-1961513031) * (-1134197537), reverseBits(~(~((1947605867u) + (2179346269u)))), -(vec3<i32>((-(57775154)) - (-206654915), 1928670427, dot(firstLeadingBit(vec3<i32>(-807039956, 1315813090, -2031044010)), vec3<i32>(-1048084304, -1326584342, 707125589)))));
    {
        switch ((var_0).e) {
            case 208167777: {
            }
            case 907879931: {
            }
            case -772243941: {
            }
            case 2054013104: {
            }
            default: {
            }
        }
    }
    let var_1 = firstLeadingBit(-1187510461);
    for (var var_2 = 220590215; (!(!((var_0).b))) & (all(vec3<bool>(true, (var_0).b, (var_0).b))); ) {
        if ((any((var_0).c)) && ((((var_0).e) >> (~(627289359u))) != ((-1375869721) % ((~(249693561)) ^ (var_1))))) {
        }
    }
    if (false) {
        if (!(((var_0).b) || (!((((var_0).d).x) != ((var_0).a))))) {
            var var_2 = vec3<f32>(((step(-874.0, cos(-96.0))) * ((556.0) * (-(-268.0)))) + (-(step((-497.0) % (-427.0), -895.0))), (-(-(-(-332.0)))) * (-202.0), -(339.0));
        }
    }
    return array<Struct_1, 7>();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1((global1)[dot(~((~(vec2<u32>(u32((global0).x), 2068289844u)))), vec2<u32>(~u32((global0).x), u32((global0).x)))], (~((global0).x)) ^ (-998987393));
    if (!(!(any(vec3<bool>(false, any(vec4<bool>(true, false, true, true)), !(true)))))) {
        if (!(!(!(!(false))))) {
            var var_0 = func_2(-(-52251937), ((~(~(3695164688u))) >> (firstTrailingBit(~(2883392315u)))) | (~((~(2093478473u)) >> (select(3236946522u, 4184736178u, false)))), select(vec3<i32>((global0).x, -(-1001217270), ((-873564162) + (-1547724542)) + (((global0).x) + (2121751785))), ((abs(vec3<i32>((global0).x, -1904424193, (global0).x))) * (max(vec3<i32>((global0).x, (global0).x, (global0).x), vec3<i32>(-1277127184, (global0).x, 670548150)))) ^ (min(vec3<i32>(2095798857, (global0).x, (global0).x), firstLeadingBit(vec3<i32>(1164504487, -288163436, (global0).x)))), select(!(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), vec3<bool>((-1955830237) <= ((global0).x), true, (-1297033719) >= (-1831994543)), !(func_4(((u_input).a).x, (global1)[0u])))));
        }
    }
    switch (1799004840) {
        case -1017714266: {
        }
        case -1363316414: {
        }
        default: {
        }
    }
    global0 = ((-(reverseBits(vec2<i32>(-1138732578, 606762603)))) & ((vec2<i32>((1713495569) * ((global0).x), (global0).x)) ^ ((~(vec2<i32>(-982343809, (global0).x))) + ((vec2<i32>(-610357820, 466570965)) >> (vec2<u32>(2845588959u, 4193082350u)))))) - ((abs(abs(vec2<i32>(1215561579, 819733738)))) + (vec2<i32>(firstTrailingBit((global0).x), clamp(-1025168270, (global0).x, (-2086384706) + ((global0).x)))));
    let var_0 = vec4<i32>((global0).x, ~(-426444138), ((-(dot(vec4<i32>(2066899371, -427123199, -510009840, -1752599595), vec4<i32>((global0).x, 433421005, -135852798, (global0).x)))) | (-639429775)) * (1637950212), -(228916612));
    let x = (u_input).a;
    s_output = StorageBuffer(vec3<u32>(~(~(2887481541u)), (func_3(!(false))).x, 907408390u), 2721747232u, (var_0).x, var_0, 4239083878u);
}

