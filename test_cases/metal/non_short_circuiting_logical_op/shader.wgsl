// Seed: 3289224597045559202

struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_4() -> i32 {
    var var_0 = Struct_1(vec4<u32>(5108u, 4294967295u, ~((6718u | 47612u) - 5081u), countOneBits(u_input.c)), all(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true), !(!vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, true), !vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false)))), (select(-107.0, -1053.0, false & false) + 540.0) < round(-(-(-404.0))));
    var var_1 = Struct_1(min(vec4<u32>(var_0.a.x, u_input.c, max(var_0.a.x, var_0.a.x), 4294967295u) ^ clamp(vec4<u32>(24224u, 52977u, 4294967295u, var_0.a.x) + vec4<u32>(var_0.a.x, 0u, 0u, 1u), var_0.a >> var_0.a, vec4<u32>(u_input.a.x, u_input.b, 4294967295u, u_input.a.x) + var_0.a), min(vec4<u32>(0u, 0u, 0u, 1u) << ~vec4<u32>(93370u, 84170u, u_input.b, u_input.a.x), var_0.a)), -(-trunc(-422.0)) <= -781.0, var_0.c);
    for (; any(select(!select(select(vec2<bool>(var_0.c, var_0.b), vec2<bool>(var_1.c, true), true), !vec2<bool>(var_1.c, var_1.b), var_1.c), select(select(select(vec2<bool>(false, true), vec2<bool>(false, var_0.c), vec2<bool>(false, var_0.b)), select(vec2<bool>(true, var_0.c), vec2<bool>(false, false), vec2<bool>(true, true)), !var_1.b), vec2<bool>(-858.0 <= 258.0, var_0.b & var_1.c), select(!vec2<bool>(false, var_1.c), !vec2<bool>(false, false), false)), true)); ) {
        break;
    }
    var var_2 = Struct_2(Struct_1(select(clamp(vec4<u32>(14822u, 1u, var_0.a.x, 4294967295u), var_1.a, vec4<u32>(0u, 17870u, var_0.a.x, 19374u)), ~var_0.a, vec4<bool>(false, false, true, true)) >> abs(~vec4<u32>(55716u, 92632u, var_0.a.x, var_1.a.x)), all(vec2<bool>(var_0.c != false, !var_0.b)), var_1.b), var_1.c, ~(((vec2<i32>(u_input.d, u_input.d) ^ vec2<i32>(-2147483648, u_input.d)) << (vec2<u32>(var_0.a.x, 51965u) + vec2<u32>(0u, u_input.c))) - -(vec2<i32>(1, 25582) - vec2<i32>(u_input.d, 44900))), select(all(select(vec2<bool>(false, false), vec2<bool>(var_0.b, var_1.c), var_1.c)), var_1.b, !var_1.b), Struct_1(~min(vec4<u32>(1u, 16917u, u_input.b, 0u) * vec4<u32>(var_1.a.x, 61093u, var_1.a.x, 13296u), var_1.a ^ var_1.a), true, !var_1.b));
    if (~var_1.a.x > 1u) {
        let var_3 = var_2.e;
    }
    return select(~clamp(u_input.d, var_2.c.x, reverseBits(-1)), ~(u_input.d * (var_2.c.x % 2147483647)), !(!true)) ^ (select(-u_input.d, var_2.c.x, false) - ~(-(42581 ^ var_2.c.x)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = !select(!arg_0, select(vec2<bool>(arg_0.x, arg_1), arg_0, all(!vec3<bool>(true, true, false))), !arg_0);
    switch (-(select(u_input.d << arg_3.e.a.x, u_input.d * -52280, false) * -11446) ^ -func_4()) {
        case -2147483648: {
            switch (abs(-2147483648)) {
                case -2147483648: {
                    let var_1 = arg_2;
                    fallthrough;
                }
                case 1: {
                    var var_1 = arg_3;
                }
                case -40940: {
                    var var_1 = vec2<i32>(select(~(-37456), 2147483647, arg_3.b) & func_4(), arg_3.c.x) / firstLeadingBit(vec2<i32>(arg_3.c.x, u_input.d));
                }
                case 5701: {
                    var var_1 = ((exp2(ceil(vec2<f32>(-830.0, 537.0))) + select(vec2<f32>(-1000.0, -1931.0), -vec2<f32>(1194.0, 172.0), vec2<bool>(arg_2.c, arg_3.d))) + (select(vec2<f32>(416.0, -1783.0), vec2<f32>(2132.0, 401.0) + vec2<f32>(1334.0, 518.0), select(arg_0, vec2<bool>(false, false), var_0)) - vec2<f32>(866.0 + 1000.0, -2271.0))) - vec2<f32>(exp2(-862.0), select(151.0, 139.0 * 1328.0, arg_3.b) + ((653.0 + 358.0) + -407.0));
                }
                default: {
                    let var_1 = arg_3;
                }
            }
        }
        case -16971: {
            var var_1 = firstLeadingBit(-vec4<i32>(firstLeadingBit(arg_3.c.x), u_input.d, 0, -2147483648 ^ arg_3.c.x)) / min(select(~countOneBits(vec4<i32>(-32926, 2147483647, -74042, 35980)), select(vec4<i32>(u_input.d, 12772, -5615, -17766), vec4<i32>(u_input.d, arg_3.c.x, arg_3.c.x, u_input.d), !vec4<bool>(false, false, false, false)), !(!vec4<bool>(true, arg_3.b, true, false))), ((vec4<i32>(-1, u_input.d, -1, u_input.d) / vec4<i32>(-2147483648, 2147483647, 1, arg_3.c.x)) + clamp(vec4<i32>(0, u_input.d, arg_3.c.x, -2147483648), vec4<i32>(arg_3.c.x, 49419, 1, 9311), vec4<i32>(arg_3.c.x, arg_3.c.x, u_input.d, u_input.d))) / (min(vec4<i32>(1, arg_3.c.x, arg_3.c.x, u_input.d), vec4<i32>(21144, -9732, u_input.d, arg_3.c.x)) ^ select(vec4<i32>(18462, 6783, -2147483648, arg_3.c.x), vec4<i32>(1, arg_3.c.x, u_input.d, u_input.d), arg_2.b)));
        }
        default: {
            for (var var_1 = -2147483648; select(arg_0.x, arg_3.a.c, arg_1); ) {
                var var_2 = !arg_1;
            }
        }
    }
    switch (-(-26258)) {
        case -17334: {
            var var_1 = max(-vec3<f32>(1086.0, trunc(861.0), -835.0 + 421.0), vec3<f32>(-876.0 * (-192.0 * -276.0), -601.0, -(-722.0 + -815.0))) + (vec3<f32>(378.0, exp2(544.0) + -1105.0, abs(select(998.0, -222.0, var_0.x))) + ((-vec3<f32>(-625.0, 1167.0, -1112.0) - (vec3<f32>(-1095.0, 233.0, 214.0) + vec3<f32>(-278.0, -603.0, 119.0))) + vec3<f32>(-847.0 + -300.0, max(-913.0, 755.0), step(-281.0, 151.0))));
        }
        case -1: {
            var var_1 = Struct_2(arg_3.a, ((!var_0.x || !arg_1) | false) || any(!(!arg_0)), arg_3.c, any(select(vec3<bool>(any(vec4<bool>(false, false, true, true)), -198.0 >= 1000.0, true & false), !(!vec3<bool>(true, false, false)), !(!true))), Struct_1(~countOneBits(arg_3.e.a), true, arg_2.c));
        }
        default: {
            var var_1 = Struct_2(Struct_1(~(~vec4<u32>(4294967295u, arg_2.a.x, 101150u, arg_3.a.a.x)), false, arg_0.x), true, arg_3.c % (vec2<i32>(-u_input.d, -(-9252)) - vec2<i32>(arg_3.c.x, u_input.d)), false, Struct_1(arg_2.a + firstLeadingBit(arg_3.a.a | vec4<u32>(0u, arg_3.e.a.x, 0u, 74224u)), !(!(true || true)), arg_3.d | arg_3.b));
        }
    }
    var var_1 = select(vec4<bool>(false, any(!vec2<bool>(arg_2.c, false)) & any(vec4<bool>(arg_3.d, var_0.x, arg_1, var_0.x)), arg_1, all(vec3<bool>(arg_0.x || arg_3.d, all(vec4<bool>(true, arg_2.b, false, arg_3.a.c)), false))), !(!(!(!vec4<bool>(arg_2.c, false, arg_0.x, var_0.x)))), !(!(!vec4<bool>(arg_0.x, false, var_0.x, arg_2.c))));
    var var_2 = var_1.wyw;
    return -((1599.0 + ((1000.0 * -360.0) - -(-402.0))) * -760.0);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = abs(round(ceil(-1346.0)) + (func_3(vec2<bool>(arg_2.b, arg_2.b), false, arg_2, Struct_2(Struct_1(vec4<u32>(1u, 60597u, 27534u, 0u), true, arg_2.b), arg_2.c, vec2<i32>(u_input.d, -20395), arg_2.c, Struct_1(vec4<u32>(arg_2.a.x, 74344u, 1875u, 55362u), arg_2.c, arg_2.c))) * floor(-2233.0))) + ceil(-221.0);
    return firstLeadingBit(vec2<i32>(u_input.d, -1 - firstTrailingBit(u_input.d)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>) -> i32 {
    if (all(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))))) {
        let var_0 = Struct_2(Struct_1(~vec4<u32>(29601u, u_input.a.x, 18722u, u_input.c), all(select(!vec2<bool>(false, true), vec2<bool>(false, false), false)), !(false || all(vec4<bool>(true, false, true, false)))), true, arg_0, !select(!any(vec3<bool>(false, false, false)), false, !(!true)), Struct_1(vec4<u32>(0u, u_input.b, ~2500u, u_input.c), !(u_input.c < ~u_input.c), true));
    }
    if (false) {
        for (var var_0 = -2147483648; !((-3085.0 != -1967.0) && true); var_0 += 1) {
            let var_1 = select(vec4<bool>(!false, false == true, !false, all(vec2<bool>(!false, false && true))), !(!select(!vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true)), select(vec4<bool>(true || (1000.0 >= 1344.0), !(u_input.c > 4294967295u), any(vec4<bool>(true, true, false, true)) & (u_input.c > u_input.a.x), all(vec2<bool>(false, false))), vec4<bool>(any(vec4<bool>(false, false, true, false)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)), all(!vec3<bool>(false, false, false)), false), !vec4<bool>(927.0 <= -1863.0, all(vec3<bool>(true, true, true)), !true, any(vec4<bool>(false, true, false, false)))));
        }
    }
    var var_0 = Struct_1(vec4<u32>(min(clamp(4294967295u, 1u, 31622u), u_input.a.x), ~max(0u << 1u, ~u_input.c), 43022u, 1u | 0u), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))) || !false, !all(select(!vec3<bool>(false, true, true), !vec3<bool>(true, false, false), true)));
    for (var var_1 = 27383; !(!(!false)); var_1 -= 1) {
        var_1 = 29137 >> ~reverseBits(4294967295u << var_0.a.x);
    }
    return min(~(-24851 ^ 0), ~(-24845));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = ~21098u;
    let var_1 = dot(vec4<u32>(~46527u, 40574u * (dot(vec3<u32>(16402u, u_input.c, 1u), u_input.a) >> (1697u / 4294967295u)), ~(~var_0) + 4294967295u, 2185u), ~(~(~vec4<u32>(0u, u_input.b, 1u, 4294967295u))) % (firstTrailingBit(vec4<u32>(var_0, 22120u, 1u, 38232u) ^ vec4<u32>(var_0, u_input.a.x, u_input.a.x, u_input.b)) % ~(vec4<u32>(1u, 25953u, u_input.b, u_input.a.x) ^ vec4<u32>(0u, u_input.c, var_0, 38389u))));
    if (!true) {
        if (false) {
            let var_2 = max(u_input.d, u_input.d);
        }
    }
    switch (func_5(func_2(65606u, dot(select(vec2<u32>(7433u, 25271u), reverseBits(u_input.a.xy), false != false), vec2<u32>(~22582u, 0u)), Struct_1(~firstTrailingBit(vec4<u32>(35532u, 17619u, var_1, var_1)), !false, !(!true))), -(~vec4<i32>(min(u_input.d, -18431), ~u_input.d, ~2147483647, ~187)))) {
        case -2147483648: {
            var var_2 = ~vec3<u32>((0u >> ~u_input.b) / select(reverseBits(var_0), var_0 << u_input.a.x, !true), firstTrailingBit(max(var_0, 4294967295u)) >> var_1, ~u_input.c);
            fallthrough;
        }
        case -14233: {
            switch (dot(-(~abs(vec2<i32>(-59852, 1721) * vec2<i32>(u_input.d, 0))), ~(firstTrailingBit(min(vec2<i32>(-36707, u_input.d), vec2<i32>(2147483647, u_input.d))) | (-vec2<i32>(u_input.d, u_input.d) & ~vec2<i32>(5923, 35301))))) {
                case -17891: {
                    var var_2 = ceil(trunc(-(exp2(vec4<f32>(arg_0, arg_0, -111.0, arg_0)) - (vec4<f32>(arg_0, 1775.0, arg_0, 116.0) * vec4<f32>(arg_0, 1516.0, arg_0, -1377.0)))));
                    fallthrough;
                }
                case -16410: {
                    let var_2 = !(1u < 1u) & false;
                }
                case 1: {
                    var var_2 = Struct_2(Struct_1(vec4<u32>(0u, var_0 - 4294967295u, var_0, dot(vec4<u32>(45902u, u_input.a.x, var_1, 4294967295u), vec4<u32>(30095u, u_input.c, var_0, var_1))) % countOneBits(vec4<u32>(0u, 32843u, 4294967295u, 4294967295u)), true, -589.0 != -arg_0), true, vec2<i32>(dot(vec3<i32>(abs(u_input.d), ~2147483647, countOneBits(-40767)), -(-vec3<i32>(0, 24212, u_input.d))), dot(~vec2<i32>(u_input.d, u_input.d) & -vec2<i32>(2147483647, -14643), -vec2<i32>(u_input.d, -2147483648) | ~vec2<i32>(-41148, 79247))), !(!(!all(vec4<bool>(true, true, true, true)))), Struct_1(max(~vec4<u32>(4294967295u, var_0, var_0, u_input.c), ~max(vec4<u32>(var_0, 32671u, 0u, var_1), vec4<u32>(var_0, var_1, u_input.c, var_0))), all(select(vec3<bool>(true, true, false), !vec3<bool>(true, false, false), all(vec2<bool>(true, true)))), !(-1 <= -2147483648) & all(vec2<bool>(false, false))));
                }
                default: {
                    var var_2 = -vec4<f32>(arg_0, floor(-(1920.0 * -573.0)), sign(arg_0), 966.0);
                }
            }
        }
        default: {
            var var_2 = -step(floor(-ceil(vec4<f32>(arg_0, 1316.0, 1287.0, 877.0))), -vec4<f32>(arg_0, arg_0, arg_0, 105.0) * vec4<f32>(arg_0, -arg_0, -(-1482.0), ceil(arg_0)));
        }
    }
    return vec4<f32>(-abs(arg_0) * (-(-(-504.0)) + exp2(arg_0)), round(floor(arg_0) * arg_0), arg_0, -arg_0 + (100.0 - round(arg_0 + 1800.0)));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    var var_0 = ((vec4<f32>(-(-426.0), 1185.0, -930.0 - 118.0, ceil(-953.0)) - sign(-vec4<f32>(-1273.0, -477.0, 750.0, -962.0))) - (min(vec4<f32>(1135.0, 830.0, -1194.0, -1069.0) - vec4<f32>(1397.0, 671.0, -1169.0, -876.0), vec4<f32>(-876.0, -162.0, -921.0, -332.0) - vec4<f32>(-764.0, 1933.0, 1000.0, -327.0)) * ceil(-vec4<f32>(2047.0, 447.0, 711.0, -208.0)))) * vec4<f32>(1036.0, -390.0, (-825.0 + (-140.0 + 1019.0)) - max(min(1000.0, -1625.0), -302.0), 1011.0 + (-1982.0 - (365.0 - 789.0)));
    let var_1 = true;
    let var_2 = 4294967295u;
    var_0 = -func_1(min(var_0.x - 1904.0, -883.0) - -928.0);
    loop {
        loop {
            continue;
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(22380u, 68358u, firstTrailingBit(0u + u_input.c)), u_input.d, var_0.x, round(-min(-vec4<f32>(346.0, var_0.x, -295.0, var_0.x), -vec4<f32>(var_0.x, var_0.x, -123.0, 2368.0))));
}

