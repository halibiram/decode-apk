.class public Lorg/jbcrypt/BCrypt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BCRYPT_SALT_LEN:I = 0x10

.field private static final BLOWFISH_NUM_ROUNDS:I = 0x10

.field private static final GENSALT_DEFAULT_LOG2_ROUNDS:I = 0xa

.field private static final P_orig:[I

.field private static final S_orig:[I

.field private static final base64_code:[C

.field private static final bf_crypt_ciphertext:[I

.field private static final index_64:[B

.field private static final openbsd_iv:[I


# instance fields
.field private P:[I

.field private S:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/jbcrypt/BCrypt;->P_orig:[I

    .line 9
    .line 10
    const/16 v0, 0x400

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/jbcrypt/BCrypt;->S_orig:[I

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    fill-array-data v0, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v0, Lorg/jbcrypt/BCrypt;->openbsd_iv:[I

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    fill-array-data v0, :array_3

    .line 32
    .line 33
    .line 34
    sput-object v0, Lorg/jbcrypt/BCrypt;->bf_crypt_ciphertext:[I

    .line 35
    .line 36
    const/16 v0, 0x40

    .line 37
    .line 38
    new-array v0, v0, [C

    .line 39
    .line 40
    fill-array-data v0, :array_4

    .line 41
    .line 42
    .line 43
    sput-object v0, Lorg/jbcrypt/BCrypt;->base64_code:[C

    .line 44
    .line 45
    const/16 v0, 0x80

    .line 46
    .line 47
    new-array v0, v0, [B

    .line 48
    .line 49
    fill-array-data v0, :array_5

    .line 50
    .line 51
    .line 52
    sput-object v0, Lorg/jbcrypt/BCrypt;->index_64:[B

    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 4
        0x243f6a88
        -0x7a5cf72d
        0x13198a2e
        0x3707344
        -0x5bf6c7de
        0x299f31d0
        0x82efa98
        -0x13b19377
        0x452821e6
        0x38d01377
        -0x41ab9931
        0x34e90c6c
        -0x3f53d649
        -0x3683af23
        0x3f84d5b5
        -0x4ab8f6e9
        -0x6de92a27
        -0x768604e5
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
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
    :array_1
    .array-data 4
        -0x2ecef45a
        -0x67204a54
        0x2ffd72db
        -0x2fe52049
        -0x471e5013
        0x6a267e96
        -0x45836fbb
        -0xed38067
        0x24a19947
        -0x4c6e9309
        0x801f2e2
        -0x7a7103ea
        0x636920d8
        0x71574e69
        -0x5ba7015d
        -0xb6cc282
        0xd95748f
        0x728eb658
        0x718bcd58
        -0x7deab512
        0x7b54a41d
        -0x3da5a64b
        -0x63cf2ac7
        0x2af26013
        -0x3a2e4fdd
        0x286085f0
        -0x35be86e8    # -3169862.0f
        -0x4724c711
        -0x71862350
        0x603a180e
        0x6c9e0e8b
        -0x4fe175c2
        -0x28ea883f
        -0x42ceb4d9
        0x78af2fda
        0x55605c60
        -0x19aada0d
        -0x55aa546c
        0x57489862
        0x63e81440
        0x55ca396a
        0x2aab10b6
        -0x4b33a3cc
        0x1141e8ce
        -0x5eab7951
        0x7c72e993
        -0x4c11ebef
        0x636fbc2a
        0x2ba9c55d
        0x741831f6
        -0x31a3c1ea
        -0x64786ce2
        -0x502945cd
        0x6c24cf5c
        0x7a325381
        0x28958677
        0x3b8f4898
        0x6b4bb9af
        -0x3b4017e5
        0x66282193
        0x61d809cc
        -0x4de566f
        0x487cac60    # 258737.5f
        0x5dec8032
        -0x107ba2a3
        -0x167a8a4f
        -0x23d9dcfe
        -0x149ae478
        0x23893e81
        -0x2c69533b
        0xf6d6ff3
        -0x7c0bbdc7
        0x2e0b4482
        -0x5b7bdffc
        0x69c8f04a
        -0x61e064a2
        0x21c66842
        -0x9169366
        0x670c9c61
        -0x542c7710
        0x6a51a0d2
        -0x27abd098
        -0x69f058d8
        -0x54aecc5d
        0x6eef0b6c
        0x137a3be4
        -0x45c40fb0
        0x7efb2a98
        -0x5e0e9ae3
        0x39af0176
        0x66ca593e
        -0x7dbcf178
        -0x731179e7
        0x456f9fb4
        0x7d84a5c3
        0x3b8b5ebe
        -0x1f908a28
        -0x7a3edf8d
        0x401a449f
        0x56c16aa6
        0x4ed3aa62
        0x363f7706
        0x1bfedf72
        0x429b023d
        0x37d0d724
        -0x2ff5edb8
        -0x24f0152d
        0x49f1c09b
        0x75372c9
        -0x7f66e485
        0x25d479d8
        -0x9172109
        -0x1c01afe6
        -0x4986b3c5
        -0x68931f43
        0x4c006ba
        -0x3e56b04a
        0x409f60c4
        0x5e5c9ec2
        0x196a2463
        0x68fb6faf
        0x3e6c53b5
        0x1339b2eb
        0x3b52ec6f
        0x6dfc511f
        -0x64cf6ad4
        -0x337ebabc    # -6.7775008E7f
        -0x50a142f7
        -0x411c2ffc
        -0x21ccb503
        0x660f2807
        0x192e4bb3
        -0x3f3457a9
        0x45c8740f
        -0x2df4a0c7
        -0x462c0425
        0x5579c0bd
        0x1a60320a
        -0x295eff3a
        0x402c7279
        0x679f25fe
        -0x4e05c34
        -0x715a1608
        -0x24cddd08
        0x3c7516df
        -0x29e94eb
        0x2f501ec8
        -0x52faad55
        0x323db5fa
        -0x2dc78a0
        0x53317b48
        0x3e00df82
        -0x61a3a845
        -0x35907360    # -3924776.0f
        0x1a87562e
        -0x20e89625
        -0x2abd570a
        0x287effc3
        -0x5398cd3a
        -0x73b0aa8d
        0x695b27b0
        -0x4435a738
        -0x1e005ca3
        -0x470fee60
        0x10fa3d98
        -0x2de7c48
        0x4afcb56c    # 8280758.0f
        0x2dd1d35b
        -0x65ac1b87
        -0x4907ba9b
        -0x2d71b644
        0x4bfb9790    # 3.2976672E7f
        -0x1e220d26
        -0x5b3481cd
        0x62fb1341
        -0x311b3918
        -0x10df3526
        0x36774c01
        -0x2f816102
        0x2bf11fb4
        -0x6a2425b3
        -0x516f6e68
        -0x1552718f
        0x6b93d5a0
        -0x2f712e30
        -0x5038da20
        -0x71c3a4d1
        -0x718a6b49
        -0x70091d05
        -0xdedd49c
        -0x777747ee
        -0x6ff20fe4
        0x4fad5ea0
        0x688fc31c
        -0x2e300e6f
        -0x4c573e53
        0x2f2f2218
        -0x41f1e889
        -0x158ad202
        -0x74fde05f
        -0x1a5f33f1
        -0x4a908b18
        0x18acf3d6
        -0x31761d67
        -0x4b57b020
        -0x2ec1f49
        0x7cc43b81
        -0x2d525727
        0x165fa266
        -0x7f6a88fb
        -0x6c338cec
        0x211a1477
        -0x1952df9b
        0x77b5fa86
        -0x38abbd0b
        -0x462ca31
        -0x143250f4
        0x7b3e89a0
        -0x29bee42d
        -0x51e181b7
        0x250e2d
        0x2071b35e
        0x226800bb
        0x57b8e0af
        0x2464369b
        -0xff646e2
        0x5563911d
        0x59dfa6aa
        0x78c14389
        -0x26a5ac81
        0x207d5ba2
        0x2e5b9c5
        -0x7cd9fc8a
        0x6295cfa9
        0x11c81968
        0x4e734a41
        -0x4cb8d236
        0x7b14a94a
        0x1b510052
        -0x65acd6eb
        -0x29f0a8c1
        -0x4364391c
        0x2b60a476
        -0x7e198c00
        0x8ba6fb5
        0x571be91f
        -0xd691395
        0x2a0dd915
        -0x499c9adf
        -0x1846064a
        -0xcbfad2
        -0x3a7aa99c
        0x53b02d5d
        -0x5660705f
        0x8ba4799
        0x6e85076a
        0x4b7a70e9    # 1.6412905E7f
        -0x4a4cd6bc
        -0x248af6d2
        -0x3be6d9dd
        -0x52915950
        0x49a7df7d
        -0x63119f48
        -0x70124d9a
        -0x1355738f
        0x699a17ff
        0x5664526c
        -0x3d4e611f
        0x193602a5
        0x75094c29
        -0x5fa6ecc0
        -0x1be7c5c2
        0x3f54989a
        0x5b429d65
        0x6b8fe4d6
        -0x6608c02a
        -0x5e2d63f9
        -0x1017cf0b
        0x4d2d38e6    # 1.81636704E8f
        -0xfdaa23f
        0x4cdd2086    # 1.15934256E8f
        -0x7b8f14da
        0x6382e9c6
        0x21ecc5e
        0x9686b3f
        0x3ebaefc9
        0x3c971814
        0x6b6a70a1
        0x687f3584
        0x52a0e286    # 3.454976E11f
        -0x4863acfb
        -0x55aff8c9
        0x3e07841c
        0x7fdeae5c
        -0x7182bb14
        0x5716f2b8
        -0x4fc525c9
        -0xfaff3f3
        -0xfe3e0fc
        0x200b3ff
        -0x51f30ae6    # -3.205001E-11f
        0x3cb574b2
        0x25837a58
        -0x23f6de43
        -0x2e6eec07
        0x7ca92ff6
        -0x6bcdb88d    # -9.000794E-27f
        0x22f54701
        0x3ae5e581
        0x37c2dadc
        -0x374a89cc
        -0x650c2259
        -0x56bb9eba
        0xfd0030e
        -0x133738c2
        -0x5b8ae1bf
        -0x1dc73267
        0x3bea0e2f
        0x3280bba1
        0x183eb331
        0x4e548b38    # 8.9147341E8f
        0x4f6db908    # 3.9883264E9f
        0x6f420d03
        -0x9f5fb41
        0x2cb81290
        0x24977c79
        0x5679b072
        -0x43507651
        -0x216588e1
        -0x266cf7f0
        -0x4c7451ee
        -0x2330c0d2
        0x5512721f
        0x2e6b7124
        0x501adde6
        -0x607b3279
        0x7a584718
        0x7408da17
        -0x43606544
        -0x16b48274
        -0x138513c6
        -0x247ae206
        0x63094366
        -0x3b9b3c2e
        -0x10e3e7b9
        0x3215d908
        -0x22bcc4c9
        0x24c2ba16
        0x12a14d43
        0x2a65c451
        0x50940002
        0x133ae4dd
        0x71dff89e
        0x10314e55
        -0x7e53882a
        0x5f11199b
        0x43556f1
        -0x285c3895
        0x3c11183b
        0x5924a509
        -0xd701913
        -0x680e0406
        -0x614540d4
        0x1e153c6e
        -0x791cba90
        -0x1516904f
        -0x79f1a1f6
        0x5a3e2ab3
        0x771fe71c
        0x4e3d06fa    # 7.9283776E8f
        0x2965dcb9
        -0x6618e2f1
        -0x7fc1762a
        0x5266c825    # 2.47800087E11f
        0x2e4cc978
        -0x63ef4c96
        -0x39eaf146
        -0x6b1d1588
        -0x5a03c3ad
        0x1e0a2df4
        -0xd08b159
        0x361d2b3d    # 2.341999E-6f
        0x1939260f
        0x19c27960
        0x5223a708
        -0x8eced4a
        -0x14520192
        -0x153ce09a
        -0x1c43ba6b
        -0x5984377d
        -0x4e80c82f
        0x18cff28
        -0x3ccd2211
        -0x4193a55b
        0x65582185
        0x68ab9802
        -0x11315af1
        -0x24d06ac5
        0x2aef7dad
        0x5b6e2f84
        0x1521b628
        0x29076170
        -0x1322b88b
        0x619f1510
        0x13cca830
        -0x149e426a
        0x334fe1e
        -0x55fc9c31
        -0x4a8ca370
        0x4c70a239    # 6.3080676E7f
        -0x2a6161f5
        -0x345521ec    # -2.2395944E7f
        -0x11337944
        0x60622ca7
        -0x6354a355
        -0x4d0c7b92
        0x648b1eaf
        0x19bdf0ca
        -0x5fdc9647
        0x655abb50    # 6.45582E22f
        0x40685a32
        0x3c2ab4b3
        0x319ee9d5
        -0x3fde4709
        -0x64abf4e7
        -0x78a05f67
        -0x6a086682    # -1.00004673E-25f
        0x623d7da8
        -0x7c87766
        -0x681cd289
        0x11ed935f
        0x16681281
        0xe358829
        -0x3819e02a
        -0x6921205f
        0x7858ba99
        0x57f584a5
        0x1b227263
        -0x647c3c01
        0x1ac24696
        -0x324cf515
        0x532e3054
        -0x7026b71c
        0x6dbc3128
        0x58ebf2ef
        0x34c6ffea
        -0x1d7129f
        -0x1183c38d
        0x5d4a14d9
        -0x179b481d
        0x42105d14
        0x203e13e0
        0x45eee2b6
        -0x5c555416
        -0x2493b0eb
        -0x534b030
        -0x38bd0bbe
        -0x1095444b
        0x654f3b1d
        0x41cd2105
        -0x27e18662
        -0x797ab239
        -0x1bb4b896    # -1.499934E22f
        0x3d816250
        -0x309d5e0e
        0x5b8d2646
        -0x3777c60
        -0x3e38495d
        0x7f1524c3
        0x69cb7492
        0x47848a0b
        0x5692b285
        0x95bbf00
        -0x52e6b763
        0x1462b174
        0x23820e00
        0x58428d2a
        0xc55f5ea
        0x1dadf43e
        0x233f7061
        0x3372f092
        -0x726c81bf
        -0x29a0130f
        0x6c223bdb
        0x7cde3759
        -0x34118ba0    # -3.125472E7f
        0x4085f2a7
        -0x3188cd92
        -0x59f87f7c
        0x19f8509e
        -0x171027ab
        0x61d99735
        -0x56965856
        -0x3af3f93e
        0x5a04abfc
        -0x7ff43524
        -0x61bb85d2
        -0x3cbacb7c
        -0x22a98fb
        0xe1e9ec9
        -0x248c242d
        0x105588cd
        0x675fda79
        -0x1c98bcc0
        -0x3a3bcb9b
        0x713e38d8
        0x3d28f89e
        -0xe9200e0
        0x153e21e7
        -0x704fc2b6
        -0x191c60d5
        -0x247c5209
        -0x16c2a598
        -0x6b7ebf09
        -0x9b3d9e4
        -0x6b96d6cc
        0x411520f7
        0x7602d4f7
        -0x430b94d2
        -0x2b5dff98
        -0x2bf7db8f
        0x3320f46a
        0x43b7d4b7
        0x500061af    # 8.6155418E9f
        0x1e39f62e
        -0x68dbbaba
        0x14214f74
        -0x407477c0
        0x4d95fc1d    # 3.1454096E8f
        -0x694a6e51
        0x70f4ddd3
        0x66a02f45
        -0x4043f614
        0x3bd9785
        0x7fac6dd0
        0x31cb8504
        -0x6914d84d
        0x55fd3941
        -0x25dab81a
        -0x5435f566
        0x28507825
        0x530429f4
        0xa2c86da
        -0x16499205
        0x68dc1462
        -0x28b79700
        0x680ec0a4
        0x27a18dee
        0x4f3ffea2
        -0x17785274
        -0x4a731ffa
        0x7af4d6b6
        -0x5531e184
        -0x2cc8a014
        -0x31875c67
        0x406b2a42
        0x20fe9e35
        -0x260c7a47
        -0x11c62855
        0x3b124e8b
        0x1dc9faf7
        0x4b6d1856    # 1.5538262E7f
        0x26a36631
        -0x151c684e
        0x3a6efa74    # 9.1163E-4f
        -0x22a4bcce
        0x6841e7f7
        -0x3587df05
        -0x4f50ab2
        -0x27014c69
        0x454056ac
        -0x45b76ad9
        0x55533a3a
        0x20838d87
        -0x1945649
        -0x2f696ab5
        0x55a867bc
        -0x5eea65a8
        -0x3356d69d    # -8.8689432E7f
        -0x661e24cd
        -0x59d5b5aa
        0x3f3125f9
        0x5ef47e1c
        -0x6fd6ce84
        -0x20717fe
        0x4272f70
        -0x7f44eaa4    # -1.71809E-38f
        0x5282ce3
        -0x6a3eeab8
        -0x1b3992de
        0x48c1133f
        -0x38f07924
        0x7f9c9ee
        0x41041f0f
        0x404779a4
        0x5d886e17
        0x325f51eb
        -0x2a643f2f
        -0xd433e71
        0x41113564
        0x257b7834
        0x602a9c60
        -0x2007175d
        0x1f636c1b
        0xe12b4c2
        0x2e1329e
        -0x5099b02f
        -0x352e7eeb    # -6865034.5f
        0x6b2395e0
        0x333e92e1
        0x3b240b62
        -0x114146de
        -0x7a4d5df2
        -0x1945f267
        -0x218df374
        0x2da2f728
        -0x2fed87bb
        -0x6a486b03
        0x647d0862
        -0x18330a10
        0x5449a36f
        -0x7882b706
        -0x3c6202d9
        -0xcc172e2
        0xa476341
        -0x66d1008c
        0x3a6f6eab
        -0xb0702c9
        -0x57ed23a0
        -0x5e142208
        -0x66e41eb4
        -0x249194f3
        -0x3984aaf0
        0x6d672c37
        0x2765d43b
        -0x232f17fc
        -0xed6f239
        -0x33ff005d    # -3.3816204E7f
        -0x4ac6f06e
        0x690fed0b
        0x667b9ffb
        -0x31248264
        -0x5f6e30f5
        -0x26eaa15d
        -0x44ecd078
        0x515bad24
        0x7b9479bf
        0x763bd6eb
        0x37392eb3
        -0x33eea687    # -3.81025E7f
        -0x7fd91d69
        -0xbd1ced3
        0x6842ada7
        -0x3995d4c5
        0x12754ccc
        0x782ef11c
        0x6a124237
        -0x486dae19
        0x6a1bbe6
        0x4bfb6350    # 3.294992E7f
        0x1a6b1018
        0x11caedfa
        0x3d25bdd8
        -0x1d1e3c37
        0x44421659
        0xa121386
        -0x26f31392
        -0x2a5415d6
        0x64af674e
        -0x257957a1
        -0x41401678
        0x64e4c3fe
        -0x62437fa9
        -0xf083f7a
        0x60787bf8
        0x6003604d
        -0x2e027cba
        -0x9c7e050
        0x7745ae04
        -0x28c90334
        -0x7cbd94cd
        -0xfe1548f
        -0x4f7fbe79
        0x3c005e5f    # 0.007835f
        0x77a057be
        -0x421751dc
        0x55464299
        -0x40a7d19f
        0x4e58f48f    # 9.0997651E8f
        -0xd22025e
        -0xb8b10c8
        -0x7876423e
        0x5366f9c3
        -0x374c718c
        -0x4b8a0dab
        0x46fcd9b9
        0x7aeb2661
        -0x74e2207c
        -0x7b95f187
        -0x6ea06a1e
        0x466e598e
        0x20b45770
        -0x732aaa6f
        -0x36fd21b4
        -0x46f4531f
        -0x447dfa30
        0x11a86248
        0x7574a99e
        -0x4880e64a
        -0x1f5623f7
        0x662d09a1
        -0x3bcdb9cd
        -0x17a5e0fe
        0x9f0be8c
        0x4a99a025    # 5034002.5f
        0x1d6efe10
        0x1ab93d1d
        0xba5a4df
        -0x5e790df1
        0x2868f169
        -0x2348257d
        0x573906fe
        -0x5e1d3165
        0x4fcd7f52
        0x50115e01    # 9.7554278E9f
        -0x58f97c06
        -0x5ffd4a3c
        0xde6d027
        -0x650773d9
        0x773f8641
        -0x3c9fb3fa
        0x61a806b5
        -0xfe885d8
        -0x3f0a7920
        0x6058aa
        0x30dc7d62
        0x11e69ed7
        0x2338ea63
        0x53c2dd94
        -0x3d3de9cc
        -0x443411aa
        -0x6f434922
        -0x1403825f
        -0x31a6e28a
        0x6f05e409
        0x4b7c0188    # 1.6515464E7f
        0x39720a3d
        0x7c927c24
        -0x791c8da1
        0x724d9db9
        0x1ac15bb4
        -0x2c614704
        -0x12abaa88
        0x8fca5b5
        -0x27c2832d
        0x4dad0fc4    # 3.62936448E8f
        0x1e50ef5e
        -0x4e9e1908
        -0x5d7aeb27
        0x6c51133c
        0x6fd5c7e7
        0x56e14ec4
        0x362abfce
        -0x223937c9
        -0x2865cdcc
        -0x6d9c7dee
        0x670efa8e
        0x406000e0    # 3.5000534f
        0x3a39ce37
        -0x2c050a31
        -0x543d88c9
        0x5ac52d1b
        0x5cb0679e
        0x4fa33742
        -0x2c7dd8c0
        -0x66436442
        -0x2aee7163    # -1.00026066E13f
        -0x40f08ceb
        -0x29d2e382
        -0x38ff3b85
        -0x4873e495
        0x21a19045
        -0x4d914e42
        0x6a366eb4
        0x5748ab2f
        -0x436b9187
        -0x395c892e
        0x6549c2c8
        0x530ff8ee
        0x468dde7d
        -0x2a8cf5e3
        0x4cd04dc6    # 1.09211184E8f
        0x2939bbdb
        -0x5645b9b0
        -0x536ad918
        -0x41a11cfc
        -0x5e052a10
        0x6a2d519a
        0x63ef8ce2
        -0x657911de
        -0x3f763d48
        0x43242ef6
        -0x5ae1fc56
        -0x630d2f5c
        -0x7c3f9e46
        -0x641695b3
        -0x701aeab0
        -0x459ba42a
        0x2826a2f9
        -0x58c5c51f
        0x4ba99586    # 2.2227724E7f
        -0x10aa9d17
        -0x38d0102d
        -0x8ad0826
        0x3f046f69
        0x77fa0a59
        -0x7f1b56eb    # -2.0999148E-38f
        -0x784f79ff
        -0x64f61953
        0x3b3ee593
        -0x166f02a6
        -0x61cb2869
        0x2cf0b7d9
        0x22b8b51
        -0x692a53c6
        0x17da67d
        -0x2e30c12a
        0x7c7d2d28
        0x1f9f25cf
        -0x520d4765
        0x5ad6b472
        0x5a88f54c
        -0x1fd6538f
        -0x1fe65a1a
        0x47b0acfd
        -0x126c0565
        -0x172c3b73    # -8.0003604E24f
        0x283b57cc
        -0x72a99d7
        0x79132e28
        0x785f0191
        -0x128a9fab
        -0x869f1bc
        -0x1c2ca174
        0x15056dd4
        -0x770b9246
        0x3a16125
        0x564f0bd
        -0x3c1461eb
        0x3c9057a2
        -0x68d8e514
        -0x56c5f8d6
        0x1b3f6d9b
        0x1e6321f5
        -0xa639905
        0x26dcf319
        0x7533d928
        -0x4eaa020b
        0x3563482
        -0x7545c345
        0x28517711
        -0x3df52608
        -0x5433ae99
        -0x33526da1    # -9.1001592E7f
        0x4de81751    # 4.86730272E8f
        0x3830dc8e
        0x379d5862
        -0x6cdf066f
        -0x15856f3e
        -0x4c18432
        0x5121ce64
        0x774fbe32
        -0x57491c82
        -0x3cd6c2ba
        0x48de5369
        0x6413e680
        -0x5d51f7f0
        -0x22924ddc
        0x69852dfd
        0x9072166
        -0x4c65b9f6
        0x6445c0dd
        0x586cdecf
        0x1c20c8ae
        0x5bbef7dd
        0x1b588d40
        -0x332dfe81
        0x6bb4e3bb
        -0x225d9582
        0x3a59ff45
        0x3e350a44
        -0x434b322b
        0x72eacea8
        -0x59b7b45
        -0x7299ed52
        -0x40c390b9
        -0x2d641b9d
        0x542f5d9e
        -0x513d88e5
        -0x9b19c90
        0x740e0d8d
        -0x18a4eca9
        -0x78de98f
        -0x50ac82a3
        0x4040cb08
        0x4eb4e2cc    # 1.51738112E9f
        0x34d2466a
        0x115af84
        -0x1e4ffbd8
        -0x6a67c5e3
        0x6b89fb4
        -0x31915fb8    # -1.0008704E9f
        0x6f3f3b82
        0x3520ab82
        0x11a1d4b
        0x277227f8
        0x611560b1
        -0x186cc024
        -0x44c586d5
        0x344525bd
        -0x5f77c61f
        0x51ce794b
        0x2f32c9b7
        -0x5fe04537
        -0x1fe33782
        -0x43382e0a
        -0x30feee3d
        -0x5e175539
        0x1a908749
        -0x2bb04266
        -0x2f252135
        -0x2af525c8
        0x339c32a
        -0x396ec999
        -0x7206ce84
        -0x1f4ed4b1
        -0x861a649
        0x43f5bb3a
        -0xd2ae601
        0x27d9459c
        -0x4068ddd4
        0x15e6fc2a
        0xf91fc71
        -0x646beadb
        -0x51a6c9f
        -0x31496315
        -0x3d579ba7
        0x12baa8d1
        -0x493ef8a2
        -0x1cfa95f4
        0x10d25065
        -0x34fc5bbe    # -8627266.0f
        -0x1f1391f2
        0x1698db3b
        0x4c98a0be    # 8.0020976E7f
        0x3278e964
        -0x60e06ace
        -0x1f2c6d21
        -0x2c5fcbd5    # -1.37614E12f
        -0x768e0de2
        0x1b0a7441
        0x4ba3348c    # 2.139164E7f
        -0x3a418ee0
        -0x3c89cd28
        -0x20ca6073
        -0x6466d0d2
        -0x19f490b9
        0xfe3f11d
        -0x1ab325ac
        0x1edad891
        -0x319d8631
        -0x32c18191
        0x1618b166
        -0x2d3e2fb
        -0x7b702d3b
        -0x904dd67
        -0xadc0ca9
        -0x59cd89dd
        -0x6c57cacf
        0x56cccd02
        -0x530f7e9e
        0x5a75ebb5
        0x6e163697
        -0x772d8c34
        -0x21699d6e
        -0x7e46b630
        0x4c50901b    # 5.4673516E7f
        0x71c65614
        -0x19393843
        0x327a140a
        0x45e1d006
        -0x3c0d8466
        -0x3655ac03
        0x62a80f00
        -0x44da401e
        0x35bdd2f6
        0x71126905
        -0x4dfbfdde
        -0x49343084
        -0x328963d5    # -2.5858936E8f
        0x53113ec0
        0x1640e3d3
        0x38abbd60
        0x2547adf0
        -0x45c7df64
        -0x8b9318a
        0x77afa1c5
        0x20756060
        -0x7a3401b2
        -0x75177228
        0x7aaaf9b0
        0x4cf9aa7e    # 1.3089688E8f
        0x1948c25c
        0x2fb8a8c
        0x1c36ae4
        -0x29141e07
        -0x6f2b0797
        -0x59a32160
        0x3f09252d
        -0x3df71961
        -0x48b19ece
        -0x31881da5
        0x578fdfe3
        0x3ac372e6
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
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
    :array_2
    .array-data 4
        0x4f787963
        0x68726f6d
        0x61746963
        0x426c6f77
        0x66697368
        0x53776174
        0x44796e61
        0x6d697465
    .end array-data

    :array_3
    .array-data 4
        0x4f727068
        0x65616e42
        0x65686f6c
        0x64657253
        0x63727944
        0x6f756274
    .end array-data

    :array_4
    .array-data 2
        0x2es
        0x2fs
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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

.method private static char64(C)B
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lorg/jbcrypt/BCrypt;->index_64:[B

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-le p0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget-byte p0, v0, p0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public static checkpw(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lorg/jbcrypt/BCrypt;->hashpw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    array-length v0, p1

    .line 17
    array-length v2, p0

    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    array-length v3, p0

    .line 24
    if-ge v0, v3, :cond_1

    .line 25
    .line 26
    aget-byte v3, p1, v0

    .line 27
    .line 28
    aget-byte v4, p0, v0

    .line 29
    .line 30
    xor-int/2addr v3, v4

    .line 31
    or-int/2addr v2, v3

    .line 32
    int-to-byte v2, v2

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-nez v2, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :catch_0
    :cond_2
    return v1
.end method

.method private static decode_base64(Ljava/lang/String;I)[B
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez p1, :cond_8

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    add-int/lit8 v5, v1, -0x1

    .line 16
    .line 17
    if-ge v3, v5, :cond_6

    .line 18
    .line 19
    if-ge v4, p1, :cond_6

    .line 20
    .line 21
    add-int/lit8 v5, v3, 0x1

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-static {v6}, Lorg/jbcrypt/BCrypt;->char64(C)B

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-int/lit8 v7, v3, 0x2

    .line 32
    .line 33
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Lorg/jbcrypt/BCrypt;->char64(C)B

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v8, -0x1

    .line 42
    if-eq v6, v8, :cond_6

    .line 43
    .line 44
    if-ne v5, v8, :cond_0

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_0
    shl-int/lit8 v6, v6, 0x2

    .line 48
    .line 49
    int-to-byte v6, v6

    .line 50
    and-int/lit8 v9, v5, 0x30

    .line 51
    .line 52
    shr-int/lit8 v9, v9, 0x4

    .line 53
    .line 54
    or-int/2addr v6, v9

    .line 55
    int-to-byte v6, v6

    .line 56
    int-to-char v6, v6

    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v6, v4, 0x1

    .line 61
    .line 62
    if-ge v6, p1, :cond_5

    .line 63
    .line 64
    if-lt v7, v1, :cond_1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    add-int/lit8 v9, v3, 0x3

    .line 68
    .line 69
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-static {v7}, Lorg/jbcrypt/BCrypt;->char64(C)B

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-ne v7, v8, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    and-int/lit8 v5, v5, 0xf

    .line 81
    .line 82
    shl-int/lit8 v5, v5, 0x4

    .line 83
    .line 84
    int-to-byte v5, v5

    .line 85
    and-int/lit8 v6, v7, 0x3c

    .line 86
    .line 87
    shr-int/lit8 v6, v6, 0x2

    .line 88
    .line 89
    or-int/2addr v5, v6

    .line 90
    int-to-byte v5, v5

    .line 91
    int-to-char v5, v5

    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    add-int/lit8 v5, v4, 0x2

    .line 96
    .line 97
    if-ge v5, p1, :cond_4

    .line 98
    .line 99
    if-lt v9, v1, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    add-int/lit8 v3, v3, 0x4

    .line 103
    .line 104
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-static {v5}, Lorg/jbcrypt/BCrypt;->char64(C)B

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    and-int/lit8 v6, v7, 0x3

    .line 113
    .line 114
    shl-int/lit8 v6, v6, 0x6

    .line 115
    .line 116
    int-to-byte v6, v6

    .line 117
    or-int/2addr v5, v6

    .line 118
    int-to-byte v5, v5

    .line 119
    int-to-char v5, v5

    .line 120
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v4, v4, 0x3

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    :goto_1
    move v4, v5

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    :goto_2
    move v4, v6

    .line 129
    :cond_6
    :goto_3
    new-array p0, v4, [B

    .line 130
    .line 131
    :goto_4
    if-ge v2, v4, :cond_7

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    int-to-byte p1, p1

    .line 138
    aput-byte p1, p0, v2

    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    return-object p0

    .line 144
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string p1, "Invalid maxolen"

    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0
.end method

.method private ekskey([B[B)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    filled-new-array {v0}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v3, v3, [I

    .line 12
    .line 13
    aput v0, v3, v0

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aput v0, v3, v4

    .line 17
    .line 18
    iget-object v5, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 19
    .line 20
    array-length v5, v5

    .line 21
    iget-object v6, p0, Lorg/jbcrypt/BCrypt;->S:[I

    .line 22
    .line 23
    array-length v6, v6

    .line 24
    const/4 v7, 0x0

    .line 25
    :goto_0
    if-ge v7, v5, :cond_0

    .line 26
    .line 27
    iget-object v8, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 28
    .line 29
    aget v9, v8, v7

    .line 30
    .line 31
    invoke-static {p2, v1}, Lorg/jbcrypt/BCrypt;->streamtoword([B[I)I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    xor-int/2addr v9, v10

    .line 36
    aput v9, v8, v7

    .line 37
    .line 38
    add-int/lit8 v7, v7, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p2, 0x0

    .line 42
    :goto_1
    if-ge p2, v5, :cond_1

    .line 43
    .line 44
    aget v1, v3, v0

    .line 45
    .line 46
    invoke-static {p1, v2}, Lorg/jbcrypt/BCrypt;->streamtoword([B[I)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    xor-int/2addr v1, v7

    .line 51
    aput v1, v3, v0

    .line 52
    .line 53
    aget v1, v3, v4

    .line 54
    .line 55
    invoke-static {p1, v2}, Lorg/jbcrypt/BCrypt;->streamtoword([B[I)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    xor-int/2addr v1, v7

    .line 60
    aput v1, v3, v4

    .line 61
    .line 62
    invoke-direct {p0, v3, v0}, Lorg/jbcrypt/BCrypt;->encipher([II)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 66
    .line 67
    aget v7, v3, v0

    .line 68
    .line 69
    aput v7, v1, p2

    .line 70
    .line 71
    add-int/lit8 v7, p2, 0x1

    .line 72
    .line 73
    aget v8, v3, v4

    .line 74
    .line 75
    aput v8, v1, v7

    .line 76
    .line 77
    add-int/lit8 p2, p2, 0x2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 p2, 0x0

    .line 81
    :goto_2
    if-ge p2, v6, :cond_2

    .line 82
    .line 83
    aget v1, v3, v0

    .line 84
    .line 85
    invoke-static {p1, v2}, Lorg/jbcrypt/BCrypt;->streamtoword([B[I)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    xor-int/2addr v1, v5

    .line 90
    aput v1, v3, v0

    .line 91
    .line 92
    aget v1, v3, v4

    .line 93
    .line 94
    invoke-static {p1, v2}, Lorg/jbcrypt/BCrypt;->streamtoword([B[I)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    xor-int/2addr v1, v5

    .line 99
    aput v1, v3, v4

    .line 100
    .line 101
    invoke-direct {p0, v3, v0}, Lorg/jbcrypt/BCrypt;->encipher([II)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lorg/jbcrypt/BCrypt;->S:[I

    .line 105
    .line 106
    aget v5, v3, v0

    .line 107
    .line 108
    aput v5, v1, p2

    .line 109
    .line 110
    add-int/lit8 v5, p2, 0x1

    .line 111
    .line 112
    aget v7, v3, v4

    .line 113
    .line 114
    aput v7, v1, v5

    .line 115
    .line 116
    add-int/lit8 p2, p2, 0x2

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    return-void
.end method

.method private final encipher([II)V
    .locals 8

    .line 1
    aget v0, p1, p2

    .line 2
    .line 3
    add-int/lit8 v1, p2, 0x1

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    iget-object v3, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    aget v3, v3, v4

    .line 11
    .line 12
    :goto_0
    xor-int/2addr v0, v3

    .line 13
    const/16 v3, 0xe

    .line 14
    .line 15
    if-gt v4, v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lorg/jbcrypt/BCrypt;->S:[I

    .line 18
    .line 19
    shr-int/lit8 v5, v0, 0x18

    .line 20
    .line 21
    and-int/lit16 v5, v5, 0xff

    .line 22
    .line 23
    aget v5, v3, v5

    .line 24
    .line 25
    shr-int/lit8 v6, v0, 0x10

    .line 26
    .line 27
    and-int/lit16 v6, v6, 0xff

    .line 28
    .line 29
    or-int/lit16 v6, v6, 0x100

    .line 30
    .line 31
    aget v6, v3, v6

    .line 32
    .line 33
    add-int/2addr v5, v6

    .line 34
    shr-int/lit8 v6, v0, 0x8

    .line 35
    .line 36
    and-int/lit16 v6, v6, 0xff

    .line 37
    .line 38
    or-int/lit16 v6, v6, 0x200

    .line 39
    .line 40
    aget v6, v3, v6

    .line 41
    .line 42
    xor-int/2addr v5, v6

    .line 43
    and-int/lit16 v6, v0, 0xff

    .line 44
    .line 45
    or-int/lit16 v6, v6, 0x300

    .line 46
    .line 47
    aget v6, v3, v6

    .line 48
    .line 49
    add-int/2addr v5, v6

    .line 50
    iget-object v6, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 51
    .line 52
    add-int/lit8 v7, v4, 0x1

    .line 53
    .line 54
    aget v7, v6, v7

    .line 55
    .line 56
    xor-int/2addr v5, v7

    .line 57
    xor-int/2addr v2, v5

    .line 58
    shr-int/lit8 v5, v2, 0x18

    .line 59
    .line 60
    and-int/lit16 v5, v5, 0xff

    .line 61
    .line 62
    aget v5, v3, v5

    .line 63
    .line 64
    shr-int/lit8 v7, v2, 0x10

    .line 65
    .line 66
    and-int/lit16 v7, v7, 0xff

    .line 67
    .line 68
    or-int/lit16 v7, v7, 0x100

    .line 69
    .line 70
    aget v7, v3, v7

    .line 71
    .line 72
    add-int/2addr v5, v7

    .line 73
    shr-int/lit8 v7, v2, 0x8

    .line 74
    .line 75
    and-int/lit16 v7, v7, 0xff

    .line 76
    .line 77
    or-int/lit16 v7, v7, 0x200

    .line 78
    .line 79
    aget v7, v3, v7

    .line 80
    .line 81
    xor-int/2addr v5, v7

    .line 82
    and-int/lit16 v7, v2, 0xff

    .line 83
    .line 84
    or-int/lit16 v7, v7, 0x300

    .line 85
    .line 86
    aget v3, v3, v7

    .line 87
    .line 88
    add-int/2addr v5, v3

    .line 89
    add-int/lit8 v4, v4, 0x2

    .line 90
    .line 91
    aget v3, v6, v4

    .line 92
    .line 93
    xor-int/2addr v3, v5

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object v3, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 96
    .line 97
    const/16 v4, 0x11

    .line 98
    .line 99
    aget v3, v3, v4

    .line 100
    .line 101
    xor-int/2addr v2, v3

    .line 102
    aput v2, p1, p2

    .line 103
    .line 104
    aput v0, p1, v1

    .line 105
    .line 106
    return-void
.end method

.method private static encode_base64([BI)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    if-lez p1, :cond_3

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    if-gt p1, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_2

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    aget-byte v3, p0, v1

    .line 17
    .line 18
    and-int/lit16 v4, v3, 0xff

    .line 19
    .line 20
    sget-object v5, Lorg/jbcrypt/BCrypt;->base64_code:[C

    .line 21
    .line 22
    shr-int/lit8 v4, v4, 0x2

    .line 23
    .line 24
    and-int/lit8 v4, v4, 0x3f

    .line 25
    .line 26
    aget-char v4, v5, v4

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    and-int/lit8 v3, v3, 0x3

    .line 32
    .line 33
    shl-int/lit8 v3, v3, 0x4

    .line 34
    .line 35
    if-lt v2, p1, :cond_0

    .line 36
    .line 37
    and-int/lit8 p0, v3, 0x3f

    .line 38
    .line 39
    aget-char p0, v5, p0

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v4, v1, 0x2

    .line 46
    .line 47
    aget-byte v2, p0, v2

    .line 48
    .line 49
    and-int/lit16 v6, v2, 0xff

    .line 50
    .line 51
    shr-int/lit8 v6, v6, 0x4

    .line 52
    .line 53
    and-int/lit8 v6, v6, 0xf

    .line 54
    .line 55
    or-int/2addr v3, v6

    .line 56
    and-int/lit8 v3, v3, 0x3f

    .line 57
    .line 58
    aget-char v3, v5, v3

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    and-int/lit8 v2, v2, 0xf

    .line 64
    .line 65
    shl-int/lit8 v2, v2, 0x2

    .line 66
    .line 67
    if-lt v4, p1, :cond_1

    .line 68
    .line 69
    and-int/lit8 p0, v2, 0x3f

    .line 70
    .line 71
    aget-char p0, v5, p0

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x3

    .line 78
    .line 79
    aget-byte v3, p0, v4

    .line 80
    .line 81
    and-int/lit16 v4, v3, 0xff

    .line 82
    .line 83
    shr-int/lit8 v4, v4, 0x6

    .line 84
    .line 85
    and-int/lit8 v4, v4, 0x3

    .line 86
    .line 87
    or-int/2addr v2, v4

    .line 88
    and-int/lit8 v2, v2, 0x3f

    .line 89
    .line 90
    aget-char v2, v5, v2

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    and-int/lit8 v2, v3, 0x3f

    .line 96
    .line 97
    aget-char v2, v5, v2

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string p1, "Invalid len"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static gensalt()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 11
    invoke-static {v0}, Lorg/jbcrypt/BCrypt;->gensalt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gensalt(I)Ljava/lang/String;
    .locals 1

    .line 10
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {p0, v0}, Lorg/jbcrypt/BCrypt;->gensalt(ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gensalt(ILjava/security/SecureRandom;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "$2a$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 2
    new-array v2, v1, [B

    .line 3
    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 p1, 0xa

    if-ge p0, p1, :cond_0

    .line 4
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 p1, 0x1e

    if-gt p0, p1, :cond_1

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    const-string p0, "$"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-static {v2, v1}, Lorg/jbcrypt/BCrypt;->encode_base64([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "log_rounds exceeds maximum (30)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hashpw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x24

    .line 12
    .line 13
    if-ne v2, v3, :cond_7

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0x32

    .line 21
    .line 22
    if-ne v4, v5, :cond_7

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x4

    .line 30
    const/16 v7, 0x61

    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    if-ne v5, v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne v1, v7, :cond_6

    .line 41
    .line 42
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v3, :cond_6

    .line 47
    .line 48
    const/4 v8, 0x4

    .line 49
    :goto_0
    add-int/lit8 v4, v8, 0x2

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-gt v5, v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    add-int/lit8 v4, v8, 0x3

    .line 66
    .line 67
    add-int/lit8 v8, v8, 0x19

    .line 68
    .line 69
    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-lt v1, v7, :cond_1

    .line 82
    .line 83
    const-string p0, "\u0000"

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-string p0, ""

    .line 87
    .line 88
    :goto_1
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string v4, "UTF-8"

    .line 96
    .line 97
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 98
    .line 99
    .line 100
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/16 v4, 0x10

    .line 102
    .line 103
    invoke-static {p1, v4}, Lorg/jbcrypt/BCrypt;->decode_base64(Ljava/lang/String;I)[B

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v4, Lorg/jbcrypt/BCrypt;

    .line 108
    .line 109
    invoke-direct {v4}, Lorg/jbcrypt/BCrypt;-><init>()V

    .line 110
    .line 111
    .line 112
    sget-object v5, Lorg/jbcrypt/BCrypt;->bf_crypt_ciphertext:[I

    .line 113
    .line 114
    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    check-cast v8, [I

    .line 119
    .line 120
    invoke-virtual {v4, p0, p1, v3, v8}, Lorg/jbcrypt/BCrypt;->crypt_raw([B[BI[I)[B

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const-string v4, "$2"

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    .line 128
    .line 129
    if-lt v1, v7, :cond_2

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    .line 133
    .line 134
    :cond_2
    const-string v1, "$"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    const/16 v4, 0xa

    .line 140
    .line 141
    if-ge v3, v4, :cond_3

    .line 142
    .line 143
    const-string v4, "0"

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    :cond_3
    const/16 v4, 0x1e

    .line 149
    .line 150
    if-gt v3, v4, :cond_4

    .line 151
    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    .line 161
    .line 162
    array-length v1, p1

    .line 163
    invoke-static {p1, v1}, Lorg/jbcrypt/BCrypt;->encode_base64([BI)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    array-length p1, v5

    .line 171
    mul-int/lit8 p1, p1, 0x4

    .line 172
    .line 173
    sub-int/2addr p1, v2

    .line 174
    invoke-static {p0, p1}, Lorg/jbcrypt/BCrypt;->encode_base64([BI)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    const-string p1, "rounds exceeds maximum (30)"

    .line 189
    .line 190
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 195
    .line 196
    const-string p1, "UTF-8 is not supported"

    .line 197
    .line 198
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 203
    .line 204
    const-string p1, "Missing salt rounds"

    .line 205
    .line 206
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p0

    .line 210
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    const-string p1, "Invalid salt revision"

    .line 213
    .line 214
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 219
    .line 220
    const-string p1, "Invalid salt version"

    .line 221
    .line 222
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0
.end method

.method private init_key()V
    .locals 1

    .line 1
    sget-object v0, Lorg/jbcrypt/BCrypt;->P_orig:[I

    .line 2
    .line 3
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 10
    .line 11
    sget-object v0, Lorg/jbcrypt/BCrypt;->S_orig:[I

    .line 12
    .line 13
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [I

    .line 18
    .line 19
    iput-object v0, p0, Lorg/jbcrypt/BCrypt;->S:[I

    .line 20
    .line 21
    return-void
.end method

.method private key([B)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    filled-new-array {v0, v0}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 11
    .line 12
    array-length v3, v3

    .line 13
    iget-object v4, p0, Lorg/jbcrypt/BCrypt;->S:[I

    .line 14
    .line 15
    array-length v4, v4

    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_0
    if-ge v5, v3, :cond_0

    .line 18
    .line 19
    iget-object v6, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 20
    .line 21
    aget v7, v6, v5

    .line 22
    .line 23
    invoke-static {p1, v1}, Lorg/jbcrypt/BCrypt;->streamtoword([B[I)I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    xor-int/2addr v7, v8

    .line 28
    aput v7, v6, v5

    .line 29
    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_1
    const/4 v1, 0x1

    .line 35
    if-ge p1, v3, :cond_1

    .line 36
    .line 37
    invoke-direct {p0, v2, v0}, Lorg/jbcrypt/BCrypt;->encipher([II)V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Lorg/jbcrypt/BCrypt;->P:[I

    .line 41
    .line 42
    aget v6, v2, v0

    .line 43
    .line 44
    aput v6, v5, p1

    .line 45
    .line 46
    add-int/lit8 v6, p1, 0x1

    .line 47
    .line 48
    aget v1, v2, v1

    .line 49
    .line 50
    aput v1, v5, v6

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_2
    if-ge p1, v4, :cond_2

    .line 57
    .line 58
    invoke-direct {p0, v2, v0}, Lorg/jbcrypt/BCrypt;->encipher([II)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lorg/jbcrypt/BCrypt;->S:[I

    .line 62
    .line 63
    aget v5, v2, v0

    .line 64
    .line 65
    aput v5, v3, p1

    .line 66
    .line 67
    add-int/lit8 v5, p1, 0x1

    .line 68
    .line 69
    aget v6, v2, v1

    .line 70
    .line 71
    aput v6, v3, v5

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    return-void
.end method

.method private static streamtoword([B[I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    const/4 v4, 0x4

    .line 7
    if-ge v2, v4, :cond_0

    .line 8
    .line 9
    shl-int/lit8 v3, v3, 0x8

    .line 10
    .line 11
    aget-byte v4, p0, v1

    .line 12
    .line 13
    and-int/lit16 v4, v4, 0xff

    .line 14
    .line 15
    or-int/2addr v3, v4

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    array-length v4, p0

    .line 19
    rem-int/2addr v1, v4

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    aput v1, p1, v0

    .line 24
    .line 25
    return v3
.end method


# virtual methods
.method public crypt_raw([B[BI[I)[B
    .locals 6

    .line 1
    array-length v0, p4

    .line 2
    const/4 v1, 0x4

    .line 3
    if-lt p3, v1, :cond_5

    .line 4
    .line 5
    const/16 v2, 0x1e

    .line 6
    .line 7
    if-gt p3, v2, :cond_5

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    shl-int p3, v2, p3

    .line 11
    .line 12
    array-length v2, p2

    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    if-ne v2, v3, :cond_4

    .line 16
    .line 17
    invoke-direct {p0}, Lorg/jbcrypt/BCrypt;->init_key()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2, p1}, Lorg/jbcrypt/BCrypt;->ekskey([B[B)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-eq v3, p3, :cond_0

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/jbcrypt/BCrypt;->key([B)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p2}, Lorg/jbcrypt/BCrypt;->key([B)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_1
    const/16 p2, 0x40

    .line 38
    .line 39
    if-ge p1, p2, :cond_2

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    :goto_2
    shr-int/lit8 p3, v0, 0x1

    .line 43
    .line 44
    if-ge p2, p3, :cond_1

    .line 45
    .line 46
    shl-int/lit8 p3, p2, 0x1

    .line 47
    .line 48
    invoke-direct {p0, p4, p3}, Lorg/jbcrypt/BCrypt;->encipher([II)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p2, p2, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    mul-int/lit8 p1, v0, 0x4

    .line 58
    .line 59
    new-array p1, p1, [B

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    :goto_3
    if-ge v2, v0, :cond_3

    .line 63
    .line 64
    add-int/lit8 p3, p2, 0x1

    .line 65
    .line 66
    aget v3, p4, v2

    .line 67
    .line 68
    shr-int/lit8 v4, v3, 0x18

    .line 69
    .line 70
    and-int/lit16 v4, v4, 0xff

    .line 71
    .line 72
    int-to-byte v4, v4

    .line 73
    aput-byte v4, p1, p2

    .line 74
    .line 75
    add-int/lit8 v4, p2, 0x2

    .line 76
    .line 77
    shr-int/lit8 v5, v3, 0x10

    .line 78
    .line 79
    and-int/lit16 v5, v5, 0xff

    .line 80
    .line 81
    int-to-byte v5, v5

    .line 82
    aput-byte v5, p1, p3

    .line 83
    .line 84
    add-int/lit8 p3, p2, 0x3

    .line 85
    .line 86
    shr-int/lit8 v5, v3, 0x8

    .line 87
    .line 88
    and-int/lit16 v5, v5, 0xff

    .line 89
    .line 90
    int-to-byte v5, v5

    .line 91
    aput-byte v5, p1, v4

    .line 92
    .line 93
    add-int/2addr p2, v1

    .line 94
    and-int/lit16 v3, v3, 0xff

    .line 95
    .line 96
    int-to-byte v3, v3

    .line 97
    aput-byte v3, p1, p3

    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    return-object p1

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string p2, "Bad salt length"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    const-string p2, "Bad number of rounds"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public hash([B[B[B)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/jbcrypt/BCrypt;->init_key()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p1}, Lorg/jbcrypt/BCrypt;->ekskey([B[B)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    const/16 v2, 0x40

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lorg/jbcrypt/BCrypt;->key([B)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lorg/jbcrypt/BCrypt;->key([B)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p1, Lorg/jbcrypt/BCrypt;->openbsd_iv:[I

    .line 23
    .line 24
    array-length p2, p1

    .line 25
    new-array v1, p2, [I

    .line 26
    .line 27
    array-length v3, p1

    .line 28
    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :goto_1
    const/16 v3, 0x8

    .line 33
    .line 34
    if-ge p1, v3, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_2
    if-ge v3, v2, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v1, p1}, Lorg/jbcrypt/BCrypt;->encipher([II)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    :goto_3
    if-ge v0, p2, :cond_3

    .line 50
    .line 51
    add-int/lit8 v2, p1, 0x1

    .line 52
    .line 53
    aget v3, v1, v0

    .line 54
    .line 55
    and-int/lit16 v4, v3, 0xff

    .line 56
    .line 57
    int-to-byte v4, v4

    .line 58
    aput-byte v4, p3, p1

    .line 59
    .line 60
    add-int/lit8 v4, p1, 0x2

    .line 61
    .line 62
    shr-int/lit8 v5, v3, 0x8

    .line 63
    .line 64
    and-int/lit16 v5, v5, 0xff

    .line 65
    .line 66
    int-to-byte v5, v5

    .line 67
    aput-byte v5, p3, v2

    .line 68
    .line 69
    add-int/lit8 v2, p1, 0x3

    .line 70
    .line 71
    shr-int/lit8 v5, v3, 0x10

    .line 72
    .line 73
    and-int/lit16 v5, v5, 0xff

    .line 74
    .line 75
    int-to-byte v5, v5

    .line 76
    aput-byte v5, p3, v4

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x4

    .line 79
    .line 80
    shr-int/lit8 v3, v3, 0x18

    .line 81
    .line 82
    and-int/lit16 v3, v3, 0xff

    .line 83
    .line 84
    int-to-byte v3, v3

    .line 85
    aput-byte v3, p3, v2

    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    return-void
.end method

.method public pbkdf([B[BI[B)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    :try_start_0
    const-string v4, "SHA-512"

    .line 8
    .line 9
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    array-length v5, v0

    .line 14
    add-int/lit8 v5, v5, 0x1f

    .line 15
    .line 16
    const/16 v6, 0x20

    .line 17
    .line 18
    div-int/2addr v5, v6

    .line 19
    move-object/from16 v7, p1

    .line 20
    .line 21
    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->digest([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const/16 v8, 0x40

    .line 26
    .line 27
    new-array v9, v8, [B

    .line 28
    .line 29
    new-array v10, v6, [B

    .line 30
    .line 31
    new-array v11, v6, [B

    .line 32
    .line 33
    const/4 v12, 0x1

    .line 34
    :goto_0
    if-gt v12, v5, :cond_4

    .line 35
    .line 36
    shr-int/lit8 v13, v12, 0x18

    .line 37
    .line 38
    and-int/lit16 v13, v13, 0xff

    .line 39
    .line 40
    int-to-byte v13, v13

    .line 41
    shr-int/lit8 v14, v12, 0x10

    .line 42
    .line 43
    and-int/lit16 v14, v14, 0xff

    .line 44
    .line 45
    int-to-byte v14, v14

    .line 46
    shr-int/lit8 v15, v12, 0x8

    .line 47
    .line 48
    and-int/lit16 v15, v15, 0xff

    .line 49
    .line 50
    int-to-byte v15, v15

    .line 51
    and-int/lit16 v6, v12, 0xff

    .line 52
    .line 53
    int-to-byte v6, v6

    .line 54
    const/4 v8, 0x4

    .line 55
    new-array v8, v8, [B

    .line 56
    .line 57
    aput-byte v13, v8, v2

    .line 58
    .line 59
    aput-byte v14, v8, v3

    .line 60
    .line 61
    const/4 v13, 0x2

    .line 62
    aput-byte v15, v8, v13

    .line 63
    .line 64
    const/4 v13, 0x3

    .line 65
    aput-byte v6, v8, v13

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 68
    .line 69
    .line 70
    move-object/from16 v6, p2

    .line 71
    .line 72
    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    .line 77
    .line 78
    const/16 v8, 0x40

    .line 79
    .line 80
    invoke-virtual {v4, v9, v2, v8}, Ljava/security/MessageDigest;->digest([BII)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v7, v9, v10}, Lorg/jbcrypt/BCrypt;->hash([B[B[B)V

    .line 84
    .line 85
    .line 86
    const/16 v8, 0x20

    .line 87
    .line 88
    invoke-static {v10, v2, v11, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    move/from16 v8, p3

    .line 92
    .line 93
    const/4 v13, 0x1

    .line 94
    :goto_1
    if-ge v13, v8, :cond_1

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    .line 101
    .line 102
    const/16 v14, 0x40

    .line 103
    .line 104
    invoke-virtual {v4, v9, v2, v14}, Ljava/security/MessageDigest;->digest([BII)I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v7, v9, v11}, Lorg/jbcrypt/BCrypt;->hash([B[B[B)V

    .line 108
    .line 109
    .line 110
    :goto_2
    const/16 v15, 0x20

    .line 111
    .line 112
    if-ge v2, v15, :cond_0

    .line 113
    .line 114
    aget-byte v15, v10, v2

    .line 115
    .line 116
    aget-byte v17, v11, v2

    .line 117
    .line 118
    xor-int v15, v15, v17

    .line 119
    .line 120
    int-to-byte v15, v15

    .line 121
    aput-byte v15, v10, v2

    .line 122
    .line 123
    add-int/2addr v2, v3

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_4

    .line 127
    :catch_1
    move-exception v0

    .line 128
    goto :goto_5

    .line 129
    :cond_0
    add-int/2addr v13, v3

    .line 130
    const/4 v2, 0x0

    .line 131
    goto :goto_1

    .line 132
    :cond_1
    const/16 v14, 0x40

    .line 133
    .line 134
    const/16 v2, 0x20

    .line 135
    .line 136
    const/4 v13, 0x0

    .line 137
    :goto_3
    if-ge v13, v2, :cond_3

    .line 138
    .line 139
    mul-int v15, v13, v5

    .line 140
    .line 141
    add-int/lit8 v16, v12, -0x1

    .line 142
    .line 143
    add-int v15, v16, v15

    .line 144
    .line 145
    array-length v2, v0

    .line 146
    if-ge v15, v2, :cond_2

    .line 147
    .line 148
    aget-byte v2, v10, v13

    .line 149
    .line 150
    aput-byte v2, v0, v15
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    :cond_2
    add-int/2addr v13, v3

    .line 153
    const/16 v2, 0x20

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_3
    add-int/2addr v12, v3

    .line 157
    const/4 v2, 0x0

    .line 158
    const/16 v6, 0x20

    .line 159
    .line 160
    const/16 v8, 0x40

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_4
    return-void

    .line 165
    :goto_4
    new-instance v2, Ljava/lang/RuntimeException;

    .line 166
    .line 167
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw v2

    .line 171
    :goto_5
    new-instance v2, Ljava/lang/RuntimeException;

    .line 172
    .line 173
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    throw v2
.end method
