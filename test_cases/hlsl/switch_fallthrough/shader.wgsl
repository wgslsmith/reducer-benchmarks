// Seed: 3187018860876805429

struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(67007, -30246, Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(824.0, 1378.0, -310.0), 2147483647), vec3<u32>(4294967295u, 1u, 63626u), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(50.0, 858.0, -1329.0), 1)), Struct_2(-6640, -9645, Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-979.0, 476.0, 840.0), 2147483647), vec3<u32>(45282u, 61595u, 61648u), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(1567.0, -371.0, -647.0), -21083)), Struct_2(0, -26623, Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(1274.0, 9.0, 1380.0), -38823), vec3<u32>(4294967295u, 21521u, 1u), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-816.0, 1107.0, 171.0), 1)), Struct_2(0, 2184, Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(533.0, -515.0, 816.0), 31604), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-690.0, -641.0, 1454.0), 23006)), Struct_2(-51317, 3979, Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(163.0, -216.0, 406.0), 36746), vec3<u32>(61358u, 0u, 45721u), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-898.0, -510.0, -243.0), 16488)), Struct_2(-1, -1, Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-331.0, -885.0, 522.0), -2147483648), vec3<u32>(34040u, 30790u, 0u), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-756.0, 644.0, -3207.0), -485)), Struct_2(-28698, 16487, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-32.0, -734.0, 1047.0), 2147483647), vec3<u32>(6874u, 0u, 7066u), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-469.0, -793.0, 1271.0), 1)), Struct_2(2147483647, -1, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(716.0, 788.0, 921.0), 0), vec3<u32>(25358u, 40683u, 1u), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-1810.0, -1122.0, 795.0), 706)), Struct_2(32082, -19691, Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-1276.0, -1025.0, -425.0), -28040), vec3<u32>(81193u, 47702u, 41833u), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-72.0, -590.0, 888.0), -2147483648)), Struct_2(0, 0, Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(206.0, -1070.0, -1911.0), 1), vec3<u32>(4294967295u, 4294967295u, 512u), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(870.0, -507.0, -820.0), -1)), Struct_2(-2147483648, 10563, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(310.0, 1113.0, 977.0), 843), vec3<u32>(17313u, 0u, 0u), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(593.0, 990.0, 85.0), -36819)), Struct_2(25774, 1, Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(1243.0, 1579.0, 532.0), 22147), vec3<u32>(0u, 15318u, 37085u), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(805.0, -371.0, -663.0), 2147483647)), Struct_2(-1, 26025, Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(82.0, 2036.0, 1456.0), 26280), vec3<u32>(0u, 1766u, 1u), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-828.0, 320.0, -956.0), 0)), Struct_2(2147483647, 2147483647, Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-1304.0, -1994.0, -340.0), -1), vec3<u32>(0u, 68812u, 69873u), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(648.0, -834.0, 882.0), 1)), Struct_2(-2147483648, -2147483648, Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-58.0, 32.0, 2395.0), 40496), vec3<u32>(29462u, 0u, 27131u), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(532.0, 974.0, -258.0), -2147483648)), Struct_2(2147483647, -27744, Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(829.0, 2.0, -366.0), -39378), vec3<u32>(1u, 13431u, 12117u), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1602.0, 878.0, 1110.0), 0)), Struct_2(-23946, 33194, Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-428.0, 58.0, -1677.0), 1), vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-179.0, -693.0, 564.0), 14328)), Struct_2(-10322, 2147483647, Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(578.0, -701.0, -392.0), -2147483648), vec3<u32>(1u, 17012u, 1u), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(209.0, -2268.0, -554.0), 4617)), Struct_2(-45664, 0, Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-1494.0, 289.0, 618.0), 30142), vec3<u32>(1u, 1u, 1018u), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-1467.0, -1660.0, -1041.0), -33355)), Struct_2(0, 1, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-1076.0, 148.0, 216.0), -2147483648), vec3<u32>(42291u, 14542u, 1u), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-218.0, -344.0, 157.0), -1)), Struct_2(40999, -2147483648, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(357.0, -951.0, -382.0), -13100), vec3<u32>(4294967295u, 3153u, 0u), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(1007.0, -817.0, 999.0), 2147483647)), Struct_2(2147483647, -22724, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-1897.0, -1115.0, 203.0), -23398), vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-626.0, 722.0, 1301.0), 1)), Struct_2(2147483647, -6039, Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-1258.0, 195.0, -117.0), 0), vec3<u32>(1u, 49516u, 4065u), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-1838.0, 424.0, 357.0), 1)), Struct_2(61595, 1, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(647.0, -1608.0, -476.0), -2147483648), vec3<u32>(1u, 0u, 7255u), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-2017.0, 103.0, -2487.0), 30798)), Struct_2(15011, 2147483647, Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(887.0, -160.0, 542.0), 57972), vec3<u32>(54396u, 62644u, 0u), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-1039.0, 2209.0, -724.0), -2147483648)), Struct_2(0, 2333, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-172.0, 933.0, 896.0), -2147483648), vec3<u32>(1u, 4294967295u, 11453u), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-1098.0, -62.0, -1781.0), 44617)), Struct_2(18119, -1, Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-111.0, -1074.0, -556.0), -2147483648), vec3<u32>(4294967295u, 39879u, 4294967295u), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(184.0, -882.0, 1304.0), 1)), Struct_2(0, 29642, Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(812.0, 1211.0, 298.0), -2147483648), vec3<u32>(4294967295u, 48247u, 84913u), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-20.0, 1243.0, -1401.0), 1)));

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(225.0, -1291.0, 696.0), -2147483648), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-256.0, 641.0, -1043.0), 31353));

var<private> global4: array<f32, 22> = array<f32, 22>(-616.0, -765.0, 401.0, 1485.0, 690.0, 295.0, 52.0, 360.0, -993.0, -39.0, -453.0, 1234.0, 527.0, -379.0, 1494.0, -1446.0, -2162.0, -944.0, 133.0, 2109.0, -772.0, -309.0);

fn func_3() -> u32 {
    if (global0.c.a.x) {
        loop {
            global2 = array<Struct_2, 28>();
        }
    }
    for (var var_0 = 6532; ; var_0 -= 1) {
        break;
    }
    global3 = array<Struct_1, 2>();
    global2 = array<Struct_2, 28>();
    let var_0 = vec4<f32>(785.0 * global0.c.b.x, global4[~global0.d.x], global4[4294967295u], global0.c.b.x * global0.e.b.x);
    return countOneBits(u_input.c.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    if ((min(~(~4294967295u), 725u) * (u_input.c.x * dot(vec2<u32>(u_input.c.x, u_input.b), ~vec2<u32>(30467u, u_input.c.x)))) >= u_input.b) {
        var var_0 = -vec4<f32>(global4[dot(countOneBits(u_input.c.yz), u_input.c.zy | vec2<u32>(1u, u_input.c.x))] + -(-11.0 * 2354.0), global4[12679u], trunc(-global4[50283u] + (global0.c.b.x - 242.0)), global0.c.b.x);
    }
    global1 = array<vec4<bool>, 12>();
    var var_0 = 69356u;
    let var_1 = global0.a;
    switch (u_input.a.x) {
        case 2147483647: {
            if (!(!(!arg_0.x))) {
                global3 = array<Struct_1, 2>();
            }
            fallthrough;
        }
        case -75: {
            return ~max(u_input.b, countOneBits(1u)) | u_input.c.x;
        }
        case -42776: {
            let var_2 = global0.e.b.x;
        }
        default: {
            let var_2 = u_input.b;
        }
    }
    return ~(~(~(141756u - ~global0.d.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    switch ((u_input.a.x % (global0.c.c * 1)) / ~(firstTrailingBit(dot(vec3<i32>(u_input.a.x, global0.b, u_input.a.x), u_input.a)) - u_input.a.x)) {
        case 2147483647: {
            let var_0 = !(global0.e.b.x < global4[~(~u_input.c.x / u_input.b)]);
        }
        case -38582: {
            var var_0 = ~u_input.a.xy;
        }
        default: {
            switch (55427) {
                case -32834: {
                    var var_0 = ~select(~(-14331), (clamp(global0.a, -76674, u_input.a.x) * u_input.a.x) & u_input.a.x, arg_1.x);
                }
                case -8150: {
                    global3 = array<Struct_1, 2>();
                    fallthrough;
                }
                default: {
                    global4 = array<f32, 22>();
                }
            }
        }
    }
    var var_0 = Struct_3(clamp(u_input.c.x, func_3(), 1u) / (31145u + ((u_input.c.x * global0.d.x) | arg_3)), global2[func_4(arg_2, arg_2.x)]);
    global2 = array<Struct_2, 28>();
    global0 = global2[~(u_input.c.x << var_0.a)];
    let var_1 = step(-1339.0, global4[0u]);
    return Struct_1(!(!vec4<bool>(global0.c.a.x, arg_0.x, 37573u > arg_3, true)), select(vec3<f32>(966.0, var_0.b.e.b.x, var_0.b.c.b.x) - (var_0.b.e.b * var_0.b.e.b), (global0.e.b - global0.e.b) - -vec3<f32>(global4[74200u], -900.0, 568.0), select(all(arg_1), !arg_2.x, !var_0.b.c.a.x)) - vec3<f32>(exp2(-200.0), var_0.b.e.b.x, 660.0), 2147483647);
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    global2 = array<Struct_2, 28>();
    var var_0 = arg_2.c.b.x;
    let var_1 = firstLeadingBit(reverseBits(abs(max(vec4<i32>(17953, 23064, arg_2.e.c, arg_2.c.c), vec4<i32>(-50709, global0.e.c, 2147483647, arg_2.e.c)))) << (~select(vec4<u32>(arg_0, global0.d.x, 1u, 4294967295u), u_input.c, arg_2.c.a.x) / u_input.c));
    global2 = array<Struct_2, 28>();
    global2 = array<Struct_2, 28>();
    return global0.e;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3(u_input.c.x, Struct_2(-1, global0.a * (-(-13234) << select(61160u, global0.d.x, global0.e.a.x)), func_5(~global0.d.x, ~u_input.c.yxy, Struct_2(-50121 << 4294967295u, min(global0.c.c, 8028), Struct_1(global0.c.a, vec3<f32>(arg_1.x, arg_0, global0.e.b.x), u_input.a.x), vec3<u32>(5448u, 4294967295u, arg_2.x), func_2(vec4<bool>(false, true, global0.e.a.x, global0.e.a.x), global0.e.a.xz, vec3<bool>(false, global0.e.a.x, true), arg_2.x)), vec4<u32>(5798u, global0.d.x, 0u, arg_2.x)), vec3<u32>(u_input.b ^ ~arg_2.x, firstTrailingBit(~arg_2.x), u_input.c.x), global0.e));
    global4 = array<f32, 22>();
    switch (~(-2147483648 & ~u_input.a.x)) {
        case -27997: {
            switch (~(firstLeadingBit(u_input.a.x << 68624u) - reverseBits(-u_input.a.x))) {
                case -19960: {
                    var var_1 = var_0;
                }
                case 16287: {
                    let var_1 = vec3<i32>((~(-14444) >> func_4(func_2(vec4<bool>(global0.c.a.x, var_0.b.c.a.x, true, global0.c.a.x), vec2<bool>(var_0.b.c.a.x, var_0.b.c.a.x), global0.e.a.xxy, 1u).a.zyx, func_2(var_0.b.c.a, var_0.b.e.a.xy, global0.c.a.yzy, 1u).a.x)) * dot(abs(select(u_input.a.yy, u_input.a.yy, vec2<bool>(false, var_0.b.c.a.x))), min(vec2<i32>(-17847, 2147483647), max(u_input.a.yy, vec2<i32>(-11054, -64364)))), abs(u_input.a.x) ^ -2147483648, -6243);
                }
                case 17409: {
                    global2 = array<Struct_2, 28>();
                    fallthrough;
                }
                case 2147483647: {
                    let var_1 = global0.e.a.x;
                }
                default: {
                    var var_1 = min(-min(step(-vec4<f32>(arg_1.x, 1171.0, 1620.0, -125.0), arg_3), step(arg_3, vec4<f32>(615.0, 906.0, 895.0, 914.0)) + -vec4<f32>(global0.e.b.x, 449.0, arg_3.x, -1280.0)), vec4<f32>(-1764.0, arg_1.x, arg_1.x, arg_1.x));
                }
            }
        }
        default: {
            for (var var_1 = -2147483648; ; ) {
                var var_2 = ~15984;
            }
        }
    }
    switch (~(-abs(-29890))) {
        case 1: {
            if (global0.c.b.x <= 1373.0) {
                let var_1 = global0.c;
            }
        }
        default: {
            loop {
                var var_1 = 554.0;
            }
        }
    }
    let var_1 = var_0;
    return Struct_2(min(u_input.a.x % ~(~0), var_0.b.e.c), u_input.a.x, func_2(select(global0.e.a, vec4<bool>(false, var_0.b.e.a.x, all(var_0.b.c.a.ywy), !true), !(var_0.b.c.a.x & false)), vec2<bool>(all(vec3<bool>(var_1.b.c.a.x, false, var_0.b.c.a.x)) && !false, false), var_0.b.e.a.xzx, ~(~var_0.b.d.x)), ~var_1.b.d, global3[1u]);
}

@stage(compute)
@workgroup_size(1)
fn main() {
    loop {
        var var_0 = global3[dot(~vec3<u32>(global0.d.x, ~(~0u), 34500u), vec3<u32>(1u, (~62663u / clamp(u_input.c.x, 33817u, u_input.b)) + 4294967295u, u_input.b))];
    }
    for (var var_0 = 1; ; var_0 += 1) {
        let var_1 = select(true, (-1716.0 >= ceil(global0.e.b.x)) && (!true && !select(global0.c.a.x, global0.c.a.x, global0.e.a.x)), true);
    }
    let var_0 = Struct_3(clamp(9703u % (16307u | 1u), firstLeadingBit(u_input.b), 27508u), func_1(1882.0, vec4<f32>(global0.c.b.x, -734.0 * (-1026.0 * global0.e.b.x), global4[~(~0u)], -240.0), firstTrailingBit(vec2<u32>(4294967295u, 1u)) & (max(vec2<u32>(u_input.c.x, 0u), global0.d.yz) >> vec2<u32>(74705u, 118638u)), vec4<f32>(ceil(-1069.0) + -(-1845.0), global0.e.b.x, select(-1515.0, global0.c.b.x, true), 1329.0)));
    for (var var_1: i32; !global0.e.a.x; var_1 += 1) {
        if (any(select(global1[0u], vec4<bool>(var_0.b.c.a.x, false, !(!var_0.b.c.a.x), false), global0.e.a.x))) {
            break;
        }
    }
    for (var var_1: i32; all(var_0.b.c.a.zzx); var_1 -= 1) {
        let var_2 = Struct_2(global0.a - abs(-u_input.a.x), global0.a, func_5(~dot(vec3<u32>(var_0.a, global0.d.x, 0u), clamp(vec3<u32>(4369u, u_input.b, var_0.b.d.x), vec3<u32>(4294967295u, u_input.c.x, 56621u), var_0.b.d)), select((vec3<u32>(0u, global0.d.x, u_input.c.x) + var_0.b.d) | ~vec3<u32>(61740u, 1u, 4294967295u), var_0.b.d, global0.c.a.xyw), global2[~(global0.d.x | ~global0.d.x)], u_input.c), abs(~select(u_input.c.xyw, u_input.c.yyw, global0.c.a.x) + vec3<u32>(var_0.b.d.x, ~4294967295u, global0.d.x / u_input.c.x)), global0.e);
    }
    let var_1 = func_1(1373.0 * -1148.0, -step(-vec4<f32>(-42.0, global0.e.b.x, -29.0, -106.0), -(vec4<f32>(-623.0, global0.c.b.x, var_0.b.e.b.x, -190.0) + vec4<f32>(33.0, -662.0, var_0.b.e.b.x, global0.c.b.x))), vec2<u32>(global0.d.x, var_0.a), -vec4<f32>(trunc(-545.0 + 2051.0), 1688.0, -(-(-865.0)), var_0.b.e.b.x)).c;
    var var_2 = func_5(global0.d.x, global0.d & var_0.b.d, Struct_2(var_0.b.a, -(-11066 ^ u_input.a.x), func_5(~45617u, global0.d, Struct_2(~global0.e.c, -9978 ^ var_0.b.a, Struct_1(var_0.b.c.a, vec3<f32>(var_1.b.x, var_0.b.c.b.x, 1301.0), 0), u_input.c.ywy - vec3<u32>(global0.d.x, 40222u, u_input.b), Struct_1(global1[1u], global0.c.b, var_0.b.e.c)), vec4<u32>(4294967295u, ~1u, ~77087u, firstTrailingBit(global0.d.x))), ~vec3<u32>(var_0.b.d.x, ~u_input.b, 55091u >> 21473u), Struct_1(vec4<bool>(!global0.e.a.x, var_0.b.e.a.x && true, all(var_1.a.zy), var_0.b.e.a.x), vec3<f32>(floor(var_1.b.x), max(var_1.b.x, 969.0), 571.0 - -1062.0), ~reverseBits(2147483647))), vec4<u32>(~func_4(var_0.b.e.a.wxz, var_0.b.e.a.x), var_0.b.d.x, 0u, func_1(-457.0, -vec4<f32>(var_1.b.x, var_1.b.x, var_0.b.e.b.x, var_1.b.x), global0.d.yz, -vec4<f32>(global0.e.b.x, var_1.b.x, global4[var_0.a], -1971.0)).d.x) % firstLeadingBit(u_input.c));
    var var_3 = ~u_input.c ^ (abs(min(~u_input.c, abs(vec4<u32>(var_0.a, var_0.a, global0.d.x, 1u)))) << vec4<u32>(36286u, 0u, func_3(), countOneBits(global0.d.x) % var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(u_input.a.zz | u_input.a.zx)), select(~vec2<i32>(var_0.b.b, 13184), vec2<i32>(2147483647, -2147483648) - ~u_input.a.xz, true) * max(~vec2<i32>(global0.c.c, 1) | -vec2<i32>(2147483647, -41561), min(vec2<i32>(var_1.c, 15653) / u_input.a.zz, max(vec2<i32>(var_2.c, var_1.c), vec2<i32>(global0.a, global0.b)))), countOneBits(1u));
}

