struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 11> = array<u32, 11>(35561u, 55144u, 30705u, 47737u, 0u, 0u, 1u, 9185u, 4294967295u, 6772u, 1u);

var<private> global2: vec3<i32>;

var<private> LOOP_COUNTERS: array<u32, 14>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>) -> u32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        let var_0 = vec4<u32>(50277u, ~(~(~global1[_wgslsmith_mod_u32(~global1[_wgslsmith_mod_u32(1u, 11u)], 11u)])), max(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(~(global1[_wgslsmith_mod_u32(86164u, 11u)] & global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(0u, 11u)], 11u)], 11u)], 11u)], 11u)]), 11u)], 11u)] << (~_wgslsmith_add_u32(70496u, global1[_wgslsmith_mod_u32(4294967295u, 11u)]) % 32u), abs(_wgslsmith_add_u32(~global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(4294967295u, 11u)], 11u)], _wgslsmith_dot_vec2_u32(vec2<u32>(7584u, 4294967295u), vec2<u32>(4758u, 1u))))), global1[_wgslsmith_mod_u32(~(~(~abs(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(19639u, 11u)], 11u)], 11u)]))), 11u)]);
    }
    global1 = array<u32, 11>();
    if (1 < abs(max(_wgslsmith_sub_i32(-1, u_input.b.x), ~_wgslsmith_div_i32(-1, 1)))) {
        let var_0 = -(_wgslsmith_mod_vec2_i32(global2.zz, max(vec2<i32>(0, arg_0.c) << (vec2<u32>(1u, 52786u) % vec2<u32>(32u)), vec2<i32>(u_input.c, 0))) ^ u_input.b.yx);
    }
    global1 = array<u32, 11>();
    if (!any(!(!select(vec4<bool>(false, arg_0.e.x, true, arg_1.x), vec4<bool>(global0.b.e.x, arg_0.e.x, arg_0.e.x, global0.a.x), true)))) {
        global1 = array<u32, 11>();
    }
    return ~_wgslsmith_div_u32(51566u, 4294967295u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    var var_0 = all(!(!(!vec4<bool>(false, arg_0.e.x, true, true))));
    switch (reverseBits(-2147483648) ^ abs(arg_1.x)) {
        case 1: {
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                global2 = vec3<i32>(arg_0.a, ~u_input.e, _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-arg_1.x, -2147483648), ~arg_1.x), -18305));
            }
        }
        case 0: {
            for (var var_1 = 46797; ; var_1 -= 1) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                let var_2 = global0.b.e.x;
            }
        }
        case -1: {
            global0 = Struct_2(!(!vec2<bool>(!false, !false)), Struct_1(1, 2671, firstLeadingBit(_wgslsmith_dot_vec4_i32(select(arg_1, vec4<i32>(2372, 0, global2.x, global2.x), global0.b.e.x), min(vec4<i32>(35679, 2147483647, 26985, global0.b.b), vec4<i32>(arg_0.a, -1, 2147483647, -26611)))), arg_0.d, select(select(vec2<bool>(global0.a.x, arg_0.e.x), vec2<bool>(arg_0.e.x, global0.a.x), true), select(!vec2<bool>(arg_0.e.x, false), !global0.a, !global0.a.x), vec2<bool>(arg_0.e.x == false, !false))));
            fallthrough;
        }
        default: {
            var_0 = false && all(!(!vec2<bool>(global0.a.x, arg_0.e.x)));
        }
    }
    var_0 = any(vec3<bool>((arg_0.e.x | false) || (func_4(global0.b, vec3<bool>(false, false, false), vec2<f32>(arg_0.d.x, global0.b.d.x)) <= _wgslsmith_add_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(0u, 11u)], 11u)], global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(23536u, 11u)], 11u)])), all(!vec3<bool>(false, global0.a.x, global0.b.e.x)), !true));
    var var_1 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(global1[_wgslsmith_mod_u32(reverseBits(4294967295u), 11u)], func_4(global0.b, vec3<bool>(false, arg_0.e.x, false), vec2<f32>(global0.b.d.x, 1354.0)), global1[_wgslsmith_mod_u32(4294967295u, 11u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(abs(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(0u, 11u)], 11u)], 11u)], 11u)]), global1[_wgslsmith_mod_u32(77688u, 11u)], ~global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(17738u, 11u)], 11u)]), reverseBits(vec3<u32>(54352u, 0u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(1u, 11u)], 11u)]) & vec3<u32>(global1[_wgslsmith_mod_u32(103018u, 11u)], 37662u, 9419u))));
    var var_2 = -452.0;
    return global2.x;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = select(min(firstTrailingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(arg_2.b, arg_2.b, -46129)), ~vec3<i32>(arg_2.b, 23111, global2.x))), vec3<i32>(_wgslsmith_div_i32(2147483647, select(u_input.b.x, 1, arg_1.x)), min(abs(-11006), arg_2.b & global0.b.b), firstLeadingBit(~arg_2.b))), u_input.b, arg_2.e.x);
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        let var_1 = max(vec4<u32>(arg_0, global1[_wgslsmith_mod_u32(min(0u, ~4294967295u), 11u)], global1[_wgslsmith_mod_u32(23852u, 11u)], 6190u), countOneBits(_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(9474u, 11u)], 11u)], 0u, 16640u)), ~(vec4<u32>(41598u, 36258u, 0u, 0u) >> (vec4<u32>(global1[_wgslsmith_mod_u32(arg_0, 11u)], arg_0, 4294967295u, global1[_wgslsmith_mod_u32(arg_0, 11u)]) % vec4<u32>(32u))))));
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        switch (0) {
            case 57930: {
                continue;
            }
            case -51813: {
                break;
            }
            default: {
                continue;
            }
        }
    }
    var var_1 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(4294967295u, 61344u) ^ (_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(66921u, 11u)], 11u)], arg_0), vec2<u32>(global1[_wgslsmith_mod_u32(0u, 11u)], arg_0)) ^ (vec2<u32>(0u, 1u) ^ vec2<u32>(arg_0, global1[_wgslsmith_mod_u32(7960u, 11u)])))), select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_0, global1[_wgslsmith_mod_u32(1u, 11u)])), ~arg_0), ~vec2<u32>(1u, 4294967295u) ^ ~vec2<u32>(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(0u, 11u)], 11u)], arg_0), vec2<bool>(global0.b.d.x >= -1865.0, all(vec2<bool>(arg_1.x, arg_2.e.x)))) | _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(arg_0, 31139u), vec2<u32>(arg_0, arg_0), true), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_mod_u32(0u, 11u)], 24527u), vec2<u32>(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(30299u, 11u)], 11u)], 1u))), vec2<u32>(70018u, arg_0) >> (_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_mod_u32(arg_0, 11u)], arg_0), vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u))), vec2<u32>(0u, min(select(arg_0, 13854u, false), abs(1u))));
    var var_2 = global0.b.e.x;
    return !false;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global0 = Struct_2(arg_1.e, arg_1);
    for (var var_0: i32; func_5(~14658u, select(!vec3<bool>(39422 >= -63180, false || arg_1.e.x, true), !vec3<bool>(arg_1.e.x, true, true), global0.a.x), Struct_1(-_wgslsmith_mult_i32(global2.x, arg_1.a), countOneBits(arg_1.b), -func_3(Struct_1(arg_1.a, 11854, global2.x, vec2<f32>(global0.b.d.x, -581.0), arg_0), ~vec4<i32>(global0.b.a, global0.b.a, arg_1.c, -3346)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-143.0, 1194.0) - global0.b.d)))), select(arg_0, select(!vec2<bool>(arg_0.x, false), arg_1.e, select(vec2<bool>(false, arg_0.x), global0.b.e, false)), select(true, any(vec4<bool>(false, true, global0.b.e.x, false)), global0.a.x))), -1140.0); var_0 += 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        let var_1 = 25275u;
    }
    let var_0 = !vec4<bool>(arg_1.e.x, !global0.a.x, all(select(global0.a, select(arg_0, vec2<bool>(true, global0.a.x), vec2<bool>(global0.b.e.x, arg_1.e.x)), global0.b.e.x)), false);
    let var_1 = Struct_3(Struct_2(vec2<bool>(!(global0.b.d.x > global0.b.d.x), _wgslsmith_f_op_f32(abs(-209.0)) <= _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x)), Struct_1(-u_input.b.x, -arg_1.c, -(10348 << (13991u % 32u)), arg_1.d, vec2<bool>(arg_1.e.x, var_0.x))));
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_2 = global2.xy;
    }
    return !var_0.x;
}

fn func_6(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        if (false) {
            break;
        }
    }
    var var_0 = Struct_3(Struct_2(!(!vec2<bool>(arg_2.e.x, global0.a.x)), arg_2));
    for (var var_1: i32; ; var_1 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        if (_wgslsmith_f_op_f32(global0.b.d.x - arg_2.d.x) == var_0.a.b.d.x) {
            let var_2 = ~_wgslsmith_sub_vec3_u32(~(vec3<u32>(54246u, 7641u, 0u) | select(vec3<u32>(arg_0.x, global1[_wgslsmith_mod_u32(1u, 11u)], arg_0.x), vec3<u32>(global1[_wgslsmith_mod_u32(1u, 11u)], global1[_wgslsmith_mod_u32(arg_0.x, 11u)], 1u), arg_1)), min(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, global1[_wgslsmith_mod_u32(4294967295u, 11u)], 4294967295u), ~vec3<u32>(4294967295u, 1u, 0u)), abs(countOneBits(vec3<u32>(1u, global1[_wgslsmith_mod_u32(1u, 11u)], 0u)))));
        }
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            let var_1 = u_input.b;
        }
    }
    global1 = array<u32, 11>();
    return Struct_1(1344, -1, 14750, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.b.d.x)), 1755.0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.b.d))))), select(vec2<bool>(!arg_2.e.x, true), arg_2.e, vec2<bool>(func_3(Struct_1(global2.x, global0.b.a, var_0.a.b.b, vec2<f32>(var_0.a.b.d.x, -1000.0), global0.b.e), vec4<i32>(global2.x, global2.x, -37158, global2.x)) < _wgslsmith_div_i32(var_0.a.b.a, u_input.c), var_0.a.b.e.x)));
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> vec3<u32> {
    global1 = array<u32, 11>();
    var var_0 = global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(~_wgslsmith_sub_u32(~(~(~1u)), 42971u), 11u)], 11u)];
    for (var var_1 = -2147483648; ; var_1 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        continue;
    }
    global1 = array<u32, 11>();
    var var_1 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(arg_2.x, global1[_wgslsmith_mod_u32(0u, 11u)], 4294967295u, 0u))) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(arg_2.zx & vec2<u32>(0u, global1[_wgslsmith_mod_u32(arg_2.x, 11u)]), ~vec2<u32>(arg_2.x, arg_2.x)), _wgslsmith_clamp_u32(abs(4294967295u), countOneBits(arg_2.x), 1u), arg_2.x, 0u), vec4<u32>(~4294967295u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(~(~(~875u)), 11u)], 11u)], (abs(4294967295u) | global1[_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_mod_u32(0u, 11u)]), 11u)]) << (arg_2.x % 32u), reverseBits(max(countOneBits(global1[_wgslsmith_mod_u32(0u, 11u)]), 53939u ^ 18850u))));
    return vec3<u32>(50260u, _wgslsmith_dot_vec3_u32(select(var_1.wyx, vec3<u32>(arg_2.x, var_1.x, arg_2.x), vec3<bool>(false, arg_0.e.x, arg_0.e.x)) | vec3<u32>(global1[_wgslsmith_mod_u32(1u, 11u)], 34149u, 0u), arg_2 ^ select(vec3<u32>(4294967295u, arg_2.x, 0u), var_1.ywy, false)), ~func_4(Struct_1(global2.x, u_input.c, 1, vec2<f32>(global0.b.d.x, 761.0), global0.b.e), !vec3<bool>(false, false, arg_0.e.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, -878.0)))) >> (~var_1.ywz % vec3<u32>(32u));
}

fn func_1() -> i32 {
    for (; global0.a.x; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        let var_0 = !(!any(!(!vec4<bool>(global0.b.e.x, false, global0.a.x, true))));
    }
    if (any(global0.a)) {
        switch (-u_input.d.x) {
            case -1: {
                return i32(-1) * -(i32(-1) * -29018);
            }
            case 24882: {
                global1 = array<u32, 11>();
                fallthrough;
            }
            case -80856: {
                global1 = array<u32, 11>();
            }
            default: {
                global2 = _wgslsmith_mod_vec3_i32(select(firstTrailingBit(vec3<i32>(countOneBits(23584), 0 & 1, 2147483647)), vec3<i32>(~_wgslsmith_mult_i32(-1, 2147483647), _wgslsmith_div_i32(-global0.b.c, 25140), ~global2.x | global2.x), all(global0.a)), ~(~firstLeadingBit(u_input.b)));
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_0 = global0.a;
    }
    var var_0 = (_wgslsmith_add_vec3_i32(select(u_input.b, min(vec3<i32>(0, global0.b.b, 9043), u_input.b), 0 >= 2147483647), vec3<i32>(i32(-1) * -2147483648, -32435, ~1)) & ~(countOneBits(vec3<i32>(global0.b.c, -41771, global2.x)) << (min(vec3<u32>(0u, 1u, 1u), vec3<u32>(15814u, global1[_wgslsmith_mod_u32(0u, 11u)], 4294967295u)) % vec3<u32>(32u)))) & (vec3<i32>(-1) * -vec3<i32>(-6959 | -1, global2.x, firstLeadingBit(global0.b.c)));
    switch (-(~(~(8098 | select(global0.b.b, u_input.c, true))))) {
        default: {
            var var_1 = func_7(func_6(vec2<u32>(~global1[_wgslsmith_mod_u32(0u, 11u)], max(68277u, 35433u)), func_2(vec2<bool>(true, true), global0.b), Struct_1(2147483647, ~(-38051), global2.x, _wgslsmith_f_op_vec2_f32(global0.b.d + global0.b.d), vec2<bool>(false, global0.a.x))), u_input.d.x, vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(28661u, global1[_wgslsmith_mod_u32(51568u, 11u)], global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(39270u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(42722u, 11u)], 11u)], 11u)])), ~vec4<u32>(4294967295u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(1u, 11u)], 11u)], global1[_wgslsmith_mod_u32(1409u, 11u)], 25944u)), 0u, _wgslsmith_mult_u32(58482u, global1[_wgslsmith_mod_u32(_wgslsmith_mod_u32(18837u, 13339u), 11u)]))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~reverseBits(global1[_wgslsmith_mod_u32(19740u, 11u)]), global1[_wgslsmith_mod_u32(1u, 11u)]), ~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_mod_u32(80261u, 11u)], 0u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(17732u, 11u)], 11u)]), vec3<u32>(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(1u, 11u)], 11u)], 11u)], 11u)], 11u)], 33614u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(83995u, 11u)], 11u)], 11u)], 11u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_mod_u32(0u, 11u)], 1u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(63538u, 11u)], 11u)]), vec3<u32>(63447u, 52588u, global1[_wgslsmith_mod_u32(4294967295u, 11u)])))) % vec3<u32>(32u));
        }
    }
    return global2.x | -29141;
}

@stage(compute)
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.d;
    var var_1 = 0;
    var var_2 = ~(-vec4<i32>(var_0.x, min(var_0.x, func_1()), _wgslsmith_sub_i32(min(var_0.x, 1), _wgslsmith_sub_i32(u_input.d.x, global2.x)), 2147483647));
    global0 = Struct_2(!(!(!global0.b.e)), Struct_1(1, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 11405, u_input.d.x, var_2.x), ~vec4<i32>(-2147483648, global2.x, u_input.d.x, 1)), global0.b.b), var_0.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.d.x, global0.b.d.x) + vec2<f32>(global0.b.d.x, 1344.0)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-842.0, 564.0)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.b.d))), select(vec2<bool>(global0.a.x, global0.b.e.x), !global0.b.e, select(global0.b.e, vec2<bool>(true, global0.b.e.x), global0.a.x)))), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-(_wgslsmith_add_i32(-2147483648, -34159) & (var_2.x & -2457)), ~(-1 ^ global2.x) & 0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d.x) + _wgslsmith_f_op_f32(global0.b.d.x + global0.b.d.x)))), ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_mod_u32(41450u, 11u)], 1u, 57568u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 11u)]), vec4<u32>(global1[_wgslsmith_mod_u32(11510u, 11u)], global1[_wgslsmith_mod_u32(51939u, 11u)], 42714u, 8922u)), vec4<u32>(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(1u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], global1[_wgslsmith_mod_u32(47484u, 11u)], global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(15245u, 11u)], 11u)], 11u)], 1u) | vec4<u32>(global1[_wgslsmith_mod_u32(42701u, 11u)], global1[_wgslsmith_mod_u32(0u, 11u)], 0u, global1[_wgslsmith_mod_u32(global1[_wgslsmith_mod_u32(0u, 11u)], 11u)]))));
}

