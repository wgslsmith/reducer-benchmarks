struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn func_4(arg_0: i32) -> i32 {
    if (!true) {
        var var_0 = Struct_1(~(-select(vec2<i32>(arg_0, arg_0), ~vec2<i32>(41569, u_input.c), !vec2<bool>(false, false))), false);
    }
    var var_0 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-407.0)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1135.0)) - _wgslsmith_f_op_f32(ceil(-896.0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(149.0, -402.0, true)) - _wgslsmith_f_op_f32(max(1771.0, -1000.0)))));
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        switch (~(-9353 << (firstTrailingBit(1u) % 32u))) {
            case -24896: {
                let var_1 = select(~firstLeadingBit(~u_input.b), u_input.b, !(!select(vec2<bool>(true, false), vec2<bool>(false, true), all(vec4<bool>(false, false, true, false)))));
            }
            case 13241: {
                break;
            }
            default: {
                var var_1 = select(select(!vec2<bool>(true | true, false), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), all(vec4<bool>(false, false, false, true))), select(vec2<bool>(!false, !true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), -27459 > abs(-1))), vec2<bool>(select(!true, arg_0 >= ~u_input.c, any(!vec3<bool>(true, true, false))), any(vec4<bool>(!true, true, all(vec3<bool>(false, true, true)), true))), vec2<bool>(!((566.0 > 564.0) == true), select(false, _wgslsmith_f_op_f32(trunc(1044.0)) == _wgslsmith_f_op_f32(f32(-1.0) * -1516.0), true)));
            }
        }
    }
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(605.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(412.0 * 570.0) * -1000.0), true)) + 926.0) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3109.0 + -106.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1008.0)) + _wgslsmith_f_op_f32(-2196.0 - -897.0))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(-1000.0)))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(0u, u_input.b.x, 0u, 30885u)), select(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 16182u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), 0u > u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(min(-279.0, _wgslsmith_f_op_f32(-1932.0 * -1337.0))), -1000.0, -1533.0)), Struct_2(max(u_input.b.x >> (_wgslsmith_add_u32(32274u, u_input.b.x) % 32u), u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(361.0, _wgslsmith_f_op_f32(step(-1538.0, -1379.0)), 738.0))), -93305, Struct_1(vec2<i32>(-1, 2147483647), _wgslsmith_add_i32(1 << (9006u % 32u), u_input.a) == reverseBits(u_input.c >> (u_input.b.x % 32u))), Struct_2(u_input.b.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1066.0, -772.0, 1147.0), vec3<f32>(-179.0, 385.0, -1996.0), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(953.0, -1829.0, -1645.0) * vec3<f32>(-935.0, 404.0, 1964.0)), vec3<bool>(true, false, true)))))));
    return reverseBits(-u_input.c);
}

fn func_3() -> Struct_2 {
    for (var var_0 = 0; ; var_0 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        for (var var_1 = -4501; ; var_1 += 1) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_2 = all(!(!vec2<bool>(false, false))) & true;
        }
    }
    let var_0 = select(vec2<i32>(-u_input.a, func_4(u_input.c)), vec2<i32>(-_wgslsmith_div_i32(u_input.a, -40285), u_input.a), all(vec2<bool>((false && true) && (false || false), select(all(vec4<bool>(true, true, true, false)), !true, false))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(106.0))))))));
    var_1 = 853.0;
    var_1 = 269.0;
    return Struct_2(1u | (u_input.b.x & ~u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1119.0) * _wgslsmith_f_op_f32(trunc(-585.0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -740.0) - -654.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-334.0 + -3193.0) - -162.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385.0 - 1620.0)) + _wgslsmith_f_op_f32(1429.0 * -944.0))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(func_3(), func_3(), func_4(-2147483648), Struct_1(_wgslsmith_div_vec2_i32(-vec2<i32>(39731, u_input.a) >> ((vec2<u32>(u_input.b.x, arg_2.x) << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), select(vec2<i32>(-29436, -2600), vec2<i32>(u_input.a, -6073) << (u_input.b % vec2<u32>(32u)), !true)), any(vec3<bool>(false, !true, false))), Struct_2(arg_3.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-194.0, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(step(arg_3.b.x, arg_3.b.x)))))));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            break;
        }
    }
    if (select(true, -40834 <= -(~(~u_input.c)), var_0.d.b)) {
        let var_1 = abs((vec4<u32>(arg_0.a, _wgslsmith_mod_u32(4294967295u, arg_1.x), 43787u, max(var_0.e.a, arg_0.a)) ^ _wgslsmith_mult_vec4_u32(arg_1 >> (vec4<u32>(arg_2.x, arg_0.a, 18602u, 1u) % vec4<u32>(32u)), arg_1 | arg_1)) ^ ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 15888u, 29997u, 94809u), vec4<u32>(arg_0.a, arg_1.x, 1u, arg_1.x)));
    }
    var var_1 = !all(!vec3<bool>(select(var_0.d.b, false, var_0.d.b), -68258 == -19437, any(vec3<bool>(var_0.d.b, var_0.d.b, var_0.d.b))));
    var_1 = var_0.d.b || (all(select(vec3<bool>(var_0.d.b, var_0.d.b, var_0.d.b), select(vec3<bool>(true, var_0.d.b, true), vec3<bool>(var_0.d.b, true, true), var_0.d.b), var_0.d.b)) && false);
    return -372.0;
}

fn func_6(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = ~_wgslsmith_clamp_u32(~1u, u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(0u, 31710u))));
    for (var var_1 = 1; !(arg_0.x | all(!(!arg_0.ywy))); ) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            var var_2 = -2014.0;
        }
    }
    let var_1 = _wgslsmith_div_vec3_i32(-countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(26289, u_input.c, -39927), ~vec3<i32>(u_input.a, u_input.c, u_input.c))), vec3<i32>(firstLeadingBit(38038), u_input.c, _wgslsmith_sub_i32(-1, -u_input.a) & firstLeadingBit(-2147483648)));
    var var_2 = select(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x, true);
    var_2 = _wgslsmith_dot_vec2_u32(select(u_input.b, ~u_input.b, vec2<bool>(arg_0.x, arg_1)) & u_input.b, vec2<u32>(1u, u_input.b.x)) | _wgslsmith_dot_vec3_u32(select(~countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, 59381u)), ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), any(select(vec3<bool>(true, arg_0.x, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, true)))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 0u), ~(vec3<u32>(u_input.b.x, 0u, 4294967295u) >> (vec3<u32>(0u, 45486u, u_input.b.x) % vec3<u32>(32u))), vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x)));
    return Struct_2(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -208.0), _wgslsmith_f_op_f32(exp2(-536.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1721.0)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1682.0))), _wgslsmith_f_op_f32(func_5(Struct_2(42989u, vec3<f32>(827.0, -1347.0, -1345.0)), select(vec4<u32>(u_input.b.x, 1u, 22278u, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), arg_1), vec3<u32>(27107u, u_input.b.x, 74611u), func_3())), _wgslsmith_f_op_f32(func_5(Struct_2(30131u, vec3<f32>(823.0, 373.0, 896.0)), ~vec4<u32>(u_input.b.x, 15299u, 10015u, 4294967295u), vec3<u32>(u_input.b.x, 37756u, 37562u), Struct_2(4294967295u, vec3<f32>(-1414.0, -102.0, -835.0)))))));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = func_6(vec4<bool>(_wgslsmith_f_op_f32(func_5(func_3(), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 22349u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)), vec3<u32>(1u, u_input.b.x, 1u), Struct_2(u_input.b.x, vec3<f32>(-2901.0, -2253.0, -1227.0)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0 - 358.0)), true, true, false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(875.0 - -212.0)))) != _wgslsmith_f_op_f32(175.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269.0 * -2029.0))));
    let var_1 = (_wgslsmith_add_vec3_i32(~(vec3<i32>(u_input.c, 1, -1) & vec3<i32>(2147483647, u_input.a, u_input.a)), -vec3<i32>(u_input.c, 26942, 2147483647) ^ vec3<i32>(u_input.a, 2147483647, -1)) << (abs(select(~vec3<u32>(u_input.b.x, 70508u, 29838u), abs(vec3<u32>(54237u, u_input.b.x, u_input.b.x)), arg_0)) % vec3<u32>(32u))) >> (select(vec3<u32>(1u, var_0.a, 4294967295u & countOneBits(47384u)), abs(firstTrailingBit(vec3<u32>(19377u, 1u, var_0.a)) & vec3<u32>(27036u, 37823u, var_0.a)), !select(!vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, false, arg_0), !vec3<bool>(arg_0, false, false))) % vec3<u32>(32u));
    for (var var_2 = 2147483647; ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        let var_3 = !select(!(!select(vec3<bool>(arg_0, true, true), vec3<bool>(false, false, false), true)), select(!vec3<bool>(arg_0, arg_0, false), select(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, false), false), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, false), false), !true), !select(arg_0, true, false)), select(select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, arg_0), arg_0), !vec3<bool>(false, arg_0, arg_0)), !(!vec3<bool>(false, false, arg_0)), vec3<bool>(!true, all(vec3<bool>(arg_0, arg_0, arg_0)), arg_0)));
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        var var_2 = -25862;
    }
    var var_2 = Struct_1(vec2<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647, -1, 49054), vec4<i32>(2147483647, u_input.a, -6955, u_input.c) ^ vec4<i32>(1, var_1.x, -1, u_input.a))), -1), true);
    return false;
}

fn func_1() -> f32 {
    var var_0 = !(!vec3<bool>(!(!true), func_2(true), false && !false));
    let var_1 = 10249;
    for (var var_2: i32; ; var_2 -= 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        var_0 = vec3<bool>(u_input.a > -_wgslsmith_mult_i32(i32(-1) * -1, -1), true, false);
    }
    var_0 = select(!(!vec3<bool>(all(vec4<bool>(true, true, true, var_0.x)), true, all(vec3<bool>(var_0.x, false, false)))), !vec3<bool>(var_0.x, any(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, false, false, false))), (false | true) || all(vec3<bool>(true, var_0.x, false))), ((abs(u_input.b.x) ^ 1u) << (max(u_input.b.x | 50368u, firstLeadingBit(0u)) % 32u)) < reverseBits(u_input.b.x));
    var var_2 = Struct_1(vec2<i32>(u_input.a, -(_wgslsmith_sub_i32(var_1, u_input.c) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 2147483647), vec2<i32>(1, u_input.a)))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(548.0)));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    let var_0 = true;
    for (; select(var_0 != var_0, false, var_0); ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        switch (_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a | u_input.c, i32(-1) * -1), ~select(vec3<i32>(u_input.c, -76405, -13079), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.a), vec3<i32>(u_input.a, u_input.c, u_input.c)), true && true)), _wgslsmith_div_i32(u_input.c & u_input.c, u_input.c) | 18739, u_input.a)) {
            case -2147483648: {
                continue;
            }
            default: {
                let var_1 = Struct_3(Struct_2(1u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_1()), -1060.0, 433.0), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-512.0, 735.0, 2736.0)))), var_0))), func_3(), i32(-1) * -firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(7082, u_input.c), vec2<i32>(u_input.c, u_input.a))), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0, u_input.c, u_input.c) ^ vec3<i32>(u_input.a, 9640, u_input.c), vec3<i32>(u_input.a, u_input.c, u_input.a)), -52025), false != !func_2(true)), func_6(vec4<bool>(var_0, any(vec4<bool>(var_0, var_0, false, false)) & var_0, !true, var_0), false));
            }
        }
    }
    switch (-8028) {
        case -14135: {
            let var_1 = Struct_3(func_6(select(vec4<bool>(!var_0, var_0 || var_0, false, false), select(select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(true, var_0, var_0, true), vec4<bool>(var_0, false, true, false)), select(vec4<bool>(false, var_0, true, false), vec4<bool>(true, false, true, var_0), vec4<bool>(true, false, false, true)), !var_0), var_0), false), func_6(select(select(vec4<bool>(true, var_0, false, true), !vec4<bool>(true, var_0, true, var_0), false), vec4<bool>(false, false, !var_0, u_input.a == u_input.a), vec4<bool>(!false, var_0, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(648.0)) * 1000.0) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000.0)) * -488.0)), select(41086, u_input.c, all(select(!vec4<bool>(false, false, true, var_0), vec4<bool>(var_0, var_0, false, true), any(vec4<bool>(var_0, true, var_0, false))))), Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(-735, 2147483647), ~vec2<i32>(u_input.c, u_input.c)) & (_wgslsmith_add_vec2_i32(vec2<i32>(-13571, -60263), vec2<i32>(u_input.c, 1)) >> (u_input.b % vec2<u32>(32u))), var_0), Struct_2(u_input.b.x, _wgslsmith_f_op_vec3_f32(-func_6(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, true, var_0), false), !false).b)));
        }
        default: {
            switch (1) {
                case 37214: {
                    var var_1 = Struct_3(func_3(), Struct_2(u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -823.0) - _wgslsmith_f_op_f32(1378.0 + -1320.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276.0 * 736.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1015.0) * _wgslsmith_f_op_f32(-269.0 - 571.0)))), -6337, Struct_1(vec2<i32>(_wgslsmith_clamp_i32(35872, func_4(u_input.c), _wgslsmith_div_i32(2147483647, u_input.a)), -61833), false), func_6(vec4<bool>(var_0, var_0, !(u_input.a > -7209), _wgslsmith_f_op_f32(func_1()) >= _wgslsmith_f_op_f32(exp2(1008.0))), !(var_0 & true)));
                }
                case -41250: {
                    let var_1 = select(!(!select(vec4<bool>(var_0, true, var_0, false), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, var_0), var_0), select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, false, var_0, false)))), vec4<bool>(all(!select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, false, var_0), true)), var_0, false, var_0), vec4<bool>(!var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647, -19909, u_input.c, u_input.c), vec4<i32>(u_input.a, 59904, u_input.c, u_input.a)) < ~(u_input.a & u_input.c), !var_0, any(vec4<bool>(true, false, var_0, any(vec4<bool>(true, var_0, var_0, false))))));
                }
                case -8976: {
                    let var_1 = vec4<bool>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -408.0) * -716.0) - _wgslsmith_f_op_f32(func_5(func_6(vec4<bool>(false, var_0, var_0, var_0), var_0), ~vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, 67716u, 4294967295u) & vec3<u32>(u_input.b.x, u_input.b.x, 25746u), Struct_2(24533u, vec3<f32>(-146.0, -906.0, 554.0))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1310.0 * -1811.0) + 107.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1228.0) + _wgslsmith_f_op_f32(f32(-1.0) * -497.0))), false != var_0, !any(!(!vec4<bool>(var_0, var_0, true, false))));
                }
                default: {
                    var var_1 = func_6(vec4<bool>(true, any(!(!vec2<bool>(var_0, var_0))), !false, false), !(!var_0));
                }
            }
        }
    }
    if (any(vec2<bool>(false, any(select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, true), true), vec3<bool>(false, var_0, var_0), false || true))))) {
        var var_1 = ~4294967295u;
    }
    if (var_0) {
        switch (_wgslsmith_mult_i32(~(-2147483648), ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(29977, u_input.a), vec2<i32>(u_input.a, u_input.c), false), ~vec2<i32>(2147483647, u_input.a)) | ~(-27466))) {
            case 43158: {
                var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(632.0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(278.0, 755.0)), -361.0))), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), false)));
            }
            case 1: {
                let var_1 = Struct_1(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a | u_input.c, ~2147483647), abs(vec2<i32>(8921, u_input.a))), (u_input.a ^ -1) == -1);
            }
            case -2147483648: {
                var var_1 = func_2(false);
                fallthrough;
            }
            case 2147483647: {
                let var_1 = Struct_2(u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1000.0))), _wgslsmith_f_op_f32(f32(-1.0) * -551.0), 608.0));
            }
            default: {
                var var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-625.0)) + -249.0) < _wgslsmith_f_op_f32(f32(-1.0) * -998.0)), var_0, !all(!vec3<bool>(var_0, true, var_0)) != func_2(var_0));
            }
        }
    }
    for (var var_1 = 0; ; var_1 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        break;
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(232.0, -466.0, 1240.0, -365.0)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-823.0, 960.0, 435.0, -2069.0))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-888.0, _wgslsmith_f_op_f32(sign(-1123.0)), 820.0, -1376.0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1673.0, -785.0, 527.0, 1475.0) * vec4<f32>(-1520.0, 911.0, -1267.0, 321.0)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-477.0, 453.0, -1009.0, 1016.0))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1075.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-123.0 - _wgslsmith_f_op_f32(round(-133.0)))))), ~firstLeadingBit(max(~u_input.c, u_input.c)));
}

