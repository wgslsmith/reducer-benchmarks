struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> LOOP_COUNTERS: array<u32, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = Struct_3(!(!(-369.0 != -773.0)), vec4<i32>(-2147483648, -36454, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.c, 0, 2147483647), vec3<i32>(24657, arg_1.c, 1))) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.c, arg_1.a.b.x, arg_1.a.c), vec3<i32>(1, -1, -1)), arg_1.c), ~vec2<u32>(_wgslsmith_div_u32(arg_0, u_input.b.x), arg_1.b.x) & _wgslsmith_add_vec2_u32(min(vec2<u32>(arg_0, arg_1.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, 4294967295u), arg_1.b.wz)), reverseBits(~vec2<u32>(u_input.b.x, arg_1.b.x))), vec2<i32>(max(arg_1.a.b.x, 37190 ^ -2147483647), ~(~arg_1.c)));
    if (any(!vec4<bool>(false, false, ~2147483647 <= (i32(-1) * -2147483648), false))) {
        let var_1 = var_0.a;
    }
    let var_1 = arg_1.a.a;
    var var_2 = Struct_4(var_0);
    var var_3 = select(!var_1.xx, vec2<bool>(false, var_0.a), vec2<bool>(var_2.a.a, !false));
    return vec4<i32>(min(-2147483648, arg_1.c), countOneBits(1), -(var_0.d.x | arg_1.c) >> (_wgslsmith_sub_u32(4294967295u, 1065u) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-27953, countOneBits(firstTrailingBit(var_2.a.b.x))), firstTrailingBit(0)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_3(true, -select(~vec4<i32>(-18848, arg_2.c, arg_0.a.b.x, -20180), func_4(4294967295u, Struct_2(Struct_1(vec4<bool>(arg_2.a.x, true, false, false), vec2<i32>(-48435, arg_0.a.d.x), arg_2.b.x), vec4<u32>(5281u, 1u, 5350u, 54533u), arg_2.b.x)), all(arg_2.a.yzw)) & -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.c, arg_2.b.x, arg_0.a.d.x, 0), -vec4<i32>(arg_0.a.b.x, arg_0.a.b.x, -2857, arg_2.c)), vec2<u32>(arg_0.a.c.x, arg_0.a.c.x ^ (45799u << (arg_0.a.c.x % 32u))), abs(~vec2<i32>(1898, ~arg_2.b.x)));
    if (all(!arg_2.a)) {
        let var_1 = -vec4<i32>(var_0.b.x, _wgslsmith_dot_vec3_i32(-(~var_0.b.wzx), var_0.b.wzx), _wgslsmith_mult_i32(~_wgslsmith_mod_i32(arg_2.c, arg_2.c), arg_2.b.x | -1), arg_0.a.d.x);
    }
    var_0 = Struct_3(any(vec2<bool>(var_0.a, 0 <= _wgslsmith_mult_i32(-29941, arg_0.a.d.x))), firstLeadingBit(arg_0.a.b), vec2<u32>(_wgslsmith_add_u32(firstTrailingBit(~11179u), arg_0.a.c.x), u_input.a.x ^ _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 0u, u_input.a.x))), vec2<i32>(var_0.b.x ^ _wgslsmith_div_i32(-62505 << (arg_0.a.c.x % 32u), i32(-1) * -2257), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(var_0.b.x, arg_2.c), -2147483648)));
    let var_1 = arg_0;
    var var_2 = arg_0.a;
    return reverseBits(var_2.d.x);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        if (any(arg_0.a)) {
            global0 = array<vec3<bool>, 9>();
        }
    }
    global0 = array<vec3<bool>, 9>();
    if (!(!any(select(global0[_wgslsmith_mod_u32(1u, 9u)], vec3<bool>(arg_0.a.x, false, false), arg_0.a.x))) && false) {
        switch (-(~(-(func_3(Struct_4(Struct_3(false, vec4<i32>(arg_0.b.x, -48055, arg_0.b.x, 31232), vec2<u32>(4294967295u, u_input.b.x), arg_0.b)), vec3<u32>(39451u, u_input.b.x, 40658u), Struct_1(arg_0.a, arg_0.b, arg_0.b.x)) | 16323)))) {
            case 7892: {
                global0 = array<vec3<bool>, 9>();
            }
            default: {
                global0 = array<vec3<bool>, 9>();
            }
        }
    }
    global0 = array<vec3<bool>, 9>();
    for (var var_0 = -5320; ; var_0 += 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        let var_1 = Struct_3(arg_0.a.x, _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c, 2147483647, arg_0.c, 0), vec4<i32>(arg_0.b.x, -1, 29560, arg_0.b.x), vec4<i32>(-43021, 44164, arg_0.c, arg_0.c))), (vec4<i32>(arg_0.b.x, -46911, 29710, 10668) >> (vec4<u32>(u_input.a.x, 0u, u_input.b.x, u_input.a.x) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_i32(vec4<i32>(-1, -2147483648, arg_0.b.x, arg_0.b.x), vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.c, arg_0.c))) >> (firstTrailingBit(~vec4<u32>(48806u, 1u, 4330u, 48990u)) % vec4<u32>(32u)), vec2<u32>(46125u << (abs(177u) % 32u), ~u_input.b.x), arg_0.b);
    }
    return 59756u;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: u32) -> Struct_3 {
    if (true) {
        global0 = array<vec3<bool>, 9>();
    }
    var var_0 = Struct_2(Struct_1(select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(!arg_1, false, 0 <= -2147483648, arg_1), select(!vec4<bool>(arg_1, true, arg_1, false), select(vec4<bool>(arg_1, false, false, false), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1))), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(8778, -8515), vec2<i32>(-2147483648, -2147483648)) & abs(vec2<i32>(2147483647, 4587))), _wgslsmith_div_i32(~_wgslsmith_add_i32(0, 1), _wgslsmith_dot_vec2_i32(vec2<i32>(-60004, 2147483647), -vec2<i32>(10065, -1)))), vec4<u32>(~(~(~10573u)), 0u, firstTrailingBit(arg_0), 1u), _wgslsmith_mod_i32(-1, -2147483648));
    let var_1 = Struct_4(Struct_3(var_0.a.a.x, min(select(vec4<i32>(var_0.a.b.x, var_0.c, 7542, 0), min(vec4<i32>(var_0.c, var_0.c, -43840, 1), vec4<i32>(var_0.c, -1, var_0.a.b.x, var_0.a.b.x)), arg_1), -vec4<i32>(var_0.c, var_0.c, 52748, var_0.c)), u_input.a.yz << (u_input.a.xx % vec2<u32>(32u)), max(var_0.a.b, vec2<i32>(var_0.c, -2259))));
    var var_2 = -6197;
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1249.0, 575.0, 47.0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(879.0, -727.0, -663.0) - vec3<f32>(1429.0, 900.0, 1157.0))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-291.0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(552.0)), _wgslsmith_f_op_f32(round(-2088.0)), arg_2 >= u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-126.0)) - _wgslsmith_f_op_f32(-278.0 + -920.0)))));
    }
    return Struct_3(all(!select(var_0.a.a, var_0.a.a, !var_0.a.a)), abs(firstLeadingBit(var_1.a.b)), vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(30711u, 16113u, 0u, 42351u)) & (~9630u << (~var_1.a.c.x % 32u)), 60619u & (24392u << ((var_1.a.c.x << (u_input.b.x % 32u)) % 32u))), vec2<i32>(var_1.a.d.x ^ -15897, _wgslsmith_add_i32(-36840, func_3(var_1, select(u_input.b, u_input.a, true), Struct_1(var_0.a.a, var_0.a.b, var_1.a.b.x)))));
}

fn func_1(arg_0: u32) -> f32 {
    for (var var_0 = -33328; ; var_0 += 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        switch (countOneBits(2147483647)) {
            case 16467: {
                let var_1 = Struct_4(func_5(u_input.a.x, !all(vec2<bool>(true, false)), ~func_2(Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(-11363, 2147483647), 0), _wgslsmith_f_op_f32(-497.0 - -591.0))));
                fallthrough;
            }
            case 2147483647: {
                break;
            }
            default: {
                continue;
            }
        }
    }
    var var_0 = vec2<bool>(!(!any(vec4<bool>(false, false, true, true)) != true), !((u_input.b.x != _wgslsmith_clamp_u32(arg_0, u_input.b.x, 88254u)) && !any(vec4<bool>(true, true, true, false))));
    var var_1 = var_0.x;
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var_1 = (all(select(select(vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), var_0.x), select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), var_0.x), var_0.x)) & false) | true;
    }
    var_1 = any(vec4<bool>((13472u != 4294967295u) || !true, var_0.x || true, countOneBits(~u_input.a.x) >= (arg_0 ^ 35623u), false));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(366.0 - 89.0))) + -1836.0))), _wgslsmith_f_op_f32(-181.0 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -505.0))))));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -203.0), -906.0, _wgslsmith_f_op_f32(-1031.0 * _wgslsmith_f_op_f32(func_1(1u))));
    if (false) {
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            let var_1 = Struct_2(Struct_1(vec4<bool>(!(!true), any(vec3<bool>(false, true, false)), !(!true), false || any(vec2<bool>(true, true))), ~vec2<i32>(2147483647, -2147483648), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-38159, 1), vec2<i32>(1379, 14349)), vec2<i32>(-2147483648, 15260)), func_4(~26224u, Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(1, -2397), 21254), vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, 1u), 0)).yz)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(75773u, u_input.a.x, u_input.a.x, 51264u)), countOneBits(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x))), ~vec4<u32>(u_input.a.x, 1u, u_input.b.x, 4294967295u)), ~u_input.b.x, firstTrailingBit(~1u), 13268u ^ (0u | 1u)), -48584);
        }
    }
    switch (~(~1)) {
        default: {
            switch (min(1, ~(-2147483648))) {
                case 0: {
                    let var_1 = func_5(~0u, ~_wgslsmith_clamp_i32(-2147483647, ~(-7130), abs(2147483647)) > 0, _wgslsmith_dot_vec4_u32(max(reverseBits(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 13386u)), ~select(vec4<u32>(1u, 1u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<bool>(false, true, true, true))), min(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 22103u, 1u), vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, 0u), vec4<u32>(u_input.a.x, 1u, 21851u, u_input.a.x)), vec4<u32>(4294967295u, 9074u, u_input.b.x, u_input.a.x) & vec4<u32>(61423u, 25951u, 99516u, 0u), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), abs(vec4<u32>(u_input.a.x, 0u, u_input.b.x, u_input.a.x) << (vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, 50115u) % vec4<u32>(32u))))));
                }
                default: {
                    let var_1 = Struct_1(vec4<bool>(!false, false & !any(vec2<bool>(false, true)), true, false), vec2<i32>(_wgslsmith_add_i32(~(21272 << (u_input.b.x % 32u)), ~min(16001, 41359)), _wgslsmith_add_i32(1 & firstLeadingBit(-25764), -27611 ^ (1 & 57826))), -18828);
                }
            }
        }
    }
    global0 = array<vec3<bool>, 9>();
    for (var var_1: i32; ; var_1 -= 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_2 = Struct_4(func_5(2891u, !all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), 1u ^ (min(u_input.b.x, 74613u) >> (u_input.a.x % 32u))));
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(498.0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-313.0)) - _wgslsmith_f_op_f32(ceil(498.0)))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(275.0)) + _wgslsmith_f_op_f32(max(179.0, var_0.x))) - var_0.x)));
}

