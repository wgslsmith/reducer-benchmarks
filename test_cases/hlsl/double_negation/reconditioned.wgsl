struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 4294967295u, 4294967295u);

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(549.0, -695.0), vec2<f32>(-2018.0, -383.0), vec2<f32>(1932.0, 57.0), vec2<f32>(-1060.0, 99.0), vec2<f32>(-327.0, -252.0), vec2<f32>(-1200.0, -659.0), vec2<f32>(75.0, 2391.0), vec2<f32>(241.0, 34.0), vec2<f32>(-491.0, 1603.0), vec2<f32>(338.0, -805.0), vec2<f32>(-1376.0, 862.0), vec2<f32>(-25.0, 167.0), vec2<f32>(108.0, -254.0), vec2<f32>(1371.0, 1214.0), vec2<f32>(-745.0, -1054.0), vec2<f32>(-784.0, 149.0), vec2<f32>(1145.0, -628.0), vec2<f32>(1853.0, -552.0), vec2<f32>(-1236.0, -658.0), vec2<f32>(-176.0, -102.0), vec2<f32>(778.0, 2018.0), vec2<f32>(1533.0, -122.0), vec2<f32>(-61.0, -2001.0), vec2<f32>(-949.0, -76.0), vec2<f32>(-816.0, -151.0));

var<private> global2: array<f32, 3> = array<f32, 3>(-109.0, 318.0, -411.0);

var<private> global3: u32;

var<private> global4: u32;

var<private> LOOP_COUNTERS: array<u32, 10>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn func_2() -> bool {
    for (var var_0 = -39297; ; var_0 += 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            break;
        }
    }
    var var_0 = global0.x;
    return select(1000.0 > _wgslsmith_f_op_f32(-global2[_wgslsmith_mod_u32((global0.x | global0.x) << (global0.x % 32u), 3u)]), all(vec4<bool>(false, false, any(!vec3<bool>(false, false, true)), !(!false))), true);
}

fn func_3() -> vec4<i32> {
    global2 = array<f32, 3>();
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        global3 = global0.x;
    }
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_mod_u32(u_input.b, 3u)], global2[_wgslsmith_mod_u32(45819u, 3u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_mod_u32(76464u, 25u)] - global1[_wgslsmith_mod_u32(1u, 25u)]) + _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_mod_u32(1u, 25u)] + vec2<f32>(202.0, 58.0))), select(vec2<bool>(false, false), !vec2<bool>(false, false), true)))));
    var var_1 = var_0.x;
    var var_2 = -abs(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x << (4294967295u % 32u), _wgslsmith_div_i32(-1, u_input.a.x))));
    return vec4<i32>(reverseBits(max(u_input.a.x, select(1, 1, !true))), u_input.a.x, _wgslsmith_add_i32(-19916, ~u_input.a.x), 3195);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    global4 = max(firstTrailingBit(1u), u_input.b);
    var var_0 = vec3<bool>(true, !false, !(select(any(vec3<bool>(true, true, false)), func_2(), !false) | any(vec4<bool>(true, false, false, true))));
    global1 = array<vec2<f32>, 25>();
    for (var var_1: i32; var_0.x; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        switch (~34262) {
            case 18266: {
                let var_2 = vec3<bool>(any(!vec3<bool>(true, true, var_0.x)), all(vec3<bool>(var_0.x, all(vec3<bool>(var_0.x, true, var_0.x)), !true)), var_0.x || true);
            }
            case 2147483647: {
                global2 = array<f32, 3>();
            }
            default: {
                var var_2 = global0.x;
            }
        }
    }
    for (var var_1 = 2147483647; false; var_1 += 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        break;
    }
    return Struct_1((abs(arg_0.x << (46815u % 32u)) | global0.x) >> (u_input.b % 32u), ~(~(~vec4<i32>(u_input.a.x, 15531, u_input.a.x, 42957))) ^ func_3(), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.x, 1u), 3u)], _wgslsmith_f_op_f32(round(-1446.0)), _wgslsmith_f_op_f32(select(-1473.0, 1817.0, var_0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_mod_u32(0u, 3u)], 547.0, global2[_wgslsmith_mod_u32(arg_0.x, 3u)])) - vec3<f32>(-821.0, global2[_wgslsmith_mod_u32(4294967295u, 3u)], global2[_wgslsmith_mod_u32(4294967295u, 3u)]))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    global2 = array<f32, 3>();
    let var_0 = arg_3.c.yx;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1679.0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - arg_2))), _wgslsmith_f_op_f32(min(-1281.0, -789.0))))));
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            continue;
        }
    }
    switch (arg_3.b.x) {
        case 0: {
            global2 = array<f32, 3>();
            fallthrough;
        }
        case 232: {
            global2 = array<f32, 3>();
        }
        default: {
            let var_2 = func_1(_wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(global0.yy, abs(global0.xx)), vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b, 1u << (1u % 32u))), _wgslsmith_div_vec2_u32(firstLeadingBit(firstLeadingBit(global0.zz)), ~global0.zz)), reverseBits(global0.xy));
        }
    }
    return !vec2<bool>(arg_1, any(vec3<bool>(func_2(), !false, !false)));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<i32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_mod_i32(u_input.a.x, countOneBits(arg_2.x)), func_1(~(~max(vec2<u32>(47948u, u_input.b), global0.zz)), reverseBits(_wgslsmith_sub_vec2_u32(global0.zz, abs(vec2<u32>(54880u, 8571u))))), global2[_wgslsmith_mod_u32(global0.x, 3u)], firstLeadingBit(~vec4<u32>(u_input.b, u_input.b, 8474u, 32476u)) << (max(min(countOneBits(vec4<u32>(45000u, u_input.b, u_input.b, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(27010u, 131476u, u_input.b, 4294967295u), vec4<u32>(53806u, u_input.b, global0.x, 99880u))), min(_wgslsmith_add_vec4_u32(vec4<u32>(24487u, 18300u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, global0.x, u_input.b)), ~vec4<u32>(61333u, u_input.b, 0u, 19938u))) % vec4<u32>(32u)));
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        global2 = array<f32, 3>();
    }
    global4 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~var_0.d.xwy, ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, 1u), var_0.d.yxx) << (~var_0.d.xyy % vec3<u32>(32u))), min(~select(0u, 111846u, false), _wgslsmith_mod_u32(85281u, select(0u, u_input.b, arg_1.x) & ~u_input.b)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_0.a), ~u_input.a.x), _wgslsmith_mult_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -35018), vec2<i32>(u_input.a.x, u_input.a.x) & vec2<i32>(-39346, 4449)), firstLeadingBit(~arg_2.zx) << (var_0.d.zy % vec2<u32>(32u))));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    let var_0 = -73.0;
    switch (max(func_5(_wgslsmith_f_op_f32(-var_0), select(select(!vec2<bool>(false, false), vec2<bool>(false, true), false || false), func_4(vec3<f32>(797.0, 454.0, 167.0), 1386.0 >= 1372.0, 1279.0, func_1(global0.yx, global0.yx)), vec2<bool>(var_0 != global2[_wgslsmith_mod_u32(global0.x, 3u)], any(vec3<bool>(false, false, false)))), vec3<i32>(countOneBits(~u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.a | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a | u_input.a), countOneBits(u_input.a.x) >> (4294967295u % 32u))), _wgslsmith_sub_i32(-2147483648, abs(~u_input.a.x)))) {
        case 30638: {
            let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(65.0 * _wgslsmith_f_op_f32(trunc(var_0))), Struct_1(u_input.b, func_1(global0.zz, vec2<u32>(u_input.b, 38469u)).b, vec3<f32>(_wgslsmith_f_op_f32(-var_0), 364.0, _wgslsmith_f_op_f32(f32(-1.0) * -61.0)))), !(!((-10038 <= u_input.a.x) || !false)), Struct_2(firstLeadingBit(u_input.a.x), Struct_1(3429u, u_input.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))))), 534.0, vec4<u32>(max(u_input.b ^ u_input.b, abs(52687u)), 0u, 0u, min(u_input.b, 0u))));
        }
        default: {
            global0 = ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, global0.x), vec3<u32>(0u, global0.x, u_input.b)) ^ vec3<u32>(global0.x, global0.x, 0u), min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 6199u, u_input.b), vec3<u32>(u_input.b, global0.x, 1u)), reverseBits(vec3<u32>(global0.x, 59251u, 13959u)))));
        }
    }
    global1 = array<vec2<f32>, 25>();
    for (var var_1: i32; true; var_1 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_2 = Struct_2(9719, func_1(vec2<u32>(10553u, global0.x), ~global0.zy ^ abs(~global0.zz)), global2[_wgslsmith_mod_u32(u_input.b, 3u)], _wgslsmith_div_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(0u, global0.x, global0.x, global0.x))), vec4<u32>(_wgslsmith_mod_u32(50820u, 4294967295u), u_input.b, global0.x, ~global0.x) | vec4<u32>(1u, _wgslsmith_clamp_u32(global0.x, 4294967295u, 1u), _wgslsmith_div_u32(global0.x, u_input.b), u_input.b)));
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        switch (_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(min(u_input.a | u_input.a, vec4<i32>(u_input.a.x, 1, 70861, u_input.a.x)) ^ ~vec4<i32>(u_input.a.x, 32245, u_input.a.x, u_input.a.x), vec4<i32>(_wgslsmith_mult_i32(~u_input.a.x, u_input.a.x), -_wgslsmith_clamp_i32(-7246, 1, u_input.a.x), abs(_wgslsmith_mod_i32(1, -27397)), u_input.a.x), u_input.a), abs(u_input.a))) {
            case -1: {
                let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-10308), ~u_input.a.x, 1, u_input.a.x), vec4<i32>(_wgslsmith_mod_i32(-45028, ~u_input.a.x), u_input.a.x, -27507, u_input.a.x)) << (_wgslsmith_dot_vec2_u32(select(~vec2<u32>(0u, 1u) | (global0.yx << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))), global0.zx, !vec2<bool>(false, true)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 39165u), ~global0.zx, abs(vec2<u32>(4294967295u, u_input.b)))) % 32u);
            }
            case -2147483648: {
                break;
            }
            case -12375: {
                global1 = array<vec2<f32>, 25>();
            }
            case 39800: {
                var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1109.0) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(func_1(global0.yy, global0.yz).c.x, _wgslsmith_f_op_f32(global2[_wgslsmith_mod_u32(u_input.b, 3u)] + 1524.0)))))), func_1(abs(select(~vec2<u32>(0u, 21303u), select(global0.xy, global0.zy, vec2<bool>(true, true)), vec2<bool>(false, true))), global0.xx));
            }
            default: {
                let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_mod_u32(reverseBits(4442u), 3u)])) + 375.0);
            }
        }
    }
    let var_1 = (_wgslsmith_sub_i32(func_1(vec2<u32>(u_input.b, global0.x), global0.yy).b.x ^ reverseBits(u_input.a.x), u_input.a.x) == _wgslsmith_add_i32(u_input.a.x >> (4294967295u % 32u), u_input.a.x)) & ((_wgslsmith_f_op_f32(global2[_wgslsmith_mod_u32(global0.x, 3u)] * _wgslsmith_f_op_f32(var_0 + var_0)) < 93.0) && !(!(global0.x >= 4294967295u)));
    switch (_wgslsmith_add_i32(1, u_input.a.x)) {
        case 2147483647: {
            if (!(var_1 & var_1) & all(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(571.0, var_0, global2[_wgslsmith_mod_u32(4294967295u, 3u)])), any(select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, false, true, var_1), vec4<bool>(false, var_1, false, var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-104.0))), Struct_1(~u_input.b, countOneBits(vec4<i32>(-11536, -8975, -45279, 2147483647)), vec3<f32>(800.0, var_0, 616.0))))) {
                let var_2 = vec4<i32>(abs(_wgslsmith_mult_i32(-33864, 1)), i32(-1) * -_wgslsmith_dot_vec2_i32(func_1(vec2<u32>(22373u, u_input.b), vec2<u32>(44285u, 1u)).b.yx, firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_add_i32(u_input.a.x, -18784), ~u_input.a.x);
            }
            fallthrough;
        }
        case 34924: {
            global4 = func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 4294967295u) >> (select(global0.xx, vec2<u32>(global0.x, global0.x), select(vec2<bool>(true, false), vec2<bool>(false, var_1), var_1)) % vec2<u32>(32u)), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(~15952u, firstLeadingBit(~global0.x) | global0.x)).a;
        }
        case -23243: {
            var var_2 = u_input.a.x == (_wgslsmith_add_i32(select(~u_input.a.x, -1, u_input.b >= 1u), select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1), vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_sub_i32(u_input.a.x, 38417), !true)) ^ _wgslsmith_mult_i32(u_input.a.x, func_5(_wgslsmith_f_op_f32(step(global2[_wgslsmith_mod_u32(45168u, 3u)], global2[_wgslsmith_mod_u32(3037u, 3u)])), !vec2<bool>(false, true), u_input.a.wyy)));
            fallthrough;
        }
        case -1: {
            switch (u_input.a.x) {
                case 7488: {
                    var var_2 = u_input.b;
                }
                case 1: {
                    global1 = array<vec2<f32>, 25>();
                }
                case -16214: {
                    global2 = array<f32, 3>();
                }
                default: {
                    let var_2 = vec4<f32>(-140.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927.0 - global2[_wgslsmith_mod_u32(0u, 3u)])) + var_0), -428.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -87.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_mod_u32(78651u, 3u)])))))));
                }
            }
            fallthrough;
        }
        default: {
            switch (-2147483647) {
                case 0: {
                    var var_2 = vec3<f32>(-2044.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(195.0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), 333.0);
                }
                case 8419: {
                    global0 = abs(abs(vec3<u32>(~firstTrailingBit(48158u), 0u, ~18098u)));
                    fallthrough;
                }
                case -17131: {
                    let var_2 = Struct_2(_wgslsmith_mod_i32(116238, -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, 0), vec2<i32>(u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.zx, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), global0.xx)), ~(0u >> (11664u % 32u))), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, global2[_wgslsmith_mod_u32(0u, 3u)], var_0))) + vec3<f32>(173.0, -923.0, -175.0)))), 1311.0, _wgslsmith_mod_vec4_u32(vec4<u32>(select(global0.x >> (u_input.b % 32u), ~u_input.b, !false), firstLeadingBit(~global0.x), 49509u, abs(1u << (u_input.b % 32u))), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(27217u, 4294967295u, 34898u, 12076u), ~vec4<u32>(29282u, global0.x, global0.x, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(27910u, 4294967295u), countOneBits(vec2<u32>(29256u, 27815u))), 48078u)));
                }
                default: {
                    global4 = _wgslsmith_mod_u32(~func_1(select(global0.zx, global0.yy, true), vec2<u32>(3584u, u_input.b)).a & u_input.b, 1u);
                }
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, 0), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-406.0, var_0, global2[_wgslsmith_mod_u32(global0.x, 3u)], -1738.0) + vec4<f32>(231.0, 224.0, var_0, 1781.0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1392.0, -1564.0, global2[_wgslsmith_mod_u32(4294967295u, 3u)], -201.0) + vec4<f32>(1444.0, global2[_wgslsmith_mod_u32(global0.x, 3u)], -464.0, 971.0)))))), vec4<u32>(87978u, _wgslsmith_add_u32(~(~26842u), 24016u), ~_wgslsmith_div_u32(1u, 0u), global0.x), global2[_wgslsmith_mod_u32(global0.x, 3u)]);
}

