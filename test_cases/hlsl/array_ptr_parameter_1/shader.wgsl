// Seed: 1538908308645482644

struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(0u, 2147483647, -120.0), Struct_1(0u, -21869, -149.0), Struct_1(54748u, 7791, 859.0), Struct_1(94085u, 2147483647, -1659.0), Struct_1(17752u, 13207, -1000.0), Struct_1(56465u, -2147483648, 1150.0), Struct_1(0u, -1, 1434.0), Struct_1(0u, 1, -2134.0), Struct_1(1u, 2147483647, 354.0), Struct_1(33442u, -26093, -980.0), Struct_1(80882u, 0, 2078.0), Struct_1(0u, 41811, 1197.0), Struct_1(272u, 2147483647, 100.0), Struct_1(1u, 0, 325.0), Struct_1(4294967295u, -11373, -805.0), Struct_1(56440u, 2147483647, -1416.0), Struct_1(47652u, -1, 908.0), Struct_1(5431u, 2147483647, -707.0), Struct_1(1u, 1, -2852.0), Struct_1(28241u, -2147483648, -1058.0), Struct_1(0u, -41462, -499.0), Struct_1(92981u, -1, 626.0), Struct_1(1u, 2147483647, 289.0), Struct_1(4294967295u, 5396, -490.0), Struct_1(0u, 5753, 1000.0), Struct_1(1151u, -5042, -514.0), Struct_1(50127u, 9284, 492.0), Struct_1(1u, 1, -2127.0), Struct_1(61630u, -2738, 2252.0), Struct_1(15524u, -1, 1213.0), Struct_1(81330u, -56534, -1000.0), Struct_1(50768u, -20279, -1000.0));

var<private> global1: array<f32, 14>;

fn func_4(arg_0: ptr<private, array<f32, 14>>, arg_1: ptr<private, array<f32, 14>>, arg_2: bool) -> vec3<bool> {
    let var_0 = Struct_1(u_input.c, -9189, 763.0);
    var var_1 = Struct_1(max(35006u, u_input.c) / ~(~12519u % 4294967295u), 1, global1[34412u]);
    var var_2 = Struct_1(40694u + ~4294967295u, 32651, var_0.c);
    loop {
        for (var var_3 = 1; ; ) {
            var_2 = Struct_1(~(select(select(0u, var_1.a, false), ~16747u, !false) ^ 1u), reverseBits(u_input.a.x), var_0.c - -1154.0);
        }
    }
    for (; false; ) {
        switch (-2147483648) {
            case 1: {
                break;
            }
            case 32151: {
                var_1 = Struct_1(~abs(u_input.c) + 36802u, -(-37900 + var_0.b) << (((var_2.a & var_0.a) << ~97478u) & (0u & ~var_1.a)), floor(-(-1054.0 * -444.0)));
            }
            case -58384: {
                continue;
            }
            default: {
                let var_3 = sign(-(*arg_0)[~4294967295u]);
            }
        }
    }
    return !(!select(select(vec3<bool>(arg_2, true, arg_2), !vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2))), vec3<bool>(all(vec3<bool>(false, arg_2, arg_2)), 655.0 <= 720.0, !false), vec3<bool>(any(vec4<bool>(arg_2, true, arg_2, arg_2)), true, false)));
}

fn func_5(arg_0: ptr<private, array<Struct_1, 32>>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    for (var var_0 = 0; ; var_0 -= 1) {
        let var_1 = abs(vec4<f32>(arg_1, floor(ceil(arg_1)), -(-ceil(-411.0)), arg_1));
    }
    var var_0 = Struct_1(32000u, (reverseBits(13283 | -15566) + u_input.b.x) | -abs(-(-2147483648)), global1[reverseBits(max(u_input.c >> u_input.c, 33u))] + 1528.0);
    let var_1 = ~(~max(arg_3.a, firstTrailingBit(1u)) + (abs(~24857u) + 0u));
    var var_2 = (*arg_0)[((abs(dot(vec2<u32>(u_input.c, 67076u), vec2<u32>(u_input.c, 4294967295u))) | ~(0u ^ 0u)) / countOneBits(~abs(33526u))) + ~4294967295u];
    var var_3 = arg_3.b;
    return var_0.c;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    for (var var_0: i32; ; var_0 -= 1) {
        return 55434;
    }
    let var_0 = select(vec4<bool>(true, true && true, !(!false || true), ~(-1) == 0), vec4<bool>(true, !(!all(vec3<bool>(true, true, true))), true & false, !any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), select(!(!vec4<bool>(false, true, true, false)), !vec4<bool>(0u <= u_input.c, select(true, true, false), false, !true), !all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))));
    var var_1 = vec3<f32>(func_5(&global0, -(246.0 - -549.0), select(func_4(&global1, &global1, false), select(var_0.wxz, !vec3<bool>(true, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), var_0.xxx, vec3<bool>(false, false, var_0.x))), false), global0[~(~u_input.c - 2634u)]), -(-trunc(-1000.0)) + global1[~dot(vec4<u32>(32034u, 25653u, u_input.c, u_input.c), vec4<u32>(u_input.c, 13018u, u_input.c, 14783u))], max(global1[~(~4835u)], 2658.0));
    if (var_0.x) {
        global1 = array<f32, 14>();
    }
    loop {
        global1 = array<f32, 14>();
    }
    return -(u_input.a.x >> (1u % u_input.c)) % u_input.a.x;
}

fn func_2(arg_0: i32) -> f32 {
    switch (-1) {
        case 42990: {
            global1 = array<f32, 14>();
        }
        case 2147483647: {
            global0 = array<Struct_1, 32>();
        }
        case -12001: {
            var var_0 = all(!(!(!vec4<bool>(true, false, false, false))));
        }
        case 25681: {
            global0 = array<Struct_1, 32>();
        }
        default: {
            return -892.0;
        }
    }
    let var_0 = Struct_1((((u_input.c + u_input.c) ^ 0u) + u_input.c) / ~u_input.c, abs(1 * func_3(sign(vec3<f32>(global1[9166u], -910.0, -330.0)))), func_5(&global0, -1931.0 - global1[28506u & u_input.c], vec3<bool>(true, false, true), global0[~max(~u_input.c, dot(vec3<u32>(u_input.c, u_input.c, 6823u), vec3<u32>(u_input.c, u_input.c, u_input.c)))]));
    var var_1 = ~clamp(~(~vec4<u32>(u_input.c, 1087u, u_input.c, u_input.c) | vec4<u32>(var_0.a, 1u, 4294967295u, 4294967295u)), ~vec4<u32>(var_0.a / 4294967295u, var_0.a % 19755u, ~37224u, u_input.c), select(~(vec4<u32>(0u, var_0.a, u_input.c, 20308u) - vec4<u32>(u_input.c, 576u, var_0.a, 30177u)), ~countOneBits(vec4<u32>(u_input.c, 0u, var_0.a, u_input.c)), !vec4<bool>(false, false, false, true)));
    var var_2 = dot(var_1.xx, ~select(min(var_1.yw, var_1.xw), vec2<u32>(12296u, var_0.a), !vec2<bool>(false, true)) >> ~var_1.zz);
    var var_3 = var_0;
    return global1[~var_3.a + 87242u];
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_1 {
    for (var var_0 = -1; !any(select(vec2<bool>(u_input.a.x != -7369, -593.0 <= global1[u_input.c]), !vec2<bool>(true, false), vec2<bool>(u_input.c != 4294967295u, true | true))); ) {
        var var_1 = (global1[0u] + (313.0 - global1[abs(4294967295u) | (44416u | u_input.c)])) * (-(-global1[u_input.c]) - global1[(max(4294967295u, 0u) / (1u * 4294967295u)) >> u_input.c]);
    }
    var var_0 = vec3<f32>(select(global1[reverseBits(dot(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(1u, 1u, 1u, u_input.c))) / ~(1u * u_input.c)], (func_2(arg_0) - -global1[u_input.c]) * global1[u_input.c], false), global1[dot(min(~vec2<u32>(u_input.c, u_input.c), max(vec2<u32>(31385u, 0u), vec2<u32>(70640u, 54769u))), max(vec2<u32>(1u, u_input.c), vec2<u32>(4294967295u, u_input.c)))] + abs(select(global1[u_input.c] - 1000.0, -778.0, !true)), -global1[firstLeadingBit(u_input.c) & ~1u] + -(floor(global1[u_input.c]) * global1[u_input.c]));
    loop {
        global1 = array<f32, 14>();
    }
    let var_1 = clamp(arg_2.x, 52861, ~(~arg_2.x) | arg_1.x) / clamp(-u_input.a.x, arg_2.x - u_input.b.x, arg_2.x);
    if (!true) {
        if (true) {
            let var_2 = select(-vec4<f32>(-1395.0 - global1[41359u], 2141.0 - -851.0, global1[u_input.c], -208.0) + -(vec4<f32>(-1828.0, 587.0, -1240.0, var_0.x) - vec4<f32>(210.0, 1199.0, 2289.0, 597.0)), vec4<f32>(-abs(191.0), 1357.0 - step(-576.0, floor(1548.0)), var_0.x - (var_0.x - -global1[u_input.c]), (global1[u_input.c] - (var_0.x - global1[0u])) - 518.0), dot(~(~vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c)), ~(vec4<u32>(u_input.c, 0u, u_input.c, 8355u) / vec4<u32>(u_input.c, u_input.c, u_input.c, 50789u))) < u_input.c);
        }
    }
    return Struct_1(~u_input.c >> abs(3741u), arg_2.x * dot(vec3<i32>(firstTrailingBit(-614), arg_0, -14810), (vec3<i32>(-11815, arg_0, arg_2.x) & vec3<i32>(0, arg_1.x, -14453)) & vec3<i32>(-1246, -2147483648, arg_1.x)), var_0.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: ptr<private, array<Struct_1, 32>>) -> vec3<u32> {
    for (var var_0 = 1; !(abs(arg_1.a << arg_1.a) > arg_1.a); ) {
        let var_1 = (*arg_2)[0u];
    }
    loop {
        var var_0 = !(!vec4<bool>(!(!false), all(vec2<bool>(false, true)), 1u == ~71223u, !select(true, false, false)));
    }
    var var_0 = !((arg_0.b < abs(arg_0.b)) & true);
    var_0 = any(func_4(&global1, &global1, (dot(vec3<i32>(arg_0.b, 37472, -11387), u_input.a.xwy) ^ arg_1.b) >= arg_1.b).yz);
    let var_1 = &var_0;
    return (~firstLeadingBit(firstLeadingBit(vec3<u32>(33584u, arg_0.a, arg_0.a))) - (vec3<u32>(29857u, dot(vec3<u32>(arg_1.a, 4294967295u, 0u), vec3<u32>(0u, 2490u, 4294967295u)), ~4294967295u) - ~(~vec3<u32>(4294967295u, 0u, arg_1.a)))) >> (vec3<u32>(u_input.c, ~1u, 1u) ^ vec3<u32>(0u & ~85602u, dot(~vec3<u32>(53793u, 34154u, arg_0.a), vec3<u32>(u_input.c, arg_1.a, arg_1.a)), arg_0.a));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    switch (-(-(u_input.b.x << dot(vec3<u32>(74097u, 0u, u_input.c) | vec3<u32>(0u, 17346u, 1u), vec3<u32>(u_input.c, 71340u, u_input.c) | vec3<u32>(58903u, 2716u, u_input.c))))) {
        default: {
            global0 = array<Struct_1, 32>();
        }
    }
    switch (u_input.a.x) {
        case 19236: {
            var var_0 = vec2<i32>(u_input.a.x, ~(~(-u_input.a.x) >> (abs(u_input.c) * u_input.c)));
        }
        case -33912: {
            let var_0 = &global0;
        }
        case 15362: {
            var var_0 = -vec2<f32>(-763.0 + global1[100987u], -exp2(257.0 + -664.0));
        }
        default: {
            var var_0 = vec3<i32>(u_input.b.x, ~(u_input.b.x + u_input.b.x), -2147483647);
        }
    }
    var var_0 = firstTrailingBit((vec3<i32>(-61663, -36694, u_input.a.x) % min(u_input.a.xxy, u_input.a.wxz)) >> func_6(func_1(1, vec2<i32>(u_input.b.x, 3793), u_input.a.yyx), Struct_1(4369u, u_input.a.x, global1[u_input.c]), &global0)) << ((~(vec3<u32>(u_input.c, 1u, 48361u) - vec3<u32>(0u, u_input.c, u_input.c)) - select(reverseBits(vec3<u32>(u_input.c, 30100u, 20211u)), abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<bool>(false, true, false))) | ~vec3<u32>(u_input.c, 0u, 4294967295u % u_input.c));
    let var_1 = &global0;
    if (select(-297.0 > sign(-(-(-848.0))), any(vec2<bool>(false && false, false)) || (-u_input.a.x != dot(~u_input.a, u_input.a)), !any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, true, false), !vec4<bool>(false, true, false, true))))) {
        var_0 = -vec3<i32>(var_0.x, -(~countOneBits(-9157)), u_input.b.x);
    }
    let x = u_input.a;
    s_output = StorageBuffer(~(((99694u - 113421u) / u_input.c) & u_input.c));
}

