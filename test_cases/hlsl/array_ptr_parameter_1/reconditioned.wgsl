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

var<private> LOOP_COUNTERS: array<u32, 10>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_4(arg_0: ptr<private, array<f32, 14>>, arg_1: ptr<private, array<f32, 14>>, arg_2: bool) -> vec3<bool> {
    let var_0 = Struct_1(u_input.c, -9189, 763.0);
    var var_1 = Struct_1(_wgslsmith_div_u32(max(35006u, u_input.c), ~_wgslsmith_mod_u32(~12519u, 4294967295u)), 1, global1[_wgslsmith_mod_u32(34412u, 14u)]);
    var var_2 = Struct_1(_wgslsmith_add_u32(40694u, ~4294967295u), 32651, var_0.c);
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        for (var var_3 = 1; ; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var_2 = Struct_1(~(select(select(0u, var_1.a, false), ~16747u, !false) ^ 1u), reverseBits(u_input.a.x), _wgslsmith_f_op_f32(var_0.c - -1154.0));
        }
    }
    for (; false; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        switch (-2147483648) {
            case 1: {
                break;
            }
            case 32151: {
                var_1 = Struct_1(_wgslsmith_add_u32(~abs(u_input.c), 36802u), -_wgslsmith_add_i32(-37900, var_0.b) << ((((var_2.a & var_0.a) << (~97478u % 32u)) & (0u & ~var_1.a)) % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1054.0 * -444.0)))));
            }
            case -58384: {
                continue;
            }
            default: {
                let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-(*arg_0)[_wgslsmith_mod_u32(~4294967295u, 14u)])));
            }
        }
    }
    return !(!select(select(vec3<bool>(arg_2, true, arg_2), !vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2))), vec3<bool>(all(vec3<bool>(false, arg_2, arg_2)), 655.0 <= 720.0, !false), vec3<bool>(any(vec4<bool>(arg_2, true, arg_2, arg_2)), true, false)));
}

fn func_5(arg_0: ptr<private, array<Struct_1, 32>>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    for (var var_0 = 0; ; var_0 -= 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-411.0)))), arg_1)));
    }
    var var_0 = Struct_1(32000u, _wgslsmith_add_i32(reverseBits(13283 | -15566), u_input.b.x) | -abs(i32(-1) * -2147483648), _wgslsmith_f_op_f32(global1[_wgslsmith_mod_u32(reverseBits(max(u_input.c >> (u_input.c % 32u), 33u)), 14u)] + 1528.0));
    let var_1 = ~_wgslsmith_add_u32(~max(arg_3.a, firstTrailingBit(1u)), _wgslsmith_add_u32(abs(~24857u), 0u));
    var var_2 = (*arg_0)[_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 67076u), vec2<u32>(u_input.c, 4294967295u))) | ~(0u ^ 0u), countOneBits(~abs(33526u))), ~4294967295u), 32u)];
    var var_3 = arg_3.b;
    return var_0.c;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    for (var var_0: i32; ; var_0 -= 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        return 55434;
    }
    let var_0 = select(vec4<bool>(true, true && true, !(!false || true), ~(-1) == 0), vec4<bool>(true, !(!all(vec3<bool>(true, true, true))), true & false, !any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), select(!(!vec4<bool>(false, true, true, false)), !vec4<bool>(0u <= u_input.c, select(true, true, false), false, !true), !all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_5(&global0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246.0 - -549.0)), select(func_4(&global1, &global1, false), select(var_0.wxz, !vec3<bool>(true, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), var_0.xxx, vec3<bool>(false, false, var_0.x))), false), global0[_wgslsmith_mod_u32(~_wgslsmith_sub_u32(~u_input.c, 2634u), 32u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000.0)))) + global1[_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(32034u, 25653u, u_input.c, u_input.c), vec4<u32>(u_input.c, 13018u, u_input.c, 14783u)), 14u)]), _wgslsmith_f_op_f32(max(global1[_wgslsmith_mod_u32(~(~4835u), 14u)], 2658.0)));
    if (var_0.x) {
        global1 = array<f32, 14>();
    }
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        global1 = array<f32, 14>();
    }
    return _wgslsmith_mod_i32(-(u_input.a.x >> (_wgslsmith_mod_u32(1u, u_input.c) % 32u)), u_input.a.x);
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
    let var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, u_input.c) ^ 0u, u_input.c), ~u_input.c), abs(_wgslsmith_mult_i32(1, func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_mod_u32(9166u, 14u)], -910.0, -330.0)))))), _wgslsmith_f_op_f32(func_5(&global0, _wgslsmith_f_op_f32(-1931.0 - global1[_wgslsmith_mod_u32(28506u & u_input.c, 14u)]), vec3<bool>(true, false, true), global0[_wgslsmith_mod_u32(~max(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 6823u), vec3<u32>(u_input.c, u_input.c, u_input.c))), 32u)])));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.c, 1087u, u_input.c, u_input.c) | vec4<u32>(var_0.a, 1u, 4294967295u, 4294967295u)), ~vec4<u32>(_wgslsmith_div_u32(var_0.a, 4294967295u), _wgslsmith_mod_u32(var_0.a, 19755u), ~37224u, u_input.c), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.a, u_input.c, 20308u), vec4<u32>(u_input.c, 576u, var_0.a, 30177u)), ~countOneBits(vec4<u32>(u_input.c, 0u, var_0.a, u_input.c)), !vec4<bool>(false, false, false, true)));
    var var_2 = _wgslsmith_dot_vec2_u32(var_1.xx, ~select(min(var_1.yw, var_1.xw), vec2<u32>(12296u, var_0.a), !vec2<bool>(false, true)) >> (~var_1.zz % vec2<u32>(32u)));
    var var_3 = var_0;
    return global1[_wgslsmith_mod_u32(_wgslsmith_add_u32(~var_3.a, 87242u), 14u)];
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_1 {
    for (var var_0 = -1; !any(select(vec2<bool>(u_input.a.x != -7369, -593.0 <= global1[_wgslsmith_mod_u32(u_input.c, 14u)]), !vec2<bool>(true, false), vec2<bool>(u_input.c != 4294967295u, true | true))); ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_mod_u32(0u, 14u)] + _wgslsmith_f_op_f32(313.0 - global1[_wgslsmith_mod_u32(abs(4294967295u) | (44416u | u_input.c), 14u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_mod_u32(u_input.c, 14u)])) - global1[_wgslsmith_mod_u32(_wgslsmith_div_u32(max(4294967295u, 0u), _wgslsmith_mult_u32(1u, 4294967295u)) >> (u_input.c % 32u), 14u)]));
    }
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(1u, 1u, 1u, u_input.c))), ~_wgslsmith_mult_u32(1u, u_input.c)), 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_mod_u32(u_input.c, 14u)])) * global1[_wgslsmith_mod_u32(u_input.c, 14u)]), false)), _wgslsmith_f_op_f32(global1[_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(u_input.c, u_input.c), max(vec2<u32>(31385u, 0u), vec2<u32>(70640u, 54769u))), max(vec2<u32>(1u, u_input.c), vec2<u32>(4294967295u, u_input.c))), 14u)] + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_mod_u32(u_input.c, 14u)] - 1000.0), -778.0, !true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_mod_u32(firstLeadingBit(u_input.c) & ~1u, 14u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_mod_u32(u_input.c, 14u)])) * global1[_wgslsmith_mod_u32(u_input.c, 14u)]))));
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        global1 = array<f32, 14>();
    }
    let var_1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_2.x, 52861, ~(~arg_2.x) | arg_1.x), _wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_sub_i32(arg_2.x, u_input.b.x), arg_2.x));
    if (!true) {
        if (true) {
            let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1395.0 - global1[_wgslsmith_mod_u32(41359u, 14u)]), _wgslsmith_f_op_f32(2141.0 - -851.0), global1[_wgslsmith_mod_u32(u_input.c, 14u)], -208.0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1828.0, 587.0, -1240.0, var_0.x) - vec4<f32>(210.0, 1199.0, 2289.0, 597.0)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(191.0))), _wgslsmith_f_op_f32(1357.0 - _wgslsmith_f_op_f32(step(-576.0, _wgslsmith_f_op_f32(floor(1548.0))))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global1[_wgslsmith_mod_u32(u_input.c, 14u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_mod_u32(u_input.c, 14u)] - _wgslsmith_f_op_f32(var_0.x - global1[_wgslsmith_mod_u32(0u, 14u)])) - 518.0)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 8355u), vec4<u32>(u_input.c, u_input.c, u_input.c, 50789u))) < u_input.c));
        }
    }
    return Struct_1(~u_input.c >> (abs(3741u) % 32u), _wgslsmith_mult_i32(arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-614), arg_0, -14810), (vec3<i32>(-11815, arg_0, arg_2.x) & vec3<i32>(0, arg_1.x, -14453)) & vec3<i32>(-1246, -2147483648, arg_1.x))), var_0.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: ptr<private, array<Struct_1, 32>>) -> vec3<u32> {
    for (var var_0 = 1; !(abs(arg_1.a << (arg_1.a % 32u)) > arg_1.a); ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_1 = (*arg_2)[_wgslsmith_mod_u32(0u, 32u)];
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        var var_0 = !(!vec4<bool>(!(!false), all(vec2<bool>(false, true)), 1u == ~71223u, !select(true, false, false)));
    }
    var var_0 = !((arg_0.b < abs(arg_0.b)) & true);
    var_0 = any(func_4(&global1, &global1, (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, 37472, -11387), u_input.a.xwy) ^ arg_1.b) >= arg_1.b).yz);
    let var_1 = &var_0;
    return _wgslsmith_sub_vec3_u32(~firstLeadingBit(firstLeadingBit(vec3<u32>(33584u, arg_0.a, arg_0.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(29857u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 4294967295u, 0u), vec3<u32>(0u, 2490u, 4294967295u)), ~4294967295u), ~(~vec3<u32>(4294967295u, 0u, arg_1.a)))) >> ((vec3<u32>(u_input.c, ~1u, 1u) ^ vec3<u32>(0u & ~85602u, _wgslsmith_dot_vec3_u32(~vec3<u32>(53793u, 34154u, arg_0.a), vec3<u32>(u_input.c, arg_1.a, arg_1.a)), arg_0.a)) % vec3<u32>(32u));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    switch (i32(-1) * -(u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(74097u, 0u, u_input.c) | vec3<u32>(0u, 17346u, 1u), vec3<u32>(u_input.c, 71340u, u_input.c) | vec3<u32>(58903u, 2716u, u_input.c)) % 32u))) {
        default: {
            global0 = array<Struct_1, 32>();
        }
    }
    switch (u_input.a.x) {
        case 19236: {
            var var_0 = vec2<i32>(u_input.a.x, ~(~(-u_input.a.x) >> (_wgslsmith_mult_u32(abs(u_input.c), u_input.c) % 32u)));
        }
        case -33912: {
            let var_0 = &global0;
        }
        case 15362: {
            var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-763.0 + global1[_wgslsmith_mod_u32(100987u, 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(257.0 + -664.0))))));
        }
        default: {
            var var_0 = vec3<i32>(u_input.b.x, ~_wgslsmith_add_i32(u_input.b.x, u_input.b.x), -2147483647);
        }
    }
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-61663, -36694, u_input.a.x), min(u_input.a.xxy, u_input.a.wxz)) >> (func_6(func_1(1, vec2<i32>(u_input.b.x, 3793), u_input.a.yyx), Struct_1(4369u, u_input.a.x, global1[_wgslsmith_mod_u32(u_input.c, 14u)]), &global0) % vec3<u32>(32u))) << ((_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, 48361u), vec3<u32>(0u, u_input.c, u_input.c)), select(reverseBits(vec3<u32>(u_input.c, 30100u, 20211u)), abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<bool>(false, true, false))) | ~vec3<u32>(u_input.c, 0u, _wgslsmith_mod_u32(4294967295u, u_input.c))) % vec3<u32>(32u));
    let var_1 = &global0;
    if (select(-297.0 > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -848.0)))), any(vec2<bool>(false && false, false)) || (-u_input.a.x != _wgslsmith_dot_vec4_i32(~u_input.a, u_input.a)), !any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, true, false), !vec4<bool>(false, true, false, true))))) {
        var_0 = -vec3<i32>(var_0.x, -(~countOneBits(-9157)), u_input.b.x);
    }
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_u32(_wgslsmith_sub_u32(99694u, 113421u), u_input.c) & u_input.c));
}

