// Seed: 4489753120239280810

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

fn func_4(arg_0: i32) -> i32 {
    if (!true) {
        var var_0 = Struct_1(~(-select(vec2<i32>(arg_0, arg_0), ~vec2<i32>(41569, u_input.c), !vec2<bool>(false, false))), false);
    }
    var var_0 = !(ceil(ceil(-407.0)) > ((round(1135.0) - ceil(-896.0)) * (select(149.0, -402.0, true) - max(1771.0, -1000.0))));
    loop {
        switch (~(-9353 << firstTrailingBit(1u))) {
            case -24896: {
                let var_1 = select(~firstLeadingBit(~u_input.b), u_input.b, !(!select(vec2<bool>(true, false), vec2<bool>(false, true), all(vec4<bool>(false, false, true, false)))));
            }
            case 13241: {
                break;
            }
            default: {
                var var_1 = select(select(!vec2<bool>(true | true, false), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), all(vec4<bool>(false, false, false, true))), select(vec2<bool>(!false, !true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), -27459 > abs(-1))), vec2<bool>(select(!true, arg_0 >= ~u_input.c, any(!vec3<bool>(true, true, false))), any(vec4<bool>(!true, true, all(vec3<bool>(false, true, true)), true))), vec2<bool>(!((566.0 > 564.0) == true), select(false, trunc(1044.0) == -(-1516.0), true)));
            }
        }
    }
    var_0 = (select(605.0, (412.0 * 570.0) * -1000.0, true) + 926.0) <= ((-(3109.0 + -106.0) + (sign(-1008.0) + (-2196.0 - -897.0))) * trunc(exp2(-1000.0)));
    var var_1 = Struct_3(Struct_2(dot(~reverseBits(vec4<u32>(0u, u_input.b.x, 0u, 30885u)), select(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 16182u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), 0u > u_input.b.x)), vec3<f32>(min(-279.0, -1932.0 * -1337.0), -1000.0, -1533.0)), Struct_2(max(u_input.b.x >> (32274u + u_input.b.x), u_input.b.x), -vec3<f32>(361.0, step(-1538.0, -1379.0), 738.0)), -93305, Struct_1(vec2<i32>(-1, 2147483647), ((1 << 9006u) + u_input.a) == reverseBits(u_input.c >> u_input.b.x)), Struct_2(u_input.b.x, exp2(select(select(vec3<f32>(1066.0, -772.0, 1147.0), vec3<f32>(-179.0, 385.0, -1996.0), false), vec3<f32>(953.0, -1829.0, -1645.0) * vec3<f32>(-935.0, 404.0, 1964.0), vec3<bool>(true, false, true)))));
    return reverseBits(-u_input.c);
}

fn func_3() -> Struct_2 {
    for (var var_0 = 0; ; var_0 -= 1) {
        for (var var_1 = -4501; ; var_1 += 1) {
            var var_2 = all(!(!vec2<bool>(false, false))) & true;
        }
    }
    let var_0 = select(vec2<i32>(-u_input.a, func_4(u_input.c)), vec2<i32>(-(u_input.a / -40285), u_input.a), all(vec2<bool>((false && true) && (false || false), select(all(vec4<bool>(true, true, true, false)), !true, false))));
    var var_1 = -abs(round(-sign(106.0)));
    var_1 = 853.0;
    var_1 = 269.0;
    return Struct_2(1u | (u_input.b.x & ~u_input.b.x), vec3<f32>((-(-1119.0) * trunc(-585.0)) + (-(-740.0) - -654.0), -((-334.0 + -3193.0) - -162.0), -(385.0 - 1620.0) + (1429.0 * -944.0)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(func_3(), func_3(), func_4(-2147483648), Struct_1((-vec2<i32>(39731, u_input.a) >> (vec2<u32>(u_input.b.x, arg_2.x) << u_input.b)) / select(vec2<i32>(-29436, -2600), vec2<i32>(u_input.a, -6073) << u_input.b, !true), any(vec3<bool>(false, !true, false))), Struct_2(arg_3.a, trunc(vec3<f32>(-194.0, -arg_0.b.x, step(arg_3.b.x, arg_3.b.x)))));
    loop {
        loop {
            break;
        }
    }
    if (select(true, -40834 <= -(~(~u_input.c)), var_0.d.b)) {
        let var_1 = abs((vec4<u32>(arg_0.a, 4294967295u % arg_1.x, 43787u, max(var_0.e.a, arg_0.a)) ^ ((arg_1 >> vec4<u32>(arg_2.x, arg_0.a, 18602u, 1u)) * (arg_1 | arg_1))) ^ ~(~vec4<u32>(1u, 15888u, 29997u, 94809u) / vec4<u32>(arg_0.a, arg_1.x, 1u, arg_1.x)));
    }
    var var_1 = !all(!vec3<bool>(select(var_0.d.b, false, var_0.d.b), -68258 == -19437, any(vec3<bool>(var_0.d.b, var_0.d.b, var_0.d.b))));
    var_1 = var_0.d.b || (all(select(vec3<bool>(var_0.d.b, var_0.d.b, var_0.d.b), select(vec3<bool>(true, var_0.d.b, true), vec3<bool>(var_0.d.b, true, true), var_0.d.b), var_0.d.b)) && false);
    return -372.0;
}

fn func_6(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = ~clamp(~1u, u_input.b.x, dot(u_input.b, clamp(u_input.b, u_input.b, vec2<u32>(0u, 31710u))));
    for (var var_1 = 1; !(arg_0.x | all(!(!arg_0.ywy))); ) {
        loop {
            var var_2 = -2014.0;
        }
    }
    let var_1 = -countOneBits(vec3<i32>(26289, u_input.c, -39927) / ~vec3<i32>(u_input.a, u_input.c, u_input.c)) / vec3<i32>(firstLeadingBit(38038), u_input.c, (-1 - -u_input.a) & firstLeadingBit(-2147483648));
    var var_2 = select(~dot(u_input.b, u_input.b), u_input.b.x, true);
    var_2 = dot(select(u_input.b, ~u_input.b, vec2<bool>(arg_0.x, arg_1)) & u_input.b, vec2<u32>(1u, u_input.b.x)) | dot(select(~countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, 59381u)), ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), any(select(vec3<bool>(true, arg_0.x, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, true)))), clamp(~vec3<u32>(u_input.b.x, u_input.b.x, 0u), ~(vec3<u32>(u_input.b.x, 0u, 4294967295u) >> vec3<u32>(0u, 45486u, u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x)));
    return Struct_2(1u, vec3<f32>(-(-208.0), exp2(-536.0), -(-1721.0)) * vec3<f32>(-sign(1682.0), func_5(Struct_2(42989u, vec3<f32>(827.0, -1347.0, -1345.0)), select(vec4<u32>(u_input.b.x, 1u, 22278u, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), arg_1), vec3<u32>(27107u, u_input.b.x, 74611u), func_3()), func_5(Struct_2(30131u, vec3<f32>(823.0, 373.0, 896.0)), ~vec4<u32>(u_input.b.x, 15299u, 10015u, 4294967295u), vec3<u32>(u_input.b.x, 37756u, 37562u), Struct_2(4294967295u, vec3<f32>(-1414.0, -102.0, -835.0)))));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = func_6(vec4<bool>(func_5(func_3(), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 22349u) + vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec3<u32>(1u, u_input.b.x, 1u), Struct_2(u_input.b.x, vec3<f32>(-2901.0, -2253.0, -1227.0))) < -(-1000.0 - 358.0), true, true, false), exp2(-(875.0 - -212.0)) != (175.0 - -(269.0 * -2029.0)));
    let var_1 = ((~(vec3<i32>(u_input.c, 1, -1) & vec3<i32>(2147483647, u_input.a, u_input.a)) + (-vec3<i32>(u_input.c, 26942, 2147483647) ^ vec3<i32>(u_input.a, 2147483647, -1))) << abs(select(~vec3<u32>(u_input.b.x, 70508u, 29838u), abs(vec3<u32>(54237u, u_input.b.x, u_input.b.x)), arg_0))) >> select(vec3<u32>(1u, var_0.a, 4294967295u & countOneBits(47384u)), abs(firstTrailingBit(vec3<u32>(19377u, 1u, var_0.a)) & vec3<u32>(27036u, 37823u, var_0.a)), !select(!vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, false, arg_0), !vec3<bool>(arg_0, false, false)));
    for (var var_2 = 2147483647; ; ) {
        let var_3 = !select(!(!select(vec3<bool>(arg_0, true, true), vec3<bool>(false, false, false), true)), select(!vec3<bool>(arg_0, arg_0, false), select(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, false), false), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, false), false), !true), !select(arg_0, true, false)), select(select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, arg_0), arg_0), !vec3<bool>(false, arg_0, arg_0)), !(!vec3<bool>(false, false, arg_0)), vec3<bool>(!true, all(vec3<bool>(arg_0, arg_0, arg_0)), arg_0)));
    }
    loop {
        var var_2 = -25862;
    }
    var var_2 = Struct_1(vec2<i32>(abs(dot(vec4<i32>(u_input.a, 2147483647, -1, 49054), vec4<i32>(2147483647, u_input.a, -6955, u_input.c) ^ vec4<i32>(1, var_1.x, -1, u_input.a))), -1), true);
    return false;
}

fn func_1() -> f32 {
    var var_0 = !(!vec3<bool>(!(!true), func_2(true), false && !false));
    let var_1 = 10249;
    for (var var_2: i32; ; var_2 -= 1) {
        var_0 = vec3<bool>(u_input.a > -(-(-1) * -1), true, false);
    }
    var_0 = select(!(!vec3<bool>(all(vec4<bool>(true, true, true, var_0.x)), true, all(vec3<bool>(var_0.x, false, false)))), !vec3<bool>(var_0.x, any(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, false, false, false))), (false | true) || all(vec3<bool>(true, var_0.x, false))), ((abs(u_input.b.x) ^ 1u) << max(u_input.b.x | 50368u, firstLeadingBit(0u))) < reverseBits(u_input.b.x));
    var var_2 = Struct_1(vec2<i32>(u_input.a, -((var_1 - u_input.c) ^ dot(vec2<i32>(var_1, 2147483647), vec2<i32>(1, u_input.a)))), true);
    return -trunc(548.0);
}

@stage(compute)
@workgroup_size(1)
fn main() {
    let var_0 = true;
    for (; select(var_0 != var_0, false, var_0); ) {
        switch (clamp(dot(~vec3<i32>(u_input.a, u_input.a | u_input.c, -(-1)), ~select(vec3<i32>(u_input.c, -76405, -13079), vec3<i32>(u_input.c, u_input.c, u_input.a) + vec3<i32>(u_input.a, u_input.c, u_input.c), true && true)), ((u_input.c & u_input.c) / u_input.c) | 18739, u_input.a)) {
            case -2147483648: {
                continue;
            }
            default: {
                let var_1 = Struct_3(Struct_2(1u, select(vec3<f32>(func_1(), -1060.0, 433.0), sign(-vec3<f32>(-512.0, 735.0, 2736.0)), var_0)), func_3(), -(-firstTrailingBit(dot(vec2<i32>(7082, u_input.c), vec2<i32>(u_input.c, u_input.a)))), Struct_1(vec2<i32>(dot(vec3<i32>(0, u_input.c, u_input.c) ^ vec3<i32>(u_input.a, 9640, u_input.c), vec3<i32>(u_input.a, u_input.c, u_input.a)), -52025), false != !func_2(true)), func_6(vec4<bool>(var_0, any(vec4<bool>(var_0, var_0, false, false)) & var_0, !true, var_0), false));
            }
        }
    }
    switch (-8028) {
        case -14135: {
            let var_1 = Struct_3(func_6(select(vec4<bool>(!var_0, var_0 || var_0, false, false), select(select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(true, var_0, var_0, true), vec4<bool>(var_0, false, true, false)), select(vec4<bool>(false, var_0, true, false), vec4<bool>(true, false, true, var_0), vec4<bool>(true, false, false, true)), !var_0), var_0), false), func_6(select(select(vec4<bool>(true, var_0, false, true), !vec4<bool>(true, var_0, true, var_0), false), vec4<bool>(false, false, !var_0, u_input.a == u_input.a), vec4<bool>(!false, var_0, false, false)), (round(648.0) * 1000.0) != (floor(1000.0) * -488.0)), select(41086, u_input.c, all(select(!vec4<bool>(false, false, true, var_0), vec4<bool>(var_0, var_0, false, true), any(vec4<bool>(var_0, true, var_0, false))))), Struct_1((-vec2<i32>(-735, 2147483647) - ~vec2<i32>(u_input.c, u_input.c)) & ((vec2<i32>(-13571, -60263) + vec2<i32>(u_input.c, 1)) >> u_input.b), var_0), Struct_2(u_input.b.x, -func_6(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, true, var_0), false), !false).b));
        }
        default: {
            switch (1) {
                case 37214: {
                    var var_1 = Struct_3(func_3(), Struct_2(u_input.b.x, vec3<f32>(-(-823.0) - (1378.0 + -1320.0), -(276.0 * 736.0), -(-1015.0) * (-269.0 - 571.0))), -6337, Struct_1(vec2<i32>(clamp(35872, func_4(u_input.c), 2147483647 / u_input.a), -61833), false), func_6(vec4<bool>(var_0, var_0, !(u_input.a > -7209), func_1() >= exp2(1008.0)), !(var_0 & true)));
                }
                case -41250: {
                    let var_1 = select(!(!select(vec4<bool>(var_0, true, var_0, false), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, var_0), var_0), select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, false, var_0, false)))), vec4<bool>(all(!select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, false, var_0), true)), var_0, false, var_0), vec4<bool>(!var_0, dot(vec4<i32>(2147483647, -19909, u_input.c, u_input.c), vec4<i32>(u_input.a, 59904, u_input.c, u_input.a)) < ~(u_input.a & u_input.c), !var_0, any(vec4<bool>(true, false, var_0, any(vec4<bool>(true, var_0, var_0, false))))));
                }
                case -8976: {
                    let var_1 = vec4<bool>(var_0, ((-(-408.0) * -716.0) - func_5(func_6(vec4<bool>(false, var_0, var_0, var_0), var_0), ~vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, 67716u, 4294967295u) & vec3<u32>(u_input.b.x, u_input.b.x, 25746u), Struct_2(24533u, vec3<f32>(-146.0, -906.0, 554.0)))) < (((-1310.0 * -1811.0) + 107.0) * (-(-1228.0) + -(-497.0))), false != var_0, !any(!(!vec4<bool>(var_0, var_0, true, false))));
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
        switch (~(-2147483648) * (~dot(select(vec2<i32>(29977, u_input.a), vec2<i32>(u_input.a, u_input.c), false), ~vec2<i32>(2147483647, u_input.a)) | ~(-27466))) {
            case 43158: {
                var var_1 = -select(632.0 - min(min(278.0, 755.0), -361.0), -(-1000.0), false);
            }
            case 1: {
                let var_1 = Struct_1(~(vec2<i32>(u_input.a | u_input.c, ~2147483647) + abs(vec2<i32>(8921, u_input.a))), (u_input.a ^ -1) == -1);
            }
            case -2147483648: {
                var var_1 = func_2(false);
                fallthrough;
            }
            case 2147483647: {
                let var_1 = Struct_2(u_input.b.x, vec3<f32>(-exp2(1000.0), -(-551.0), 608.0));
            }
            default: {
                var var_1 = vec3<bool>(!((sign(-625.0) + -249.0) < -(-998.0)), var_0, !all(!vec3<bool>(var_0, true, var_0)) != func_2(var_0));
            }
        }
    }
    for (var var_1 = 0; ; var_1 -= 1) {
        break;
    }
    let x = u_input.a;
    s_output = StorageBuffer((sign(-vec4<f32>(232.0, -466.0, 1240.0, -365.0)) + -vec4<f32>(-823.0, 960.0, 435.0, -2069.0)) * max(vec4<f32>(-888.0, sign(-1123.0), 820.0, -1376.0), (vec4<f32>(-1673.0, -785.0, 527.0, 1475.0) * vec4<f32>(-1520.0, 911.0, -1267.0, 321.0)) - ceil(vec4<f32>(-477.0, 453.0, -1009.0, 1016.0))), exp2(-round(-1075.0)), -ceil(-123.0 - round(-133.0)), ~firstLeadingBit(max(~u_input.c, u_input.c)));
}

