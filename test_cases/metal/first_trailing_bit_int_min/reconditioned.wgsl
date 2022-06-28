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

var<private> LOOP_COUNTERS: array<u32, 22>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_3) -> bool {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        for (; !true; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var var_0 = ~(-vec4<i32>(~0 | ~12828, 2147483647, 26468, global0.x));
        }
    }
    for (var var_0 = -297; false; var_0 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        global1 = vec4<u32>(_wgslsmith_mod_u32(arg_3.b, reverseBits(15368u)), 1u | _wgslsmith_sub_u32(28804u, ~(~40544u)), select(arg_2, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(global1.x, 0u), u_input.b.x), arg_0 >= _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, 4294967295u, 51676u), ~global1.zzx)), ~abs(firstLeadingBit(u_input.b.x)));
    }
    if (true) {
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            continue;
        }
    }
    let var_0 = -2147483648;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.d.c.x - arg_3.e.a.c.x))))));
    return arg_3.d.a;
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(!(true || (false || true)), !vec3<bool>(true && true, false, true), vec2<f32>(-1118.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1131.0, -846.0, true)), -423.0)))), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(global1.x, 1u) >> (~global1.x % 32u), 8196u), Struct_2(Struct_1(-global0.x != 14559, vec3<bool>(-2147483648 <= global0.x, any(vec2<bool>(true, true)), true & true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -2692.0), 1000.0))), Struct_1(true, !vec3<bool>(any(vec3<bool>(false, true, true)), true | false, !true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-592.0, 1062.0) - vec2<f32>(954.0, -334.0)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1398.0, 270.0)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(533.0, -943.0)))))), Struct_2(Struct_1(false, vec3<bool>(true, !false, func_4(u_input.b.x, vec4<f32>(-1150.0, -168.0, 560.0, 545.0), global1.x, Struct_3(Struct_1(true, vec3<bool>(false, false, false), vec2<f32>(-520.0, -1550.0)), global1.x, Struct_2(Struct_1(true, vec3<bool>(false, true, true), vec2<f32>(-1316.0, 1658.0))), Struct_1(true, vec3<bool>(false, false, true), vec2<f32>(-173.0, 2451.0)), Struct_2(Struct_1(true, vec3<bool>(true, true, false), vec2<f32>(-807.0, 1665.0)))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1251.0)), 778.0))));
    if ((global0.x << (((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_0.b, 0u), vec4<u32>(global1.x, global1.x, global1.x, global1.x)) >> (var_0.b % 32u)) & ~abs(26823u)) % 32u)) < _wgslsmith_mod_i32(-_wgslsmith_div_i32(global0.x, _wgslsmith_div_i32(global0.x, 0)), -_wgslsmith_dot_vec2_i32(-vec2<i32>(1, -34172), select(global0.wx, vec2<i32>(1, global0.x), true)))) {
        let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.a.c.x + var_0.c.a.c.x));
    }
    switch (~u_input.a.x) {
        case 1: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_1 = Struct_3(Struct_1(var_0.d.a, !var_0.a.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.c * vec2<f32>(var_0.a.c.x, var_0.d.c.x)))))), u_input.b.x, var_0.e, Struct_1(all(select(var_0.a.b, var_0.c.a.b, !vec3<bool>(var_0.c.a.b.x, false, true))), !(!vec3<bool>(false, var_0.d.b.x, false)), _wgslsmith_f_op_vec2_f32(-var_0.e.a.c)), var_0.e);
            }
        }
        default: {
            var var_1 = !(var_0.e.a.b.x || var_0.c.a.a);
        }
    }
    switch (-64556) {
        case 2147483647: {
            var_0 = Struct_3(Struct_1(false, var_0.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.a.c) - var_0.a.c))), max(firstTrailingBit(reverseBits(var_0.b) & min(0u, 5372u)), min(_wgslsmith_mod_u32(countOneBits(u_input.b.x), ~4294967295u), 1u)), Struct_2(Struct_1(!func_4(global1.x, vec4<f32>(-1000.0, -2802.0, var_0.d.c.x, 692.0), global1.x, Struct_3(var_0.d, 0u, Struct_2(Struct_1(false, var_0.c.a.b, vec2<f32>(var_0.a.c.x, var_0.d.c.x))), var_0.d, var_0.c)), vec3<bool>(any(vec3<bool>(var_0.e.a.b.x, var_0.d.a, var_0.e.a.a)), select(var_0.a.b.x, false, var_0.a.b.x), var_0.a.b.x), vec2<f32>(-654.0, -1060.0))), var_0.d, Struct_2(Struct_1(true, var_0.e.a.b, vec2<f32>(var_0.c.a.c.x, _wgslsmith_f_op_f32(var_0.a.c.x - var_0.e.a.c.x)))));
        }
        default: {
            for (var var_1: i32; var_0.c.a.b.x; var_1 += 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var var_2 = Struct_3(var_0.d, 1u, Struct_2(Struct_1(all(select(vec3<bool>(false, var_0.a.b.x, false), var_0.c.a.b, var_0.a.a)), var_0.c.a.b, vec2<f32>(_wgslsmith_f_op_f32(var_0.a.c.x - var_0.c.a.c.x), _wgslsmith_f_op_f32(2288.0 + 1700.0)))), var_0.e.a, var_0.e);
            }
        }
    }
    var var_1 = Struct_2(var_0.e.a);
    return vec2<bool>(var_0.a.b.x, !var_0.d.a);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global1 = ~vec4<u32>(_wgslsmith_div_u32(~u_input.b.x, ~(arg_2 >> (32299u % 32u))), arg_2, 0u, _wgslsmith_div_u32(max(46967u, global1.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, 54553u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 18682u), vec2<u32>(arg_2, 46052u), vec2<u32>(global1.x, 4294967295u)))));
    global1 = vec4<u32>(firstLeadingBit(0u), reverseBits(26915u), 9637u, 52147u) >> (_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, 7582u, arg_2), vec4<u32>(u_input.b.x, u_input.b.x, 16517u, u_input.b.x)), vec4<u32>(arg_2, 1u, 4082u, u_input.b.x), ~vec4<u32>(30105u, arg_2, u_input.b.x, arg_2))), ~(~vec4<u32>(31304u, global1.x, u_input.b.x, 9551u)) | ~vec4<u32>(34623u, 0u, 1u, 1u)) % vec4<u32>(32u));
    let var_0 = ~((_wgslsmith_sub_u32(8637u, _wgslsmith_mod_u32(0u, u_input.b.x)) & 48421u) | (0u >> (global1.x % 32u)));
    let var_1 = reverseBits(global1.yzw << (abs(vec3<u32>(arg_2, 27450u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 55580u, global1.x), vec3<u32>(arg_2, var_0, var_0)))) % vec3<u32>(32u)));
    for (var var_2 = 0; ; var_2 += 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        continue;
    }
    return Struct_2(Struct_1(false, select(vec3<bool>(true, true, arg_0.x), !select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, arg_0.x, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, -246.0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1133.0, arg_1.a))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a, -1855.0))))));
}

fn func_6(arg_0: Struct_2) -> i32 {
    global1 = vec4<u32>(u_input.b.x, global1.x, 4294967295u, global1.x);
    var var_0 = Struct_4(_wgslsmith_f_op_f32(arg_0.a.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c.x - _wgslsmith_f_op_f32(-745.0 * arg_0.a.c.x)))));
    global0 = vec4<i32>(min(~(firstLeadingBit(-7492) >> (_wgslsmith_add_u32(u_input.b.x, global1.x) % 32u)), ~global0.x), _wgslsmith_mod_i32(2147483647, ~_wgslsmith_dot_vec3_i32(u_input.a, countOneBits(vec3<i32>(-38891, global0.x, -2147483648)))), (global0.x | global0.x) >> (35582u % 32u), 42070);
    global1 = ~min(reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, u_input.b.x, u_input.b.x, 36056u), vec4<u32>(1u, 38876u, 22379u, u_input.b.x))), vec4<u32>(countOneBits(_wgslsmith_clamp_u32(1u, 0u, u_input.b.x)), abs(select(global1.x, 21613u, true)), firstLeadingBit(_wgslsmith_div_u32(76490u, u_input.b.x)), 1u));
    for (var var_1 = 10616; !(!true); var_1 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        for (; arg_0.a.b.x; ) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            break;
        }
    }
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<u32> {
    for (var var_0 = 39444; ; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        var_0 = ~(-_wgslsmith_dot_vec3_i32(global0.ywx, u_input.a)) ^ func_6(func_5(!func_3(), Struct_4(1483.0), ~_wgslsmith_dot_vec3_u32(global1.zwx, global1.wyz)));
    }
    let var_0 = _wgslsmith_sub_vec2_i32(~(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xy)) | ~(vec2<i32>(-1) * -vec2<i32>(-19560, u_input.a.x)), _wgslsmith_add_vec2_i32(~u_input.a.yy, vec2<i32>(29386, firstTrailingBit(select(global0.x, 5302, arg_1)))));
    global0 = vec4<i32>(~global0.x ^ (global0.x & firstLeadingBit(global0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 29810, i32(-1) * -15517, 0) << (~vec4<u32>(global1.x, global1.x, 1u, 1800u) % vec4<u32>(32u)), abs(~vec4<i32>(u_input.a.x, -1, -2147483648, 19235))), -7354, ~(~global0.x) >> (~firstTrailingBit(abs(u_input.b.x)) % 32u));
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        for (var var_1 = -5857; arg_1; var_1 -= 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            let var_2 = vec2<u32>(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_div_u32(global1.x & global1.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.b.x ^ 1u)) ^ firstTrailingBit(~4294967295u ^ 30737u));
        }
    }
    var var_1 = var_0.x;
    return ~(~vec4<u32>(global1.x, 10056u & global1.x, global1.x, _wgslsmith_clamp_u32(1u, global1.x, global1.x)) << ((_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, global1.x, 59831u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(6933u, 18010u, 4294967295u, 70288u), vec4<u32>(0u, 54117u, 68086u, u_input.b.x))) & ~(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, global1.x) >> (vec4<u32>(u_input.b.x, global1.x, global1.x, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
}

fn func_1(arg_0: f32) -> Struct_4 {
    for (var var_0 = -1; ; var_0 -= 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        for (var var_1: i32; ; ) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            continue;
        }
    }
    let var_0 = true;
    switch (698 | ~(~_wgslsmith_mult_i32(-18981, ~(-1)))) {
        case -23685: {
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                global1 = select(~(~min(~vec4<u32>(37739u, global1.x, u_input.b.x, 1u), vec4<u32>(global1.x, u_input.b.x, 1u, global1.x))), min(_wgslsmith_add_vec4_u32(~func_2(arg_0, true), select(~vec4<u32>(68858u, 11464u, 52959u, global1.x), abs(vec4<u32>(20413u, global1.x, 49962u, 1u)), select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, false, true, true), var_0))), vec4<u32>(1136u, u_input.b.x >> (4294967295u % 32u), _wgslsmith_sub_u32(0u, 4294967295u), u_input.b.x) ^ _wgslsmith_mult_vec4_u32(func_2(-577.0, true), ~vec4<u32>(4294967295u, 45985u, u_input.b.x, 2389u))), select(!vec4<bool>(all(vec2<bool>(var_0, var_0)), !var_0, var_0 & false, true), select(!(!vec4<bool>(var_0, false, var_0, var_0)), vec4<bool>(var_0, var_0 || var_0, !true, func_4(26746u, vec4<f32>(arg_0, -936.0, -353.0, 120.0), 32836u, Struct_3(Struct_1(true, vec3<bool>(true, true, var_0), vec2<f32>(1727.0, -1000.0)), 71859u, Struct_2(Struct_1(true, vec3<bool>(true, var_0, true), vec2<f32>(arg_0, arg_0))), Struct_1(var_0, vec3<bool>(true, var_0, true), vec2<f32>(arg_0, arg_0)), Struct_2(Struct_1(var_0, vec3<bool>(true, var_0, false), vec2<f32>(-1251.0, arg_0)))))), var_0), func_4(_wgslsmith_sub_u32(u_input.b.x, 62615u), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1.0) * -1433.0), _wgslsmith_f_op_f32(round(-1664.0)), 444.0), u_input.b.x, Struct_3(Struct_1(true, vec3<bool>(var_0, var_0, false), vec2<f32>(arg_0, -235.0)), 67453u, func_5(vec2<bool>(var_0, false), Struct_4(arg_0), 21922u), Struct_1(var_0, vec3<bool>(false, true, var_0), vec2<f32>(1000.0, arg_0)), Struct_2(Struct_1(true, vec3<bool>(var_0, true, false), vec2<f32>(arg_0, 2485.0)))))));
            }
        }
        default: {
            let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-909.0 * _wgslsmith_f_op_f32(f32(-1.0) * -519.0))));
        }
    }
    for (; any(select(func_3(), !(!func_5(vec2<bool>(var_0, false), Struct_4(2001.0), 16050u).a.b.yx), !false)); ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            global0 = firstLeadingBit(vec4<i32>(~max(_wgslsmith_clamp_i32(global0.x, -2147483648, -41785), global0.x << (38262u % 32u)), 17841, select(firstTrailingBit(35329), firstTrailingBit(-2147483648), true), _wgslsmith_add_i32(~(1 >> (u_input.b.x % 32u)), ~(~global0.x))));
        }
    }
    let var_1 = Struct_1(var_0, select(vec3<bool>(false, func_3().x, !all(vec3<bool>(false, var_0, false))), !vec3<bool>(false | var_0, !false, func_5(vec2<bool>(false, var_0), Struct_4(512.0), u_input.b.x).a.a), var_0 & var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1000.0))))));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-501.0 + -1743.0) + var_1.c.x)))));
}

fn func_7(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    if (!false) {
        var var_0 = select(arg_2.e.a.b.xz, !(!(!func_5(vec2<bool>(false, arg_1), arg_0, u_input.b.x).a.b.xy)), !(!all(!vec4<bool>(arg_2.d.a, false, false, true))));
    }
    let var_0 = Struct_4(-781.0);
    for (var var_1 = -48187; ; ) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        var var_2 = _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(global0.x, 8267, -1, global0.x)) ^ select(vec4<i32>(abs(-1), firstLeadingBit(u_input.a.x), global0.x & -60084, _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yz)), min(vec4<i32>(global0.x, global0.x, global0.x, 2147483647), abs(vec4<i32>(global0.x, 1, -2147483648, u_input.a.x))), !all(vec4<bool>(arg_3.a.b.x, true, true, true))), ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-10254, -2147483648, u_input.a.x, global0.x)) << (select(vec4<u32>(4294967295u, 4294967295u, 97061u, 0u), vec4<u32>(33777u, 4294967295u, 6598u, 43821u), arg_1) % vec4<u32>(32u)), -max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.x), vec4<i32>(-42971, u_input.a.x, 78271, -51019))));
    }
    if (any(vec2<bool>((var_0.a == -355.0) & arg_1, true)) && arg_1) {
        if (!false) {
            global0 = ~vec4<i32>(-1, -2147483648, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(3031, u_input.a.x)), global0.wx), _wgslsmith_dot_vec3_i32(firstTrailingBit(max(vec3<i32>(global0.x, -6824, 35031), vec3<i32>(50624, global0.x, -1))), (u_input.a >> (vec3<u32>(36576u, arg_2.b, arg_2.b) % vec3<u32>(32u))) ^ vec3<i32>(global0.x, -1, global0.x)));
        }
    }
    global0 = -countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483648, 15757, u_input.a.x), vec4<i32>(-2147483648, 0, u_input.a.x, global0.x))), vec4<i32>(-2147483648, -46675, global0.x, -2147483648)));
    return u_input.a.x;
}

@stage(compute)
@workgroup_size(1)
fn main() {
    switch (abs(-30575)) {
        case -55299: {
            let var_0 = ~_wgslsmith_mult_vec4_i32(firstLeadingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(-23488, global0.x, global0.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -1, u_input.a.x))), ~vec4<i32>(~2147483647, ~u_input.a.x, ~(-1356), _wgslsmith_dot_vec4_i32(vec4<i32>(46133, -12463, 8036, global0.x), vec4<i32>(-2414, 163, global0.x, 1))));
            fallthrough;
        }
        default: {
            for (var var_0 = -2147483648; ; var_0 -= 1) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                let var_1 = (abs(u_input.a.x) == 53506) | (all(!vec2<bool>(true, true)) && (func_7(func_1(1000.0), func_3().x, Struct_3(Struct_1(false, vec3<bool>(true, false, true), vec2<f32>(-486.0, -820.0)), 0u, Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec2<f32>(-228.0, -1048.0))), Struct_1(false, vec3<bool>(true, true, true), vec2<f32>(-1000.0, -395.0)), Struct_2(Struct_1(false, vec3<bool>(false, false, false), vec2<f32>(-111.0, -569.0)))), func_5(vec2<bool>(true, true), Struct_4(-1252.0), 0u)) >= -64251));
            }
        }
    }
    let var_0 = abs(-u_input.a);
    let var_1 = firstLeadingBit(u_input.b.x);
    var var_2 = 7975;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(686.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-582.0 * -112.0) * 516.0)));
    var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-304.0, var_3.a))) + _wgslsmith_f_op_f32(sign(var_3.a))) - 415.0));
    switch (abs(_wgslsmith_add_i32(var_0.x, global0.x) ^ ~(-4644))) {
        case -28564: {
            var var_4 = vec4<i32>(~(-15633), 60162, global0.x, ~(~99803 ^ _wgslsmith_clamp_i32(u_input.a.x, global0.x, var_0.x)) << (~71060u % 32u));
        }
        case 1: {
            var var_4 = func_5(vec2<bool>(!all(vec4<bool>(false, true, true, false)), select(1000.0 != var_3.a, !(!true), false)), func_1(var_3.a), ~(~_wgslsmith_mod_u32(6212u, var_1) | (~u_input.b.x | 42711u)));
        }
        case 947: {
            for (var var_4 = 10956; !select(global0.x >= ((u_input.a.x | global0.x) ^ ~u_input.a.x), all(vec3<bool>(var_0.x >= u_input.a.x, false && true, 83483u == 1u)), all(func_5(!vec2<bool>(false, false), Struct_4(125.0), 0u).a.b.xz)); var_4 -= 1) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                continue;
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                continue;
            }
        }
    }
    if (func_3().x) {
        let var_4 = func_5(vec2<bool>(var_3.a >= -1108.0, true), func_1(-423.0), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global1.xxx, vec3<u32>(u_input.b.x, global1.x, 14177u)), abs(vec3<u32>(43691u, u_input.b.x, u_input.b.x))), func_2(func_5(!vec2<bool>(false, true), func_1(var_3.a), _wgslsmith_clamp_u32(35779u, 1u, 28191u)).a.c.x, ~u_input.a.x == firstTrailingBit(2147483647)).x));
    }
    switch (abs(2147483647)) {
        default: {
            for (var var_4 = -1; ; var_4 -= 1) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                let var_5 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-915.0, func_5(vec2<bool>(false, false), func_1(-980.0), var_1).a.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-435.0, 1145.0) + vec2<f32>(var_3.a, var_3.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(171.0, var_3.a) * vec2<f32>(var_3.a, var_3.a))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.a, var_3.a), vec2<f32>(var_3.a, var_3.a), false)), vec2<f32>(-521.0, -1013.0))), func_5(!vec2<bool>(true, true), func_1(-806.0), 4294967295u).a.b.zx)), vec2<bool>(true, (8829u < var_1) & (0 <= -6010))))));
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~firstLeadingBit(vec4<u32>(34231u, var_1, var_1, u_input.b.x) | vec4<u32>(40530u, 4294967295u, u_input.b.x, global1.x))));
}

