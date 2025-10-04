.class final Lcom/jcraft/jzlib/StaticTree;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BL_CODES:I = 0x13

.field private static final D_CODES:I = 0x1e

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field static final MAX_BL_BITS:I = 0x7

.field static static_bl_desc:Lcom/jcraft/jzlib/StaticTree;

.field static static_d_desc:Lcom/jcraft/jzlib/StaticTree;

.field static final static_dtree:[S

.field static static_l_desc:Lcom/jcraft/jzlib/StaticTree;

.field static final static_ltree:[S


# instance fields
.field elems:I

.field extra_base:I

.field extra_bits:[I

.field max_length:I

.field static_tree:[S


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    const/16 v1, 0x240

    .line 4
    .line 5
    new-array v3, v1, [S

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v3, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    .line 11
    .line 12
    new-array v0, v0, [S

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/jcraft/jzlib/StaticTree;->static_dtree:[S

    .line 18
    .line 19
    new-instance v1, Lcom/jcraft/jzlib/StaticTree;

    .line 20
    .line 21
    sget-object v4, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    .line 22
    .line 23
    const/16 v6, 0x11e

    .line 24
    .line 25
    const/16 v7, 0xf

    .line 26
    .line 27
    const/16 v5, 0x101

    .line 28
    .line 29
    move-object v2, v1

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/StaticTree;-><init>([S[IIII)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/jcraft/jzlib/StaticTree;->static_l_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 34
    .line 35
    new-instance v1, Lcom/jcraft/jzlib/StaticTree;

    .line 36
    .line 37
    sget-object v6, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 38
    .line 39
    const/16 v8, 0x1e

    .line 40
    .line 41
    const/16 v9, 0xf

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    move-object v4, v1

    .line 45
    move-object v5, v0

    .line 46
    invoke-direct/range {v4 .. v9}, Lcom/jcraft/jzlib/StaticTree;-><init>([S[IIII)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/jcraft/jzlib/StaticTree;->static_d_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 50
    .line 51
    new-instance v0, Lcom/jcraft/jzlib/StaticTree;

    .line 52
    .line 53
    sget-object v12, Lcom/jcraft/jzlib/Tree;->extra_blbits:[I

    .line 54
    .line 55
    const/16 v14, 0x13

    .line 56
    .line 57
    const/4 v15, 0x7

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v13, 0x0

    .line 60
    move-object v10, v0

    .line 61
    invoke-direct/range {v10 .. v15}, Lcom/jcraft/jzlib/StaticTree;-><init>([S[IIII)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/jcraft/jzlib/StaticTree;->static_bl_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 2
        0xcs
        0x8s
        0x8cs
        0x8s
        0x4cs
        0x8s
        0xccs
        0x8s
        0x2cs
        0x8s
        0xacs
        0x8s
        0x6cs
        0x8s
        0xecs
        0x8s
        0x1cs
        0x8s
        0x9cs
        0x8s
        0x5cs
        0x8s
        0xdcs
        0x8s
        0x3cs
        0x8s
        0xbcs
        0x8s
        0x7cs
        0x8s
        0xfcs
        0x8s
        0x2s
        0x8s
        0x82s
        0x8s
        0x42s
        0x8s
        0xc2s
        0x8s
        0x22s
        0x8s
        0xa2s
        0x8s
        0x62s
        0x8s
        0xe2s
        0x8s
        0x12s
        0x8s
        0x92s
        0x8s
        0x52s
        0x8s
        0xd2s
        0x8s
        0x32s
        0x8s
        0xb2s
        0x8s
        0x72s
        0x8s
        0xf2s
        0x8s
        0xas
        0x8s
        0x8as
        0x8s
        0x4as
        0x8s
        0xcas
        0x8s
        0x2as
        0x8s
        0xaas
        0x8s
        0x6as
        0x8s
        0xeas
        0x8s
        0x1as
        0x8s
        0x9as
        0x8s
        0x5as
        0x8s
        0xdas
        0x8s
        0x3as
        0x8s
        0xbas
        0x8s
        0x7as
        0x8s
        0xfas
        0x8s
        0x6s
        0x8s
        0x86s
        0x8s
        0x46s
        0x8s
        0xc6s
        0x8s
        0x26s
        0x8s
        0xa6s
        0x8s
        0x66s
        0x8s
        0xe6s
        0x8s
        0x16s
        0x8s
        0x96s
        0x8s
        0x56s
        0x8s
        0xd6s
        0x8s
        0x36s
        0x8s
        0xb6s
        0x8s
        0x76s
        0x8s
        0xf6s
        0x8s
        0xes
        0x8s
        0x8es
        0x8s
        0x4es
        0x8s
        0xces
        0x8s
        0x2es
        0x8s
        0xaes
        0x8s
        0x6es
        0x8s
        0xees
        0x8s
        0x1es
        0x8s
        0x9es
        0x8s
        0x5es
        0x8s
        0xdes
        0x8s
        0x3es
        0x8s
        0xbes
        0x8s
        0x7es
        0x8s
        0xfes
        0x8s
        0x1s
        0x8s
        0x81s
        0x8s
        0x41s
        0x8s
        0xc1s
        0x8s
        0x21s
        0x8s
        0xa1s
        0x8s
        0x61s
        0x8s
        0xe1s
        0x8s
        0x11s
        0x8s
        0x91s
        0x8s
        0x51s
        0x8s
        0xd1s
        0x8s
        0x31s
        0x8s
        0xb1s
        0x8s
        0x71s
        0x8s
        0xf1s
        0x8s
        0x9s
        0x8s
        0x89s
        0x8s
        0x49s
        0x8s
        0xc9s
        0x8s
        0x29s
        0x8s
        0xa9s
        0x8s
        0x69s
        0x8s
        0xe9s
        0x8s
        0x19s
        0x8s
        0x99s
        0x8s
        0x59s
        0x8s
        0xd9s
        0x8s
        0x39s
        0x8s
        0xb9s
        0x8s
        0x79s
        0x8s
        0xf9s
        0x8s
        0x5s
        0x8s
        0x85s
        0x8s
        0x45s
        0x8s
        0xc5s
        0x8s
        0x25s
        0x8s
        0xa5s
        0x8s
        0x65s
        0x8s
        0xe5s
        0x8s
        0x15s
        0x8s
        0x95s
        0x8s
        0x55s
        0x8s
        0xd5s
        0x8s
        0x35s
        0x8s
        0xb5s
        0x8s
        0x75s
        0x8s
        0xf5s
        0x8s
        0xds
        0x8s
        0x8ds
        0x8s
        0x4ds
        0x8s
        0xcds
        0x8s
        0x2ds
        0x8s
        0xads
        0x8s
        0x6ds
        0x8s
        0xeds
        0x8s
        0x1ds
        0x8s
        0x9ds
        0x8s
        0x5ds
        0x8s
        0xdds
        0x8s
        0x3ds
        0x8s
        0xbds
        0x8s
        0x7ds
        0x8s
        0xfds
        0x8s
        0x13s
        0x9s
        0x113s
        0x9s
        0x93s
        0x9s
        0x193s
        0x9s
        0x53s
        0x9s
        0x153s
        0x9s
        0xd3s
        0x9s
        0x1d3s
        0x9s
        0x33s
        0x9s
        0x133s
        0x9s
        0xb3s
        0x9s
        0x1b3s
        0x9s
        0x73s
        0x9s
        0x173s
        0x9s
        0xf3s
        0x9s
        0x1f3s
        0x9s
        0xbs
        0x9s
        0x10bs
        0x9s
        0x8bs
        0x9s
        0x18bs
        0x9s
        0x4bs
        0x9s
        0x14bs
        0x9s
        0xcbs
        0x9s
        0x1cbs
        0x9s
        0x2bs
        0x9s
        0x12bs
        0x9s
        0xabs
        0x9s
        0x1abs
        0x9s
        0x6bs
        0x9s
        0x16bs
        0x9s
        0xebs
        0x9s
        0x1ebs
        0x9s
        0x1bs
        0x9s
        0x11bs
        0x9s
        0x9bs
        0x9s
        0x19bs
        0x9s
        0x5bs
        0x9s
        0x15bs
        0x9s
        0xdbs
        0x9s
        0x1dbs
        0x9s
        0x3bs
        0x9s
        0x13bs
        0x9s
        0xbbs
        0x9s
        0x1bbs
        0x9s
        0x7bs
        0x9s
        0x17bs
        0x9s
        0xfbs
        0x9s
        0x1fbs
        0x9s
        0x7s
        0x9s
        0x107s
        0x9s
        0x87s
        0x9s
        0x187s
        0x9s
        0x47s
        0x9s
        0x147s
        0x9s
        0xc7s
        0x9s
        0x1c7s
        0x9s
        0x27s
        0x9s
        0x127s
        0x9s
        0xa7s
        0x9s
        0x1a7s
        0x9s
        0x67s
        0x9s
        0x167s
        0x9s
        0xe7s
        0x9s
        0x1e7s
        0x9s
        0x17s
        0x9s
        0x117s
        0x9s
        0x97s
        0x9s
        0x197s
        0x9s
        0x57s
        0x9s
        0x157s
        0x9s
        0xd7s
        0x9s
        0x1d7s
        0x9s
        0x37s
        0x9s
        0x137s
        0x9s
        0xb7s
        0x9s
        0x1b7s
        0x9s
        0x77s
        0x9s
        0x177s
        0x9s
        0xf7s
        0x9s
        0x1f7s
        0x9s
        0xfs
        0x9s
        0x10fs
        0x9s
        0x8fs
        0x9s
        0x18fs
        0x9s
        0x4fs
        0x9s
        0x14fs
        0x9s
        0xcfs
        0x9s
        0x1cfs
        0x9s
        0x2fs
        0x9s
        0x12fs
        0x9s
        0xafs
        0x9s
        0x1afs
        0x9s
        0x6fs
        0x9s
        0x16fs
        0x9s
        0xefs
        0x9s
        0x1efs
        0x9s
        0x1fs
        0x9s
        0x11fs
        0x9s
        0x9fs
        0x9s
        0x19fs
        0x9s
        0x5fs
        0x9s
        0x15fs
        0x9s
        0xdfs
        0x9s
        0x1dfs
        0x9s
        0x3fs
        0x9s
        0x13fs
        0x9s
        0xbfs
        0x9s
        0x1bfs
        0x9s
        0x7fs
        0x9s
        0x17fs
        0x9s
        0xffs
        0x9s
        0x1ffs
        0x9s
        0x0s
        0x7s
        0x40s
        0x7s
        0x20s
        0x7s
        0x60s
        0x7s
        0x10s
        0x7s
        0x50s
        0x7s
        0x30s
        0x7s
        0x70s
        0x7s
        0x8s
        0x7s
        0x48s
        0x7s
        0x28s
        0x7s
        0x68s
        0x7s
        0x18s
        0x7s
        0x58s
        0x7s
        0x38s
        0x7s
        0x78s
        0x7s
        0x4s
        0x7s
        0x44s
        0x7s
        0x24s
        0x7s
        0x64s
        0x7s
        0x14s
        0x7s
        0x54s
        0x7s
        0x34s
        0x7s
        0x74s
        0x7s
        0x3s
        0x8s
        0x83s
        0x8s
        0x43s
        0x8s
        0xc3s
        0x8s
        0x23s
        0x8s
        0xa3s
        0x8s
        0x63s
        0x8s
        0xe3s
        0x8s
    .end array-data

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
    :array_1
    .array-data 2
        0x0s
        0x5s
        0x10s
        0x5s
        0x8s
        0x5s
        0x18s
        0x5s
        0x4s
        0x5s
        0x14s
        0x5s
        0xcs
        0x5s
        0x1cs
        0x5s
        0x2s
        0x5s
        0x12s
        0x5s
        0xas
        0x5s
        0x1as
        0x5s
        0x6s
        0x5s
        0x16s
        0x5s
        0xes
        0x5s
        0x1es
        0x5s
        0x1s
        0x5s
        0x11s
        0x5s
        0x9s
        0x5s
        0x19s
        0x5s
        0x5s
        0x5s
        0x15s
        0x5s
        0xds
        0x5s
        0x1ds
        0x5s
        0x3s
        0x5s
        0x13s
        0x5s
        0xbs
        0x5s
        0x1bs
        0x5s
        0x7s
        0x5s
        0x17s
        0x5s
    .end array-data
.end method

.method private constructor <init>([S[IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 5
    .line 6
    iput-object p2, p0, Lcom/jcraft/jzlib/StaticTree;->extra_bits:[I

    .line 7
    .line 8
    iput p3, p0, Lcom/jcraft/jzlib/StaticTree;->extra_base:I

    .line 9
    .line 10
    iput p4, p0, Lcom/jcraft/jzlib/StaticTree;->elems:I

    .line 11
    .line 12
    iput p5, p0, Lcom/jcraft/jzlib/StaticTree;->max_length:I

    .line 13
    .line 14
    return-void
.end method
