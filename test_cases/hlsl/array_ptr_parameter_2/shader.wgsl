// Seed: 12461422457653768808

struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true));

var<private> global1: array<vec4<f32>, 21>;

fn func_3(arg_0: vec2<i32>, arg_1: ptr<private, array<vec4<f32>, 21>>) -> i32 {
    loop {
        return ~2147483647;
    }
    for (var var_0: i32; ; var_0 += 1) {
        let var_1 = &global1;
    }
    global0 = array<vec4<bool>, 19>();
    switch (~((-(u_input.b | arg_0.x) << u_input.d.x) & u_input.c)) {
        default: {
            global0 = array<vec4<bool>, 19>();
        }
    }
    for (var var_0 = 0; ; var_0 -= 1) {
        global1 = array<vec4<f32>, 21>();
    }
    return -(-66173);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> vec4<bool> {
    let var_0 = ~dot(vec3<i32>(u_input.b, -2147483648, 2147483647 / -2147483648), reverseBits(-vec3<i32>(u_input.b, u_input.b, u_input.e))) % u_input.c;
    var var_1 = arg_0.x;
    switch (var_0 + ((~countOneBits(u_input.b) >> (dot(vec4<u32>(u_input.d.x, 7936u, 9412u, u_input.a.x), vec4<u32>(u_input.a.x, 26360u, 38099u, 62100u)) / countOneBits(u_input.d.x))) * 2147483647)) {
        case -7150: {
            global1 = array<vec4<f32>, 21>();
        }
        case 20558: {
            global1 = array<vec4<f32>, 21>();
        }
        case 39875: {
            for (; ; ) {
                let var_2 = Struct_4(Struct_1(select(-(vec4<i32>(u_input.e, 1, u_input.c, 22447) << u_input.a), vec4<i32>(-1 % -4428, 35313, var_0, var_0 << 0u), !vec4<bool>(arg_0.x, true, true, arg_0.x))), 1 + select(func_3(vec2<i32>(var_0, 2147483647), &global1) & (var_0 >> 0u), ~(var_0 + -2147483648), false), Struct_1(countOneBits(abs(vec4<i32>(var_0, var_0, 43934, 1)) - -vec4<i32>(var_0, var_0, u_input.e, u_input.e))));
            }
        }
        default: {
            loop {
                let var_2 = !((-593 / var_0) < (var_0 * -u_input.e));
            }
        }
    }
    switch (-1) {
        case 0: {
            var var_2 = vec2<bool>(arg_0.x, !all(!vec4<bool>(false, false, false, false)));
        }
        case -2147483648: {
            let var_2 = &global1;
        }
        case 1: {
            var var_2 = Struct_3(step(arg_1, -(-arg_1)));
        }
        case 19543: {
            loop {
                return global0[select(~u_input.d.x, 1u | (min(42220u << 6307u, u_input.a.x / 12633u) ^ (4294967295u | dot(u_input.d.yx, u_input.d.xz))), arg_0.x)];
            }
        }
        default: {
            let var_2 = Struct_2(firstTrailingBit((countOneBits(vec4<i32>(63854, 0, u_input.e, -22138)) & -vec4<i32>(var_0, u_input.c, var_0, 17689)) | (vec4<i32>(var_0, u_input.e, var_0, u_input.e) | -vec4<i32>(1212, u_input.b, var_0, -1))), ~select(vec3<u32>(~0u, firstLeadingBit(1u), 74258u | 1u), u_input.a.zxw, !select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.wzy)));
        }
    }
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: ptr<private, array<vec4<f32>, 21>>, arg_2: u32, arg_3: u32) -> i32 {
    switch (func_3(vec2<i32>(firstTrailingBit(0 >> ~u_input.a.x), max(~u_input.c, 0)), &global1)) {
        default: {
            return u_input.b ^ ((~(-(-29733)) >> ((51975u ^ arg_2) * ~u_input.d.x)) / ((-66160 * -u_input.b) % (1 + (-40597 + arg_0))));
        }
    }
    global0 = array<vec4<bool>, 19>();
    global0 = array<vec4<bool>, 19>();
    let var_0 = &global1;
    if (any(func_4(global0[arg_2], -(673.0 + -2243.0) * -min(-958.0, -1561.0)))) {
        return 2147483647;
    }
    return -(-5602);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4) -> f32 {
    if (false) {
        let var_0 = arg_1.c.a.zxz;
    }
    switch (func_2((~min(-25747, -1873) << 1u) & 25385, &global1, dot(vec3<u32>(dot(u_input.d.yz, u_input.d.yz), ~0u, 2250u) - (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x) | ~u_input.a.xwz), u_input.a.xzw), u_input.a.x | u_input.d.x)) {
        case 103863: {
            if (!(!(!false))) {
                global1 = array<vec4<f32>, 21>();
            }
            fallthrough;
        }
        case -38092: {
            global0 = array<vec4<bool>, 19>();
        }
        case 36832: {
            global0 = array<vec4<bool>, 19>();
        }
        default: {
            let var_0 = Struct_1(vec4<i32>(~1 ^ 14057, firstTrailingBit(-42383) % 13352, -arg_1.b, dot(arg_1.c.a + arg_1.a.a, vec4<i32>(u_input.b, u_input.e, -9851, arg_1.a.a.x))) / arg_1.c.a);
        }
    }
    var var_0 = !vec2<bool>(!arg_0.x, ~(u_input.d.x % 10946u) < ~1u);
    let var_1 = -(vec3<f32>(round(-276.0), -(-440.0), -(-424.0 * 721.0)) + vec3<f32>(-336.0, 2155.0, -floor(-904.0)));
    let var_2 = Struct_5(var_1.x >= max(638.0, -(-var_1.x)), arg_1.c, !(!(!func_4(vec4<bool>(false, false, false, var_0.x), 2432.0))), -(-var_1.x));
    return -(-(-1732.0));
}

fn func_5(arg_0: ptr<private, array<vec4<f32>, 21>>, arg_1: Struct_5, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    global1 = array<vec4<f32>, 21>();
    loop {
        let var_0 = &global1;
    }
    for (var var_0 = 1; ; var_0 -= 1) {
        continue;
    }
    global0 = array<vec4<bool>, 19>();
    var var_0 = vec3<i32>(arg_1.b.a.x, func_2(u_input.c, &global1, 25483u, max(u_input.a.x, 1u)), firstLeadingBit(u_input.b));
    return exp2(select(-491.0, round(arg_2), !(!false)));
}

@stage(compute)
@workgroup_size(1)
fn main() {
    switch (0) {
        default: {
            for (var var_0 = 19558; ; ) {
                var var_1 = vec3<u32>(25125u, ~firstLeadingBit(~(~u_input.a.x)), u_input.d.x);
            }
        }
    }
    loop {
        switch (1) {
            case -49147: {
                break;
            }
            default: {
                global1 = array<vec4<f32>, 21>();
            }
        }
    }
    if (((((-1980.0 - 1063.0) * -442.0) - func_5(&global1, Struct_5(true, Struct_1(vec4<i32>(u_input.e, -5272, u_input.b, -46156)), global0[144315u], 255.0), func_1(global0[4294967295u], Struct_4(Struct_1(vec4<i32>(u_input.b, u_input.e, -4119, 2147483647)), 45394, Struct_1(vec4<i32>(u_input.c, 7700, u_input.e, 50834)))), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))) != -((-1445.0 * 2009.0) + 926.0)) != (-1796.0 > 994.0)) {
        loop {
            return;
        }
    }
    var var_0 = true;
    switch (1) {
        case 50118: {
            global0 = array<vec4<bool>, 19>();
            fallthrough;
        }
        default: {
            loop {
                global1 = array<vec4<f32>, 21>();
            }
        }
    }
    let var_1 = select(select(!global0[dot(u_input.d, vec3<u32>(0u, u_input.a.x, 0u) % u_input.d)], global0[~(~1u)], false), func_4(global0[u_input.a.x + 60298u], -467.0), true != ((all(global0[u_input.a.x]) | any(vec2<bool>(false, true))) == true));
    var var_2 = func_4(!select(var_1, select(var_1, global0[reverseBits(u_input.d.x)], vec4<bool>(var_1.x, true, false, var_1.x)), global0[countOneBits(0u | u_input.d.x)]), -exp2(-(-(-807.0)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wz, reverseBits((~1 - ~(-1)) << u_input.a.x));
}

