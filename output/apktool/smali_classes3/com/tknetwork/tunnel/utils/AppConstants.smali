.class public Lcom/tknetwork/tunnel/utils/AppConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Ad_AppOpen:Ljava/lang/String;

.field public static final Ad_BAN:Ljava/lang/String;

.field public static final Ad_INT:Ljava/lang/String;

.field public static final Ad_reward:Ljava/lang/String;

.field public static final CUSTOM_NETWORK:Ljava/lang/String;

.field public static final CUSTOM_SERVER:Ljava/lang/String;

.field public static final DNSTT_CUSTOM_TEMPLATE:Ljava/lang/String;

.field public static final HYSTERIA_CUSTOM_TEMPLATE:Ljava/lang/String;

.field public static final IMPORTED_NETWORK:Ljava/lang/String;

.field public static final IMPORTED_SERVER:Ljava/lang/String;

.field public static final IP_1:Ljava/lang/String;

.field public static final IP_2:Ljava/lang/String;

.field public static final IP_3:Ljava/lang/String;

.field public static final IP_NAME:Ljava/lang/String;

.field public static final IP_PASS:Ljava/lang/String;

.field public static final IP_USER:Ljava/lang/String;

.field public static final P_DNSTT:Ljava/lang/String;

.field public static final P_HYSTERIA:Ljava/lang/String;

.field public static final P_NAME:Ljava/lang/String;

.field public static final P_PAYLOAD:Ljava/lang/String;

.field public static final P_PORT:Ljava/lang/String;

.field public static final P_PROXY:Ljava/lang/String;

.field public static final P_SSL:Ljava/lang/String;

.field public static final REFRESH_REQUEST_CODE:I = 0x3e9

.field public static final SAVE_SERVER:Ljava/lang/String;

.field public static final SHOULD_REFRESH:Ljava/lang/String;

.field public static final V2RAY_CUSTOM_TEMPLATE:Ljava/lang/String;

.field public static final WIREGUARD_CUSTOM_TEMPLATE:Ljava/lang/String;

.field public static final WIREGUARD_CUSTOM_TEMPLATE1:Ljava/lang/String; = ""


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

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->Ad_BAN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->Ad_INT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->Ad_reward:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->Ad_AppOpen:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->SHOULD_REFRESH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x21

    new-array v3, v2, [J

    fill-array-data v3, :array_5

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->V2RAY_CUSTOM_TEMPLATE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x22

    new-array v3, v3, [J

    fill-array-data v3, :array_6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->HYSTERIA_CUSTOM_TEMPLATE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_7

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->DNSTT_CUSTOM_TEMPLATE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x26b

    new-array v2, v2, [J

    fill-array-data v2, :array_8

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->WIREGUARD_CUSTOM_TEMPLATE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_9

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->IMPORTED_NETWORK:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->CUSTOM_NETWORK:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->IMPORTED_SERVER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->CUSTOM_SERVER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->SAVE_SERVER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->IP_1:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->IP_2:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_10

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->IP_3:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_11

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->IP_USER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_12

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->IP_PASS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_13

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->IP_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_14

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->P_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_15

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->P_PAYLOAD:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_16

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->P_SSL:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_17

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->P_PROXY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_18

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->P_PORT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_19

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->P_DNSTT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1a

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/AppConstants;->P_HYSTERIA:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x2c314d3a169fba54L    # -5.122753126027598E95
        0x5c00259c9f6e96c1L    # 1.4670259438819944E135
        -0x6fdeec6a9bddac87L    # -5.499613293627043E-231
        -0x4f0d42763b33aac3L    # -6.629175710709263E-73
        0x56da9052a1676360L    # 2.4954449397598848E110
        0x6859dd90a0e0bea5L    # 4.720390140939481E194
    .end array-data

    :array_1
    .array-data 8
        0x13f638dd0c430e6L
        0x363d7a37e50b4a0cL    # 2.0169266070289393E-47
        -0xefb5d1002099577L    # -2.6245939203129348E236
        -0x188dda4dd4aa2e76L    # -2.0213806159715145E190
        -0x40742311c9840200L    # -0.013604985273103942
        -0x147c0d85f2b4e83L
    .end array-data

    :array_2
    .array-data 8
        -0x52a307a1bced2454L    # -3.5554340547538818E-90
        0x138a8cd746ce4d5dL    # 1.540352935597158E-214
        0x16b1a7d956acfcc8L
        0x118ec672ca533e3dL    # 4.157133473079371E-224
        -0x504ae9de69c2986cL    # -7.113520952565328E-79
        -0x39a3aea9f37cae06L    # -8.974243451624982E30
    .end array-data

    :array_3
    .array-data 8
        0x42ddab4b391ba106L    # 1.304861545877801E14
        -0xe2e0098d72dfb19L    # -1.8751360766304614E240
        0x3c448cd2e5bc060L
        0x55d7280d7e138f34L    # 3.3193312193571847E105
        0x3406a490821cba78L
        -0x3a0acc3de7972a7aL    # -1.049881121987555E29
    .end array-data

    :array_4
    .array-data 8
        0x71dc8d89e35c2ea0L    # 2.9748601716587785E240
        0x386c9fc4a425521bL    # 6.729492219185827E-37
        0x68ea7d62b7308724L    # 2.4751735312448975E197
    .end array-data

    :array_5
    .array-data 8
        -0x5e97ac7ef3787975L    # -9.512314360546072E-148
        -0x27c1425f67a8ffc6L    # -1.2112465023598249E117
        0x3e979556a0ec9641L    # 3.514193460000638E-7
        0x31cd89d119057085L    # 8.559673260676273E-69
        0x2c032bde5d9ed2f3L    # 1.1219263892393775E-96
        -0x150259c512cc2fc3L    # -2.3797537255847707E207
        -0x53b710697ad742a7L    # -2.334835379233629E-95
        -0x3d536342e747fb0bL    # -1.5729756494850479E13
        0x78489e110789921cL
        -0x12784ceca36a0ebeL    # -4.182984929658881E219
        0x13780874ea2a80d3L    # 6.971587861022426E-215
        0x233902fe2f8fdeb9L    # 5.250795057222373E-139
        -0x61c23d8bf78113b0L    # -5.167841683741505E-163
        0x7fbd35cd71ead18cL    # 2.051207619192855E307
        0x7cabb3efab1d29c9L    # 3.455657263200964E292
        0x591ba7ad9243fdc3L    # 1.78530250841654E121
        0x67b0be7d884ed2eeL    # 2.984139668384938E191
        0x7367359b3eb33bd8L    # 8.113913323433894E247
        -0x4055def1bb0ff043L    # -0.05103344527745388
        0x40a21eb96a06a8cdL    # 2319.3621370392852
        0x49f906d1a4cd4c8bL    # 2.286029380619908E48
        -0x459bc94218b68d52L    # -2.041075754421781E-27
        -0x421a2d82cd23daebL    # -1.5877756872302793E-10
        0x2619b3dadc436469L    # 3.796978738521907E-125
        -0x67aad84d80d9154bL    # -1.854714979661865E-191
        0x7b40cc36cbc4c3fdL    # 4.995696091882223E285
        0xce7afea8657a4f4L
        0x716f90bd1356b7efL    # 2.5693169334095113E238
        0x6f537bb4a0f5a7dL
        -0x21d3edb14ad5189L
        0x3d7cfdea79f84aaeL    # 1.6479963890454066E-12
        -0x7a8c7d378abac0aeL
        -0x7eb8773f9ef474d6L
    .end array-data

    :array_6
    .array-data 8
        -0x503898239d04a4c5L    # -1.5791845875397483E-78
        -0x40ae13ef4e1ec20cL    # -0.0010938799892022929
        -0x34e9ffee6156fbbfL    # -5.268017800020425E53
        -0x254e8847ce17ce06L    # -7.567505597047021E128
        -0x409617eb44089b21L    # -0.0031624226537415446
        -0x891ef0c99242a95L
        -0x1b31c8c0669ad2d7L    # -3.8263242015364976E177
        0x6adb345e9cfeac1fL    # 5.4588214271451115E206
        -0x327fe04c843fd4f3L    # -2.122547182151925E65
        -0x6a465f0353976bebL    # -5.108955981084305E-204
        -0x3acf7c15996710d0L    # -1.9965767054125016E25
        -0x1c56db2ee9e1e5cbL    # -1.2146152263163926E172
        -0x7cac981a067d2036L
        0x3a40869192d2db1fL    # 4.1716627651968135E-28
        -0x59fc1f71a4f61e44L
        0x3c517d4e90ef643aL    # 3.79242645845118E-18
        -0x501762b06235b83cL    # -6.642966787900217E-78
        0x2b0cad670ece5530L
        0x714c1050e971300fL    # 5.710735701570796E237
        0x6f456f1dd08f548dL    # 1.0155257683197396E228
        0x2125fbbd4412fb89L    # 5.37262046653147E-149
        -0x1d2feed9e2a452c8L    # -9.47440755704193E167
        0x75d8d4cfcdcb0ff2L    # 4.7723871069836575E259
        0x80b4fd418ff4cceL
        0x4b22c2213bb18f4L
        0x3656c04c2c0b212fL    # 6.226790777932814E-47
        -0x1623c6d2338797dcL    # -8.641432699145289E201
        0x6242bd11860b804cL    # 2.1581597430330853E165
        -0x592f7ef44719a18bL    # -9.986497904420548E-122
        0x76bb610f0388ccb2L    # 8.621363323132093E263
        -0x102ce6121e2ca93cL    # -4.633608151307925E230
        -0x4c2a013699de1ae6L    # -5.475073711210768E-59
        -0x7f9ab4d37fc7d583L    # -9.475987805147314E-307
        -0x28ea56c4d489ea2fL    # -3.255802861157177E111
    .end array-data

    :array_7
    .array-data 8
        -0x26121ca667608aa7L    # -1.580615805295996E125
        -0x4113bf773801d52L    # -9.369435862716099E288
        -0x706c48511956c0ddL
        0x401607448d2dc18dL    # 5.507097440641144
        -0x4d87a4e4a7ae69a2L    # -1.4454560345958494E-65
        0x5c14465296b6c26dL    # 3.684108853654858E135
        -0x2750a838723f5322L    # -1.5807650492121313E119
        0x562f7c886f0c3c38L    # 1.4442829025195002E107
        -0x69d84f36c82583ceL    # -6.044890448346944E-202
        0x3600b12cc569774fL    # 1.427648879842667E-48
        0x6af2bb8cf26ab4b5L    # 1.5035419310283993E207
        0x47b3f05b0423706dL    # 2.650332919311623E37
        0x26851bcb7b1c10d5L
        0x618d93188456d858L    # 8.315846483514584E161
        -0x2d98c62cb4c6545cL    # -9.240615982635097E88
        0x670ee401aff1d6f0L    # 2.6881553586562953E188
        0x7d0871d5d0891930L    # 1.9515062139109065E294
        0x13841405c710da1L
        -0x63ec7dec2915516eL
        -0xff9ed2321886400L
        -0x63ae7e9a63a138dcL
        0x26bb644f4e058f17L    # 4.143648403163255E-122
        -0x6a600d43c8e63641L
        -0x2bc8f50382a38e77L    # -4.921936810914604E97
        0xcf91648d6749851L
        0x6e3937f95b9e9269L    # 9.115880423132057E222
        0x1d99eae0c587bdefL    # 4.395166980488708E-166
        -0x770070c75e284d53L    # -2.446883923527698E-265
        0x76d5ead243c4c323L    # 2.760594927305817E264
        -0x300493871f453721L    # -1.9846561060807434E77
        0x742800c176941550L    # 3.437091182460089E251
        -0x7471947c75cc6458L
        0x4e3b2ec8113a4c18L    # 7.328452283415714E68
    .end array-data

    :array_8
    .array-data 8
        0x5fd8a5904f7030a7L    # 5.163416648803297E153
        0x212372da2b400bdeL
        -0x34583d7dbfb4e642L    # -2.9129430010549477E56
        -0xda7231055c9d574L    # -6.631482247775824E242
        -0x4d0cb3091fd02baaL    # -2.932328862113026E-63
        0x34daf3cce731739aL    # 4.3968064840056485E-54
        0x2ab99735b01966e8L    # 7.141065698314019E-103
        0x6d6de90be6b1b984L    # 1.319800181093241E219
        -0x56552a0d08420b98L    # -5.71327487105478E-108
        -0xcbe712bd0c06f3bL
        -0x522ef8968c036d5fL    # -5.350190149696977E-88
        0x3acf027ac542e74fL    # 2.0039539781173024E-25
        0x5a4e8453d359e98bL    # 1.0328771373621588E127
        -0x595857dce84b44caL    # -1.789317893452834E-122
        0x274bbc09aadb7811L
        0x38c1dad7262e7af3L    # 2.686498549844881E-35
        0x39f99a8811ff0621L    # 2.0197709655451698E-29
        -0x394001e0c3f7534cL    # -6.488883176036433E32
        -0x1a6f12b56b3bb5b1L    # -1.7559628758504174E181
        -0x7c70e2c10df55129L
        0x4f810e80db4023a3L    # 9.643679524172228E74
        0x561541498eded361L    # 4.874837880844266E106
        -0x26eeecf3481601daL    # -1.102260010416292E121
        0x6c528a75b7f926daL    # 6.241755950383921E213
        -0x642d22cb3dbf5cccL
        0x67cdb82ad6360fd6L    # 1.059320424105575E192
        -0x7b713f9a4d42a3ecL
        -0x4e31a15d1f604587L    # -8.800576342994891E-69
        -0x34bcf73028f4be4bL    # -3.646270737308944E54
        -0x6ffd137873ad0eb6L
        -0x50b4f5059bbbc28L    # -1.922915487150024E284
        0x680beba2a321a07dL    # 1.5923174619319704E193
        -0x28027254a05d0fffL    # -7.277894377045216E115
        -0x3fd191423d06490bL    # -15.216291516287564
        0x388b799100ab690dL    # 2.583724246465671E-36
        -0x34bb9f1834267e24L    # -3.9037521219506586E54
        -0x5ccf4e94e181a0bL    # -4.32094291212697E280
        0x4cc3c1ae59315da1L    # 6.349515697282515E61
        -0x7b3d6e730ac3b320L
        -0x73c259c8de780630L
        0x50112bb2b214ed07L    # 4.970576743439992E77
        -0x30ca46db396a31f4L    # -3.838160290604224E73
        0x5c73d7f79eb42ceL
        0x3529a52cef48348fL    # 1.3387427873127998E-52
        0x29ae10c138bb5a46L    # 6.400873577574372E-108
        0xa5ffade5bb11893L
        -0x649ffb80d73be39L
        0x1e12c98c6b6da0bbL    # 8.156178315022307E-164
        0x79be5eb6880903b1L    # 2.691785271568026E278
        0x3df3de103b4e3112L    # 2.891092324790146E-10
        0x3d8e3e1b6651e679L    # 3.4381861935398036E-12
        0x52ba1f864ae9e65bL    # 3.325861367989968E90
        0x50fd16603c9d9bcaL    # 1.3795702809489896E82
        -0x40c1d734917270e8L    # -4.60195222834013E-4
        0x628954d0b947cdc4L    # 4.6679400208650315E166
        -0x26811b99632fdecdL    # -1.2763416924902581E123
        -0x6572f19439d9b977L    # -8.752928962047713E-181
        -0x7ce7d93a3faed1b1L    # -9.4538245796535E-294
        0x5e185805494adf34L    # 1.8998829519962495E145
        -0x6368b59e454a92d3L    # -6.026737634846513E-171
        0xaa0eb0d9fdc39ceL
        0x64b8c5cb5c4c9585L    # 1.5685185493537974E177
        0x140869553b4a8746L
        0x2bd390db0645908aL    # 1.4312646887298482E-97
        -0x4310ddac0301ea77L    # -3.456578807517068E-15
        0x31365e1156dbd64aL    # 1.2659529238544406E-71
        0x3a89832caad3023dL    # 1.0304376427377325E-26
        0x5fcb884b76085f88L    # 2.8839777376377014E153
        -0xdbcc4a71fef8d82L
        -0x6ba274b725b5acd6L
        -0x6a97b09c426fceb9L
        0xa430808d619dc8cL
        0x40a749a74d5aea6fL    # 2980.8267620478796
        -0x7f0165930b7a3193L    # -6.972870245038829E-304
        0x14f7730d345fe47aL
        -0xc4ce6b1033b6855L    # -2.136603357418607E249
        0x10f3d9557db1b67aL    # 5.236740466359146E-227
        -0x4e23c5f0d43a8d00L    # -1.6359218419514278E-68
        -0x69181cd777badbe4L
        0x45d42b8d2e38f7f4L    # 2.496940285199864E28
        0x48918be6653eb818L    # 3.821285894937607E41
        -0x664c6102aa839484L    # -7.215143671449627E-185
        0x7fde0ee1409418a6L    # 8.443013156000255E307
        -0x2abd24a3f56300bdL    # -5.279322822986277E102
        -0x403fb396d405668aL    # -0.12733187339217594
        -0x26c0c93d56975e29L    # -8.060210961794356E121
        0x501468ceecb9713dL    # 5.908119813264953E77
        -0x1217e588ba25cedcL
        0x5c0adc1db22cf2acL    # 2.440345401144497E135
        -0x66e9278e843c7c2eL    # -8.203950521948747E-188
        0x7df25f5692750738L    # 4.8062012997463665E298
        0x338bcd22e48f5a51L    # 2.162599996573306E-60
        0xb4a6cc67b152f0bL
        0x471a0f1ad8b0e60eL    # 3.3826520365201283E34
        0x7bcf33353c4fe2e4L    # 2.3754226550933196E288
        -0x434adf908efaafbbL    # -2.9319186609294494E-16
        -0x3d307188cd8a48adL    # -6.939349122545465E13
        -0x781306ecad5edd7eL
        0x5e27ddd0e1e926c5L    # 3.7252556788346244E145
        0x69a9d1c0d94ed4edL    # 9.881716981997319E200
        0x30b4d693a7c90726L    # 4.607030423310475E-74
        0x5e0005408de182b9L    # 6.251502929859795E144
        -0x75954ac7772d5478L
        -0x787ea8cd3e20dcf9L
        -0xf9b4f6bf38da503L    # -2.56969801912605E233
        0x3e4981185c3590ebL    # 1.1876354905328083E-8
        0x56836203dd901b2dL    # 5.690187381648986E108
        -0x3f73d6fa1d8a68d7L    # -901.1278733431583
        -0x7d0f235927479e0bL    # -1.650103921371645E-294
        0x4bd595e207f1a5baL    # 2.117097738816223E57
        0x518df4522f659443L    # 7.273930044769976E84
        0x33a9415643e288d2L    # 7.858181789379663E-60
        -0x16c106a124623ee2L    # -9.261384247650219E198
        0x23cf78db85ba6373L
        -0x604ea66cf4499ec1L    # -5.054744756971264E-156
        -0x6bd47a72e09db1d8L
        0x45df69ddc1c0f057L    # 3.8888078930553045E28
        -0x5f46932a6018515dL
        -0x55a3c9a81fad794aL
        -0x4f9716855abbad1L
        0x485e48b3603daef4L    # 4.1220427185842923E40
        -0x28cb2b8f30b2b05bL    # -1.252346396758695E112
        0x76b7d6b2cee1a053L    # 7.506511701456E263
        0x71f4c19807576296L    # 8.650175918557546E240
        0x1f4b8dbc66ad5008L    # 6.271501312412173E-158
        0x5c54cb45d2f1abdbL    # 6.045563710449818E136
        0x1bfeb4b72ddcb157L    # 7.759337284535798E-174
        0x1bf1ce48d0bcceeL
        -0x2c9e0bb6343de821L    # -4.681402277064084E93
        0x85c4b451c69909bL
        0x72ddd6cd95051915L    # 2.037425960856924E245
        0x4209fb5f47240645L    # 1.3948938468503061E10
        -0x39f621c4432cff8fL    # -2.5618524416968724E29
        -0x20261573368e1195L    # -5.429368372511024E153
        -0x5eab23eda93e862cL
        -0x63ba901772c093c4L
        -0x12bd1bf74699c839L    # -2.083897055632945E218
        0x530f77e527317b80L    # 1.2820428281207717E92
        0xbb0c78fe4134f15L
        -0x3910f3f6bb611a3fL    # -5.0376664318863136E33
        0x2c983a0e6af6af62L    # 7.259005105526379E-94
        0x63eb12c46d388b4L
        -0x2ded6978ede43aaaL    # -2.311060895073561E87
        -0x374c2efff6f1ada6L    # -1.726252494411071E42
        0x4709fad85a87fda4L    # 1.6861895645680043E34
        -0x4668c97bddf8e08aL    # -2.861217446791099E-31
        0x169d4b77745acf79L    # 9.567826665297679E-200
        0x58103d2807c0f147L    # 1.5996123142929883E116
        0x6f77b2be77a8353dL    # 8.982400743521903E228
        0x6c7a9036b745b6ccL    # 3.577004840048768E214
        -0x10f2372caf849c4fL    # -8.819758487346621E226
        -0xa1b2b74854da6f4L    # -8.006834026761504E259
        -0x613d54cd540e215L
        -0x2bfa04ee21b43bddL    # -5.868822333600587E96
        0x5324082fa6cc50cL
        -0x54b7f9b9e939f3c7L    # -3.432463568938741E-100
        0x5469e81fb1a6a101L    # 4.426915770939941E98
        -0x31d4988591a4137dL    # -3.6940804564206367E68
        -0xa09c65e8ca67e43L    # -1.7085999190909645E260
        -0x386b967fde5b3af4L    # -6.783087474949215E36
        -0x11dbf95c401f0813L    # -3.619425480807781E222
        -0x6783fe931ff1b0ddL    # -9.821258366259743E-191
        -0x100b489ef8affb2dL    # -2.010154266482085E231
        0x4154bf6d5ca0508cL    # 5438901.447284829
        0x3ee7e410638e3d17L    # 1.1392056977559254E-5
        -0x5f9fca1c83c64ae2L    # -9.672276025570192E-153
        0x4671d00e8e66d773L    # 2.258030787551906E31
        0x4e4f2a9ef778f794L    # 1.6804937160695663E69
        0x3197cf5c7d13dbfeL    # 8.624630570808463E-70
        0x56ea1f01db850079L    # 4.907725403652125E110
        -0xd1d84177c7507a7L    # -2.524194604317638E245
        -0x1ec750d0e33509b3L    # -2.1689959882157753E160
        -0x5ad9b820f4faf3c8L
        -0x294608e4e8ba200fL    # -6.098051202951412E109
        -0x7b096b0d680dffa1L    # -9.491244919129826E-285
        0x502c0d94d93542f3L    # 1.624160779078454E78
        -0x511e85cd50a90adeL    # -7.197247440551103E-83
        -0x25b719fb0f255b39L    # -8.427167007085633E126
        -0x4231135028cf2d70L    # -5.625144351952611E-11
        0x372a61d5def5eb06L
        -0xb59eeea42892e10L    # -8.08918001577166E253
        -0x4138e2d683fd1d7bL    # -2.7553932967185014E-6
        0x295c22531ab8f91cL
        -0x20cac09b364825b8L    # -4.346987368156256E150
        0x6fb49ace54a44995L    # 1.249577593356464E230
        0x3df5457aadbc88cdL    # 3.095396558312605E-10
        -0x360ce6d5959559e4L    # -1.7445126112530704E48
        -0x569a8a5096e23934L
        -0xb2cb2a3f5e3e709L    # -5.660604831407729E254
        0x6400021994eb8d77L    # 4.949144045972979E173
        0x79abd854c750482aL    # 1.233996471098363E278
        0x727fba76bca700f6L    # 3.3850441222714255E243
        0x27201614e9a5ecfdL    # 3.114775362912163E-120
        -0x3ef33322ff48cdcfL    # -235931.62534941875
        -0x35b1bea07b06b41cL    # -8.843652734895485E49
        -0x72919e2383193070L    # -5.562035456566236E-244
        -0x6c7bfcdd32bef05fL    # -1.161044900052415E-214
        -0x16b039bc76f7ec5L    # -5.6216442584757E301
        -0x3b438a8ea2d5bfa7L    # -1.3439269930872906E23
        -0x75c15ffd4f1b5c0fL    # -2.489776858259068E-259
        -0x1b34c0761f269e05L    # -3.4505255185146316E177
        -0x1e8c2abc15460371L    # -2.7883519163196337E161
        -0x6f813f13828f1f0dL    # -3.169417086071473E-229
        -0x6e69a9c50f85e921L    # -6.034550230612156E-224
        0x6cf4876dc23fc7dbL    # 7.076932971764251E216
        0x2329cfd1860afef4L
        0x22512076ffb0001cL
        -0x6c8404eac89ed021L    # -8.116767671562403E-215
        0x779a5013f6b148f0L    # 1.3575108183712877E268
        -0x73b11a4ca30b4160L
        0x2e011059b34043d6L    # 4.288928072114167E-87
        -0x154e7157d5cb8f3L
        0x7673abbf53c19847L    # 3.871330113450202E262
        -0x5564934ddf9727b9L    # -1.913205810895964E-103
        -0xd64ec142103e41L
        -0x4315db64e484bb3L
        -0x35612a9c1198310fL    # -2.8840507325398674E51
        -0x7c16f2c572466fffL    # -8.03324381015324E-290
        0x658c656a38fbd22aL    # 1.4728784393065327E181
        -0x65793f3d45e78699L    # -6.854104689916923E-181
        0xf43c6eada5365ceL
        -0x2f293da1c2a15ddL
        -0x6357ca4c07f19790L
        -0x6ec01eaad74b53e9L
        -0x1b4e8fa5035a0ff0L    # -1.1041708177549986E177
        0x42f53a23d6e335b7L    # 3.7343125715029944E14
        -0xf94ae7ebebb7977L    # -3.3929821528720213E233
        -0x249bf1687fb2897L    # -3.63844050710726E297
        -0x334465131c451d38L    # -4.4359809377607385E61
        -0x41e15687d23c1d8fL    # -1.7847627187441358E-9
        -0x5eebf070c5688764L
        0x64e2405512597a8bL    # 9.244878610841044E177
        0x63f03b61ca2f3a04L    # 2.5091608793757547E173
        0x29ff85c9fe01b7f9L    # 2.147552350997224E-106
        -0x2dcfdf7f1d954d0dL    # -8.02031523317594E87
        0x58121e18d27835a6L    # 1.7846711446965336E116
        -0x1573c4c3e10ededbL    # -1.7702690087418125E205
        -0x2e6d25b51c447145L    # -9.156140993394137E84
        -0x32e238deae933766L    # -3.0624744630692926E63
        0x207df1b46012907L
        0x2a748b052f03af68L    # 3.582831522634862E-104
        -0x5bea07f677917afL    # -7.883919669752081E280
        -0x54ab4bbc1dd49014L    # -5.916148690979515E-100
        0x1974036bceea99a7L    # 4.599628727488504E-186
        0x38d098e1e22b45aeL    # 4.994537208332915E-35
        0x315c4bc35a77d1f9L    # 6.405975971606166E-71
        -0xe77a560d24ee84cL    # -7.929334275361793E238
        0x55a8c21be218294cL    # 4.436170664361199E104
        -0x49b56a65e3e76ffdL    # -3.6379545666079255E-47
        -0x578545dfcea5c42bL    # -1.085307325303957E-113
        0x104d8dcd7d85601eL    # 3.807223494522468E-230
        0x833365c0418c4f3L
        0x2e35744bc9e6460fL    # 4.313951143366657E-86
        0x9d3dd71c2226c44L
        0x4446af2f34ddcf31L    # 8.369034720588429E20
        -0x471c7d610878d996L    # -1.174229745648131E-34
        0x2b0ea3f7ce0aa25L
        -0x7e02717ad8d56963L    # -4.413473721848215E-299
        0x123af3e4ecb6a926L    # 7.456339257155585E-221
        0x65ebe0867183e057L    # 9.254100718431635E182
        0x894835a09008a1L
        -0x448c791f88088fffL    # -2.5843587492292445E-22
        -0x766062210d2bdfbdL
        0x103871605a14de16L
        0x44232b8c6a5ac326L    # 1.7681306868945276E20
        -0x575d1f3c356997bbL    # -6.13263800059068E-113
        0x561bf6d8839a9b6aL    # 6.413594858721473E106
        0x6ba82af2cac5d7f5L    # 3.972679374318203E210
        -0x592a661ec3ce7657L    # -1.30706591182482E-121
        0x1f97dd044cbeef14L
        0x57fa757d473c0012L    # 6.515846436939479E115
        0x65e83e20b5827f2fL    # 8.047632438280895E182
        0x686ecb5d18ebb394L    # 1.123980580398729E195
        -0x781c35eedaaa1004L
        -0x6bf54c9fcc9a8db6L    # -3.96566017330511E-212
        0x2a02e69ea507b809L
        0x4475528d5657f79L
        -0x389f32acd52ebf5bL    # -6.979298631530856E35
        0x5636f43419ca84b8L    # 2.105791349538943E107
        -0x1a99f2ff88f266baL    # -2.8593777983850017E180
        0x6f0fed24cca5ddf3L    # 9.454007103477945E226
        -0xbd1fa9410fa5de1L
        -0x734f75e34f1c1babL
        -0x721fea2a6ca91577L    # -7.538455748382895E-242
        -0x6e1a1c9d3e946f8fL
        -0x632bb40b7410f577L    # -8.403261757183808E-170
        0x66e2a27931b8b469L    # 4.054047479035103E187
        -0x755b1553436cd3f3L    # -2.176641209302445E-257
        -0x4c05f07294fc3f3dL    # -2.5948232875246706E-58
        -0x5d8702f1ae63d352L
        -0x64ebc528cee29021L    # -3.120147705929582E-178
        0xe87fd4928e07186L
        -0x60e0b557b57fc4aL    # -2.546355200376933E279
        -0x2b8778a6f860b611L    # -8.382878397636372E98
        -0x744aad8f498c970dL
        0x14cae0720e9e90dcL
        0x635ec25221306c97L    # 4.643342326815315E170
        -0x1b4c7dc719e4999fL    # -1.2352229968972947E177
        -0x4771777086619fa9L    # -2.8713508285163174E-36
        -0x7b84eb4550192efdL    # -4.446194113419512E-287
        0x5754e6a7e898256L
        -0x181a5dd0c329b36bL    # -3.0844284681750583E192
        -0x7eadb626b2f5ea5fL    # -2.666869617938266E-302
        -0x49790f4d1b206e07L    # -5.0228294779358446E-46
        -0x60b2235a044411e5L    # -6.796883622602306E-158
        -0x585a6456b1390004L
        -0x2e4838d7b731612L
        0x4750feadf6d17604L    # 3.5296905853813984E35
        -0x1f45d999901181e2L    # -8.975723135625078E157
        0x63f53f0a16e48075L    # 3.284276858768992E173
        0x2b5e91ff8c6ea0caL    # 8.73536846543152E-100
        0x373d9c6f7c98e34L
        0x71ce478c1d089f1L
        0x30cbe61a00c35f96L    # 1.2336078606384595E-73
        -0x5bdb3ff5b96cef7aL
        0x67a7f74c956595d0L
        -0x64745d48476019b2L    # -5.455840841917496E-176
        -0x163cfaba3370eb8aL    # -2.911865055263824E201
        -0x4ae7d0fe1e8a0c20L    # -6.312219984309494E-53
        -0x3a3f6bd40d5c4aceL    # -1.026177743222341E28
        0x6f44468fd5ad2c3fL    # 9.60641048889406E227
        0x7e9e85089fdc38a1L    # 8.175520357708019E301
        -0x55608f6320682003L
        0x2dd34f0477291647L    # 6.066433657371524E-88
        0x2aeb9b2b6514b97cL
        -0x3b8c08eada618f1bL    # -5.892677047436636E21
        0x29cce49218b791c4L
        -0x2cfea6fc5b6196ecL    # -7.067582624385676E91
        0x1125988490ad2019L
        -0x46462b4bdc8ccefcL    # -1.273560400356144E-30
        0x502f20b8dfda40baL    # 1.802177711172453E78
        -0x5944497bceff8f64L    # -4.192225150254942E-122
        -0x573b640af29d2cd1L
        0x167ef51be86e9aaL
        -0x7455e07122af30bcL
        -0x25d1db1147a741fdL    # -2.5506621450726324E126
        0x1a7cd4b7c7a8b5d5L
        -0x2c290479cbd4cdb6L    # -7.670368340057559E95
        0x525f350015e0a619L    # 6.207992971400871E88
        0x74f25e9db1cd7fe7L    # 2.154844282021875E255
        -0x10864e775f2ba825L    # -9.738674238467535E228
        -0x36911b89f59a066fL    # -5.5113929943153636E45
        -0x4ce0e4124579f758L    # -1.8905505950905949E-62
        -0x2285a0b126826f2dL    # -2.0099531155499518E142
        -0x9b8ba504ef681ecL    # -5.725111055534527E261
        -0xf4111d364834184L    # -1.229310877730725E235
        0x45cf9e7d23380708L    # 1.9571273058888828E28
        0x3456f09ef4356a76L    # 1.461816386713631E-56
        0x66cba0c1ce9281e6L    # 1.5026439950489612E187
        -0x2ea326cd70c7540dL    # -8.756709864553196E83
        0x69f5909b48d032ebL    # 2.641094476411159E202
        0x6ab3868eb6fa0e1fL    # 9.794939925481545E205
        0x1aeaddc6f64d107cL    # 5.179653716188375E-179
        0x7f58b0fb1fd65843L    # 2.7091941994636336E305
        0x25a3f6107161dcacL    # 2.303765320888927E-127
        0x64e4840c1393e9aaL    # 1.0391927488281087E178
        0x2178a694f7bc384dL
        -0x2d9345537efaf76bL    # -1.1430156870872618E89
        0x53bcaf881f7f6683L    # 2.3934461325790214E95
        0x57b10c5c2b2d3cd2L    # 2.6239706588141093E114
        -0x748b3f05e1e3011eL
        -0xdff404d7dd8fd70L    # -1.396016966308738E241
        -0x5ec864f4bdfa552aL
        -0xabe93a70c6c735eL    # -6.54026048211314E256
        0x2ce86fb098ce143cL    # 2.3429692133584043E-92
        0x1c75b9c3e145c3c0L
        0x73932eb9c093bf62L    # 5.364906252970412E248
        -0x6a560c8582bfecabL    # -2.586595511737007E-204
        0x2fbfcfabe1b87873L    # 1.0731524502523433E-78
        0x57ac5e992eb001e1L    # 2.1832347558844048E114
        -0x57cc777e0f001c68L    # -4.957420861039818E-115
        -0x65f13cfe9b79f7d9L    # -3.619791421496054E-183
        0x4e1822cc65733965L    # 1.6267585542119654E68
        0x51a1a1922993ba04L    # 1.7125730217630187E85
        -0x4a223391882df5e4L    # -3.185781648254071E-49
        -0x60844f02e5ed862L    # -3.365322800505655E279
        -0xe194b0fff0680d0L    # -4.731537017405971E240
        0x74b54f2b49aabfc3L    # 1.5623006350827868E254
        -0x7a035a84bb8806adL    # -7.890677203939246E-280
        -0x1c02116be8ccc5bdL    # -4.626925321122103E173
        0x67b0d09a77115aaaL    # 2.9967494660355014E191
        0x6f0836a357963173L    # 7.170064544936905E226
        -0x12b8bf8efa594b55L    # -2.5649685460141864E218
        0x64dd99113b0275e0L    # 7.496156395784964E177
        0x4e64c9f111d6df1bL    # 4.4837269942775076E69
        -0x777693a348a88f57L
        -0x4d2925c053c8bfccL    # -8.679911416417097E-64
        0x459c0edf3f4601c4L    # 2.170889872846838E27
        -0x1d2d250603901898L    # -1.111866941357249E168
        -0x50e66bf1ab85b4f8L    # -8.426623809558927E-82
        -0x46d6db1c63882090L    # -2.421288570011292E-33
        -0x40cad61a5cd5e73cL    # -3.229318273628818E-4
        -0x1ff22b1a9910a2aaL    # -4.9997087946966095E154
        0x232bea5213e6f05cL
        0x70263bd9131492e4L    # 1.72591736659233E232
        0x41db932db5b5b72fL    # 1.8505213028393056E9
        0x12e52d1e4af388aeL
        -0x15622d0c5e52da0fL    # -3.740273739092467E205
        -0x76d41952a89a16d7L
        0x2bbcd5cd2a836060L    # 5.273316224613797E-98
        0x24151246150f34a6L    # 7.247612560438676E-135
        -0x6a1ec4cf21aaccfcL    # -2.747949974521691E-203
        0x412166fc19b36f02L    # 570238.0501970949
        0xcf03817caff6bc3L
        -0x410dea605d822fa3L    # -1.7246691782671668E-5
        0x2c7334b08efe4fcfL    # 1.4386468641962127E-94
        -0x3d7794802ccb3bebL    # -3.3562481394165103E12
        -0x2ba8ff7351428f3fL    # -1.965291481349892E98
        0x1509d94bb6816eedL
        0x22d5f34a66186722L    # 7.200183525072457E-141
        -0x2d7d1d414c38dc8cL    # -3.005538745184954E89
        0x61752ccd895f1eaL
        0xce041da9c799a55L
        0x37f03ccb17fc49c2L    # 2.982352955641019E-39
        0x388792c047dec5b5L    # 2.2168174446041774E-36
        -0x5f2bb190dc2c4f8cL
        -0x7c60b7d3f3830251L    # -3.13471192876837E-291
        -0x1623a1d4d87a520cL    # -8.685672953033123E201
        -0x770e25addf8a02bcL
        -0x5944c4c809494a73L    # -4.119367190423445E-122
        -0x423219b69136d3b2L    # -5.4386979163522014E-11
        -0x672865dc314a51a0L    # -5.297287464566337E-189
        -0x52125505cf1287b2L    # -1.864222673853521E-87
        0x6c3e60659d63d5e8L    # 2.5565565431920384E213
        -0x3c4ae9104c325169L    # -1.51966547981307674E18
        -0x792d0ffc4f8e58daL
        0x76b8a308526a856aL    # 7.757849016794975E263
        -0x3e5f9a6199256556L    # -1.3754757142696124E8
        0x43651df3977db123L    # 4.7551252534233368E16
        -0x5ad16ef729ddfc4L
        0x6d2b429fae4591aL
        -0x132cb2323fd80938L
        -0xeafe75501ac5782L    # -6.550949411031855E237
        0x68104c1ecaa5f8edL    # 1.8588917017151444E193
        0x6479ad2ca0f91c3fL    # 1.0160911539386575E176
        -0x261444ae9fbb2ebeL    # -1.4665770174179213E125
        0x548badb82154277eL    # 1.8918755595563489E99
        0x300b4c0b9bda8929L    # 2.946774291326594E-77
        0x7688c81c2a7fd035L    # 9.754319414296636E262
        -0x21c7f724e69ee743L    # -7.502995644059978E145
        0x66d97aed1e233935L    # 2.771659160797328E187
        0x35a6a708dbca3de1L    # 3.0272373127834546E-50
        -0x2e0189cb99a3cb59L    # -9.468331037771681E86
        -0x32c77d3f8f09f706L    # -1.0083137263011586E64
        0x12ae659f6129a78bL    # 1.076374395922403E-218
        -0x239f4d0ce86a2bcL    # -7.208252670208079E297
        0x1151956b86b25292L
        0x734382927723802fL    # 1.705158607444279E247
        -0x7e38d1ee0b5c226fL    # -4.326602945723379E-300
        -0x3e73b5775eaba820L    # -5.933083616618323E7
        0x517acd4e864b7eL
        0x3d3dd79b09b0e346L    # 1.0602082568287368E-13
        0x101d262dac1af2bcL    # 4.6938477799933987E-231
        0x15e51d7f8a57de8L
        0x17465ebf4d4fdd56L
        0x2d1f91144e4e2a84L    # 2.4213118702149513E-91
        0x74fafb139b23a962L    # 3.1649776432584906E255
        0x42fc1b51ee494efdL    # 4.944586282488158E14
        -0x57f63e8b0a56e1aL    # -1.20600343600588E282
        0x2b5513e34c436b0fL    # 6.022882631247683E-100
        -0x13e5b0845615dc40L    # -5.535868166524626E212
        -0x2d3259a24ae9d55eL    # -7.549730813483901E90
        -0x98ab505ca6c2873L    # -4.190546371992897E262
        0x43bc805ac1691330L    # 2.0537412168189993E18
        -0x6fbba7b55976ec9L    # -8.77310111237184E274
        -0x65e9fc5d0bedcaccL    # -5.180905320115955E-183
        -0x12f1b3b3f4c0b9beL    # -2.08891783976907E217
        -0x55c6549c392df770L    # -2.798071365922529E-105
        -0x684d44fc187265f5L
        -0x56761d4f36565efdL
        0x1c87b3c2650f81acL
        -0x4a8cd2f8c526f4efL    # -3.203290391907344E-51
        -0x42a29bd47931bf1dL    # -4.1767534018751766E-13
        -0x73b037c69ce9174eL
        -0x255d9ab8503fc9c0L    # -3.984765017034288E128
        -0xecc0247e58a9370L    # -2.0340100038338233E237
        -0x6b6c23e5a7c3f8b4L
        -0x6f6f2b3f3fa32ddeL    # -6.93832966679767E-229
        0x272632b7f350d726L    # 4.298212878142334E-120
        0x58059dd8680a713L
        0x128d352f4e6baa1cL
        -0xb2ee6723f0acc6aL    # -5.014733621762577E254
        0x7343e02ca326eb5bL    # 1.737114629094975E247
        0x215cb02d67f78f6dL    # 5.60899862511461E-148
        -0x63d04e4411b2994bL    # -6.407274168219884E-173
        -0x168aff1709379b69L    # -1.0048238654465024E200
        -0x35f332bf2b580000L    # -5.261729340743616E48
        -0x5ff48417a8c1c0dL    # -4.741588253371574E279
        0x6316a4510d91501L
        0x79edfcabf3994f69L    # 2.126272879089825E279
        0x47a6f9a0e4d86416L    # 1.5269580570785359E37
        -0x650297bd4a1906a2L
        -0x2375783d17766f0aL
        0x8ee095c8143d806L
        -0x536192e57a4656ddL    # -9.116515540585887E-94
        -0x55f94a5753432a20L    # -3.094290757387903E-106
        0x122a406ee529b015L
        -0x1618958ebc101f90L    # -1.4338903339918631E202
        0x77602076f7e4165dL    # 1.0400034587721679E267
        -0x3e490e130205ab56L    # -3.849535979778544E8
        0x6c6bb0cfab808f81L    # 1.8644055174260715E214
        0x49da06f642de3d81L    # 5.943560675559776E47
        -0x6e40aa74a0a80692L
        -0x4edee0d59706ec03L    # -4.845280957626141E-72
        -0x736fbb966a28673fL    # -3.635275685231158E-248
        -0x6eb69db5e0fca152L
        0x20e41d4cda37f3daL    # 3.072418836341784E-150
        -0x1f2d747c7891719eL    # -2.5461501191095134E158
        -0x35b3e0221b5cda63L    # -8.220794588193382E49
        -0x3bd974196744ae0aL    # -2.0795464118391348E20
        0xe617efb69a79be3L
        -0x41ec725c79b12521L    # -1.1381504846503632E-9
        -0x542ca2f94769f123L    # -1.416454626661831E-97
        -0x1898d432fb6d43faL
        -0xbc3a24e4d30dddeL    # -8.123709398745977E251
        0x69e9cf96d380c1caL    # 1.5805570450691487E202
        0x19942405741763f9L
        -0xac0d273716c3318L
        0x45c48a72f4580230L    # 1.271414963332001E28
        -0x1849d4b75a759150L    # -3.950980410146021E191
        -0x4e781f52844fc14eL    # -4.324566193673915E-70
        -0x2a719bc0d0066a5aL    # -1.3613880406959024E104
        0x45abdcf01b347d1L
        0x7184d8fceeedda6cL    # 6.787703161352971E238
        -0x767d488086fcaebbL    # -7.429937054665442E-263
        0x649dad65b226983bL    # 4.697668279744767E176
        -0x60b41cf7c0a76a1dL    # -6.347338528907011E-158
        0x6cdbe36a1fe7f018L    # 2.403474610371657E216
        -0x6fc0d1f2fde3fc25L
        0x7d8259663f8f6418L    # 3.7501036348698366E296
        -0x71f0183675ee77e3L
        0x74396ccf35e931c4L    # 7.281451855427758E251
        -0x415e490e647d910dL    # -5.279369395152597E-7
        -0x4cd1e236582fa48dL    # -3.660440578556284E-62
        0x702eacfe8b390895L    # 2.3812335445145517E232
        -0x7ba22889c78e1c2eL
        0x6e48c711525068d7L    # 1.7912911619262782E223
        -0x309364059c15543bL    # -4.04385912053352E74
        -0x4ca2e6bb8667baaaL    # -2.829400960652966E-61
        0x7a1195a16ad42d91L    # 9.97483838087364E279
        0x17a6de578df744afL    # 9.789735069092973E-195
        0x2ad0929f2b6d34c9L
        -0xb202058b0952033L    # -9.347341367434214E254
        -0x14e1b0a6742be97bL    # -9.731110191900911E207
        -0x7b9f854161190b7cL
        -0xe1d8c084e6fc288L    # -3.845151834091874E240
        -0x8e0b46e6dc41ce4L    # -6.306868638192934E265
        0x671a4368a9327d86L    # 4.570954075877713E188
        0x56bdf71a7c35e3c7L    # 7.037466065434145E109
        -0x745ed9bdf7c60d6eL
        0x7005b8ff456b435eL    # 4.2155999469067215E231
        0x6d92e72d01d70e2aL    # 6.672802751065833E219
        0x351215daad22e1f6L    # 4.720501300910109E-53
        -0x510531bbbcfea2b3L    # -2.207744547617572E-82
        -0x68faa2c3e40b0c50L    # -8.93139836940301E-198
        0x2a85c04fc2591ca4L    # 7.587087038723257E-104
        0x41e4d2b9b7b8fff1L    # 2.794835389781243E9
        -0x25e6232055a53a01L    # -1.094192018366556E126
        0x7b92b517e6197e43L    # 1.780365698713201E287
        -0x1c1bcbf6949c404dL    # -1.5615258018955129E173
        0x480bff76c5fb8eb7L    # 1.190899219048116E39
        0x4e948477bef133acL    # 3.540156265191165E70
        -0x2cdfbfb4aab8c71eL    # -2.648334093785131E92
        -0x1309c7c659316cfeL    # -7.659734425245924E216
        -0x2297d5c63f131513L    # -9.208603286224142E141
        0xda9321720660651L
        -0x2a4b105e331226a9L    # -7.502629791507466E104
        -0x203a8817d3c42aeL    # -7.414173570890751E298
        -0x136dca6e065c2aa5L    # -9.808197139158657E214
        0xf838fdcdaaf2238L    # 6.152417897181488E-234
        -0x654f7472fb20e51aL    # -3.987241463485782E-180
        0x688d48c75e7b225cL    # 4.2754510039885326E195
        0x7b4f5db69f219cacL    # 9.328374644494472E285
        0x2f053291a30e685bL    # 3.49169698707259E-82
        0x30d26d09bcfc5661L    # 1.6294854237495426E-73
        0x4b26d5d62e893fb0L    # 1.0935935784978455E54
        0x1338f29591468273L    # 4.52305430593446E-216
        -0x57c2cbadb2705a6aL    # -7.411901997614155E-115
        -0x6dbf779d9d506cefL    # -9.147413644416446E-221
        -0x7780be7ec4789573L    # -9.466197763524661E-268
        -0x441669c803f4f72fL    # -4.3345711264306153E-20
        0x93088301e7f86aeL
        0x4fdd7e70501e33ccL    # 5.336188197857621E76
        0x654e09756719647bL    # 9.737404844757586E179
        0xde1e27fb3bea1dL
        0x25837c019f666d56L    # 5.621845198824969E-128
        0x7335027f260bea75L    # 9.181156723555887E246
        -0x4210b91356953a1L    # -4.713506212842433E288
        0x4b7447cc9c391c78L    # 3.107972348884297E55
        0x2ff38d0a1596ed9cL
        -0x3ca3537998ca954aL    # -3.2283970420189912E16
        -0x3531a3fd94778e4eL    # -2.271760908276603E52
        0x1440068068d07573L    # 3.808218355085991E-211
        -0x50b2d5bf906d835bL    # -7.686592123172106E-81
        -0x71fd44a8148aa4adL    # -3.511504528000494E-241
        -0x345cf1818c9fdbeaL    # -2.336334444199289E56
        0x469babf613d0fd23L    # 1.4031230808936568E32
        0x726f0525e263fc5fL    # 1.65474029319548E243
        0x79289e45af5905beL    # 4.261703603973261E275
        -0x4c6d055d52d64e6eL    # -2.9526721352052907E-60
        0xbced19f7066a100L
        0x5ddb98d1b1879542L
        0x336d544504a8fe44L    # 5.7036226130095024E-61
        -0x10ff7facae96c741L    # -4.886345346229965E226
        -0xb874ca092d0fc6aL
        0x7a9aeb2e6a3e4444L    # 3.909035921225827E282
        -0x445b62e4bf4cb92L    # -1.0007354872251977E288
        0xc677e3d83a815f7L
        -0x721c2766193f80a5L    # -9.300978269273756E-242
        -0x1569ea502670a54cL    # -2.769675246399089E205
        -0x46cee54527f6b3abL    # -3.294190216304457E-33
        0x3305cac01b7bc3f5L    # 6.621675317969951E-63
        -0x42178ece53d292bdL    # -1.77840150668924E-10
        -0x14ca4e00ffdc139fL    # -2.786137987237625E208
        0x1da3d72f7a32cf3eL    # 6.7292475210467E-166
        -0x6c63f8a704e90450L    # -3.25226611425761E-214
        -0x2262fe82e609bb50L    # -8.842662244436822E142
        0x572b706c6d7e4e86L    # 8.248578908300635E111
        -0x43a9915ce903795L
    .end array-data

    :array_9
    .array-data 8
        -0x1596bfee3d8c6d96L    # -3.958340196500591E204
        0x2c620ee7e7ae97d5L    # 6.763421607308164E-95
        0x45bd2b4ab885ddd0L    # 9.027401954029173E27
    .end array-data

    :array_a
    .array-data 8
        0x2c70d903e69fdd34L    # 1.2620088410147499E-94
        0x7b82190295606441L    # 8.611705429577724E286
        0x776f7dda74c3ffc9L    # 2.0308652079389982E267
    .end array-data

    :array_b
    .array-data 8
        -0x68257279690df20aL    # -9.093554973567022E-194
        0x7eef6dc8cefbd959L    # 2.6941022640881263E303
        -0x7f1f2c00155fd849L
    .end array-data

    :array_c
    .array-data 8
        0x59cea4f2fc9d7225L    # 4.051523806068058E124
        0xf8dba9b4ca32aedL    # 9.350023190148527E-234
        -0x3e94690d316e5e3cL    # -1.4464918455277331E7
    .end array-data

    :array_d
    .array-data 8
        -0x5010b64ca9b62517L    # -8.4439848510270295E-78
        -0x5b537ec45cf10b5dL    # -5.019843269836735E-132
        0x7bd7449f6fc0e887L    # 3.54303952779933E288
    .end array-data

    :array_e
    .array-data 8
        0x622b7343642e8dafL    # 7.90376289040774E164
        -0x36ff49f57ff60c4eL    # -4.658374152907455E43
        0x2afda9ad2fbffc52L
    .end array-data

    :array_f
    .array-data 8
        0xc3fedc1aef7a947L
        0xe5ed91d7528bd6aL
        -0x4e4314652960b9bfL    # -4.1902918396069495E-69
        0x51b71c1c57caade2L    # 4.4894704094560794E85
    .end array-data

    :array_10
    .array-data 8
        0x20c89ba649427d97L    # 9.39698657419792E-151
        -0x3cab866877217810L    # -2.305276511008352E16
        -0x30566762c0cefc9eL    # -5.788733623121377E75
    .end array-data

    :array_11
    .array-data 8
        0x56dc3c16a10dcba9L    # 2.6524177168251697E110
        0x721498c8e22fa980L    # 3.4334965322185485E241
        0x2c4fa33558ac1e17L    # 2.9623337800328057E-95
    .end array-data

    :array_12
    .array-data 8
        0x7d022006db593bdaL    # 1.446992577158282E294
        -0x94a67ce2e234da3L    # -6.799853822960776E263
        -0x5462a035c955f20eL    # -1.3429726620184079E-98
    .end array-data

    :array_13
    .array-data 8
        0x6ef249f56ca65369L    # 2.7078485385523955E226
        0x24c8127adcc93437L    # 1.695693893414515E-131
        -0x7cb96421459f6e0aL    # -7.079996331028792E-293
    .end array-data

    :array_14
    .array-data 8
        -0x7ee46de043cc0d0cL
        -0x156eaa1ba7828575L    # -2.1740714932064864E205
    .end array-data

    :array_15
    .array-data 8
        -0x449fdbe56b8e578eL    # -1.0681238047582712E-22
        0x56d693c7699b3430L    # 2.1209464055071158E110
        -0x5add8a7419346114L    # -8.321927967699357E-130
    .end array-data

    :array_16
    .array-data 8
        -0x3030a0032a3226eL
        -0x705bd6903511f5c2L
    .end array-data

    :array_17
    .array-data 8
        -0x22d627ba432d54a0L    # -6.155472639826019E140
        0x55663d48ef908ceL
    .end array-data

    :array_18
    .array-data 8
        0x5267c855f472f77fL    # 9.462096391040133E88
        0x24bf548dd03153dL
    .end array-data

    :array_19
    .array-data 8
        -0x1548b82e6e0ff3ccL
        -0x159c6a6b9e913d3fL    # -3.0701176858038223E204
    .end array-data

    :array_1a
    .array-data 8
        -0x2ded318e05870d54L
        -0x4702961126277ab7L    # -3.54055748686496E-34
        -0x29852292253983f0L    # -3.943343541783829E108
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
