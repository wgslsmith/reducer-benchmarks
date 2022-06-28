struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(27900u, vec3<u32>(14518u, 61128u, 1u), 2147483647);

var<private> global2: array<vec2<bool>, 12>;

var<private> global3: array<Struct_1, 3>;

var<private> LOOP_COUNTERS: array<u32, 11>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, a == -1 && (b == -2147483648) || (a == -2147483648 && (b == -1)) || (b != 0 && (a > (2147483647 / b) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, b[0] == 0u || (b[1] == 0u) || (b[2] == 0u) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, b != 0u && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, a[0] == -1 && (b[0] == -2147483648) || (a[0] == -2147483648 && (b[0] == -1)) || (a[1] == -1 && (b[1] == -2147483648) || (a[1] == -2147483648 && (b[1] == -1))) || (b[0] != 0 && (a[0] > (2147483647 / b[0]) || (a[0] < (-2147483648 / b[0]))) || (b[1] != 0 && (a[1] > (2147483647 / b[1]) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), a[0] == -2147483648 && (b[0] == -1) || (b[0] == 0) || (a[1] == -2147483648 && (b[1] == -1) || (b[1] == 0)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), b[0] == 0u || (b[1] == 0u) || (b[2] == 0u) || (b[3] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, b[0] != 0u && (a[0] > (4294967295u / b[0])) || (b[1] != 0u && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), abs(v) < f32(0.1) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), b[0] == 0u || (b[1] == 0u) || (b[2] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), a == -2147483648 && (b == -1) || (b == 0));
}

fn func_4(arg_0: Struct_1, arg_1: ptr<private, array<Struct_1, 3>>) -> vec3<bool> {
    let var_0 = &global2;
    global0 = (*arg_1)[_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(57584u, 78487u, 84382u), firstTrailingBit(min(arg_0.b, arg_0.b))), 3u)];
    let var_1 = arg_0;
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var var_2 = Struct_1(1u & (_wgslsmith_dot_vec2_u32(select(arg_0.b.xx, arg_0.b.yy, false), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global1.b.x), vec2<u32>(global0.a, 65304u))) & (~global1.a | global1.b.x)), global0.b, -27598);
    }
    let var_2 = 110.0 <= -1162.0;
    return select(vec3<bool>(true, var_2, true), select(vec3<bool>(all((*var_0)[_wgslsmith_mod_u32(74207u, 12u)]), !var_2, var_2), !select(select(vec3<bool>(var_2, false, false), vec3<bool>(false, true, var_2), true), !vec3<bool>(var_2, false, var_2), false), vec3<bool>(var_2, any(vec4<bool>(false, var_2, var_2, true)), _wgslsmith_f_op_f32(f32(-1.0) * -1532.0) >= _wgslsmith_f_op_f32(floor(685.0)))), vec3<bool>(!(countOneBits(-33302) != abs(arg_0.c)), false, !all(vec4<bool>(true, true, var_2, false)) && var_2));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    for (var var_0: i32; ; var_0 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        for (var var_1: i32; !false; var_1 -= 1) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            global3 = array<Struct_1, 3>();
        }
    }
    if (false != !(!true)) {
        return func_4(Struct_1(66219u, global1.b, global0.c), &global3);
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        let var_0 = &global1;
    }
    global1 = Struct_1(_wgslsmith_mod_u32(select(abs(u_input.a), _wgslsmith_mult_u32(abs(global1.a), ~global0.a), true), u_input.a), ~global0.b, global1.c);
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_0 = _wgslsmith_div_vec2_i32(select(select(firstLeadingBit(select(vec2<i32>(0, global1.c), vec2<i32>(global1.c, 1), false)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.c, global1.c), vec2<i32>(global1.c, global1.c))), global2[_wgslsmith_mod_u32(max(global0.a, firstLeadingBit(u_input.a)), 12u)]), reverseBits(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global1.c, 1), vec2<i32>(10102, global0.c)))), all(global2[_wgslsmith_mod_u32(0u, 12u)])), vec2<i32>(_wgslsmith_div_i32(~global1.c, global0.c), abs(~global1.c)) << ((global0.b.xz | (vec2<u32>(73064u, 0u) | reverseBits(vec2<u32>(5135u, u_input.a)))) % vec2<u32>(32u)));
    }
    return !(!func_4(Struct_1(global0.b.x, reverseBits(vec3<u32>(1u, u_input.a, global1.a)), 1 ^ 2147483647), &global3));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(round(1036.0));
    for (var var_1 = 2147483647; all(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1097.0, var_0)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xz + arg_0.xy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046.0, -759.0)))))); var_1 += 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        switch (-arg_3) {
            case 51495: {
                var var_2 = Struct_1(1u, _wgslsmith_div_vec3_u32(vec3<u32>(10572u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 1u), vec2<u32>(arg_2.a, u_input.a)), global0.a), min(arg_2.b, _wgslsmith_sub_vec3_u32(vec3<u32>(35849u, 1u, u_input.a), ~global1.b))), ~arg_1.c);
            }
            case -1: {
                global3 = array<Struct_1, 3>();
            }
            default: {
                global0 = arg_1;
            }
        }
    }
    global0 = global3[_wgslsmith_mod_u32(~(~(~28471u) | reverseBits(~global1.b.x)), 3u)];
    var var_1 = Struct_1(abs(_wgslsmith_mult_u32(51411u, _wgslsmith_mod_u32(28517u, 20889u))) | min(u_input.a, abs(1u)), arg_2.b, 80559);
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.x, 480.0)), var_0)))), var_0, _wgslsmith_f_op_f32(-1298.0 * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(685.0))))), _wgslsmith_f_op_f32(-1582.0 + _wgslsmith_f_op_f32(f32(-1.0) * -595.0)));
    }
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(682.0, -121.0, arg_0.x, _wgslsmith_f_op_f32(f32(-1.0) * -2108.0))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = !select(vec4<bool>(963.0 > -308.0 && (true == true), func_4(global3[_wgslsmith_mod_u32(arg_3.b.x & global1.a, 3u)], &global3).x, !true, !func_3(arg_1.wy).x), select(select(!vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(false, false, true, false)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), !(!vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)));
    let var_1 = global1.b.xz;
    global1 = global3[_wgslsmith_mod_u32(global1.a, 3u)];
    global0 = global3[_wgslsmith_mod_u32(global1.a, 3u)];
    for (; ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var var_2 = Struct_1(4294967295u, ~(~vec3<u32>(0u, arg_3.b.x, 128504u)) ^ global1.b, i32(-1) * -21765);
    }
    return firstLeadingBit(var_1.x);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<u32>) -> u32 {
    let var_0 = global1.b.zx;
    global0 = Struct_1(func_5(vec3<i32>(44030, -722, ~global0.c), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(817.0, 23.0, -370.0) * vec3<f32>(1868.0, -2228.0, arg_2.x)), Struct_1(u_input.a, global1.b, 2147483647), arg_1, arg_1.c)), abs(1), global3[_wgslsmith_mod_u32(4294967295u | firstTrailingBit(44667u), 3u)]) ^ 32178u, global1.b, global0.c);
    return 4294967295u;
}

@stage(compute)
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((44651u >> (_wgslsmith_add_u32(36794u, ~4294967295u) % 32u)) >> (1u % 32u), global1.b, 0 | max(global1.c, firstTrailingBit(-40954) << (_wgslsmith_mod_u32(u_input.a, global0.a) % 32u)));
    for (var var_1: i32; any(vec4<bool>(any(select(global2[_wgslsmith_mod_u32(~4294967295u, 12u)], global2[_wgslsmith_mod_u32(func_1(-1512.0, Struct_1(6205u, global1.b, global1.c), vec2<f32>(-312.0, -409.0), global0.b.yy), 12u)], global2[_wgslsmith_mod_u32(~var_0.a, 12u)])), (~global1.c ^ _wgslsmith_mult_i32(-1, global1.c)) > (~global0.c ^ -12463), any(vec2<bool>(!true, func_3(vec2<f32>(-53.0, -258.0)).x)), 706.0 < _wgslsmith_f_op_f32(349.0 + 212.0) && false)); var_1 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        for (var var_2 = 1; (~global1.a ^ u_input.a) != ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.a, _wgslsmith_dot_vec3_u32(global0.b, var_0.b)), 40803u); ) {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            let var_3 = i32(-1) * -16613;
        }
    }
    var var_1 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(abs(~(~u_input.a)), 4294967295u));
    let var_2 = vec3<i32>(global0.c >> (~global0.b.x % 32u), global1.c, _wgslsmith_mult_i32(global1.c, 77492) >> (~(global0.b.x ^ countOneBits(12378u)) % 32u));
    if (!(!func_4(Struct_1(1u, reverseBits(vec3<u32>(u_input.a, var_0.a, 4294967295u)), ~8128), &global3).x)) {
        global3 = array<Struct_1, 3>();
    }
    global3 = array<Struct_1, 3>();
    if (any(!(!vec4<bool>(all(vec2<bool>(true, false)), -198.0 <= -563.0, 0u < global0.a, true & true)))) {
        for (var var_3 = -24885; func_4(Struct_1(countOneBits(firstTrailingBit(16966u & u_input.a)), vec3<u32>(~global0.a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.b.x, 65104u, u_input.a), vec4<u32>(0u, 50904u, 12099u, global1.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, u_input.a, global1.a, 11392u), vec4<u32>(74872u, var_0.a, var_0.b.x, 1u))), global0.b.x), 19480), &global3).x; var_3 += 1) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-350.0, 425.0, -259.0, -221.0) + vec4<f32>(-473.0, -520.0, -532.0, 947.0)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1074.0, -1121.0, 1689.0, -996.0) * vec4<f32>(1121.0, 857.0, 910.0, 1714.0))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(372.0, 619.0, 31.0, -1113.0) + vec4<f32>(-722.0, 406.0, 397.0, 229.0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(49.0, -698.0, -2251.0, 229.0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1745.0, -611.0, -615.0, 2014.0))))));
        }
    }
    global2 = array<vec2<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(var_0.b)), vec3<u32>(1u, 28407u, u_input.a) | global0.b, firstTrailingBit(vec3<u32>(global1.b.x, var_0.a, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-950.0, 14.0, -994.0, 748.0)))));
}

