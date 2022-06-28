struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: vec3<f32> = vec3<f32>(880.0, 265.0, -519.0);

var<private> global4: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(24889u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(2409u, 0u), vec2<u32>(65272u, 0u), vec2<u32>(11662u, 4294967295u), vec2<u32>(0u, 29891u), vec2<u32>(35939u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 5161u), vec2<u32>(0u, 81084u), vec2<u32>(12487u, 4294967295u), vec2<u32>(1u, 29042u), vec2<u32>(0u, 16481u), vec2<u32>(63012u, 7874u), vec2<u32>(69974u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 27537u), vec2<u32>(59024u, 20118u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 72267u), vec2<u32>(1u, 4294967295u), vec2<u32>(6502u, 1u), vec2<u32>(4294967295u, 43351u), vec2<u32>(10779u, 4294967295u), vec2<u32>(55856u, 1u), vec2<u32>(2606u, 10154u), vec2<u32>(12497u, 1u), vec2<u32>(37099u, 37079u));

var<private> LOOP_COUNTERS: array<u32, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        for (var var_0 = 0; (any(select(vec3<bool>(arg_2.c.b, false, arg_2.c.b), vec3<bool>(arg_2.c.b, true, false), !arg_2.c.b)) || true) != (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(-825.0)), _wgslsmith_f_op_f32(-arg_1.a), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) + global3.x)) < -636.0); ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            continue;
        }
    }
    for (var var_0 = -28015; ; var_0 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        continue;
    }
    for (; false; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        global0 = array<i32, 24>();
    }
    let var_0 = arg_2.c;
    switch (global0[_wgslsmith_mod_u32(countOneBits(var_0.c), 24u)]) {
        case -2147483648: {
            let var_1 = var_0.c;
        }
        case 7884: {
            var var_1 = arg_2;
        }
        default: {
            return _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(4294967295u, var_0.c)) ^ 110244u, ~(u_input.b.x | (~12383u & u_input.a.x)));
        }
    }
    return var_0.c;
}

fn func_3(arg_0: vec2<bool>) -> Struct_3 {
    if (true) {
        global3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -633.0)))))))));
    }
    let var_0 = _wgslsmith_mod_i32(44831 ^ ~(-12338), abs(countOneBits(2147483647))) >> (1u % 32u);
    let var_1 = 51427u;
    if (false) {
        let var_2 = 1610.0;
    }
    global2 = Struct_1(_wgslsmith_sub_i32(~(-2147483648 >> (func_4(Struct_4(-1168.0), Struct_4(global3.x), Struct_3(vec3<f32>(global3.x, -366.0, global3.x), global3.zx, Struct_2(Struct_1(9697), arg_0.x, 0u), global3.x, Struct_1(global0[_wgslsmith_mod_u32(var_1, 24u)])), Struct_4(global3.x)) % 32u)), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(20452, u_input.c.x), u_input.c.x, 0)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1000.0)), global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -1725.0))))), vec2<f32>(global3.x, -791.0), Struct_2(Struct_1(global2.a), arg_0.x, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -576.0)), Struct_1(firstTrailingBit(max(global0[_wgslsmith_mod_u32(7400u | 65357u, 24u)], firstTrailingBit(2147483647)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_4 {
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        if (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-272.0 * global3.x)))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.d - -191.0))))) + -1031.0)) {
            let var_0 = Struct_1(-2147483648 << (firstLeadingBit(arg_1.c.c) % 32u));
        }
    }
    var var_0 = arg_1.c.b;
    for (var var_1 = 2147483647; ; var_1 += 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_2 = 1u;
    }
    global0 = array<i32, 24>();
    for (var var_1 = 0; false; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        if (all(!select(select(!vec4<bool>(arg_1.c.b, true, false, arg_0.x), select(vec4<bool>(true, false, arg_0.x, true), vec4<bool>(arg_0.x, true, true, true), vec4<bool>(false, false, arg_1.c.b, arg_1.c.b)), select(vec4<bool>(true, true, arg_1.c.b, true), vec4<bool>(arg_1.c.b, true, arg_1.c.b, arg_1.c.b), arg_0.x)), select(vec4<bool>(arg_0.x, false, true, arg_1.c.b), select(vec4<bool>(false, arg_1.c.b, arg_1.c.b, false), vec4<bool>(false, arg_0.x, true, true), vec4<bool>(arg_0.x, arg_0.x, true, true)), !false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, arg_0.x, false), select(vec4<bool>(false, false, arg_1.c.b, false), vec4<bool>(false, arg_1.c.b, true, arg_1.c.b), false))))) {
            let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-840.0, global3.x, 371.0) + arg_1.a)) + arg_1.a);
        }
    }
    return Struct_4(-1072.0);
}

fn func_6(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_4) -> u32 {
    if (any(vec3<bool>(any(vec2<bool>(!true, true)), all(!vec2<bool>(true, false)), -1242.0 >= _wgslsmith_f_op_f32(1102.0 - _wgslsmith_f_op_f32(165.0 - -407.0))))) {
        global3 = vec3<f32>(_wgslsmith_f_op_f32(-901.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -935.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-587.0))) + 1289.0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(644.0 - -394.0))));
    }
    if (any(vec3<bool>(any(select(!vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), !vec4<bool>(true, false, true, false))), true, true))) {
        global2 = Struct_1(global0[_wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(~4294967295u), u_input.d | u_input.e.x), 24u)]);
    }
    var var_0 = Struct_1(~(-13900));
    let var_1 = func_3(select(vec2<bool>(false, 38170 == global2.a), vec2<bool>(!(!true), _wgslsmith_sub_i32(55051, 2147483647) <= min(7447, -51431)), !vec2<bool>(false, false))).c;
    for (var var_2: i32; ; var_2 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        switch (abs(1)) {
            case -38268: {
                continue;
            }
            case 12117: {
                var var_3 = !select(select(!vec4<bool>(false, var_1.b, true, false), !select(vec4<bool>(var_1.b, var_1.b, false, true), vec4<bool>(var_1.b, true, true, var_1.b), var_1.b), select(vec4<bool>(true, true, true, var_1.b), select(vec4<bool>(true, false, false, var_1.b), vec4<bool>(false, true, var_1.b, var_1.b), vec4<bool>(var_1.b, true, var_1.b, var_1.b)), !var_1.b)), vec4<bool>(!false & var_1.b, all(!vec4<bool>(var_1.b, true, true, false)), true, true), !select(!vec4<bool>(var_1.b, var_1.b, var_1.b, false), select(vec4<bool>(false, false, var_1.b, false), vec4<bool>(false, false, var_1.b, var_1.b), var_1.b), true));
            }
            default: {
                var var_3 = var_1;
            }
        }
    }
    return ~4782u;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> bool {
    var var_0 = !(!arg_0);
    if (!arg_0) {
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            let var_1 = Struct_2(arg_1.a, false, abs(func_6(Struct_4(_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_vec2_f32(select(global3.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + vec2<f32>(-1044.0, global3.x)), false)), func_5(vec3<bool>(arg_1.b, arg_1.b, arg_0), func_3(vec2<bool>(false, false))))));
        }
    }
    var_0 = (global3.x >= global3.x) && false;
    global1 = _wgslsmith_mult_u32(~(~4294967295u), _wgslsmith_sub_u32(~u_input.b.x, arg_1.c) >> (u_input.a.x % 32u)) << (abs(~(~_wgslsmith_mod_u32(u_input.d, arg_1.c))) % 32u);
    switch (1) {
        default: {
            let var_1 = abs(reverseBits(select(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647, u_input.c.x, -12186, 37075), vec4<i32>(arg_1.a.a, -39994, global0[_wgslsmith_mod_u32(28067u, 24u)], 7268) >> (u_input.e % vec4<u32>(32u))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_mod_u32(u_input.b.x, 24u)], global0[_wgslsmith_mod_u32(u_input.a.x, 24u)], arg_1.a.a, global0[_wgslsmith_mod_u32(4294967295u, 24u)]), vec4<i32>(global0[_wgslsmith_mod_u32(14567u, 24u)], arg_1.a.a, global0[_wgslsmith_mod_u32(18930u, 24u)], u_input.c.x), vec4<i32>(2147483647, arg_1.a.a, -14267, global0[_wgslsmith_mod_u32(0u, 24u)])), firstLeadingBit(vec4<i32>(-1, 6867, -11717, arg_1.a.a)), arg_0), false)));
        }
    }
    return any(!(!(!(!vec4<bool>(arg_0, false, true, arg_1.b)))));
}

fn func_7(arg_0: bool) -> Struct_2 {
    global4 = array<vec2<u32>, 28>();
    var var_0 = vec2<bool>(true, 9147 >= 8933);
    let var_1 = ~max(_wgslsmith_clamp_vec3_u32(~u_input.e.xxy, firstTrailingBit(vec3<u32>(u_input.b.x, 0u, 3140u)), _wgslsmith_mult_vec3_u32(u_input.e.zzz >> (u_input.e.wyy % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 1u, u_input.d) ^ vec3<u32>(20134u, u_input.a.x, 50939u))), ~(~(vec3<u32>(1u, 11194u, 20210u) << (u_input.e.ywz % vec3<u32>(32u)))));
    if (all(!vec3<bool>(true, firstTrailingBit(0u) > ~1u, var_0.x))) {
        if (any(!(!(!(!vec3<bool>(true, false, true)))))) {
            var var_2 = vec3<i32>(12477 | u_input.c.x, global0[_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, firstLeadingBit(u_input.d) ^ ~var_1.x, 51622u >> ((var_1.x & u_input.d) % 32u)), 24u)] << (~u_input.b.x % 32u), 566);
        }
    }
    if (!select(true, true, !(abs(global0[_wgslsmith_mod_u32(68699u, 24u)]) == -u_input.c.x))) {
        if (true) {
            var var_2 = var_0.x;
        }
    }
    return func_3(select(select(vec2<bool>(global3.x <= -595.0, arg_0), vec2<bool>(arg_0, func_3(vec2<bool>(true, true)).c.b), !var_0.x), select(vec2<bool>(arg_0, any(vec2<bool>(true, arg_0))), !(!vec2<bool>(false, var_0.x)), !true), select(select(vec2<bool>(false, arg_0), select(vec2<bool>(var_0.x, false), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0)), !vec2<bool>(true, var_0.x)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, var_0.x), select(vec2<bool>(false, true), vec2<bool>(arg_0, false), var_0.x)), !(global3.x <= global3.x)))).c;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    let var_0 = vec4<bool>(false, !(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, 2147483647, 0, 0) & vec4<i32>(-22986, 1, 1, global0[_wgslsmith_mod_u32(53684u, 24u)]), vec4<i32>(15709, -2147483648, -50031, global0[_wgslsmith_mod_u32(0u, 24u)]) | vec4<i32>(u_input.c.x, -2147483648, -4636, global2.a)) >= -63730), false, true);
    if (false) {
        var var_1 = func_7(!(true & func_2(!var_0.x, Struct_2(Struct_1(-13555), var_0.x, 0u))));
    }
    if (~43305u <= 0u) {
        let var_1 = _wgslsmith_sub_i32(func_7(!var_0.x).a.a, _wgslsmith_div_i32(-40958, global2.a) | -1409) & -1;
    }
    if (!var_0.x) {
        if (func_3(var_0.wy).c.b & true) {
            global4 = array<vec2<u32>, 28>();
        }
    }
    let var_1 = func_3(vec2<bool>((1u ^ _wgslsmith_add_u32(arg_1.x, u_input.b.x)) < u_input.d, all(select(var_0.yx, vec2<bool>(var_0.x, true), select(vec2<bool>(var_0.x, true), var_0.zx, vec2<bool>(var_0.x, var_0.x)))))).c;
    return Struct_2(Struct_1(0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, 361.0))) >= _wgslsmith_f_op_f32(select(-1000.0, _wgslsmith_f_op_f32(trunc(-361.0)), true)), func_6(func_5(select(var_0.xwy, vec3<bool>(true, var_0.x, true), var_0.x), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-610.0, global3.x, global3.x)), vec2<f32>(global3.x, global3.x), func_3(vec2<bool>(false, true)).c, -708.0, Struct_1(-1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.xz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xz - vec2<f32>(602.0, -2016.0)))), Struct_4(-562.0)));
}

fn func_8(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(step(global3.x, global3.x)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_5(vec3<bool>(true, var_0.b, true), Struct_3(vec3<f32>(-800.0, 1426.0, -366.0), vec2<f32>(-589.0, 354.0), arg_0, 556.0, var_0.a)).a)) * func_5(vec3<bool>(true, true, false), func_3(vec2<bool>(true, false))).a)));
    let var_3 = func_1(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 41534u), u_input.a), func_4(func_5(vec3<bool>(var_0.b, false, var_0.b), Struct_3(vec3<f32>(var_1.a, -1465.0, 336.0), global3.yx, arg_0, -1411.0, arg_0.a)), Struct_4(_wgslsmith_f_op_f32(var_1.a - 654.0)), Struct_3(func_3(vec2<bool>(var_0.b, var_0.b)).a, _wgslsmith_f_op_vec2_f32(global3.xz * vec2<f32>(global3.x, -412.0)), func_3(vec2<bool>(var_0.b, var_0.b)).c, _wgslsmith_f_op_f32(min(var_1.a, var_2.a)), Struct_1(4964)), var_2), 0u, _wgslsmith_add_u32(func_4(Struct_4(var_2.a), Struct_4(var_2.a), func_3(vec2<bool>(true, false)), Struct_4(var_2.a)), u_input.b.x)), ~global4[_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.a, u_input.b), countOneBits(~global4[_wgslsmith_mod_u32(1u, 28u)])), 28u)], ~(~(~1u))).a;
    global1 = func_7(false).c;
    return func_3(!vec2<bool>(true, arg_0.b)).c;
}

@stage(compute)
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        var var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-326.0)), -1450.0)));
    }
    var var_0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(284.0)), -186.0)));
    var var_1 = Struct_2(Struct_1(global0[_wgslsmith_mod_u32(23275u, 24u)]), all(vec3<bool>(!any(vec2<bool>(true, true)), any(!vec4<bool>(false, true, false, false)), true)), select(u_input.a.x, ~_wgslsmith_clamp_u32(89695u >> (0u % 32u), ~28292u, _wgslsmith_dot_vec2_u32(global4[_wgslsmith_mod_u32(0u, 28u)], u_input.b)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(6318u, 1u)) < select(u_input.a.x, ~u_input.a.x, !true)));
    var var_2 = vec3<i32>(_wgslsmith_add_i32(max(u_input.c.x, u_input.c.x), select(global2.a, 1, var_1.b)), 1, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0, -2147483648, var_1.a.a, 11420), vec4<i32>(-1780, var_1.a.a, u_input.c.x, -2147483648)), abs(vec4<i32>(global0[_wgslsmith_mod_u32(1u, 24u)], global0[_wgslsmith_mod_u32(var_1.c, 24u)], u_input.c.x, 2147483647))) >> (((u_input.e | u_input.e) << (max(u_input.e, vec4<u32>(u_input.e.x, var_1.c, 1u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-7617, _wgslsmith_mult_i32(global0[_wgslsmith_mod_u32(var_1.c, 24u)] | 23969, 1 & var_1.a.a), abs(global2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_mod_u32(11u, 24u)], var_1.a.a, 28847), countOneBits(vec3<i32>(-10020, global2.a, 31065))))));
    let var_3 = func_8(func_1(u_input.e, vec2<u32>(40363u, 18613u), _wgslsmith_add_u32(~(~var_1.c), 6554u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.yxz);
}

