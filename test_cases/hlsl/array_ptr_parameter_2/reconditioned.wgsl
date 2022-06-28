struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true));

var<private> global1: array<vec4<f32>, 21>;

var<private> LOOP_COUNTERS: array<u32, 12>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: ptr<private, array<vec4<f32>, 21>>) -> i32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        return ~2147483647;
    }
    for (var var_0: i32; ; var_0 += 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        let var_1 = &global1;
    }
    global0 = array<vec4<bool>, 19>();
    switch (~((-(u_input.b | arg_0.x) << (u_input.d.x % 32u)) & u_input.c)) {
        default: {
            global0 = array<vec4<bool>, 19>();
        }
    }
    for (var var_0 = 0; ; var_0 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        global1 = array<vec4<f32>, 21>();
    }
    return i32(-1) * -66173;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483648, _wgslsmith_div_i32(2147483647, -2147483648)), reverseBits(-vec3<i32>(u_input.b, u_input.b, u_input.e))), u_input.c);
    var var_1 = arg_0.x;
    switch (_wgslsmith_add_i32(var_0, _wgslsmith_mult_i32(~countOneBits(u_input.b) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 7936u, 9412u, u_input.a.x), vec4<u32>(u_input.a.x, 26360u, 38099u, 62100u)), countOneBits(u_input.d.x)) % 32u), 2147483647))) {
        case -7150: {
            global1 = array<vec4<f32>, 21>();
        }
        case 20558: {
            global1 = array<vec4<f32>, 21>();
        }
        case 39875: {
            for (; ; ) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_2 = Struct_4(Struct_1(select(-(vec4<i32>(u_input.e, 1, u_input.c, 22447) << (u_input.a % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(-1, -4428), 35313, var_0, var_0 << (0u % 32u)), !vec4<bool>(arg_0.x, true, true, arg_0.x))), _wgslsmith_add_i32(1, select(func_3(vec2<i32>(var_0, 2147483647), &global1) & (var_0 >> (0u % 32u)), ~_wgslsmith_add_i32(var_0, -2147483648), false)), Struct_1(countOneBits(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_0, var_0, 43934, 1)), -vec4<i32>(var_0, var_0, u_input.e, u_input.e)))));
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                let var_2 = !(_wgslsmith_div_i32(-593, var_0) < _wgslsmith_mult_i32(var_0, -u_input.e));
            }
        }
    }
    switch (-1) {
        case 0: {
            var var_2 = vec2<bool>(arg_0.x, !all(!vec4<bool>(false, false, false, false)));
        }
        case -2147483648: {
            let var_2 = &global1;
        }
        case 1: {
            var var_2 = Struct_3(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
        }
        case 19543: {
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                return global0[_wgslsmith_mod_u32(select(~u_input.d.x, 1u | (min(42220u << (6307u % 32u), _wgslsmith_div_u32(u_input.a.x, 12633u)) ^ (4294967295u | _wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.d.xz))), arg_0.x), 19u)];
            }
        }
        default: {
            let var_2 = Struct_2(firstTrailingBit((countOneBits(vec4<i32>(63854, 0, u_input.e, -22138)) & -vec4<i32>(var_0, u_input.c, var_0, 17689)) | (vec4<i32>(var_0, u_input.e, var_0, u_input.e) | -vec4<i32>(1212, u_input.b, var_0, -1))), ~select(vec3<u32>(~0u, firstLeadingBit(1u), 74258u | 1u), u_input.a.zxw, !select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.wzy)));
        }
    }
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: ptr<private, array<vec4<f32>, 21>>, arg_2: u32, arg_3: u32) -> i32 {
    switch (func_3(vec2<i32>(firstTrailingBit(0 >> (~u_input.a.x % 32u)), max(~u_input.c, 0)), &global1)) {
        default: {
            return u_input.b ^ _wgslsmith_div_i32(~(i32(-1) * -29733) >> (_wgslsmith_mult_u32(51975u ^ arg_2, ~u_input.d.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-66160, -u_input.b), _wgslsmith_add_i32(1, _wgslsmith_add_i32(-40597, arg_0))));
        }
    }
    global0 = array<vec4<bool>, 19>();
    global0 = array<vec4<bool>, 19>();
    let var_0 = &global1;
    if (any(func_4(global0[_wgslsmith_mod_u32(arg_2, 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(673.0 + -2243.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-958.0, -1561.0))))))) {
        return 2147483647;
    }
    return i32(-1) * -5602;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4) -> f32 {
    if (false) {
        let var_0 = arg_1.c.a.zxz;
    }
    switch (func_2((~min(-25747, -1873) << (1u % 32u)) & 25385, &global1, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.d.yz), ~0u, 2250u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x) | ~u_input.a.xwz), u_input.a.xzw), u_input.a.x | u_input.d.x)) {
        case 103863: {
            if (!(!(!false))) {
                global1 = array<vec4<f32>, 21>();
            }
            fallthrough;
        }
        case -38092: {
            global0 = array<vec4<bool>, 19>();
        }
        case 36832: {
            global0 = array<vec4<bool>, 19>();
        }
        default: {
            let var_0 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(~1 ^ 14057, _wgslsmith_mod_i32(firstTrailingBit(-42383), 13352), -arg_1.b, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.c.a, arg_1.a.a), vec4<i32>(u_input.b, u_input.e, -9851, arg_1.a.a.x))), arg_1.c.a));
        }
    }
    var var_0 = !vec2<bool>(!arg_0.x, ~_wgslsmith_mod_u32(u_input.d.x, 10946u) < ~1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-276.0)), _wgslsmith_f_op_f32(f32(-1.0) * -440.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424.0 * 721.0))) + vec3<f32>(-336.0, 2155.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-904.0))))));
    let var_2 = Struct_5(var_1.x >= _wgslsmith_f_op_f32(max(638.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), arg_1.c, !(!(!func_4(vec4<bool>(false, false, false, var_0.x), 2432.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1732.0));
}

fn func_5(arg_0: ptr<private, array<vec4<f32>, 21>>, arg_1: Struct_5, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    global1 = array<vec4<f32>, 21>();
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_0 = &global1;
    }
    for (var var_0 = 1; ; var_0 -= 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        continue;
    }
    global0 = array<vec4<bool>, 19>();
    var var_0 = vec3<i32>(arg_1.b.a.x, func_2(u_input.c, &global1, 25483u, max(u_input.a.x, 1u)), firstLeadingBit(u_input.b));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-491.0, _wgslsmith_f_op_f32(round(arg_2)), !(!false)))));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    switch (0) {
        default: {
            for (var var_0 = 19558; ; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_1 = vec3<u32>(25125u, ~firstLeadingBit(~(~u_input.a.x)), u_input.d.x);
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        switch (1) {
            case -49147: {
                break;
            }
            default: {
                global1 = array<vec4<f32>, 21>();
            }
        }
    }
    if ((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1980.0 - 1063.0) * -442.0) - _wgslsmith_f_op_f32(func_5(&global1, Struct_5(true, Struct_1(vec4<i32>(u_input.e, -5272, u_input.b, -46156)), global0[_wgslsmith_mod_u32(144315u, 19u)], 255.0), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_mod_u32(4294967295u, 19u)], Struct_4(Struct_1(vec4<i32>(u_input.b, u_input.e, -4119, 2147483647)), 45394, Struct_1(vec4<i32>(u_input.c, 7700, u_input.e, 50834))))), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1445.0 * 2009.0) + 926.0))) != (-1796.0 > 994.0)) {
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            return;
        }
    }
    var var_0 = true;
    switch (1) {
        case 50118: {
            global0 = array<vec4<bool>, 19>();
            fallthrough;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                global1 = array<vec4<f32>, 21>();
            }
        }
    }
    let var_1 = select(select(!global0[_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), u_input.d)), 19u)], global0[_wgslsmith_mod_u32(~(~1u), 19u)], false), func_4(global0[_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 60298u), 19u)], -467.0), true != ((all(global0[_wgslsmith_mod_u32(u_input.a.x, 19u)]) | any(vec2<bool>(false, true))) == true));
    var var_2 = func_4(!select(var_1, select(var_1, global0[_wgslsmith_mod_u32(reverseBits(u_input.d.x), 19u)], vec4<bool>(var_1.x, true, false, var_1.x)), global0[_wgslsmith_mod_u32(countOneBits(0u | u_input.d.x), 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -807.0)))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wz, reverseBits(_wgslsmith_sub_i32(~1, ~(-1)) << (u_input.a.x % 32u)));
}

