struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(17539u);

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: vec3<f32> = vec3<f32>(456.0, -1544.0, -1000.0);

var<private> global3: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1496.0, 1127.0), vec2<f32>(693.0, 2004.0), vec2<f32>(371.0, 2428.0));

var<private> LOOP_COUNTERS: array<u32, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = ~reverseBits(~vec3<u32>(4294967295u, reverseBits(2548u), _wgslsmith_clamp_u32(global0.a, arg_1, arg_1)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-967.0, _wgslsmith_f_op_f32(f32(-1.0) * -470.0)))) - vec2<f32>(-1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) * global2.x))) * global2.zx);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(-1933.0)), select(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(0, u_input.a), arg_0.x), arg_0.x | (-arg_0.x << (0u % 32u)), !(1u > 0u) && (true && true)), _wgslsmith_add_i32(0, -2147483648), _wgslsmith_add_u32(arg_1, 69192u));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(953.0, var_2.a)), 428.0, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)))), -727.0);
    let var_4 = var_2;
    return global2.x;
}

fn func_3() -> Struct_2 {
    global3 = array<vec2<f32>, 3>();
    global0 = Struct_1(1u);
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000.0)), _wgslsmith_f_op_f32(global2.x * global2.x), false != false)), _wgslsmith_f_op_f32(-1557.0 - _wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.a, -14305, 1, 0), global0.a, Struct_1(global0.a), Struct_1(global0.a)))), -591.0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(803.0, global2.x, global2.x), vec3<f32>(-624.0, global2.x, 195.0), vec3<bool>(false, true, false))))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1000.0, global2.x))))))));
    switch (-20679) {
        case 0: {
            var var_0 = Struct_2(_wgslsmith_f_op_f32(global2.x - 357.0), ~0, min(min(~(-39984 ^ u_input.a), u_input.a), -(u_input.a ^ -2147483648)), global0.a);
        }
        case 1536: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                global3 = array<vec2<f32>, 3>();
            }
        }
        default: {
            var var_0 = 24511;
        }
    }
    global1 = array<vec2<f32>, 17>();
    return Struct_2(global2.x, ~(-2147483648), ~u_input.a, ~(~4294967295u));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = func_3();
    for (var var_1 = -20096; ; var_1 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            let var_2 = !(!select(all(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, false, false)), !any(vec2<bool>(false, false))));
        }
    }
    global0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(31918u, global0.a, var_0.d), vec3<u32>(var_0.d, 18831u, var_0.d)), vec3<u32>(15522u, var_0.d, global0.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(18243u, arg_1.a), select(vec2<u32>(var_0.d, 0u), vec2<u32>(38737u, 37874u), vec2<bool>(true, false)))), ~(var_0.d & 1u), countOneBits(_wgslsmith_add_u32(~arg_1.a, arg_1.a))));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        var var_1 = select(vec2<bool>(all(vec2<bool>(any(vec4<bool>(true, true, true, true)), !true)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, var_0.d, 1u), ~vec3<u32>(arg_1.a, 92250u, 0u)) > countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 54014u, arg_1.a), vec3<u32>(arg_1.a, arg_1.a, 0u)))), select(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))), vec2<bool>(!false, func_3().b < 1), vec2<bool>(any(!vec2<bool>(true, false)), (20486u < var_0.d) && (1u >= 51155u))), select(vec2<bool>(any(!vec2<bool>(false, true)), !(!false)), select(vec2<bool>(1000.0 >= -717.0, all(vec2<bool>(false, true))), select(!vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false)), select(vec2<bool>(false, false), !vec2<bool>(false, true), !vec2<bool>(false, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), !vec2<bool>(false, false), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), var_0.d > max(global0.a, 4294967295u))));
    }
    for (var var_1: i32; ; var_1 -= 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_2 = vec3<i32>(var_0.b, ~(-1 << (~(~arg_1.a) % 32u)), _wgslsmith_dot_vec2_i32(-(~arg_0.xw), arg_0.zx) << (1u % 32u));
    }
    return ~vec2<u32>(4294967295u, 4294967295u);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1037.0, global2.x, 1759.0)))));
    for (var var_0: i32; ; ) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        switch (firstLeadingBit(select(-(~arg_3.c), _wgslsmith_add_i32(min(arg_3.b, arg_1.c), -1), ~(~4692u) < (_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_1.d, global0.a)) << (56306u % 32u))))) {
            case -23118: {
                break;
            }
            case 11979: {
                let var_1 = _wgslsmith_f_op_f32(ceil(1000.0));
            }
            default: {
                var_0 = u_input.a;
            }
        }
    }
    if (any(!select(select(!vec3<bool>(true, false, false), vec3<bool>(false, false, false), !vec3<bool>(true, true, true)), !vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))))) {
        switch (arg_2.x) {
            case -58851: {
                global1 = array<vec2<f32>, 17>();
            }
            case 0: {
                let var_0 = func_3();
                fallthrough;
            }
            default: {
                let var_0 = 51407u;
            }
        }
    }
    for (var var_0 = -1289; ; var_0 += 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_1 = vec2<bool>(false, true);
    }
    if (!((_wgslsmith_dot_vec2_i32(~vec2<i32>(1, arg_3.c), _wgslsmith_sub_vec2_i32(arg_2.ww, arg_2.wy)) | -_wgslsmith_add_i32(arg_3.c, 46499)) != -1)) {
        global3 = array<vec2<f32>, 3>();
    }
    return Struct_1(0u);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(global2.x + -558.0))));
    global0 = func_5(_wgslsmith_div_vec2_u32(~func_2(vec4<i32>(u_input.a, u_input.a, u_input.a, 1), Struct_1(8207u)), vec2<u32>(77996u, _wgslsmith_clamp_u32(1u, 4294967295u, 27474u)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(62947u, 39723u, global0.a), vec3<u32>(1u, global0.a, global0.a)), 46331u) % vec2<u32>(32u))), func_3(), _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a, _wgslsmith_mod_i32(-2147483648, u_input.a), u_input.a, 1784 << (global0.a % 32u)), ~(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) | vec4<i32>(_wgslsmith_mod_i32(0, 2147483647), -u_input.a, u_input.a, ~(-1 & u_input.a)), Struct_2(-1306.0, min(_wgslsmith_mod_i32(u_input.a, u_input.a), -(~6788)), _wgslsmith_clamp_i32(~(-2147483648), u_input.a, -18363), global0.a));
    global3 = array<vec2<f32>, 3>();
    let var_1 = Struct_1(1724u);
    var var_2 = select(select(select(select(!vec2<bool>(true, true), !vec2<bool>(true, true), !vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, !true), select(!vec2<bool>(false, true), vec2<bool>(false, true), false)), !(!true || !true)), select(select(!(!vec2<bool>(true, false)), vec2<bool>(true && true, !true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), vec2<bool>(!true, true), !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false))), select(vec2<bool>(!false, any(!vec2<bool>(true, false))), vec2<bool>(!any(vec2<bool>(false, false)), true), !vec2<bool>(select(false, false, false), any(vec4<bool>(false, false, false, false)))));
    return Struct_1(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(28231u, 51499u), 61578u));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2.x)), global2.x));
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        let var_1 = ~(~firstTrailingBit(~(vec3<i32>(0, -32122, u_input.a) & vec3<i32>(u_input.a, 2147483647, -2147483648))));
    }
    let var_1 = func_1();
    switch (-countOneBits(-2147483648)) {
        case 2147483647: {
            if ((abs(-2147483648) >= abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-19981, 27363, u_input.a)) & min(41302, -11445))) != all(select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), all(vec4<bool>(true, false, true, true))), !vec4<bool>(true, true, false, false), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false))))) {
                global3 = array<vec2<f32>, 3>();
            }
            fallthrough;
        }
        case 32643: {
            var var_2 = -_wgslsmith_mod_vec4_i32(vec4<i32>(~abs(u_input.a), min(reverseBits(0), u_input.a << (0u % 32u)), _wgslsmith_div_i32(u_input.a, 1), -13608), vec4<i32>(2147483647, i32(-1) * -58210, -u_input.a, ~u_input.a) << (_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.a, global0.a, var_1.a, var_1.a), reverseBits(vec4<u32>(var_1.a, var_1.a, 28597u, 4294967295u))) % vec4<u32>(32u)));
        }
        default: {
            global3 = array<vec2<f32>, 3>();
        }
    }
    if (false) {
        switch (_wgslsmith_dot_vec3_i32(min(-countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), abs(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1, u_input.a), vec3<i32>(u_input.a, 2147483647, u_input.a)))), ~(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.a, -14972, u_input.a)), vec3<i32>(13982, 6362, 4706)) ^ firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -26305, 2147483647), vec3<i32>(u_input.a, -1, u_input.a)))))) {
            case 1: {
                var var_2 = ~((global0.a ^ min(max(4294967295u, 530u), 35646u)) >> ((var_1.a ^ global0.a) % 32u));
                fallthrough;
            }
            case -1: {
                var var_2 = u_input.a & -u_input.a;
            }
            case 23822: {
                var var_2 = -154.0;
            }
            default: {
                let var_2 = var_1;
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(func_3().c, -1), select(_wgslsmith_mod_i32(u_input.a, -u_input.a), 22296, !any(vec2<bool>(true, true))), u_input.a, u_input.a), max(firstTrailingBit(13138u) << ((0u & 24993u) % 32u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(global0.a, 41506u, global0.a), vec3<u32>(4294967295u, global0.a, global0.a), true) ^ vec3<u32>(var_1.a, 0u, 36907u), firstLeadingBit(vec3<u32>(76873u, 0u, 0u)) & ~vec3<u32>(global0.a, global0.a, 51111u))));
}

