struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(753.0, 1260.0, false), Struct_2(1535.0, 1135.0, false), Struct_2(-2071.0, 19.0, true), Struct_2(-1552.0, 174.0, false), Struct_2(-209.0, 513.0, false), Struct_2(866.0, -708.0, false), Struct_2(-961.0, 673.0, false), Struct_2(548.0, 1346.0, true), Struct_2(-1161.0, -103.0, true), Struct_2(1146.0, 27.0, true), Struct_2(899.0, 961.0, true), Struct_2(1881.0, 797.0, true), Struct_2(780.0, -1156.0, false), Struct_2(-2203.0, -553.0, false), Struct_2(748.0, -1269.0, true), Struct_2(-2478.0, -1032.0, false), Struct_2(55.0, -1040.0, true), Struct_2(305.0, -959.0, false), Struct_2(-840.0, -452.0, false));

var<private> LOOP_COUNTERS: array<u32, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    for (var var_0 = -58; ; var_0 -= 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var_0 = ~(~min(_wgslsmith_div_i32(-22721, 0), ~9567));
    }
    if (!all(vec4<bool>(arg_1.x, arg_1.x, all(arg_1.yz), select(!arg_1.x, arg_0 <= 1710.0, arg_1.x)))) {
        global0 = array<Struct_2, 19>();
    }
    global0 = array<Struct_2, 19>();
    return !vec4<bool>(select(_wgslsmith_sub_i32(8121, 21420) < _wgslsmith_dot_vec4_i32(vec4<i32>(0, 4124, 1, 87063), vec4<i32>(2130, 39602, 19679, 0)), arg_1.x, true), !(!(u_input.a < u_input.b.x)), _wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(297.0)))), !any(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)));
}

fn func_3() -> Struct_3 {
    for (var var_0 = -2147483648; ; ) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        switch ((-1 | abs(firstLeadingBit(-30701))) & _wgslsmith_mult_i32(~(~(~(-31723))), ~firstTrailingBit(26276))) {
            default: {
                var var_1 = !select(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-534.0, 81.0, false)), -488.0)), vec3<bool>(false, true, true)), vec4<bool>(func_4(_wgslsmith_f_op_f32(f32(-1.0) * -38.0), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)).x, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), !true && !false, !(!false)), true || any(!vec2<bool>(false, true)));
            }
        }
    }
    var var_0 = countOneBits(vec2<i32>((-2147483648 >> (1u % 32u)) & abs(2147483647), 1 ^ 1)) ^ _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(41356, -1456), -270 ^ -2147483648), vec2<i32>(-1) * -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647, -72116), vec2<i32>(2147483647, -48902)), -firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483648, 6254), vec2<i32>(41326, -19718))));
    var var_1 = global0[_wgslsmith_mod_u32(49676u, 19u)];
    var_1 = global0[_wgslsmith_mod_u32(u_input.a, 19u)];
    for (var var_2 = -2147483648; false; var_2 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        global0 = array<Struct_2, 19>();
    }
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-43.0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-70.0 + var_1.a)))));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = func_3();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x, !(!(!true) && arg_0));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        global0 = array<Struct_2, 19>();
    }
    let var_2 = arg_0;
    let var_3 = select(!select(select(vec2<bool>(false, var_1.c), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, var_2)), arg_0 && var_2), select(!vec2<bool>(true, false), select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_1.c), vec2<bool>(false, var_1.c)), !true), vec2<bool>(2147483647 > 0, true)), vec2<bool>(true, arg_0), !vec2<bool>(false && (var_0.a.x >= -1284.0), false));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-484.0, 124.0))) * func_3().a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(var_0.a.x, 3.0)))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1262.0, 750.0) - var_0.a))))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_0 = u_input.c > 54u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-871.0, -1759.0) * vec2<f32>(605.0, 882.0))) * _wgslsmith_f_op_vec2_f32(func_2(arg_0.d.x)))));
    var var_2 = Struct_1(0u, 58699u, vec3<u32>(u_input.b.x, 0u, 44772u), arg_0.d);
    return ~(-18001);
}

@stage(compute)
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(select(8483, -1, true), func_1(Struct_1(31417u, u_input.c, u_input.b.zyy, vec4<bool>(true, false, true, false))), _wgslsmith_add_i32(-3869, 2672))), reverseBits(vec3<i32>(2147483647, ~(-2147483648), firstLeadingBit(-4840)))));
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(21502u, 12039u), firstTrailingBit(vec2<u32>(45351u, 1149u))), abs(select(vec2<u32>(4294967295u, 85504u), select(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(497u, u_input.b.x), false), true))), u_input.b.yw);
    for (var var_2: i32; (_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~2147483647, _wgslsmith_mod_i32(24162, var_0.x), 2147483647), min(~var_0.x, -var_0.x)) >= -_wgslsmith_div_i32(var_0.x, firstTrailingBit(var_0.x))) || true; var_2 -= 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_3 = func_3();
    }
    let var_2 = ~countOneBits(_wgslsmith_add_vec3_u32(u_input.b.zzz, ~u_input.b.zzy));
    var_1 = ~var_2.xy;
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        continue;
    }
    let var_3 = func_3();
    switch (var_0.x << ((_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(57571u, u_input.c, var_1.x), var_2), _wgslsmith_dot_vec4_u32(u_input.b | u_input.b, u_input.b & vec4<u32>(48407u, 2588u, 20698u, var_2.x))) ^ var_2.x) % 32u)) {
        case 15833: {
            var_1 = ~vec2<u32>(var_1.x, 1u);
        }
        case -58779: {
            for (var var_4 = 1; ; var_4 -= 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
        }
        default: {
            var var_4 = _wgslsmith_sub_u32(~(~(~abs(7147u))), _wgslsmith_div_u32(var_2.x, u_input.a));
        }
    }
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(801.0, (_wgslsmith_dot_vec3_u32(u_input.b.zzx | var_2, _wgslsmith_clamp_vec3_u32(u_input.b.yzy, u_input.b.yyy, var_2)) >> (var_1.x % 32u)) >> (1075u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-279.0, _wgslsmith_f_op_f32(trunc(2080.0)), 560.0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a.x, -39.0, var_3.a.x)))))));
}

