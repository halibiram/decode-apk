.class final Lcom/jcraft/jzlib/Tree;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BL_CODES:I = 0x13

.field static final Buf_size:I = 0x10

.field static final DIST_CODE_LEN:I = 0x200

.field private static final D_CODES:I = 0x1e

.field static final END_BLOCK:I = 0x100

.field private static final HEAP_SIZE:I = 0x23d

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field static final MAX_BL_BITS:I = 0x7

.field static final REPZ_11_138:I = 0x12

.field static final REPZ_3_10:I = 0x11

.field static final REP_3_6:I = 0x10

.field static final _dist_code:[B

.field static final _length_code:[B

.field static final base_dist:[I

.field static final base_length:[I

.field static final bl_order:[B

.field static final extra_blbits:[I

.field static final extra_dbits:[I

.field static final extra_lbits:[I


# instance fields
.field dyn_tree:[S

.field max_code:I

.field stat_desc:Lcom/jcraft/jzlib/StaticTree;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    .line 9
    .line 10
    const/16 v1, 0x1e

    .line 11
    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 18
    .line 19
    const/16 v1, 0x13

    .line 20
    .line 21
    new-array v1, v1, [I

    .line 22
    .line 23
    fill-array-data v1, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/jcraft/jzlib/Tree;->extra_blbits:[I

    .line 27
    .line 28
    const/16 v1, 0x13

    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    fill-array-data v1, :array_3

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    .line 36
    .line 37
    const/16 v1, 0x200

    .line 38
    .line 39
    new-array v1, v1, [B

    .line 40
    .line 41
    fill-array-data v1, :array_4

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    new-array v1, v1, [B

    .line 49
    .line 50
    fill-array-data v1, :array_5

    .line 51
    .line 52
    .line 53
    sput-object v1, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 54
    .line 55
    new-array v0, v0, [I

    .line 56
    .line 57
    fill-array-data v0, :array_6

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_length:[I

    .line 61
    .line 62
    const/16 v0, 0x1e

    .line 63
    .line 64
    new-array v0, v0, [I

    .line 65
    .line 66
    fill-array-data v0, :array_7

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
    .end array-data

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
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data

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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x7
    .end array-data

    :array_3
    .array-data 1
        0x10t
        0x11t
        0x12t
        0x0t
        0x8t
        0x7t
        0x9t
        0x6t
        0xat
        0x5t
        0xbt
        0x4t
        0xct
        0x3t
        0xdt
        0x2t
        0xet
        0x1t
        0xft
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0x0t
        0x0t
        0x10t
        0x11t
        0x12t
        0x12t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
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

.method private static final bi_reverse(II)I
    .locals 2

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    ushr-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static d_code(I)I
    .locals 2

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 6
    .line 7
    aget-byte p0, v0, p0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 11
    .line 12
    ushr-int/lit8 p0, p0, 0x7

    .line 13
    .line 14
    add-int/2addr p0, v0

    .line 15
    aget-byte p0, v1, p0

    .line 16
    .line 17
    :goto_0
    return p0
.end method

.method private static final gen_codes([SI[S[S)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aput-short v0, p3, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    const/16 v4, 0xf

    .line 8
    .line 9
    if-gt v2, v4, :cond_0

    .line 10
    .line 11
    add-int/lit8 v4, v2, -0x1

    .line 12
    .line 13
    aget-short v4, p2, v4

    .line 14
    .line 15
    add-int/2addr v3, v4

    .line 16
    shl-int/2addr v3, v1

    .line 17
    int-to-short v3, v3

    .line 18
    aput-short v3, p3, v2

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :goto_1
    if-gt v0, p1, :cond_2

    .line 24
    .line 25
    mul-int/lit8 p2, v0, 0x2

    .line 26
    .line 27
    add-int/lit8 v1, p2, 0x1

    .line 28
    .line 29
    aget-short v1, p0, v1

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    aget-short v2, p3, v1

    .line 35
    .line 36
    add-int/lit8 v3, v2, 0x1

    .line 37
    .line 38
    int-to-short v3, v3

    .line 39
    aput-short v3, p3, v1

    .line 40
    .line 41
    invoke-static {v2, v1}, Lcom/jcraft/jzlib/Tree;->bi_reverse(II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    int-to-short v1, v1

    .line 46
    aput-short v1, p0, p2

    .line 47
    .line 48
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    return-void
.end method


# virtual methods
.method public build_tree(Lcom/jcraft/jzlib/Deflate;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 6
    .line 7
    iget v1, v1, Lcom/jcraft/jzlib/StaticTree;->elems:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput v3, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 11
    .line 12
    const/16 v4, 0x23d

    .line 13
    .line 14
    iput v4, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 15
    .line 16
    const/4 v4, -0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    const/4 v6, 0x1

    .line 19
    if-ge v5, v1, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v7, v5, 0x2

    .line 22
    .line 23
    aget-short v8, v0, v7

    .line 24
    .line 25
    if-eqz v8, :cond_0

    .line 26
    .line 27
    iget-object v4, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 28
    .line 29
    iget v7, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 30
    .line 31
    add-int/2addr v7, v6

    .line 32
    iput v7, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 33
    .line 34
    aput v5, v4, v7

    .line 35
    .line 36
    iget-object v4, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 37
    .line 38
    aput-byte v3, v4, v5

    .line 39
    .line 40
    move v4, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 43
    .line 44
    aput-short v3, v0, v7

    .line 45
    .line 46
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_2
    iget v5, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    if-ge v5, v7, :cond_4

    .line 53
    .line 54
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    iput v5, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 59
    .line 60
    if-ge v4, v7, :cond_2

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    move v7, v4

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    move v7, v4

    .line 67
    const/4 v4, 0x0

    .line 68
    :goto_3
    aput v4, v8, v5

    .line 69
    .line 70
    mul-int/lit8 v5, v4, 0x2

    .line 71
    .line 72
    aput-short v6, v0, v5

    .line 73
    .line 74
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 75
    .line 76
    aput-byte v3, v8, v4

    .line 77
    .line 78
    iget v4, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 79
    .line 80
    sub-int/2addr v4, v6

    .line 81
    iput v4, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget v4, p1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 86
    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    aget-short v5, v2, v5

    .line 90
    .line 91
    sub-int/2addr v4, v5

    .line 92
    iput v4, p1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 93
    .line 94
    :cond_3
    move v4, v7

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    iput v4, p0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 97
    .line 98
    div-int/2addr v5, v7

    .line 99
    :goto_4
    if-lt v5, v6, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1, v0, v5}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v5, v5, -0x1

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    :goto_5
    iget-object v2, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 108
    .line 109
    aget v3, v2, v6

    .line 110
    .line 111
    iget v5, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 112
    .line 113
    add-int/lit8 v8, v5, -0x1

    .line 114
    .line 115
    iput v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 116
    .line 117
    aget v5, v2, v5

    .line 118
    .line 119
    aput v5, v2, v6

    .line 120
    .line 121
    invoke-virtual {p1, v0, v6}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 125
    .line 126
    aget v5, v2, v6

    .line 127
    .line 128
    iget v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 129
    .line 130
    add-int/lit8 v9, v8, -0x1

    .line 131
    .line 132
    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 133
    .line 134
    aput v3, v2, v9

    .line 135
    .line 136
    sub-int/2addr v8, v7

    .line 137
    iput v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 138
    .line 139
    aput v5, v2, v8

    .line 140
    .line 141
    mul-int/lit8 v2, v1, 0x2

    .line 142
    .line 143
    mul-int/lit8 v8, v3, 0x2

    .line 144
    .line 145
    aget-short v9, v0, v8

    .line 146
    .line 147
    mul-int/lit8 v10, v5, 0x2

    .line 148
    .line 149
    aget-short v11, v0, v10

    .line 150
    .line 151
    add-int/2addr v9, v11

    .line 152
    int-to-short v9, v9

    .line 153
    aput-short v9, v0, v2

    .line 154
    .line 155
    iget-object v2, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 156
    .line 157
    aget-byte v3, v2, v3

    .line 158
    .line 159
    aget-byte v5, v2, v5

    .line 160
    .line 161
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    add-int/2addr v3, v6

    .line 166
    int-to-byte v3, v3

    .line 167
    aput-byte v3, v2, v1

    .line 168
    .line 169
    add-int/2addr v8, v6

    .line 170
    add-int/2addr v10, v6

    .line 171
    int-to-short v2, v1

    .line 172
    aput-short v2, v0, v10

    .line 173
    .line 174
    aput-short v2, v0, v8

    .line 175
    .line 176
    iget-object v2, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 177
    .line 178
    add-int/lit8 v3, v1, 0x1

    .line 179
    .line 180
    aput v1, v2, v6

    .line 181
    .line 182
    invoke-virtual {p1, v0, v6}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 183
    .line 184
    .line 185
    iget v1, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 186
    .line 187
    if-ge v1, v7, :cond_6

    .line 188
    .line 189
    iget-object v1, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 190
    .line 191
    iget v2, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 192
    .line 193
    sub-int/2addr v2, v6

    .line 194
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 195
    .line 196
    aget v3, v1, v6

    .line 197
    .line 198
    aput v3, v1, v2

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Tree;->gen_bitlen(Lcom/jcraft/jzlib/Deflate;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 204
    .line 205
    iget-object p1, p1, Lcom/jcraft/jzlib/Deflate;->next_code:[S

    .line 206
    .line 207
    invoke-static {v0, v4, v1, p1}, Lcom/jcraft/jzlib/Tree;->gen_codes([SI[S[S)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_6
    move v1, v3

    .line 212
    goto :goto_5
.end method

.method public gen_bitlen(Lcom/jcraft/jzlib/Deflate;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 6
    .line 7
    iget-object v3, v1, Lcom/jcraft/jzlib/StaticTree;->extra_bits:[I

    .line 8
    .line 9
    iget v4, v1, Lcom/jcraft/jzlib/StaticTree;->extra_base:I

    .line 10
    .line 11
    iget v1, v1, Lcom/jcraft/jzlib/StaticTree;->max_length:I

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_0
    const/16 v7, 0xf

    .line 16
    .line 17
    if-gt v6, v7, :cond_0

    .line 18
    .line 19
    iget-object v7, p1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 20
    .line 21
    aput-short v5, v7, v6

    .line 22
    .line 23
    add-int/lit8 v6, v6, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v6, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 27
    .line 28
    iget v7, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 29
    .line 30
    aget v6, v6, v7

    .line 31
    .line 32
    mul-int/lit8 v6, v6, 0x2

    .line 33
    .line 34
    add-int/lit8 v6, v6, 0x1

    .line 35
    .line 36
    aput-short v5, v0, v6

    .line 37
    .line 38
    add-int/lit8 v7, v7, 0x1

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    :goto_1
    const/16 v8, 0x23d

    .line 42
    .line 43
    if-ge v7, v8, :cond_5

    .line 44
    .line 45
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 46
    .line 47
    aget v8, v8, v7

    .line 48
    .line 49
    mul-int/lit8 v9, v8, 0x2

    .line 50
    .line 51
    add-int/lit8 v10, v9, 0x1

    .line 52
    .line 53
    aget-short v11, v0, v10

    .line 54
    .line 55
    mul-int/lit8 v11, v11, 0x2

    .line 56
    .line 57
    add-int/lit8 v11, v11, 0x1

    .line 58
    .line 59
    aget-short v11, v0, v11

    .line 60
    .line 61
    add-int/lit8 v11, v11, 0x1

    .line 62
    .line 63
    if-le v11, v1, :cond_1

    .line 64
    .line 65
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    move v11, v1

    .line 68
    :cond_1
    int-to-short v12, v11

    .line 69
    aput-short v12, v0, v10

    .line 70
    .line 71
    iget v12, p0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 72
    .line 73
    if-le v8, v12, :cond_2

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    iget-object v12, p1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 77
    .line 78
    aget-short v13, v12, v11

    .line 79
    .line 80
    add-int/lit8 v13, v13, 0x1

    .line 81
    .line 82
    int-to-short v13, v13

    .line 83
    aput-short v13, v12, v11

    .line 84
    .line 85
    if-lt v8, v4, :cond_3

    .line 86
    .line 87
    sub-int/2addr v8, v4

    .line 88
    aget v8, v3, v8

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const/4 v8, 0x0

    .line 92
    :goto_2
    aget-short v9, v0, v9

    .line 93
    .line 94
    iget v12, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 95
    .line 96
    add-int/2addr v11, v8

    .line 97
    mul-int v11, v11, v9

    .line 98
    .line 99
    add-int/2addr v11, v12

    .line 100
    iput v11, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 101
    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    iget v11, p1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 105
    .line 106
    aget-short v10, v2, v10

    .line 107
    .line 108
    add-int/2addr v10, v8

    .line 109
    mul-int v10, v10, v9

    .line 110
    .line 111
    add-int/2addr v10, v11

    .line 112
    iput v10, p1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 113
    .line 114
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    if-nez v6, :cond_6

    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    add-int/lit8 v2, v1, -0x1

    .line 121
    .line 122
    :goto_4
    iget-object v3, p1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 123
    .line 124
    aget-short v4, v3, v2

    .line 125
    .line 126
    if-nez v4, :cond_7

    .line 127
    .line 128
    add-int/lit8 v2, v2, -0x1

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 132
    .line 133
    int-to-short v4, v4

    .line 134
    aput-short v4, v3, v2

    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    aget-short v4, v3, v2

    .line 139
    .line 140
    add-int/lit8 v4, v4, 0x2

    .line 141
    .line 142
    int-to-short v4, v4

    .line 143
    aput-short v4, v3, v2

    .line 144
    .line 145
    aget-short v2, v3, v1

    .line 146
    .line 147
    add-int/lit8 v2, v2, -0x1

    .line 148
    .line 149
    int-to-short v2, v2

    .line 150
    aput-short v2, v3, v1

    .line 151
    .line 152
    add-int/lit8 v6, v6, -0x2

    .line 153
    .line 154
    if-gtz v6, :cond_6

    .line 155
    .line 156
    :goto_5
    if-eqz v1, :cond_b

    .line 157
    .line 158
    iget-object v2, p1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 159
    .line 160
    aget-short v2, v2, v1

    .line 161
    .line 162
    :goto_6
    if-eqz v2, :cond_a

    .line 163
    .line 164
    iget-object v3, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 165
    .line 166
    add-int/lit8 v7, v7, -0x1

    .line 167
    .line 168
    aget v3, v3, v7

    .line 169
    .line 170
    iget v4, p0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 171
    .line 172
    if-le v3, v4, :cond_8

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_8
    mul-int/lit8 v3, v3, 0x2

    .line 176
    .line 177
    add-int/lit8 v4, v3, 0x1

    .line 178
    .line 179
    aget-short v5, v0, v4

    .line 180
    .line 181
    if-eq v5, v1, :cond_9

    .line 182
    .line 183
    iget v6, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 184
    .line 185
    int-to-long v8, v6

    .line 186
    int-to-long v10, v1

    .line 187
    int-to-long v5, v5

    .line 188
    sub-long/2addr v10, v5

    .line 189
    aget-short v3, v0, v3

    .line 190
    .line 191
    int-to-long v5, v3

    .line 192
    mul-long v10, v10, v5

    .line 193
    .line 194
    add-long/2addr v10, v8

    .line 195
    long-to-int v3, v10

    .line 196
    iput v3, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 197
    .line 198
    int-to-short v3, v1

    .line 199
    aput-short v3, v0, v4

    .line 200
    .line 201
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_b
    return-void
.end method
