.class public Lcom/trilead/ssh2/crypto/dh/DhExchange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final g:Ljava/math/BigInteger;

.field private static final log:Lcom/trilead/ssh2/log/Logger;

.field static final p1:Ljava/math/BigInteger;

.field static final p14:Ljava/math/BigInteger;


# instance fields
.field e:Ljava/math/BigInteger;

.field f:Ljava/math/BigInteger;

.field private final hashAlgorithm:Ljava/lang/String;

.field k:Ljava/math/BigInteger;

.field p:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/16 v1, 0x28

    .line 12
    .line 13
    new-array v2, v1, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/16 v2, 0x41

    .line 27
    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/math/BigInteger;

    .line 40
    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p1:Ljava/math/BigInteger;

    .line 59
    .line 60
    new-instance v0, Ljava/math/BigInteger;

    .line 61
    .line 62
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v2, v2, [J

    .line 65
    .line 66
    fill-array-data v2, :array_3

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/16 v2, 0x10

    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p14:Ljava/math/BigInteger;

    .line 82
    .line 83
    new-instance v0, Ljava/math/BigInteger;

    .line 84
    .line 85
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    new-array v2, v2, [J

    .line 89
    .line 90
    fill-array-data v2, :array_4

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->g:Ljava/math/BigInteger;

    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :array_0
    .array-data 8
        0x463ec9b388bee3b4L    # 2.4392684058868623E30
        -0x48d1c2f0eca13da3L    # -6.7797087086532495E-43
        0x6836ab0dc5584b9dL    # 1.034222200356341E194
        0x193ccc9be9d802d8L    # 4.136794473910253E-187
        0x1eac31bfcd6ac31dL    # 6.266920018942788E-161
        -0x795f7b2bef849edeL    # -9.318673341974696E-277
        -0x375d7e65ed80bc08L    # -8.060611846292154E41
        -0x161509e2d39f8cddL    # -1.6510083437006917E202
        0x13937f1f57fdd302L
        -0x3b5be8f69517632fL    # -4.743614169077116E22
        0x6428ac8452272902L    # 3.0513020614933744E174
        -0x7c686188bec7ee97L    # -2.366823344575186E-291
        0x1bd4348cf171b2aaL
        0x4f72227fe4d9ca89L    # 5.126616728932017E74
        -0x613298b12b14ba93L
        -0x760733a8402ff581L    # -1.260039518995726E-260
        0xbc604372078e3d6L
        -0x10e0e41535c7ce62L    # -1.842398264713231E227
        0x386832ab98802b49L    # 5.688906201431132E-37
        -0x189cb916e35ad4a8L    # -1.073610140580788E190
        0x3704864176f6156bL    # 1.1504344490069608E-43
        0x66417dc0a187f2ccL    # 3.7161007132301744E184
        -0x4d6c6d4fe7fa4664L    # -4.646418563447541E-65
        0x7deeb6b6f96a340dL    # 4.0173370949090773E298
        -0x1d9599609d3e7710L    # -1.2162584180064714E166
        -0x37bbe6b96956d69eL    # -1.3678489109714594E40
        0xc066020e039e3f3L
        -0x44b3bd80cacc52deL    # -4.6751840483144507E-23
        -0x3212ce1715d00943L    # -2.4596705350875895E67
        -0x4b8307a0e474759eL    # -7.384350918120921E-56
        0x768974ccb1bd9ba4L
        -0x740d225f766c884bL    # -4.117155397716493E-251
        0x6a80ed5abe0329b1L    # 1.0614298926180428E205
        -0x2f93f576433ef63fL    # -2.5975559903289367E79
        -0x15bef6a6f70c6b5eL    # -6.676791848222021E203
        0x372d07e980786d85L    # 6.50895439745175E-43
        -0x288c48870a365aa9L    # -1.8966726564194887E113
        0x1e910a4119af6170L    # 1.89379666186395E-161
        -0x5fdd629ef8c903f3L    # -6.941761800227908E-154
        0x7ecde7c22b940624L    # 6.408758674318606E302
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x63431051dfd83cc4L    # 1.4389174709975624E170
        -0x1dc69879d9c84f80L    # -1.462939696483016E165
        -0x79694c1648a5f0c2L    # -6.40358433687383E-277
        0x21a8cbe7efebf8e5L
        -0x626e5f1c46811f6bL    # -2.989490250026702E-166
        -0x60c0ee40c9ff3929L
        -0x405739da75844c67L    # -0.04838673892468321
        0x4b7607fba0818e70L    # 3.376269012581427E55
        -0x1299c3752997c072L    # -9.81190125245388E218
        0x62ba609feb38599fL    # 3.8885729709286867E167
        0x316c6282f7e8bb01L    # 1.2852186919832806E-70
        0x41c4cd2f326cd6e8L    # 6.979825648503084E8
        -0x1f5d7505f1529dffL    # -3.182327650035894E157
        0x3c38bd7c34343283L    # 1.3411676528162122E-18
        -0x2a0f2152e7a48167L    # -9.672732206658775E105
        -0x1ab2ec3f3d66535dL    # -9.426260021143583E179
        0x717fef86a5d3e31bL    # 5.198910250651566E238
        0x49cba4196da30fcbL    # 3.156045762789503E47
        -0x219f22b98b29da17L    # -4.211702393823737E146
        -0x1f58e611f2aa2091L    # -3.964641804472103E157
        -0x1768f9852bb14ce9L    # -6.723303517161363E195
        -0x5b6e7c13a5840c9L
        -0x1c6d54800c46c723L    # -4.509413175620055E171
        -0x1df172f3af16a562L    # -2.1991388267574932E164
        -0x4593fbd7be02556fL    # -2.828917233048954E-27
        0x7ac41e7b62bb02ecL    # 2.3372966870174595E283
        0x4665b1e22d62f7c8L    # 1.3750749528842314E31
        -0x3c02a04889c27170L    # -3.3865793093667193E19
        0x3ca27dbd8f89ee9eL    # 1.2830829257898132E-16
        -0x29dfd047ec9810e3L    # -7.424698357273001E106
        0x359b185c355c0641L    # 1.81047448536959E-50
        0x2b4de36943a3dc3L
        0x59dc0b1c9bfa6353L    # 7.415304181686212E124
        -0x48c43bfad2b34624L    # -1.2450572277668978E-42
        0x403f7b8a64cf4679L    # 31.48258047161514
        -0x323355efd702e392L    # -6.03740815740959E66
        0x3df81b6a76c7ec27L    # 3.5080437754421707E-10
        0x4d7f5fe86d4930fcL    # 2.0650845441166595E65
        0x3c5eb997030aa635L    # 6.662413786556795E-18
        -0x3a19a35ac6c694e3L    # -5.5365373100365245E28
        0x1c4ca06c0208db08L
        0x3b5bc8cc0702881cL    # 9.193074632039068E-23
        0x3b3543899e85328aL
        -0x139ab3f2165bb64eL    # -1.4339273402188394E214
        0xc31303b658c2b20L
        0x19340d751bf01311L
        0x167387415b3dc93dL
        -0x754f57dcb0bd0d5L
        0x15b581bb11e8a89L
        -0x6d7193d6d003c9a6L
        -0x568615337971955L    # -3.429988046819776E282
        -0x60913116b76c249fL
        -0x128f9b87c4490476L    # -1.446641711481227E219
        -0xf59098c3835258cL    # -4.563201749885756E234
        -0x1478b2ba7d8a91c4L    # -9.575848051387985E209
        0x52386fd543084ea3L    # 1.215301226912649E88
        0x69b0fc917b88af7dL    # 1.3002397843720263E201
        0x2116b80c900e65faL
        0x5315f0ff6fae501eL    # 1.787816655194297E92
        0x491623209eabf62aL    # 1.2341910608048142E44
        -0x39d6e6ffccc73028L    # -9.942207149954135E29
        0x562af88ba92613c6L    # 1.2371535673752612E107
        0x5b20c3011324ae08L    # 9.294951014155718E130
        0x3880349fee9483c6L
        -0x2bf3f5177ba35379L    # -7.4873315410695E96
    .end array-data

    :array_2
    .array-data 8
        -0x20a14ac66214484eL    # -2.5129746384152494E151
        0x3ac9c0762efcec30L    # 1.6641712858840426E-25
        -0x5576e412fcd9923bL    # -8.758352011450385E-104
        -0x3162e976f3666441L    # -5.018954896272877E70
        0x1c6688ba43f6ff91L    # 7.288741554316694E-172
        0x2e14ee1162f7fc53L    # 1.0521302477993382E-86
        0x146a0cc530731a0L
        0x6137fbaa43b6d2faL    # 2.1073779291597152E160
        -0x79129d276e12d546L    # -2.652382665540076E-275
        0x13bae3e6ce25adddL
        0x26fffda6b5a0a7dL
        0x7be52ced8fdad9e5L    # 6.448809248320324E288
        0x52d6da37339c9ec6L    # 1.1637792685780201E91
        -0x37abc3f71e985ff9L    # -2.754178851317168E40
        0x3bb17f6bc97d8b67L    # 3.705290242438159E-21
        -0x306fe45ee9a7894fL    # -1.8214555579195618E75
        -0x53a562bdd808ad71L    # -4.983979820976588E-95
        -0x327b9d27e02a3d39L    # -2.6836349918432847E65
        -0x16693efd040da81eL    # -4.354256041011963E200
        -0x4bb09d1867dde17bL    # -1.0000266897439408E-56
        0x851d4b7c33a6fd9L
        0x3b8276b453e0913fL    # 4.887297806216398E-22
        0x784cf23d2369e50L
        -0x3a0478d452c9c431L    # -1.363121041244436E29
        -0x2ccaacae15cdef9eL    # -6.950519503222056E92
        -0x18d3faae99eafddbL    # -9.753655565264907E188
        -0x38327538156e445eL    # -7.853640725648736E37
        -0x692e787a7649ba01L    # -9.160295006019033E-199
        -0x1634911615478324L
        -0x972f236af88c7f6L
        0x2d65d3b6ffe5ac42L    # 5.357541878456405E-90
        -0x73a3729ee8b9eb9dL    # -3.987898813591607E-249
        -0x2385f67cd2add297L    # -3.027970335671488E137
        0x72d755512711c574L    # 1.5932065593673333E245
        -0x3c79487223e85e22L    # -2.04616620750158784E17
        -0x1bc56451aa437c18L    # -6.580999200708875E174
        0x381d751eeef3e6a7L    # 2.164195541699134E-38
        0x6029e7d5aed47944L    # 1.7366868333313678E155
        -0x26cfc1934b3fdeb2L    # -4.194566992845831E121
        -0x520c31488d86ffd3L    # -2.4892621678624357E-87
    .end array-data

    :array_3
    .array-data 8
        -0xcd480220e24ac3eL
        0x4a8a21010b010a86L    # 1.2219988008120089E51
        -0xe661019657c6c4fL    # -1.6889554723838078E239
        -0x20f528d71e96d8b9L    # -6.864010495894795E149
        -0x5d920da979c12922L    # -7.6743228417885E-143
        0x325ce80bab141cf4L    # 4.288796027772257E-66
        0x7039948f065bed4aL    # 3.971389002317229E232
        -0x5b0e85e324003aeeL    # -9.84892539677122E-131
        -0x40ec588e668a0f1bL    # -7.497435432485577E-5
        0x63985bf2e9176ff8L    # 5.883559178862416E171
        -0x66d091ce4bf9eaabL
        -0x57ad7183ba7fae60L
        -0x3bb6df9c62c94c99L    # -9.27004967465821E20
        -0x3aa70e40f507e0a3L    # -1.2062333644662793E26
        -0x1aa86ca7cec5d013L    # -1.5285495587815929E180
        -0xd3f1248bf6b8cefL    # -5.779455939368791E244
        -0x6f9b623c3cff77c2L
        -0x41b0a5a4c811d557L    # -1.4599857099127324E-8
        0x6c0327544308212dL    # 2.0150138818417663E212
        0x18ced92e04d34dddL    # 3.461822486248877E-189
        0x2e99c024efd8d354L    # 3.3138127289022185E-84
        0x761cccc16d7d21e5L    # 8.856173850938269E260
        0x5bc210be9751adb2L    # 1.025831112667732E134
        -0x62748e3e9b445b94L
        -0x6beb1007b06ff4b6L    # -6.219356502815471E-212
        0x911d5bba8bed60fL
        -0x347093950ed68ea5L    # -9.631276811715592E55
        0x6221a3ce4679b3a8L    # 5.079055210012506E164
        -0x7af4bea075bcc651L
        0x295ac88425c8f431L
        -0x53913edd72cd2983L    # -1.1518584316373501E-94
        0x35c3c5f56e484008L    # 1.0569862980300772E-49
        0x5a60c9824814f19fL    # 2.2727151339670854E127
        -0x56d15849749d4edbL    # -2.549381032098953E-110
        0x656a96c3db2baac3L    # 3.4478488284604597E180
        0x67fd005e08ebae92L    # 8.2698327728081E192
        -0x7920b1024bb8fd52L
        -0x414ca08decf63fedL    # -1.154710911912414E-6
        0x1b1230e6a3b166f5L
        -0x6f78de3ab11e3065L    # -4.767875785363098E-229
        0x7ea91cb526bbac46L    # 1.3453936621770397E302
        0x41cc50da1e0b3798L    # 9.501215320876341E8
        -0x5bc70d78a902deb7L
        -0x62ca09bdf63fd4efL    # -5.819333286632044E-168
        0x30cac6a2806a8f42L    # 1.1839556254879994E-73
        0x4ad1c943471de004L    # 2.661840417241856E52
        -0x29a9711bc1c6ac69L    # -8.27794114595061E107
        -0x7cdabdcc7cf309b5L
        -0x54ef5e0c5ed1e35fL    # -2.970449878436343E-101
        0x5024f4a8016e82e3L    # 1.213251479994324E78
        -0x286993f9818e01ebL    # -8.627644160237516E113
        -0x785ae43e8183abcaL    # -7.803863715342201E-272
        0x1e11c49f9239afe3L    # 7.713693461374338E-164
        0x35943009571560f5L    # 1.3489204626641543E-50
        -0x46151ac32bb0d09eL    # -1.0608388236917517E-29
        -0x74fd6e3e0dedb4bL    # -2.185612508461415E273
        0x108d757ab30ace07L
        0x74e74af3bc378c04L    # 1.3661792959712376E255
        -0x4f94e2592a25a887L    # -1.8734148167953953E-75
        -0x5c5a26f8cb9772f8L    # -5.870823458399609E-137
        -0x7a1ded6e2cbbe7d9L    # -2.489047490199325E-280
        -0x6869b8191a912ef7L    # -4.769083249794717E-195
        -0x44b2653319873f0L    # -7.937213013364947E287
        0x22386a9a147170d5L    # 7.821390217206797E-144
        0x468b81cde1c009fbL    # 6.973865120064206E31
    .end array-data

    :array_4
    .array-data 8
        -0x6a952cd36a0c7725L
        -0x5162e25eb87ee569L    # -3.7468739904088947E-84
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/dh/DhExchange;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x2face2ea67135e06L    # -8.852819709405332E78
        0x2b1bffa471bb19e4L    # 5.0003203388382E-101
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->hashAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateH([B[B[B[B[B)[B
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getHashAlgorithm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-direct {v2, v3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/trilead/ssh2/crypto/dh/DhExchange;->log:Lcom/trilead/ssh2/log/Logger;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v6, v1, [J

    .line 28
    .line 29
    fill-array-data v6, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    new-instance v5, Ljava/lang/String;

    .line 43
    .line 44
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v7, v0, [J

    .line 55
    .line 56
    fill-array-data v7, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/16 v5, 0x5a

    .line 74
    .line 75
    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v1, v1, [J

    .line 86
    .line 87
    fill-array-data v1, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v7, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    new-instance v1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v1, p2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v0, v0, [J

    .line 111
    .line 112
    fill-array-data v0, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v4, v3, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 119
    .line 120
    .line 121
    :cond_0
    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p5}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    .line 137
    .line 138
    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->f:Ljava/math/BigInteger;

    .line 142
    .line 143
    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    .line 147
    .line 148
    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    nop

    .line 157
    :array_0
    .array-data 8
        -0x28b7298a9e08087dL    # -2.9866221218847114E112
        -0x461f179bbcee8588L    # -6.668943269321553E-30
        0x2b4b9577a116e707L    # 3.9410000438900184E-100
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
    .array-data 8
        0x7956009714fc018L
        0x713d46dfbe29ad5eL
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_2
    .array-data 8
        0x7cea04b357da994aL    # 5.192849478898328E293
        0x1d791e004e40724cL
        -0x7c122c4984773a9fL    # -9.564533778084828E-290
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_3
    .array-data 8
        -0x1def40b2520a2afaL    # -2.4110260710178497E164
        -0x7fd5296f3e8eb67fL    # -7.464607216668731E-308
    .end array-data
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        0x1a21c15ad499d3L
        0x3271d09be482ebd3L    # 1.0572649243021068E-65
        0x1e47751cd3b918fcL    # 8.146921744276824E-163
        -0x37913029e671f955L    # -8.387786298076849E40
        -0xe4f6763469a4924L    # -4.322785567561678E239
    .end array-data
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->hashAlgorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        0xd093dc9aa9062aaL
        -0x7a58ea580a0878bdL
        0xd1c00b1aba0dbe6L
        -0x41a81ef02be3496aL    # -2.223918938516262E-8
        -0x1c803608344ce073L    # -1.9195240790688632E171
        -0x67a1b95741c5877bL
        -0xe06efc27dc4babL
    .end array-data
.end method

.method public init(ILjava/security/SecureRandom;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p1:Ljava/math/BigInteger;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v1, 0xe

    .line 13
    .line 14
    if-ne p1, v1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p14:Ljava/math/BigInteger;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 19
    .line 20
    :goto_0
    new-instance p1, Ljava/math/BigInteger;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v1, v0

    .line 29
    invoke-direct {p1, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    .line 33
    .line 34
    sget-object p2, Lcom/trilead/ssh2/crypto/dh/DhExchange;->g:Ljava/math/BigInteger;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 37
    .line 38
    invoke-virtual {p2, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    new-array v2, v2, [J

    .line 56
    .line 57
    fill-array-data v2, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p2

    .line 71
    :array_0
    .array-data 8
        -0x12df69f4e8c65578L    # -4.574159856348137E217
        -0x68fd84923c751a22L    # -7.726542503594282E-198
        0x6dc3079caf98e497L    # 5.374023610562596E220
        -0x1b9a25179fe6f88aL    # -4.3243461615195475E175
    .end array-data
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->f:Ljava/math/BigInteger;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    new-array v1, v1, [J

    .line 65
    .line 66
    fill-array-data v1, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x2c143609532bad33L    # 2.36554335847625E-96
        0x6ac003556b1cb154L    # 1.6065725823577393E206
        0x443b1cf08a4d5946L    # 5.001474086824453E20
        0x21b2aa1d9a686f51L    # 2.335494273516858E-146
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        0x132fc73fdf782282L
        0x22ce66fb137887c0L    # 4.986295750862664E-141
        0x61935dfcb644d4a6L    # 1.0891385161233513E162
        0x658e23208120a8ceL
        -0x28648e70ebbd5031L    # -1.0559887520798671E114
    .end array-data
.end method
