// Seed: 2190327827741457555

struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> vec2<bool> {
    for (; 34641 < arg_1; ) {
        let var_0 = -u_input.c;
    }
    var var_0 = select(select(vec4<bool>(true, !all(vec2<bool>(arg_0.a.x, arg_0.a.x)), -(-16052) < -(-1), -2732.0 >= 148.0), !vec4<bool>(true || arg_0.a.x, false, arg_0.a.x, arg_0.a.x), !(!vec4<bool>(false, true, false, arg_0.a.x))), vec4<bool>(arg_0.a.x != !false, !true, true, !false), select(!(0 >= (arg_1 ^ 46591)), !(arg_0.a.x == all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x))), false));
    if (all(arg_0.a) | ((abs(0) * -(-25925)) != ~(~(-2147483648) % firstTrailingBit(14217)))) {
        var var_1 = arg_0;
    }
    var var_1 = 20657;
    switch (2147483647) {
        default: {
            let var_2 = vec3<bool>(max(u_input.b * select(1u, 1u, arg_0.a.x), reverseBits(14857u | u_input.b)) <= ((~u_input.b % (23136u % 3723u)) % u_input.b), !(!select(false, false, 395.0 < 514.0)), false);
        }
    }
    return vec2<bool>(all(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(arg_0.a.x, var_0.x, false, arg_0.a.x), true), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, true, true)))), false);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> bool {
    let var_0 = select(vec3<bool>(arg_0.a.a.x, false | any(!vec3<bool>(true, false, arg_0.a.a.x)), !any(!vec2<bool>(true, true))), select(vec3<bool>(arg_2.a.a.x, false, !false), vec3<bool>(arg_2.a.a.x & arg_2.a.a.x, true, true), select(arg_2.a.a.x, arg_2.a.a.x, !true)), !(!select(vec3<bool>(true, arg_2.a.a.x, arg_2.a.a.x), !vec3<bool>(true, arg_2.a.a.x, arg_0.a.a.x), false)));
    let var_1 = -838.0;
    if (any(select(vec4<bool>(-2147483648 == u_input.c.x, true, !arg_2.a.a.x, all(vec4<bool>(var_0.x, arg_0.a.a.x, arg_0.a.a.x, false))), !(!vec4<bool>(arg_2.a.a.x, false, var_0.x, true)), select(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x))) || arg_2.a.a.x) {
        if (!false) {
            return ((467.0 - -(var_1 * 718.0)) + -var_1) != 1467.0;
        }
    }
    var var_2 = ~(-select(vec4<i32>(arg_3, u_input.c.x, arg_3, 0) >> vec4<u32>(1u, arg_0.b, u_input.b, 21740u), vec4<i32>(-99982, u_input.a, -28237, -47876) / vec4<i32>(2147483647, -68261, u_input.c.x, -32309), !vec4<bool>(true, var_0.x, false, false)) / firstLeadingBit(countOneBits(select(vec4<i32>(1909, -2147483648, arg_3, -5909), vec4<i32>(arg_3, -2147483648, u_input.c.x, arg_3), true))));
    var_2 = vec4<i32>(var_2.x, countOneBits(dot(~vec4<i32>(arg_3, arg_3, 0, 2147483647), ~vec4<i32>(arg_3, arg_3, 0, 8118))), -clamp(-63742, 6519, arg_3) * countOneBits(arg_3 >> 4294967295u), ~dot(u_input.c, ~vec3<i32>(-8177, arg_3, -1))) >> ~select(min(~vec4<u32>(76598u, u_input.b, arg_0.b, 1u), ~vec4<u32>(arg_0.b, 10168u, arg_0.b, 74280u)), vec4<u32>(clamp(arg_0.b, 4948u, 31807u), 0u, ~1922u, arg_2.b), any(vec3<bool>(false, true, arg_0.a.a.x)));
    return var_1 >= floor(floor(select(-(-1000.0), var_1, var_0.x)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    var var_0 = vec2<f32>(-569.0, (1669.0 - -arg_1.a) - -((-1049.0 + 128.0) * -arg_1.a));
    var var_1 = Struct_3(Struct_2(vec2<bool>((var_0.x * 963.0) <= -631.0, false)), 4294967295u);
    var var_2 = !var_1.a.a.x;
    let var_3 = select(vec2<bool>(var_1.a.a.x, all(vec3<bool>(var_1.a.a.x && var_1.a.a.x, 4294967295u > var_1.b, var_1.a.a.x))), select(!select(!var_1.a.a, vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !vec2<bool>(true, !var_1.a.a.x), !(true || all(var_1.a.a))), func_5(Struct_3(Struct_2(!var_1.a.a), arg_1.c), ~4294967295u, Struct_3(Struct_2(func_4(var_1.a, -7997, arg_0)), dot(vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(52594u, var_1.b))), -(-24605)));
    for (; ; ) {
        var var_4 = ~(~clamp(~(~vec2<u32>(u_input.b, 90954u)), ~vec2<u32>(5876u, 14815u) + firstTrailingBit(vec2<u32>(4294967295u, 1u)), (vec2<u32>(var_1.b, arg_1.c) / vec2<u32>(var_1.b, 1u)) << ~vec2<u32>(0u, arg_1.c)));
    }
    return all(!select(select(!vec4<bool>(true, false, var_1.a.a.x, true), !vec4<bool>(true, var_1.a.a.x, var_3.x, true), var_1.a.a.x), vec4<bool>(!true, false, var_3.x, var_1.a.a.x), func_4(Struct_2(vec2<bool>(false, false)), arg_1.b.x * arg_0.x, abs(arg_1.b)).x));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_2(!(!(!(!vec2<bool>(true, false)))));
    if (all(!(!select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))))) {
        var_0 = Struct_2(!(!(!var_0.a)));
    }
    let var_1 = func_3(arg_0.zz, Struct_1(-1000.0, reverseBits(~vec2<i32>(-14235, u_input.c.x)) - ~(~arg_0.yy), ~(~u_input.b)));
    let var_2 = trunc(max(-177.0, exp2(exp2(-862.0))) * -1000.0);
    if (any(vec3<bool>(!var_1 | func_4(Struct_2(var_0.a), abs(28632), -vec2<i32>(1, arg_0.x)).x, false, false))) {
        loop {
            return Struct_3(Struct_2(vec2<bool>(false, false)), u_input.b);
        }
    }
    return Struct_3(Struct_2(var_0.a), ~24960u);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = Struct_3(func_2(-(-u_input.c - -vec3<i32>(1, u_input.c.x, -2147483648))).a, 22290u);
    loop {
        let var_1 = func_2(vec3<i32>(u_input.c.x >> ~(arg_1.x ^ arg_2.b), 25041, u_input.a)).a;
    }
    for (var var_1: i32; ; var_1 -= 1) {
        var var_2 = Struct_1(476.0 * ((arg_0.x - abs(arg_0.x)) - arg_0.x), u_input.c.yz, var_0.b % ~max(~arg_2.b, 1u));
    }
    var var_1 = vec2<i32>(-u_input.c.x, 48674);
    switch (u_input.c.x) {
        case 2147483647: {
            loop {
                let var_2 = arg_0;
            }
        }
        case 31175: {
            var_1 = vec2<i32>(clamp(2147483647, -dot(abs(u_input.c.yy), vec2<i32>(-15084, u_input.c.x)), u_input.c.x), ~firstTrailingBit(~var_1.x));
        }
        default: {
            var_1 = vec2<i32>(dot(vec3<i32>(u_input.a, -u_input.c.x >> 53830u, var_1.x), u_input.c >> max(vec3<u32>(0u, arg_1.x, 22092u), abs(vec3<u32>(4294967295u, arg_2.b, 82491u)))), var_1.x);
        }
    }
    return arg_2.a.a;
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = arg_1 - arg_1;
    var var_1 = Struct_1(arg_1, u_input.c.zy, (~u_input.b << firstTrailingBit(select(arg_3.x, u_input.b, arg_2.x))) | arg_3.x);
    for (var var_2: i32; select(arg_2.x, true, (-2147483648 & ~(-64125 + u_input.c.x)) > u_input.c.x); var_2 -= 1) {
        break;
    }
    var var_2 = -725.0;
    var_1 = Struct_1(ceil(exp2(-step(var_1.a, 668.0))), select(vec2<i32>(-1, -u_input.c.x), -(var_1.b + vec2<i32>(0, 0)) & vec2<i32>(~var_1.b.x, 8829), ~countOneBits(var_1.b.x) == -clamp(u_input.a, 1, -57256)), 1u / ~(4294967295u << dot(arg_3, arg_3)));
    return Struct_1(639.0, (u_input.c.yy << ~vec2<u32>(0u, 4294967295u)) + var_1.b, arg_3.x);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_1 {
    loop {
        var var_0 = u_input.c;
    }
    loop {
        return func_7(Struct_2(!vec2<bool>(select(false, true, true), false)), min(-(-ceil(1000.0)), -1755.0), !select(func_6(-vec2<f32>(-656.0, -194.0), vec2<u32>(u_input.b, 64477u) % vec2<u32>(arg_0, 0u), func_2(u_input.c)), !vec2<bool>(true, true), false), vec3<u32>(abs(func_2(vec3<i32>(2147483647, 66632, u_input.a)).b + arg_0), 21629u, ~(~(1u * u_input.b))));
    }
    let var_0 = Struct_2(!vec2<bool>(true | !false, !any(vec2<bool>(true, true))));
    let var_1 = false;
    switch (min(~8173, -(-(arg_1 & arg_2)) << ~(~abs(u_input.b)))) {
        default: {
            var var_2 = vec2<bool>(func_4(var_0, firstTrailingBit(u_input.c.x) % (~28676 - (arg_2 << u_input.b)), abs(-(u_input.c.yy % vec2<i32>(arg_1, 13460)))).x, true && !any(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, true, false), vec3<bool>(true, var_1, true))));
        }
    }
    return func_7(var_0, select(-(sign(-420.0) + -1854.0), -trunc(-1360.0), func_4(func_2(-u_input.c).a, ~(-18591) & 11384, u_input.c.zx).x), func_6(-vec2<f32>(849.0 * 1212.0, -(-230.0)), ~reverseBits(vec2<u32>(arg_0, 30302u)) ^ vec2<u32>(arg_0, dot(vec2<u32>(u_input.b, 67538u), vec2<u32>(arg_0, 19149u))), Struct_3(func_2(reverseBits(vec3<i32>(arg_1, -1, -1))).a, 4294967295u)), firstLeadingBit(vec3<u32>(arg_0, u_input.b, arg_0 % 9388u) | (vec3<u32>(1u, 1u, 1u) - clamp(vec3<u32>(arg_0, 53130u, arg_0), vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(1u, arg_0, 0u)))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    switch (~abs(firstLeadingBit(u_input.c.x | arg_0.b.x) + (-(-30529) - u_input.a))) {
        case -64041: {
            var var_0 = arg_0;
            fallthrough;
        }
        default: {
            let var_0 = arg_0;
        }
    }
    let var_0 = func_2(~u_input.c).a;
    var var_1 = ~select(vec3<u32>(func_2(u_input.c).b, u_input.b, arg_1.b) ^ vec3<u32>(0u, arg_2.b, ~48937u), vec3<u32>(66718u, u_input.b, 1u), !(!any(vec4<bool>(true, var_0.a.x, false, true))));
    loop {
        for (var var_2 = 11221; all(select(!select(!vec3<bool>(var_0.a.x, false, true), !vec3<bool>(false, var_0.a.x, true), true), !select(vec3<bool>(var_0.a.x, false, arg_2.a.a.x), select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.a.x, arg_2.a.a.x, arg_2.a.a.x), vec3<bool>(arg_1.a.a.x, var_0.a.x, false)), select(vec3<bool>(arg_1.a.a.x, false, arg_2.a.a.x), vec3<bool>(true, var_0.a.x, false), vec3<bool>(true, var_0.a.x, true))), func_4(var_0, u_input.a, vec2<i32>(max(-1, 7383), select(1, arg_0.b.x, false))).x)); var_2 += 1) {
            let var_3 = var_0;
        }
    }
    for (var var_2 = -2147483648; ; var_2 += 1) {
        return -464.0;
    }
    return arg_0.a;
}

@stage(compute)
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>((func_8(func_1(34278u, 0, 31959), Struct_3(Struct_2(vec2<bool>(true, true)), u_input.b), func_2(vec3<i32>(0, u_input.a, u_input.a))) - 1000.0) + -(512.0 - -314.0), select(243.0, -545.0 * -(-886.0), !(-1268.0 < 1138.0)) - 716.0);
    var var_1 = vec3<f32>(120.0, floor(var_0.x), var_0.x);
    var var_2 = func_2(firstLeadingBit(select(u_input.c, abs(vec3<i32>(u_input.a, u_input.c.x, 22433) >> vec3<u32>(34110u, 17304u, 40959u)), vec3<bool>(!false, false, true))));
    var_2 = Struct_3(var_2.a, ((1u % u_input.b) >> ~(~u_input.b)) - 37207u);
    loop {
        if (!(!var_2.a.a.x)) {
            var var_3 = abs(firstTrailingBit(min(u_input.c.xz, clamp(~vec2<i32>(-1, -22132), max(vec2<i32>(u_input.a, 10415), u_input.c.zy), u_input.c.yx))));
        }
    }
    loop {
        var_2 = Struct_3(Struct_2(!func_4(func_2(vec3<i32>(-45628, 0, -2147483648)).a, u_input.a, vec2<i32>(0, 0))), ~4294967295u);
    }
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-select(select(vec4<i32>(u_input.a, -22728, -1, u_input.a) << vec4<u32>(var_2.b, 18382u, u_input.b, 26495u), abs(vec4<i32>(-1, 1, -684, -47259)), !vec4<bool>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, false)), max(~vec4<i32>(0, u_input.a, u_input.c.x, -8826), vec4<i32>(-17470, -2147483648, 1, 70172)), select(!vec4<bool>(false, true, false, var_2.a.a.x), !vec4<bool>(false, true, var_2.a.a.x, var_2.a.a.x), true)));
}

