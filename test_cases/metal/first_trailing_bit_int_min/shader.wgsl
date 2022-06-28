// Seed: 3278438496960959213

struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-24119, 2147483647, -1, -27651);

var<private> global1: vec4<u32>;

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_3) -> bool {
    loop {
        for (; !true; ) {
            var var_0 = ~(-vec4<i32>(~0 | ~12828, 2147483647, 26468, global0.x));
        }
    }
    for (var var_0 = -297; false; var_0 -= 1) {
        global1 = vec4<u32>(arg_3.b % reverseBits(15368u), 1u | (28804u - ~(~40544u)), select(arg_2, ~(global1.x - 0u) - u_input.b.x, arg_0 >= dot(~vec3<u32>(global1.x, 4294967295u, 51676u), ~global1.zzx)), ~abs(firstLeadingBit(u_input.b.x)));
    }
    if (true) {
        loop {
            continue;
        }
    }
    let var_0 = -2147483648;
    let var_1 = Struct_4(-(-ceil(arg_3.d.c.x - arg_3.e.a.c.x)));
    return arg_3.d.a;
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(!(true || (false || true)), !vec3<bool>(true && true, false, true), vec2<f32>(-1118.0, max(select(-1131.0, -846.0, true), -423.0))), (~(global1.x - 1u) >> ~global1.x) * 8196u, Struct_2(Struct_1(-global0.x != 14559, vec3<bool>(-2147483648 <= global0.x, any(vec2<bool>(true, true)), true & true), vec2<f32>(-(-2692.0), 1000.0))), Struct_1(true, !vec3<bool>(any(vec3<bool>(false, true, true)), true | false, !true), ((vec2<f32>(-592.0, 1062.0) - vec2<f32>(954.0, -334.0)) - trunc(vec2<f32>(-1398.0, 270.0))) * -exp2(vec2<f32>(533.0, -943.0))), Struct_2(Struct_1(false, vec3<bool>(true, !false, func_4(u_input.b.x, vec4<f32>(-1150.0, -168.0, 560.0, 545.0), global1.x, Struct_3(Struct_1(true, vec3<bool>(false, false, false), vec2<f32>(-520.0, -1550.0)), global1.x, Struct_2(Struct_1(true, vec3<bool>(false, true, true), vec2<f32>(-1316.0, 1658.0))), Struct_1(true, vec3<bool>(false, false, true), vec2<f32>(-173.0, 2451.0)), Struct_2(Struct_1(true, vec3<bool>(true, true, false), vec2<f32>(-807.0, 1665.0)))))), vec2<f32>(ceil(1251.0), 778.0))));
    if ((global0.x << ((dot(vec4<u32>(u_input.b.x, u_input.b.x, var_0.b, 0u), vec4<u32>(global1.x, global1.x, global1.x, global1.x)) >> var_0.b) & ~abs(26823u))) < (-(global0.x / (global0.x / 0)) % -dot(-vec2<i32>(1, -34172), select(global0.wx, vec2<i32>(1, global0.x), true)))) {
        let var_1 = -(var_0.e.a.c.x + var_0.c.a.c.x);
    }
    switch (~u_input.a.x) {
        case 1: {
            loop {
                var var_1 = Struct_3(Struct_1(var_0.d.a, !var_0.a.b, ceil(-(var_0.a.c * vec2<f32>(var_0.a.c.x, var_0.d.c.x)))), u_input.b.x, var_0.e, Struct_1(all(select(var_0.a.b, var_0.c.a.b, !vec3<bool>(var_0.c.a.b.x, false, true))), !(!vec3<bool>(false, var_0.d.b.x, false)), -var_0.e.a.c), var_0.e);
            }
        }
        default: {
            var var_1 = !(var_0.e.a.b.x || var_0.c.a.a);
        }
    }
    switch (-64556) {
        case 2147483647: {
            var_0 = Struct_3(Struct_1(false, var_0.a.b, -(-var_0.c.a.c - var_0.a.c)), max(firstTrailingBit(reverseBits(var_0.b) & min(0u, 5372u)), min(countOneBits(u_input.b.x) % ~4294967295u, 1u)), Struct_2(Struct_1(!func_4(global1.x, vec4<f32>(-1000.0, -2802.0, var_0.d.c.x, 692.0), global1.x, Struct_3(var_0.d, 0u, Struct_2(Struct_1(false, var_0.c.a.b, vec2<f32>(var_0.a.c.x, var_0.d.c.x))), var_0.d, var_0.c)), vec3<bool>(any(vec3<bool>(var_0.e.a.b.x, var_0.d.a, var_0.e.a.a)), select(var_0.a.b.x, false, var_0.a.b.x), var_0.a.b.x), vec2<f32>(-654.0, -1060.0))), var_0.d, Struct_2(Struct_1(true, var_0.e.a.b, vec2<f32>(var_0.c.a.c.x, var_0.a.c.x - var_0.e.a.c.x))));
        }
        default: {
            for (var var_1: i32; var_0.c.a.b.x; var_1 += 1) {
                var var_2 = Struct_3(var_0.d, 1u, Struct_2(Struct_1(all(select(vec3<bool>(false, var_0.a.b.x, false), var_0.c.a.b, var_0.a.a)), var_0.c.a.b, vec2<f32>(var_0.a.c.x - var_0.c.a.c.x, 2288.0 + 1700.0))), var_0.e.a, var_0.e);
            }
        }
    }
    var var_1 = Struct_2(var_0.e.a);
    return vec2<bool>(var_0.a.b.x, !var_0.d.a);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global1 = ~vec4<u32>(~u_input.b.x / ~(arg_2 >> 32299u), arg_2, 0u, max(46967u, global1.x) / dot(~vec2<u32>(arg_2, 54553u), clamp(vec2<u32>(global1.x, 18682u), vec2<u32>(arg_2, 46052u), vec2<u32>(global1.x, 4294967295u))));
    global1 = vec4<u32>(firstLeadingBit(0u), reverseBits(26915u), 9637u, 52147u) >> (firstLeadingBit(clamp(vec4<u32>(0u, u_input.b.x, 7582u, arg_2) / vec4<u32>(u_input.b.x, u_input.b.x, 16517u, u_input.b.x), vec4<u32>(arg_2, 1u, 4082u, u_input.b.x), ~vec4<u32>(30105u, arg_2, u_input.b.x, arg_2))) * (~(~vec4<u32>(31304u, global1.x, u_input.b.x, 9551u)) | ~vec4<u32>(34623u, 0u, 1u, 1u)));
    let var_0 = ~(((8637u - (0u % u_input.b.x)) & 48421u) | (0u >> global1.x));
    let var_1 = reverseBits(global1.yzw << abs(vec3<u32>(arg_2, 27450u, dot(vec3<u32>(global1.x, 55580u, global1.x), vec3<u32>(arg_2, var_0, var_0)))));
    for (var var_2 = 0; ; var_2 += 1) {
        continue;
    }
    return Struct_2(Struct_1(false, select(vec3<bool>(true, true, arg_0.x), !select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, arg_0.x, true)))), (floor(vec2<f32>(arg_1.a, -246.0)) * -vec2<f32>(1133.0, arg_1.a)) - exp2(vec2<f32>(arg_1.a, -1855.0))));
}

fn func_6(arg_0: Struct_2) -> i32 {
    global1 = vec4<u32>(u_input.b.x, global1.x, 4294967295u, global1.x);
    var var_0 = Struct_4(arg_0.a.c.x - -(arg_0.a.c.x - (-745.0 * arg_0.a.c.x)));
    global0 = vec4<i32>(min(~(firstLeadingBit(-7492) >> (u_input.b.x + global1.x)), ~global0.x), 2147483647 % ~dot(u_input.a, countOneBits(vec3<i32>(-38891, global0.x, -2147483648))), (global0.x | global0.x) >> 35582u, 42070);
    global1 = ~min(reverseBits(~(vec4<u32>(global1.x, u_input.b.x, u_input.b.x, 36056u) + vec4<u32>(1u, 38876u, 22379u, u_input.b.x))), vec4<u32>(countOneBits(clamp(1u, 0u, u_input.b.x)), abs(select(global1.x, 21613u, true)), firstLeadingBit(76490u / u_input.b.x), 1u));
    for (var var_1 = 10616; !(!true); var_1 += 1) {
        for (; arg_0.a.b.x; ) {
            break;
        }
    }
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<u32> {
    for (var var_0 = 39444; ; ) {
        var_0 = ~(-dot(global0.ywx, u_input.a)) ^ func_6(func_5(!func_3(), Struct_4(1483.0), ~dot(global1.zwx, global1.wyz)));
    }
    let var_0 = (~(-(vec2<i32>(u_input.a.x, u_input.a.x) / u_input.a.xy)) | ~(-(-vec2<i32>(-19560, u_input.a.x)))) - (~u_input.a.yy + vec2<i32>(29386, firstTrailingBit(select(global0.x, 5302, arg_1))));
    global0 = vec4<i32>(~global0.x ^ (global0.x & firstLeadingBit(global0.x)), dot(vec4<i32>(u_input.a.x, 29810, -(-15517), 0) << ~vec4<u32>(global1.x, global1.x, 1u, 1800u), abs(~vec4<i32>(u_input.a.x, -1, -2147483648, 19235))), -7354, ~(~global0.x) >> ~firstTrailingBit(abs(u_input.b.x)));
    loop {
        for (var var_1 = -5857; arg_1; var_1 -= 1) {
            let var_2 = vec2<u32>(~(u_input.b.x * u_input.b.x), ((global1.x & global1.x) / ((u_input.b.x % u_input.b.x) + (u_input.b.x ^ 1u))) ^ firstTrailingBit(~4294967295u ^ 30737u));
        }
    }
    var var_1 = var_0.x;
    return ~(~vec4<u32>(global1.x, 10056u & global1.x, global1.x, clamp(1u, global1.x, global1.x)) << ((firstTrailingBit(vec4<u32>(4294967295u, global1.x, 59831u, 4294967295u)) / (vec4<u32>(6933u, 18010u, 4294967295u, 70288u) + vec4<u32>(0u, 54117u, 68086u, u_input.b.x))) & ~(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, global1.x) >> vec4<u32>(u_input.b.x, global1.x, global1.x, 1u))));
}

fn func_1(arg_0: f32) -> Struct_4 {
    for (var var_0 = -1; ; var_0 -= 1) {
        for (var var_1: i32; ; ) {
            continue;
        }
    }
    let var_0 = true;
    switch (698 | ~(~(-18981 * ~(-1)))) {
        case -23685: {
            loop {
                global1 = select(~(~min(~vec4<u32>(37739u, global1.x, u_input.b.x, 1u), vec4<u32>(global1.x, u_input.b.x, 1u, global1.x))), min(~func_2(arg_0, true) + select(~vec4<u32>(68858u, 11464u, 52959u, global1.x), abs(vec4<u32>(20413u, global1.x, 49962u, 1u)), select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, false, true, true), var_0)), vec4<u32>(1136u, u_input.b.x >> 4294967295u, 0u - 4294967295u, u_input.b.x) ^ (func_2(-577.0, true) * ~vec4<u32>(4294967295u, 45985u, u_input.b.x, 2389u))), select(!vec4<bool>(all(vec2<bool>(var_0, var_0)), !var_0, var_0 & false, true), select(!(!vec4<bool>(var_0, false, var_0, var_0)), vec4<bool>(var_0, var_0 || var_0, !true, func_4(26746u, vec4<f32>(arg_0, -936.0, -353.0, 120.0), 32836u, Struct_3(Struct_1(true, vec3<bool>(true, true, var_0), vec2<f32>(1727.0, -1000.0)), 71859u, Struct_2(Struct_1(true, vec3<bool>(true, var_0, true), vec2<f32>(arg_0, arg_0))), Struct_1(var_0, vec3<bool>(true, var_0, true), vec2<f32>(arg_0, arg_0)), Struct_2(Struct_1(var_0, vec3<bool>(true, var_0, false), vec2<f32>(-1251.0, arg_0)))))), var_0), func_4(u_input.b.x - 62615u, vec4<f32>(-arg_0, -(-1433.0), round(-1664.0), 444.0), u_input.b.x, Struct_3(Struct_1(true, vec3<bool>(var_0, var_0, false), vec2<f32>(arg_0, -235.0)), 67453u, func_5(vec2<bool>(var_0, false), Struct_4(arg_0), 21922u), Struct_1(var_0, vec3<bool>(false, true, var_0), vec2<f32>(1000.0, arg_0)), Struct_2(Struct_1(true, vec3<bool>(var_0, true, false), vec2<f32>(arg_0, 2485.0)))))));
            }
        }
        default: {
            let var_1 = Struct_4(-(-909.0 * -(-519.0)));
        }
    }
    for (; any(select(func_3(), !(!func_5(vec2<bool>(var_0, false), Struct_4(2001.0), 16050u).a.b.yx), !false)); ) {
        loop {
            global0 = firstLeadingBit(vec4<i32>(~max(clamp(global0.x, -2147483648, -41785), global0.x << 38262u), 17841, select(firstTrailingBit(35329), firstTrailingBit(-2147483648), true), ~(1 >> u_input.b.x) + ~(~global0.x)));
        }
    }
    let var_1 = Struct_1(var_0, select(vec3<bool>(false, func_3().x, !all(vec3<bool>(false, var_0, false))), !vec3<bool>(false | var_0, !false, func_5(vec2<bool>(false, var_0), Struct_4(512.0), u_input.b.x).a.a), var_0 & var_0), -(-(-(-vec2<f32>(arg_0, -1000.0)))));
    return Struct_4(-ceil((-501.0 + -1743.0) + var_1.c.x));
}

fn func_7(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    if (!false) {
        var var_0 = select(arg_2.e.a.b.xz, !(!(!func_5(vec2<bool>(false, arg_1), arg_0, u_input.b.x).a.b.xy)), !(!all(!vec4<bool>(arg_2.d.a, false, false, true))));
    }
    let var_0 = Struct_4(-781.0);
    for (var var_1 = -48187; ; ) {
        var var_2 = dot(abs(-vec4<i32>(global0.x, 8267, -1, global0.x)) ^ select(vec4<i32>(abs(-1), firstLeadingBit(u_input.a.x), global0.x & -60084, dot(u_input.a.xy, u_input.a.yz)), min(vec4<i32>(global0.x, global0.x, global0.x, 2147483647), abs(vec4<i32>(global0.x, 1, -2147483648, u_input.a.x))), !all(vec4<bool>(arg_3.a.b.x, true, true, true))), ~((abs(vec4<i32>(-10254, -2147483648, u_input.a.x, global0.x)) << select(vec4<u32>(4294967295u, 4294967295u, 97061u, 0u), vec4<u32>(33777u, 4294967295u, 6598u, 43821u), arg_1)) * -max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.x), vec4<i32>(-42971, u_input.a.x, 78271, -51019))));
    }
    if (any(vec2<bool>((var_0.a == -355.0) & arg_1, true)) && arg_1) {
        if (!false) {
            global0 = ~vec4<i32>(-1, -2147483648, dot(~(~vec2<i32>(3031, u_input.a.x)), global0.wx), dot(firstTrailingBit(max(vec3<i32>(global0.x, -6824, 35031), vec3<i32>(50624, global0.x, -1))), (u_input.a >> vec3<u32>(36576u, arg_2.b, arg_2.b)) ^ vec3<i32>(global0.x, -1, global0.x)));
        }
    }
    global0 = -countOneBits((firstLeadingBit(vec4<i32>(-1, u_input.a.x, u_input.a.x, u_input.a.x)) * (vec4<i32>(u_input.a.x, -2147483648, 15757, u_input.a.x) + vec4<i32>(-2147483648, 0, u_input.a.x, global0.x))) / vec4<i32>(-2147483648, -46675, global0.x, -2147483648));
    return u_input.a.x;
}

@stage(compute)
@workgroup_size(1)
fn main() {
    switch (abs(-30575)) {
        case -55299: {
            let var_0 = ~(firstLeadingBit(-(vec4<i32>(-23488, global0.x, global0.x, u_input.a.x) - vec4<i32>(u_input.a.x, u_input.a.x, -1, u_input.a.x))) * ~vec4<i32>(~2147483647, ~u_input.a.x, ~(-1356), dot(vec4<i32>(46133, -12463, 8036, global0.x), vec4<i32>(-2414, 163, global0.x, 1))));
            fallthrough;
        }
        default: {
            for (var var_0 = -2147483648; ; var_0 -= 1) {
                let var_1 = (abs(u_input.a.x) == 53506) | (all(!vec2<bool>(true, true)) && (func_7(func_1(1000.0), func_3().x, Struct_3(Struct_1(false, vec3<bool>(true, false, true), vec2<f32>(-486.0, -820.0)), 0u, Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec2<f32>(-228.0, -1048.0))), Struct_1(false, vec3<bool>(true, true, true), vec2<f32>(-1000.0, -395.0)), Struct_2(Struct_1(false, vec3<bool>(false, false, false), vec2<f32>(-111.0, -569.0)))), func_5(vec2<bool>(true, true), Struct_4(-1252.0), 0u)) >= -64251));
            }
        }
    }
    let var_0 = abs(-u_input.a);
    let var_1 = firstLeadingBit(u_input.b.x);
    var var_2 = 7975;
    var var_3 = Struct_4(686.0 * ((-582.0 * -112.0) * 516.0));
    var_3 = Struct_4((-max(-304.0, var_3.a) + sign(var_3.a)) - 415.0);
    switch (abs((var_0.x + global0.x) ^ ~(-4644))) {
        case -28564: {
            var var_4 = vec4<i32>(~(-15633), 60162, global0.x, ~(~99803 ^ clamp(u_input.a.x, global0.x, var_0.x)) << ~71060u);
        }
        case 1: {
            var var_4 = func_5(vec2<bool>(!all(vec4<bool>(false, true, true, false)), select(1000.0 != var_3.a, !(!true), false)), func_1(var_3.a), ~(~(6212u % var_1) | (~u_input.b.x | 42711u)));
        }
        case 947: {
            for (var var_4 = 10956; !select(global0.x >= ((u_input.a.x | global0.x) ^ ~u_input.a.x), all(vec3<bool>(var_0.x >= u_input.a.x, false && true, 83483u == 1u)), all(func_5(!vec2<bool>(false, false), Struct_4(125.0), 0u).a.b.xz)); var_4 -= 1) {
                continue;
            }
        }
        default: {
            loop {
                continue;
            }
        }
    }
    if (func_3().x) {
        let var_4 = func_5(vec2<bool>(var_3.a >= -1108.0, true), func_1(-423.0), dot(global1.xxx % vec3<u32>(u_input.b.x, global1.x, 14177u), abs(vec3<u32>(43691u, u_input.b.x, u_input.b.x))) + func_2(func_5(!vec2<bool>(false, true), func_1(var_3.a), clamp(35779u, 1u, 28191u)).a.c.x, ~u_input.a.x == firstTrailingBit(2147483647)).x);
    }
    switch (abs(2147483647)) {
        default: {
            for (var var_4 = -1; ; var_4 -= 1) {
                let var_5 = trunc(select(vec2<f32>(-915.0, func_5(vec2<bool>(false, false), func_1(-980.0), var_1).a.c.x), select((vec2<f32>(-435.0, 1145.0) + vec2<f32>(var_3.a, var_3.a)) + (vec2<f32>(171.0, var_3.a) * vec2<f32>(var_3.a, var_3.a)), step(select(vec2<f32>(var_3.a, var_3.a), vec2<f32>(var_3.a, var_3.a), false), vec2<f32>(-521.0, -1013.0)), func_5(!vec2<bool>(true, true), func_1(-806.0), 4294967295u).a.b.zx), vec2<bool>(true, (8829u < var_1) & (0 <= -6010))));
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~firstLeadingBit(vec4<u32>(34231u, var_1, var_1, u_input.b.x) | vec4<u32>(40530u, 4294967295u, u_input.b.x, global1.x))));
}

