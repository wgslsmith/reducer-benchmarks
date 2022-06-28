// Seed: 15357113551649869192

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

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    for (var var_0 = -58; ; var_0 -= 1) {
        var_0 = ~(~min(-22721 / 0, ~9567));
    }
    if (!all(vec4<bool>(arg_1.x, arg_1.x, all(arg_1.yz), select(!arg_1.x, arg_0 <= 1710.0, arg_1.x)))) {
        global0 = array<Struct_2, 19>();
    }
    global0 = array<Struct_2, 19>();
    return !vec4<bool>(select((8121 - 21420) < dot(vec4<i32>(0, 4124, 1, 87063), vec4<i32>(2130, 39602, 19679, 0)), arg_1.x, true), !(!(u_input.a < u_input.b.x)), -arg_0 != trunc(ceil(297.0)), !any(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)));
}

fn func_3() -> Struct_3 {
    for (var var_0 = -2147483648; ; ) {
        switch ((-1 | abs(firstLeadingBit(-30701))) & (~(~(~(-31723))) * ~firstTrailingBit(26276))) {
            default: {
                var var_1 = !select(func_4(max(select(-534.0, 81.0, false), -488.0), vec3<bool>(false, true, true)), vec4<bool>(func_4(-(-38.0), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)).x, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), !true && !false, !(!false)), true || any(!vec2<bool>(false, true)));
            }
        }
    }
    var var_0 = countOneBits(vec2<i32>((-2147483648 >> 1u) & abs(2147483647), 1 ^ 1)) ^ clamp(~vec2<i32>(41356 / -1456, -270 ^ -2147483648), -(-(vec2<i32>(2147483647, -72116) * vec2<i32>(2147483647, -48902))), -firstTrailingBit(vec2<i32>(-2147483648, 6254) % vec2<i32>(41326, -19718)));
    var var_1 = global0[49676u];
    var_1 = global0[u_input.a];
    for (var var_2 = -2147483648; false; var_2 -= 1) {
        global0 = array<Struct_2, 19>();
    }
    return Struct_3(vec2<f32>(-(-ceil(-43.0)), ceil(-70.0 + var_1.a)));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = func_3();
    let var_1 = Struct_2(abs(-var_0.a.x), var_0.a.x, !(!(!true) && arg_0));
    loop {
        global0 = array<Struct_2, 19>();
    }
    let var_2 = arg_0;
    let var_3 = select(!select(select(vec2<bool>(false, var_1.c), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, var_2)), arg_0 && var_2), select(!vec2<bool>(true, false), select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_1.c), vec2<bool>(false, var_1.c)), !true), vec2<bool>(2147483647 > 0, true)), vec2<bool>(true, arg_0), !vec2<bool>(false && (var_0.a.x >= -1284.0), false));
    return max(-var_0.a, min(exp2(vec2<f32>(-484.0, 124.0)) * func_3().a, floor(var_0.a * vec2<f32>(var_0.a.x, 3.0)))) - -(-sign(vec2<f32>(1262.0, 750.0) - var_0.a));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_0 = u_input.c > 54u;
    var var_1 = Struct_3(-(-(vec2<f32>(-871.0, -1759.0) * vec2<f32>(605.0, 882.0)) * func_2(arg_0.d.x)));
    var var_2 = Struct_1(0u, 58699u, vec3<u32>(u_input.b.x, 0u, 44772u), arg_0.d);
    return ~(-18001);
}

@stage(compute)
@workgroup_size(1)
fn main() {
    var var_0 = abs(reverseBits(vec3<i32>(select(8483, -1, true), func_1(Struct_1(31417u, u_input.c, u_input.b.zyy, vec4<bool>(true, false, true, false))), -3869 + 2672)) + reverseBits(vec3<i32>(2147483647, ~(-2147483648), firstLeadingBit(-4840))));
    var var_1 = (~(~vec2<u32>(21502u, 12039u) % firstTrailingBit(vec2<u32>(45351u, 1149u))) - abs(select(vec2<u32>(4294967295u, 85504u), select(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(497u, u_input.b.x), false), true))) + u_input.b.yw;
    for (var var_2: i32; ((clamp(~2147483647, 24162 % var_0.x, 2147483647) * min(~var_0.x, -var_0.x)) >= -(var_0.x / firstTrailingBit(var_0.x))) || true; var_2 -= 1) {
        var var_3 = func_3();
    }
    let var_2 = ~countOneBits(u_input.b.zzz + ~u_input.b.zzy);
    var_1 = ~var_2.xy;
    loop {
        continue;
    }
    let var_3 = func_3();
    switch (var_0.x << ((~dot(vec3<u32>(57571u, u_input.c, var_1.x), var_2) / dot(u_input.b | u_input.b, u_input.b & vec4<u32>(48407u, 2588u, 20698u, var_2.x))) ^ var_2.x)) {
        case 15833: {
            var_1 = ~vec2<u32>(var_1.x, 1u);
        }
        case -58779: {
            for (var var_4 = 1; ; var_4 -= 1) {
                continue;
            }
        }
        default: {
            var var_4 = ~(~(~abs(7147u))) - (var_2.x / u_input.a);
        }
    }
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(801.0, (dot(u_input.b.zzx | var_2, clamp(u_input.b.yzy, u_input.b.yyy, var_2)) >> var_1.x) >> 1075u, -(vec3<f32>(-279.0, trunc(2080.0), 560.0) * -round(vec3<f32>(var_3.a.x, -39.0, var_3.a.x))));
}

