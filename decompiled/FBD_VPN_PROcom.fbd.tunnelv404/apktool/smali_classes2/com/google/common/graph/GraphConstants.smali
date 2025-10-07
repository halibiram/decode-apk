.class final Lcom/google/common/graph/GraphConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/GraphConstants$Presence;
    }
.end annotation


# static fields
.field static final DEFAULT_EDGE_COUNT:I = 0x14

.field static final DEFAULT_NODE_COUNT:I = 0xa

.field static final EDGE_ALREADY_EXISTS:Ljava/lang/String;

.field static final EDGE_NOT_IN_GRAPH:Ljava/lang/String;

.field static final ENDPOINTS_MISMATCH:Ljava/lang/String;

.field static final EXPECTED_DEGREE:I = 0x2

.field static final INNER_CAPACITY:I = 0x2

.field static final INNER_LOAD_FACTOR:F = 1.0f

.field static final MULTIPLE_EDGES_CONNECTING:Ljava/lang/String;

.field static final NODE_NOT_IN_GRAPH:Ljava/lang/String;

.field static final NOT_AVAILABLE_ON_UNDIRECTED:Ljava/lang/String;

.field static final PARALLEL_EDGES_NOT_ALLOWED:Ljava/lang/String;

.field static final REUSING_EDGE:Ljava/lang/String;

.field static final SELF_LOOPS_NOT_ALLOWED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->NODE_NOT_IN_GRAPH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->EDGE_NOT_IN_GRAPH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x10

    new-array v3, v2, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->REUSING_EDGE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->MULTIPLE_EDGES_CONNECTING:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x15

    new-array v3, v2, [J

    fill-array-data v3, :array_4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->PARALLEL_EDGES_NOT_ALLOWED:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_5

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->SELF_LOOPS_NOT_ALLOWED:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x17

    new-array v2, v2, [J

    fill-array-data v2, :array_6

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->NOT_AVAILABLE_ON_UNDIRECTED:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->EDGE_ALREADY_EXISTS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_8

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants;->ENDPOINTS_MISMATCH:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x31286cc2632683cdL    # 6.911985083997353E-72
        0x1c1530db1f959f67L
        -0x11c019e5520e8dfeL    # -1.1530596148059439E223
        -0x3cb66225d5feb1a2L    # -1.442086950185286E16
        -0x1946c2edf0295f7cL    # -6.863440091183631E186
        -0xf88f9fde36a2e09L    # -5.719096526399511E233
    .end array-data

    :array_1
    .array-data 8
        0x45a88a0711ac8e7bL    # 3.7972526907065703E27
        0x1b040117a8f1fdacL    # 1.542677794745375E-178
        0xe9e0f0ca7d7481aL    # 2.885060280503224E-238
        -0x5a17bae6e21eaca9L
        0x26c29ffd289b91cfL    # 5.63491066516627E-122
        0x14ec642f60393524L
    .end array-data

    :array_2
    .array-data 8
        0x75399b6c88bda098L    # 4.8061480186421554E256
        0x60d6831750b46c6cL    # 3.090816728765783E158
        -0x27c6a735ab97fe06L    # -9.987162406056562E116
        -0x3ecbc50520c2cd07L    # -1325818.8720275743
        -0x7dc696e64e2cc70bL    # -6.070973509701991E-298
        -0x4d06f7fd90360ecfL    # -3.802980531008316E-63
        0x5ea343c79ada5fc7L    # 7.697888074808827E147
        -0x79fc6ff9516391e7L    # -1.077706879764767E-279
        -0x35898bd9955776bbL    # -5.250581707242429E50
        -0x335133ba29f29d34L    # -2.4745191229500918E61
        0x77cb017e26dad31aL    # 1.1146119466916035E269
        -0x49aeb898fde4c4c3L    # -4.72908550752745E-47
        0x1889ee65adcdbf44L    # 1.818762626094113E-190
        -0x2806d79b05c41e29L    # -6.195421429707326E115
        0x51e995b6fa6fba82L    # 3.9762272234321436E86
        0x106b7ade5ecf5fecL
    .end array-data

    :array_3
    .array-data 8
        -0x37f5dd4419efaec1L    # -1.1116888646950796E39
        -0x6a62e0741ffba703L
        -0x563655137c7f3733L
        -0x2b212bb905750f93L    # -6.743120764910347E100
        -0x66ad62da8ec16776L    # -1.069495513124859E-186
        0x11af866df807cf52L
        0x6951d0f7e5ffbd41L    # 2.130856680507836E199
        0x6dd669faf943b589L    # 1.2659481756488267E221
        -0x50e09e53af1f59L
        0x75485a8b6c53deaL
        -0xa752535ff0543e0L
        0x528323011fbfa334L    # 3.045485898457707E89
        0x748dc5cc3ce55dd8L    # 2.7284991875061097E253
        -0x42cb05c044031efdL    # -7.452717557277381E-14
        -0x6b5864315b267efeL
        0x677e83629a336537L    # 3.3987980803098315E190
    .end array-data

    :array_4
    .array-data 8
        0x6ea52cd095316976L    # 9.79741222170956E224
        -0x1a006d470a5c6f76L    # -2.0962114278142874E183
        -0x376fc54d627d45e6L    # -3.5344259315372315E41
        -0x18e304905675d26cL    # -5.044152884301398E188
        0x23246465c7ae7f92L    # 2.140501963028231E-139
        0x5f12fd60717eac4bL    # 9.712637289610332E149
        0x6033cf1faa02859L
        0x5c361db7d83aff97L    # 1.6074828095700596E136
        -0x181116b22a979907L    # -4.407224091884377E192
        0x114a6db4c1b9324fL    # 2.231240673228364E-225
        0xe04eb60751b620L
        0xef6310ea13a083bL
        -0x2c8af80bdd7d65c4L    # -1.0967307283192695E94
        -0x61f40feffc0c3c7L    # -1.187407840212582E279
        0x4936b274509ba492L    # 5.061619611644734E44
        -0x3813490349c32639L    # -3.0534806012647247E38
        -0x13fe3f0e8012d9eL
        0x59f85889af2cde7eL    # 2.575035207944961E125
        0x3b81a24dd3177bd5L    # 4.667680937294049E-22
        -0x4b650db16e5dabadL    # -2.7474092345880434E-55
        -0x322047bf17bf1a01L    # -1.3361914213103153E67
    .end array-data

    :array_5
    .array-data 8
        -0x4fec3ef7546c3578L    # -4.264980163418398E-77
        -0x5a2fc90785af0845L    # -1.497102458760255E-126
        -0x4caf0410b17706a1L    # -1.651444374901203E-61
        0x33eb6f429635dfddL    # 1.3658079665899966E-58
        0x78e0986093733e9fL    # 1.795515573863372E274
        -0x49230515811598bfL    # -2.0304913274344039E-44
        0x454cf11a9a6f36ecL    # 6.997700803020142E25
        -0x24ecdc6a0e97cd88L    # -5.306614384864483E130
        -0x77d151217ed2cdf9L
        0x29aa3196e3440e4cL
        -0x54b23b868181b15L    # -1.211713585338174E283
        0x3f6b1644dc37f9d5L    # 0.0033065171171522225
        -0x9e4a28d74f5b5e8L    # -8.414962320751948E260
        -0x5a9263222297b400L    # -2.1360467459996326E-128
        0x33b9b22470825ea2L    # 1.5990578239330746E-59
        0x4262b90a820f14e4L    # 6.433110795446528E11
        0x5b98e62a99e6dea5L    # 1.767345803266226E133
        0x54840308ee56737cL    # 1.3678420128321493E99
        -0x452b37a26b9a62dfL    # -2.6860981634653206E-25
        0x6e3e10bab36ba30cL
        0x50968f117a70c1a6L    # 1.671768052493713E80
    .end array-data

    :array_6
    .array-data 8
        -0x760089b6b026a77cL    # -1.598640699806016E-260
        0x3f975e5dbfb9c94dL    # 0.022820916010865933
        -0x7bd10f1efa9cbaa5L    # -1.587477505213332E-288
        0x4fd0fc6418b358caL    # 3.073176751286896E76
        -0x71508c6900233651L
        0x99bed04b691d7caL
        0x771cba8b1b87d528L    # 5.789645092667241E265
        0x1727040849f8aec2L    # 3.848734990455537E-197
        -0x7f33a3af1381ec33L    # -8.077369788860074E-305
        0x705f828ace2d05eL
        -0x19e59469079153afL    # -7.016405219751538E183
        0x6bfce441bdb0333L
        -0x330db2baf2148170L    # -4.70558637418004E62
        -0x330d35a14c97df49L    # -4.831229024680975E62
        -0x658412854216e658L
        -0x1b7d4d9df39d0427L    # -1.4797725367079553E176
        -0x1fb44aad394edc80L    # -7.430149764479115E155
        -0x44c1674bfbe1d6aL    # -7.580134044227837E287
        0x3e25afd0f29bc057L    # 2.5246737104273305E-9
        -0x7e92ce55cf0aa3e7L    # -8.514281571823115E-302
        0x3137b951702fade8L    # 1.3427250932842438E-71
        0x14610ecd1246fbaeL    # 1.62142356779673E-210
        0x4838a2ad071b156cL    # 8.383010152898863E39
    .end array-data

    :array_7
    .array-data 8
        0x1cfbdd0ab90b4212L    # 4.6144214175451E-169
        -0x81af8a0eb90a188L    # -3.471686612099028E269
        0x2d79309a8fdbf364L    # 1.236593694016078E-89
        0x290c60b09c5ab759L    # 5.899955326796909E-111
        0x39788e4bd7e90f92L    # 7.566853882964228E-32
        0x58c088c323209f04L    # 3.335586491792051E119
    .end array-data

    :array_8
    .array-data 8
        -0x639162229572a47cL    # -9.903080126352154E-172
        -0x3e30349611f1fbbeL    # -1.0668492441095049E9
        0x1f3d508534f686fdL
        0x39219e60984bb8bfL    # 1.696615380563776E-33
        -0x26ad8aed90dff546L    # -1.906455721399935E122
        0x7b4afc1fc9008586L    # 8.02538861950786E285
        0x6e8ba7e00ba48ea8L    # 3.198986612417552E224
        0x227bf40b23a0c4caL
        -0x2de32f45cd5ad479L    # -3.5826346801720276E87
        -0x2d1f55448243d75eL    # -1.69755612780267E91
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
