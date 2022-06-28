// Seed: 13205457465516522497

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

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>) -> u32 {
    loop {
        let var_0 = vec4<u32>(50277u, ~(~(~global1[~global1[1u]])), max(global1[global1[~(global1[86164u] & global1[global1[global1[global1[global1[0u]]]]])]] << ~(70496u + global1[4294967295u]), abs(~global1[global1[4294967295u]] + dot(vec2<u32>(7584u, 4294967295u), vec2<u32>(4758u, 1u)))), global1[~(~(~abs(global1[global1[global1[19639u]]])))]);
    }
    global1 = array<u32, 11>();
    if (1 < abs(max(-1 - u_input.b.x, ~(-1 / 1)))) {
        let var_0 = -((global2.zz % max(vec2<i32>(0, arg_0.c) << vec2<u32>(1u, 52786u), vec2<i32>(u_input.c, 0))) ^ u_input.b.yx);
    }
    global1 = array<u32, 11>();
    if (!any(!(!select(vec4<bool>(false, arg_0.e.x, true, arg_1.x), vec4<bool>(global0.b.e.x, arg_0.e.x, arg_0.e.x, global0.a.x), true)))) {
        global1 = array<u32, 11>();
    }
    return ~(51566u / 4294967295u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    var var_0 = all(!(!(!vec4<bool>(false, arg_0.e.x, true, true))));
    switch (reverseBits(-2147483648) ^ abs(arg_1.x)) {
        case 1: {
            loop {
                global2 = vec3<i32>(arg_0.a, ~u_input.e, ((-arg_1.x + -2147483648) * ~arg_1.x) * -18305);
            }
        }
        case 0: {
            for (var var_1 = 46797; ; var_1 -= 1) {
                let var_2 = global0.b.e.x;
            }
        }
        case -1: {
            global0 = Struct_2(!(!vec2<bool>(!false, !false)), Struct_1(1, 2671, firstLeadingBit(dot(select(arg_1, vec4<i32>(2372, 0, global2.x, global2.x), global0.b.e.x), min(vec4<i32>(35679, 2147483647, 26985, global0.b.b), vec4<i32>(arg_0.a, -1, 2147483647, -26611)))), arg_0.d, select(select(vec2<bool>(global0.a.x, arg_0.e.x), vec2<bool>(arg_0.e.x, global0.a.x), true), select(!vec2<bool>(arg_0.e.x, false), !global0.a, !global0.a.x), vec2<bool>(arg_0.e.x == false, !false))));
            fallthrough;
        }
        default: {
            var_0 = false && all(!(!vec2<bool>(global0.a.x, arg_0.e.x)));
        }
    }
    var_0 = any(vec3<bool>((arg_0.e.x | false) || (func_4(global0.b, vec3<bool>(false, false, false), vec2<f32>(arg_0.d.x, global0.b.d.x)) <= (global1[global1[0u]] + global1[global1[23536u]])), all(!vec3<bool>(false, global0.a.x, global0.b.e.x)), !true));
    var var_1 = ~(~vec3<u32>(global1[reverseBits(4294967295u)], func_4(global0.b, vec3<bool>(false, arg_0.e.x, false), vec2<f32>(global0.b.d.x, 1354.0)), global1[4294967295u]) - (vec3<u32>(abs(global1[global1[global1[global1[0u]]]]), global1[77688u], ~global1[global1[17738u]]) - reverseBits(vec3<u32>(54352u, 0u, global1[global1[1u]]) & vec3<u32>(global1[103018u], 37662u, 9419u))));
    var var_2 = -452.0;
    return global2.x;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = select(min(firstTrailingBit((u_input.b - vec3<i32>(arg_2.b, arg_2.b, -46129)) * ~vec3<i32>(arg_2.b, 23111, global2.x)), vec3<i32>(2147483647 / select(u_input.b.x, 1, arg_1.x), min(abs(-11006), arg_2.b & global0.b.b), firstLeadingBit(~arg_2.b))), u_input.b, arg_2.e.x);
    loop {
        let var_1 = max(vec4<u32>(arg_0, global1[min(0u, ~4294967295u)], global1[23852u], 6190u), countOneBits(~(~vec4<u32>(4294967295u, global1[global1[9474u]], 0u, 16640u)) / ~(vec4<u32>(41598u, 36258u, 0u, 0u) >> vec4<u32>(global1[arg_0], arg_0, 4294967295u, global1[arg_0]))));
    }
    loop {
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
    var var_1 = clamp(~(~vec2<u32>(4294967295u, 61344u) ^ ((vec2<u32>(global1[global1[66921u]], arg_0) * vec2<u32>(global1[0u], arg_0)) ^ (vec2<u32>(0u, 1u) ^ vec2<u32>(arg_0, global1[7960u])))), select(vec2<u32>(dot(vec2<u32>(1u, 1u), vec2<u32>(arg_0, global1[1u])), ~arg_0), ~vec2<u32>(1u, 4294967295u) ^ ~vec2<u32>(global1[global1[0u]], arg_0), vec2<bool>(global0.b.d.x >= -1865.0, all(vec2<bool>(arg_1.x, arg_2.e.x)))) | ((select(vec2<u32>(arg_0, 31139u), vec2<u32>(arg_0, arg_0), true) / (vec2<u32>(global1[0u], 24527u) * vec2<u32>(global1[global1[30299u]], 1u))) % (vec2<u32>(70018u, arg_0) >> (vec2<u32>(global1[arg_0], arg_0) / vec2<u32>(arg_0, arg_0)))), vec2<u32>(0u, min(select(arg_0, 13854u, false), abs(1u))));
    var var_2 = global0.b.e.x;
    return !false;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global0 = Struct_2(arg_1.e, arg_1);
    for (var var_0: i32; func_5(~14658u, select(!vec3<bool>(39422 >= -63180, false || arg_1.e.x, true), !vec3<bool>(arg_1.e.x, true, true), global0.a.x), Struct_1(-(global2.x * arg_1.a), countOneBits(arg_1.b), -func_3(Struct_1(arg_1.a, 11854, global2.x, vec2<f32>(global0.b.d.x, -581.0), arg_0), ~vec4<i32>(global0.b.a, global0.b.a, arg_1.c, -3346)), sign(-(vec2<f32>(-143.0, 1194.0) - global0.b.d)), select(arg_0, select(!vec2<bool>(arg_0.x, false), arg_1.e, select(vec2<bool>(false, arg_0.x), global0.b.e, false)), select(true, any(vec4<bool>(false, true, global0.b.e.x, false)), global0.a.x))), -1140.0); var_0 += 1) {
        let var_1 = 25275u;
    }
    let var_0 = !vec4<bool>(arg_1.e.x, !global0.a.x, all(select(global0.a, select(arg_0, vec2<bool>(true, global0.a.x), vec2<bool>(global0.b.e.x, arg_1.e.x)), global0.b.e.x)), false);
    let var_1 = Struct_3(Struct_2(vec2<bool>(!(global0.b.d.x > global0.b.d.x), abs(-209.0) <= (arg_1.d.x * arg_1.d.x)), Struct_1(-u_input.b.x, -arg_1.c, -(10348 << 13991u), arg_1.d, vec2<bool>(arg_1.e.x, var_0.x))));
    loop {
        let var_2 = global2.xy;
    }
    return !var_0.x;
}

fn func_6(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    loop {
        if (false) {
            break;
        }
    }
    var var_0 = Struct_3(Struct_2(!(!vec2<bool>(arg_2.e.x, global0.a.x)), arg_2));
    for (var var_1: i32; ; var_1 -= 1) {
        if ((global0.b.d.x - arg_2.d.x) == var_0.a.b.d.x) {
            let var_2 = ~(~(vec3<u32>(54246u, 7641u, 0u) | select(vec3<u32>(arg_0.x, global1[1u], arg_0.x), vec3<u32>(global1[1u], global1[arg_0.x], 1u), arg_1)) - min(~vec3<u32>(0u, global1[4294967295u], 4294967295u) / ~vec3<u32>(4294967295u, 1u, 0u), abs(countOneBits(vec3<u32>(1u, global1[1u], 0u)))));
        }
    }
    loop {
        loop {
            let var_1 = u_input.b;
        }
    }
    global1 = array<u32, 11>();
    return Struct_1(1344, -1, 14750, max(vec2<f32>(exp2(var_0.a.b.d.x), 1755.0), -(-(-var_0.a.b.d))), select(vec2<bool>(!arg_2.e.x, true), arg_2.e, vec2<bool>(func_3(Struct_1(global2.x, global0.b.a, var_0.a.b.b, vec2<f32>(var_0.a.b.d.x, -1000.0), global0.b.e), vec4<i32>(global2.x, global2.x, -37158, global2.x)) < (var_0.a.b.a / u_input.c), var_0.a.b.e.x)));
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> vec3<u32> {
    global1 = array<u32, 11>();
    var var_0 = global1[global1[~(~(~(~1u)) - 42971u)]];
    for (var var_1 = -2147483648; ; var_1 -= 1) {
        continue;
    }
    global1 = array<u32, 11>();
    var var_1 = (~(~(~vec4<u32>(arg_2.x, global1[0u], 4294967295u, 0u))) ^ vec4<u32>(dot(arg_2.zx & vec2<u32>(0u, global1[arg_2.x]), ~vec2<u32>(arg_2.x, arg_2.x)), clamp(abs(4294967295u), countOneBits(arg_2.x), 1u), arg_2.x, 0u)) - vec4<u32>(~4294967295u, global1[global1[~(~(~875u))]], (abs(4294967295u) | global1[4294967295u - global1[0u]]) << arg_2.x, reverseBits(max(countOneBits(global1[0u]), 53939u ^ 18850u)));
    return vec3<u32>(50260u, dot(select(var_1.wyx, vec3<u32>(arg_2.x, var_1.x, arg_2.x), vec3<bool>(false, arg_0.e.x, arg_0.e.x)) | vec3<u32>(global1[1u], 34149u, 0u), arg_2 ^ select(vec3<u32>(4294967295u, arg_2.x, 0u), var_1.ywy, false)), ~func_4(Struct_1(global2.x, u_input.c, 1, vec2<f32>(global0.b.d.x, 761.0), global0.b.e), !vec3<bool>(false, false, arg_0.e.x), -vec2<f32>(arg_0.d.x, -878.0))) >> ~var_1.ywz;
}

fn func_1() -> i32 {
    for (; global0.a.x; ) {
        let var_0 = !(!any(!(!vec4<bool>(global0.b.e.x, false, global0.a.x, true))));
    }
    if (any(global0.a)) {
        switch (-u_input.d.x) {
            case -1: {
                return -(-(-(-29018)));
            }
            case 24882: {
                global1 = array<u32, 11>();
                fallthrough;
            }
            case -80856: {
                global1 = array<u32, 11>();
            }
            default: {
                global2 = select(firstTrailingBit(vec3<i32>(countOneBits(23584), 0 & 1, 2147483647)), vec3<i32>(~(-1 * 2147483647), -global0.b.c / 25140, ~global2.x | global2.x), all(global0.a)) % ~(~firstLeadingBit(u_input.b));
            }
        }
    }
    loop {
        let var_0 = global0.a;
    }
    var var_0 = ((select(u_input.b, min(vec3<i32>(0, global0.b.b, 9043), u_input.b), 0 >= 2147483647) + vec3<i32>(-(-2147483648), -32435, ~1)) & ~(countOneBits(vec3<i32>(global0.b.c, -41771, global2.x)) << min(vec3<u32>(0u, 1u, 1u), vec3<u32>(15814u, global1[0u], 4294967295u)))) & -(-vec3<i32>(-6959 | -1, global2.x, firstLeadingBit(global0.b.c)));
    switch (-(~(~(8098 | select(global0.b.b, u_input.c, true))))) {
        default: {
            var var_1 = func_7(func_6(vec2<u32>(~global1[0u], max(68277u, 35433u)), func_2(vec2<bool>(true, true), global0.b), Struct_1(2147483647, ~(-38051), global2.x, global0.b.d + global0.b.d, vec2<bool>(false, global0.a.x))), u_input.d.x, vec3<u32>(dot(reverseBits(vec4<u32>(28661u, global1[51568u], global1[global1[global1[global1[global1[global1[global1[global1[39270u]]]]]]]], global1[global1[global1[42722u]]])), ~vec4<u32>(4294967295u, global1[global1[1u]], global1[1409u], 25944u)), 0u, 58482u * global1[18837u % 13339u])) >> (vec3<u32>(4294967295u, ~reverseBits(global1[19740u]), global1[1u]) / ~((vec3<u32>(global1[80261u], 0u, global1[global1[17732u]]) - vec3<u32>(global1[global1[global1[global1[global1[1u]]]]], 33614u, global1[global1[global1[global1[83995u]]]])) + (vec3<u32>(global1[0u], 1u, global1[global1[63538u]]) % vec3<u32>(63447u, 52588u, global1[4294967295u]))));
        }
    }
    return global2.x | -29141;
}

@stage(compute)
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.d;
    var var_1 = 0;
    var var_2 = ~(-vec4<i32>(var_0.x, min(var_0.x, func_1()), min(var_0.x, 1) - (u_input.d.x - global2.x), 2147483647));
    global0 = Struct_2(!(!(!global0.b.e)), Struct_1(1, dot(vec4<i32>(var_0.x, 11405, u_input.d.x, var_2.x), ~vec4<i32>(-2147483648, global2.x, u_input.d.x, 1)) % global0.b.b, var_0.x, select((vec2<f32>(global0.b.d.x, global0.b.d.x) + vec2<f32>(global0.b.d.x, 1344.0)) - round(vec2<f32>(-842.0, 564.0)), exp2(-global0.b.d), select(vec2<bool>(global0.a.x, global0.b.e.x), !global0.b.e, select(global0.b.e, vec2<bool>(true, global0.b.e.x), global0.a.x))), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(-((-2147483648 + -34159) & (var_2.x & -2457)) / (~(-1 ^ global2.x) & 0), -(-(-global0.b.d.x + (global0.b.d.x + global0.b.d.x))), ~(~dot(vec4<u32>(global1[41450u], 1u, 57568u, global1[global1[global1[global1[global1[4294967295u]]]]]) / vec4<u32>(global1[11510u], global1[51939u], 42714u, 8922u), vec4<u32>(global1[global1[global1[global1[global1[global1[global1[1u]]]]]]], global1[47484u], global1[global1[global1[15245u]]], 1u) | vec4<u32>(global1[42701u], global1[0u], 0u, global1[global1[0u]]))));
}

