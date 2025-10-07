.class public Lcom/trilead/ssh2/crypto/cipher/DES;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# static fields
.field static Df_Key:[S

.field static SP1:[I

.field static SP2:[I

.field static SP3:[I

.field static SP4:[I

.field static SP5:[I

.field static SP6:[I

.field static SP7:[I

.field static SP8:[I

.field static bigbyte:[I

.field static bytebit:[S

.field static pc1:[B

.field static pc2:[B

.field static totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    new-array v1, v1, [S

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v1, Lcom/trilead/ssh2/crypto/cipher/DES;->Df_Key:[S

    .line 11
    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v2, v2, [S

    .line 17
    .line 18
    fill-array-data v2, :array_1

    .line 19
    .line 20
    .line 21
    sput-object v2, Lcom/trilead/ssh2/crypto/cipher/DES;->bytebit:[S

    .line 22
    .line 23
    const/16 v2, 0x18

    .line 24
    .line 25
    new-array v2, v2, [I

    .line 26
    .line 27
    fill-array-data v2, :array_2

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/trilead/ssh2/crypto/cipher/DES;->bigbyte:[I

    .line 31
    .line 32
    const/16 v2, 0x38

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    fill-array-data v2, :array_3

    .line 37
    .line 38
    .line 39
    sput-object v2, Lcom/trilead/ssh2/crypto/cipher/DES;->pc1:[B

    .line 40
    .line 41
    new-array v0, v0, [B

    .line 42
    .line 43
    fill-array-data v0, :array_4

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->totrot:[B

    .line 47
    .line 48
    const/16 v0, 0x30

    .line 49
    .line 50
    new-array v0, v0, [B

    .line 51
    .line 52
    fill-array-data v0, :array_5

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->pc2:[B

    .line 56
    .line 57
    new-array v0, v1, [I

    .line 58
    .line 59
    fill-array-data v0, :array_6

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP1:[I

    .line 63
    .line 64
    new-array v0, v1, [I

    .line 65
    .line 66
    fill-array-data v0, :array_7

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP2:[I

    .line 70
    .line 71
    new-array v0, v1, [I

    .line 72
    .line 73
    fill-array-data v0, :array_8

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP3:[I

    .line 77
    .line 78
    new-array v0, v1, [I

    .line 79
    .line 80
    fill-array-data v0, :array_9

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP4:[I

    .line 84
    .line 85
    new-array v0, v1, [I

    .line 86
    .line 87
    fill-array-data v0, :array_a

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP5:[I

    .line 91
    .line 92
    new-array v0, v1, [I

    .line 93
    .line 94
    fill-array-data v0, :array_b

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP6:[I

    .line 98
    .line 99
    new-array v0, v1, [I

    .line 100
    .line 101
    fill-array-data v0, :array_c

    .line 102
    .line 103
    .line 104
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP7:[I

    .line 105
    .line 106
    new-array v0, v1, [I

    .line 107
    .line 108
    fill-array-data v0, :array_d

    .line 109
    .line 110
    .line 111
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP8:[I

    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 2
        0x1s
        0x23s
        0x45s
        0x67s
        0x89s
        0xabs
        0xcds
        0xefs
        0xfes
        0xdcs
        0xbas
        0x98s
        0x76s
        0x54s
        0x32s
        0x10s
        0x89s
        0xabs
        0xcds
        0xefs
        0x1s
        0x23s
        0x45s
        0x67s
    .end array-data

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
    :array_1
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

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
    :array_2
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

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
    :array_3
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    :array_5
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    :array_6
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    :array_7
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    :array_8
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    :array_9
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    :array_a
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    :array_b
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    :array_c
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    :array_d
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DES;->workingKey:[I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public desFunc([I[BI[BI)V
    .locals 20

    .line 1
    aget-byte v0, p2, p3

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p3, 0x1

    .line 8
    .line 9
    aget-byte v1, p2, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p3, 0x2

    .line 17
    .line 18
    aget-byte v1, p2, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    shl-int/2addr v1, v2

    .line 25
    or-int/2addr v0, v1

    .line 26
    add-int/lit8 v1, p3, 0x3

    .line 27
    .line 28
    aget-byte v1, p2, v1

    .line 29
    .line 30
    and-int/lit16 v1, v1, 0xff

    .line 31
    .line 32
    or-int/2addr v0, v1

    .line 33
    add-int/lit8 v1, p3, 0x4

    .line 34
    .line 35
    aget-byte v1, p2, v1

    .line 36
    .line 37
    and-int/lit16 v1, v1, 0xff

    .line 38
    .line 39
    shl-int/lit8 v1, v1, 0x18

    .line 40
    .line 41
    add-int/lit8 v3, p3, 0x5

    .line 42
    .line 43
    aget-byte v3, p2, v3

    .line 44
    .line 45
    and-int/lit16 v3, v3, 0xff

    .line 46
    .line 47
    shl-int/lit8 v3, v3, 0x10

    .line 48
    .line 49
    or-int/2addr v1, v3

    .line 50
    add-int/lit8 v3, p3, 0x6

    .line 51
    .line 52
    aget-byte v3, p2, v3

    .line 53
    .line 54
    and-int/lit16 v3, v3, 0xff

    .line 55
    .line 56
    shl-int/2addr v3, v2

    .line 57
    or-int/2addr v1, v3

    .line 58
    add-int/lit8 v3, p3, 0x7

    .line 59
    .line 60
    aget-byte v3, p2, v3

    .line 61
    .line 62
    and-int/lit16 v3, v3, 0xff

    .line 63
    .line 64
    or-int/2addr v1, v3

    .line 65
    ushr-int/lit8 v3, v0, 0x4

    .line 66
    .line 67
    xor-int/2addr v3, v1

    .line 68
    const v4, 0xf0f0f0f

    .line 69
    .line 70
    .line 71
    and-int/2addr v3, v4

    .line 72
    xor-int/2addr v1, v3

    .line 73
    shl-int/lit8 v3, v3, 0x4

    .line 74
    .line 75
    xor-int/2addr v0, v3

    .line 76
    ushr-int/lit8 v3, v0, 0x10

    .line 77
    .line 78
    xor-int/2addr v3, v1

    .line 79
    const v5, 0xffff

    .line 80
    .line 81
    .line 82
    and-int/2addr v3, v5

    .line 83
    xor-int/2addr v1, v3

    .line 84
    shl-int/lit8 v3, v3, 0x10

    .line 85
    .line 86
    xor-int/2addr v0, v3

    .line 87
    ushr-int/lit8 v3, v1, 0x2

    .line 88
    .line 89
    xor-int/2addr v3, v0

    .line 90
    const v6, 0x33333333

    .line 91
    .line 92
    .line 93
    and-int/2addr v3, v6

    .line 94
    xor-int/2addr v0, v3

    .line 95
    shl-int/lit8 v3, v3, 0x2

    .line 96
    .line 97
    xor-int/2addr v1, v3

    .line 98
    ushr-int/lit8 v3, v1, 0x8

    .line 99
    .line 100
    xor-int/2addr v3, v0

    .line 101
    const v7, 0xff00ff

    .line 102
    .line 103
    .line 104
    and-int/2addr v3, v7

    .line 105
    xor-int/2addr v0, v3

    .line 106
    shl-int/2addr v3, v2

    .line 107
    xor-int/2addr v1, v3

    .line 108
    shl-int/lit8 v3, v1, 0x1

    .line 109
    .line 110
    ushr-int/lit8 v1, v1, 0x1f

    .line 111
    .line 112
    and-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    or-int/2addr v1, v3

    .line 115
    xor-int v3, v0, v1

    .line 116
    .line 117
    const v8, -0x55555556

    .line 118
    .line 119
    .line 120
    and-int/2addr v3, v8

    .line 121
    xor-int/2addr v0, v3

    .line 122
    xor-int/2addr v1, v3

    .line 123
    shl-int/lit8 v3, v0, 0x1

    .line 124
    .line 125
    ushr-int/lit8 v0, v0, 0x1f

    .line 126
    .line 127
    and-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    or-int/2addr v0, v3

    .line 130
    const/4 v3, 0x0

    .line 131
    :goto_0
    if-ge v3, v2, :cond_0

    .line 132
    .line 133
    shl-int/lit8 v9, v1, 0x1c

    .line 134
    .line 135
    ushr-int/lit8 v10, v1, 0x4

    .line 136
    .line 137
    or-int/2addr v9, v10

    .line 138
    mul-int/lit8 v10, v3, 0x4

    .line 139
    .line 140
    aget v11, p1, v10

    .line 141
    .line 142
    xor-int/2addr v9, v11

    .line 143
    sget-object v11, Lcom/trilead/ssh2/crypto/cipher/DES;->SP7:[I

    .line 144
    .line 145
    and-int/lit8 v12, v9, 0x3f

    .line 146
    .line 147
    aget v12, v11, v12

    .line 148
    .line 149
    sget-object v13, Lcom/trilead/ssh2/crypto/cipher/DES;->SP5:[I

    .line 150
    .line 151
    ushr-int/lit8 v14, v9, 0x8

    .line 152
    .line 153
    and-int/lit8 v14, v14, 0x3f

    .line 154
    .line 155
    aget v14, v13, v14

    .line 156
    .line 157
    or-int/2addr v12, v14

    .line 158
    sget-object v14, Lcom/trilead/ssh2/crypto/cipher/DES;->SP3:[I

    .line 159
    .line 160
    ushr-int/lit8 v15, v9, 0x10

    .line 161
    .line 162
    and-int/lit8 v15, v15, 0x3f

    .line 163
    .line 164
    aget v15, v14, v15

    .line 165
    .line 166
    or-int/2addr v12, v15

    .line 167
    sget-object v15, Lcom/trilead/ssh2/crypto/cipher/DES;->SP1:[I

    .line 168
    .line 169
    ushr-int/lit8 v9, v9, 0x18

    .line 170
    .line 171
    and-int/lit8 v9, v9, 0x3f

    .line 172
    .line 173
    aget v9, v15, v9

    .line 174
    .line 175
    or-int/2addr v9, v12

    .line 176
    add-int/lit8 v12, v10, 0x1

    .line 177
    .line 178
    aget v12, p1, v12

    .line 179
    .line 180
    xor-int/2addr v12, v1

    .line 181
    sget-object v16, Lcom/trilead/ssh2/crypto/cipher/DES;->SP8:[I

    .line 182
    .line 183
    and-int/lit8 v17, v12, 0x3f

    .line 184
    .line 185
    aget v17, v16, v17

    .line 186
    .line 187
    or-int v9, v9, v17

    .line 188
    .line 189
    sget-object v17, Lcom/trilead/ssh2/crypto/cipher/DES;->SP6:[I

    .line 190
    .line 191
    ushr-int/lit8 v18, v12, 0x8

    .line 192
    .line 193
    and-int/lit8 v18, v18, 0x3f

    .line 194
    .line 195
    aget v18, v17, v18

    .line 196
    .line 197
    or-int v9, v9, v18

    .line 198
    .line 199
    sget-object v18, Lcom/trilead/ssh2/crypto/cipher/DES;->SP4:[I

    .line 200
    .line 201
    ushr-int/lit8 v19, v12, 0x10

    .line 202
    .line 203
    and-int/lit8 v19, v19, 0x3f

    .line 204
    .line 205
    aget v19, v18, v19

    .line 206
    .line 207
    or-int v9, v9, v19

    .line 208
    .line 209
    sget-object v19, Lcom/trilead/ssh2/crypto/cipher/DES;->SP2:[I

    .line 210
    .line 211
    ushr-int/lit8 v12, v12, 0x18

    .line 212
    .line 213
    and-int/lit8 v12, v12, 0x3f

    .line 214
    .line 215
    aget v12, v19, v12

    .line 216
    .line 217
    or-int/2addr v9, v12

    .line 218
    xor-int/2addr v0, v9

    .line 219
    shl-int/lit8 v9, v0, 0x1c

    .line 220
    .line 221
    ushr-int/lit8 v12, v0, 0x4

    .line 222
    .line 223
    or-int/2addr v9, v12

    .line 224
    add-int/lit8 v12, v10, 0x2

    .line 225
    .line 226
    aget v12, p1, v12

    .line 227
    .line 228
    xor-int/2addr v9, v12

    .line 229
    and-int/lit8 v12, v9, 0x3f

    .line 230
    .line 231
    aget v11, v11, v12

    .line 232
    .line 233
    ushr-int/lit8 v12, v9, 0x8

    .line 234
    .line 235
    and-int/lit8 v12, v12, 0x3f

    .line 236
    .line 237
    aget v12, v13, v12

    .line 238
    .line 239
    or-int/2addr v11, v12

    .line 240
    ushr-int/lit8 v12, v9, 0x10

    .line 241
    .line 242
    and-int/lit8 v12, v12, 0x3f

    .line 243
    .line 244
    aget v12, v14, v12

    .line 245
    .line 246
    or-int/2addr v11, v12

    .line 247
    ushr-int/lit8 v9, v9, 0x18

    .line 248
    .line 249
    and-int/lit8 v9, v9, 0x3f

    .line 250
    .line 251
    aget v9, v15, v9

    .line 252
    .line 253
    or-int/2addr v9, v11

    .line 254
    add-int/lit8 v10, v10, 0x3

    .line 255
    .line 256
    aget v10, p1, v10

    .line 257
    .line 258
    xor-int/2addr v10, v0

    .line 259
    and-int/lit8 v11, v10, 0x3f

    .line 260
    .line 261
    aget v11, v16, v11

    .line 262
    .line 263
    or-int/2addr v9, v11

    .line 264
    ushr-int/lit8 v11, v10, 0x8

    .line 265
    .line 266
    and-int/lit8 v11, v11, 0x3f

    .line 267
    .line 268
    aget v11, v17, v11

    .line 269
    .line 270
    or-int/2addr v9, v11

    .line 271
    ushr-int/lit8 v11, v10, 0x10

    .line 272
    .line 273
    and-int/lit8 v11, v11, 0x3f

    .line 274
    .line 275
    aget v11, v18, v11

    .line 276
    .line 277
    or-int/2addr v9, v11

    .line 278
    ushr-int/lit8 v10, v10, 0x18

    .line 279
    .line 280
    and-int/lit8 v10, v10, 0x3f

    .line 281
    .line 282
    aget v10, v19, v10

    .line 283
    .line 284
    or-int/2addr v9, v10

    .line 285
    xor-int/2addr v1, v9

    .line 286
    add-int/lit8 v3, v3, 0x1

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_0
    shl-int/lit8 v3, v1, 0x1f

    .line 291
    .line 292
    ushr-int/lit8 v1, v1, 0x1

    .line 293
    .line 294
    or-int/2addr v1, v3

    .line 295
    xor-int v3, v0, v1

    .line 296
    .line 297
    and-int/2addr v3, v8

    .line 298
    xor-int/2addr v0, v3

    .line 299
    xor-int/2addr v1, v3

    .line 300
    shl-int/lit8 v3, v0, 0x1f

    .line 301
    .line 302
    ushr-int/lit8 v0, v0, 0x1

    .line 303
    .line 304
    or-int/2addr v0, v3

    .line 305
    ushr-int/lit8 v3, v0, 0x8

    .line 306
    .line 307
    xor-int/2addr v3, v1

    .line 308
    and-int/2addr v3, v7

    .line 309
    xor-int/2addr v1, v3

    .line 310
    shl-int/lit8 v2, v3, 0x8

    .line 311
    .line 312
    xor-int/2addr v0, v2

    .line 313
    ushr-int/lit8 v2, v0, 0x2

    .line 314
    .line 315
    xor-int/2addr v2, v1

    .line 316
    and-int/2addr v2, v6

    .line 317
    xor-int/2addr v1, v2

    .line 318
    shl-int/lit8 v2, v2, 0x2

    .line 319
    .line 320
    xor-int/2addr v0, v2

    .line 321
    ushr-int/lit8 v2, v1, 0x10

    .line 322
    .line 323
    xor-int/2addr v2, v0

    .line 324
    and-int/2addr v2, v5

    .line 325
    xor-int/2addr v0, v2

    .line 326
    shl-int/lit8 v2, v2, 0x10

    .line 327
    .line 328
    xor-int/2addr v1, v2

    .line 329
    ushr-int/lit8 v2, v1, 0x4

    .line 330
    .line 331
    xor-int/2addr v2, v0

    .line 332
    and-int/2addr v2, v4

    .line 333
    xor-int/2addr v0, v2

    .line 334
    shl-int/lit8 v2, v2, 0x4

    .line 335
    .line 336
    xor-int/2addr v1, v2

    .line 337
    ushr-int/lit8 v2, v1, 0x18

    .line 338
    .line 339
    and-int/lit16 v2, v2, 0xff

    .line 340
    .line 341
    int-to-byte v2, v2

    .line 342
    aput-byte v2, p4, p5

    .line 343
    .line 344
    add-int/lit8 v2, p5, 0x1

    .line 345
    .line 346
    ushr-int/lit8 v3, v1, 0x10

    .line 347
    .line 348
    and-int/lit16 v3, v3, 0xff

    .line 349
    .line 350
    int-to-byte v3, v3

    .line 351
    aput-byte v3, p4, v2

    .line 352
    .line 353
    add-int/lit8 v2, p5, 0x2

    .line 354
    .line 355
    ushr-int/lit8 v3, v1, 0x8

    .line 356
    .line 357
    and-int/lit16 v3, v3, 0xff

    .line 358
    .line 359
    int-to-byte v3, v3

    .line 360
    aput-byte v3, p4, v2

    .line 361
    .line 362
    add-int/lit8 v2, p5, 0x3

    .line 363
    .line 364
    and-int/lit16 v1, v1, 0xff

    .line 365
    .line 366
    int-to-byte v1, v1

    .line 367
    aput-byte v1, p4, v2

    .line 368
    .line 369
    add-int/lit8 v1, p5, 0x4

    .line 370
    .line 371
    ushr-int/lit8 v2, v0, 0x18

    .line 372
    .line 373
    and-int/lit16 v2, v2, 0xff

    .line 374
    .line 375
    int-to-byte v2, v2

    .line 376
    aput-byte v2, p4, v1

    .line 377
    .line 378
    add-int/lit8 v1, p5, 0x5

    .line 379
    .line 380
    ushr-int/lit8 v2, v0, 0x10

    .line 381
    .line 382
    and-int/lit16 v2, v2, 0xff

    .line 383
    .line 384
    int-to-byte v2, v2

    .line 385
    aput-byte v2, p4, v1

    .line 386
    .line 387
    add-int/lit8 v1, p5, 0x6

    .line 388
    .line 389
    ushr-int/lit8 v2, v0, 0x8

    .line 390
    .line 391
    and-int/lit16 v2, v2, 0xff

    .line 392
    .line 393
    int-to-byte v2, v2

    .line 394
    aput-byte v2, p4, v1

    .line 395
    .line 396
    add-int/lit8 v1, p5, 0x7

    .line 397
    .line 398
    and-int/lit16 v0, v0, 0xff

    .line 399
    .line 400
    int-to-byte v0, v0

    .line 401
    aput-byte v0, p4, v1

    .line 402
    .line 403
    return-void
.end method

.method public generateWorkingKey(Z[BI)[I
    .locals 12

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/16 v2, 0x38

    .line 6
    .line 7
    new-array v3, v2, [Z

    .line 8
    .line 9
    new-array v4, v2, [Z

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    :goto_0
    const/4 v7, 0x1

    .line 14
    if-ge v6, v2, :cond_1

    .line 15
    .line 16
    sget-object v8, Lcom/trilead/ssh2/crypto/cipher/DES;->pc1:[B

    .line 17
    .line 18
    aget-byte v8, v8, v6

    .line 19
    .line 20
    ushr-int/lit8 v9, v8, 0x3

    .line 21
    .line 22
    add-int/2addr v9, p3

    .line 23
    aget-byte v9, p2, v9

    .line 24
    .line 25
    sget-object v10, Lcom/trilead/ssh2/crypto/cipher/DES;->bytebit:[S

    .line 26
    .line 27
    and-int/lit8 v8, v8, 0x7

    .line 28
    .line 29
    aget-short v8, v10, v8

    .line 30
    .line 31
    and-int/2addr v8, v9

    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v7, 0x0

    .line 36
    :goto_1
    aput-boolean v7, v3, v6

    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p2, 0x0

    .line 42
    :goto_2
    const/16 p3, 0x10

    .line 43
    .line 44
    if-ge p2, p3, :cond_a

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    shl-int/lit8 p3, p2, 0x1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    rsub-int/lit8 p3, p2, 0xf

    .line 52
    .line 53
    shl-int/2addr p3, v7

    .line 54
    :goto_3
    add-int/lit8 v6, p3, 0x1

    .line 55
    .line 56
    aput v5, v1, v6

    .line 57
    .line 58
    aput v5, v1, p3

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    :goto_4
    const/16 v9, 0x1c

    .line 62
    .line 63
    if-ge v8, v9, :cond_4

    .line 64
    .line 65
    sget-object v10, Lcom/trilead/ssh2/crypto/cipher/DES;->totrot:[B

    .line 66
    .line 67
    aget-byte v10, v10, p2

    .line 68
    .line 69
    add-int/2addr v10, v8

    .line 70
    if-ge v10, v9, :cond_3

    .line 71
    .line 72
    aget-boolean v9, v3, v10

    .line 73
    .line 74
    aput-boolean v9, v4, v8

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_3
    add-int/lit8 v10, v10, -0x1c

    .line 78
    .line 79
    aget-boolean v9, v3, v10

    .line 80
    .line 81
    aput-boolean v9, v4, v8

    .line 82
    .line 83
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    :goto_6
    if-ge v9, v2, :cond_6

    .line 87
    .line 88
    sget-object v8, Lcom/trilead/ssh2/crypto/cipher/DES;->totrot:[B

    .line 89
    .line 90
    aget-byte v8, v8, p2

    .line 91
    .line 92
    add-int/2addr v8, v9

    .line 93
    if-ge v8, v2, :cond_5

    .line 94
    .line 95
    aget-boolean v8, v3, v8

    .line 96
    .line 97
    aput-boolean v8, v4, v9

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_5
    add-int/lit8 v8, v8, -0x1c

    .line 101
    .line 102
    aget-boolean v8, v3, v8

    .line 103
    .line 104
    aput-boolean v8, v4, v9

    .line 105
    .line 106
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_6
    const/4 v8, 0x0

    .line 110
    :goto_8
    const/16 v9, 0x18

    .line 111
    .line 112
    if-ge v8, v9, :cond_9

    .line 113
    .line 114
    sget-object v9, Lcom/trilead/ssh2/crypto/cipher/DES;->pc2:[B

    .line 115
    .line 116
    aget-byte v10, v9, v8

    .line 117
    .line 118
    aget-boolean v10, v4, v10

    .line 119
    .line 120
    if-eqz v10, :cond_7

    .line 121
    .line 122
    aget v10, v1, p3

    .line 123
    .line 124
    sget-object v11, Lcom/trilead/ssh2/crypto/cipher/DES;->bigbyte:[I

    .line 125
    .line 126
    aget v11, v11, v8

    .line 127
    .line 128
    or-int/2addr v10, v11

    .line 129
    aput v10, v1, p3

    .line 130
    .line 131
    :cond_7
    add-int/lit8 v10, v8, 0x18

    .line 132
    .line 133
    aget-byte v9, v9, v10

    .line 134
    .line 135
    aget-boolean v9, v4, v9

    .line 136
    .line 137
    if-eqz v9, :cond_8

    .line 138
    .line 139
    aget v9, v1, v6

    .line 140
    .line 141
    sget-object v10, Lcom/trilead/ssh2/crypto/cipher/DES;->bigbyte:[I

    .line 142
    .line 143
    aget v10, v10, v8

    .line 144
    .line 145
    or-int/2addr v9, v10

    .line 146
    aput v9, v1, v6

    .line 147
    .line 148
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_a
    :goto_9
    if-eq v5, v0, :cond_b

    .line 155
    .line 156
    aget p1, v1, v5

    .line 157
    .line 158
    add-int/lit8 p2, v5, 0x1

    .line 159
    .line 160
    aget v2, v1, p2

    .line 161
    .line 162
    const/high16 v3, 0xfc0000

    .line 163
    .line 164
    and-int v4, p1, v3

    .line 165
    .line 166
    shl-int/lit8 v4, v4, 0x6

    .line 167
    .line 168
    and-int/lit16 v6, p1, 0xfc0

    .line 169
    .line 170
    shl-int/lit8 v6, v6, 0xa

    .line 171
    .line 172
    or-int/2addr v4, v6

    .line 173
    and-int/2addr v3, v2

    .line 174
    ushr-int/lit8 v3, v3, 0xa

    .line 175
    .line 176
    or-int/2addr v3, v4

    .line 177
    and-int/lit16 v4, v2, 0xfc0

    .line 178
    .line 179
    ushr-int/lit8 v4, v4, 0x6

    .line 180
    .line 181
    or-int/2addr v3, v4

    .line 182
    aput v3, v1, v5

    .line 183
    .line 184
    const v3, 0x3f000

    .line 185
    .line 186
    .line 187
    and-int v4, p1, v3

    .line 188
    .line 189
    shl-int/lit8 v4, v4, 0xc

    .line 190
    .line 191
    and-int/lit8 p1, p1, 0x3f

    .line 192
    .line 193
    shl-int/2addr p1, p3

    .line 194
    or-int/2addr p1, v4

    .line 195
    and-int/2addr v3, v2

    .line 196
    ushr-int/lit8 v3, v3, 0x4

    .line 197
    .line 198
    or-int/2addr p1, v3

    .line 199
    and-int/lit8 v2, v2, 0x3f

    .line 200
    .line 201
    or-int/2addr p1, v2

    .line 202
    aput p1, v1, p2

    .line 203
    .line 204
    add-int/lit8 v5, v5, 0x2

    .line 205
    .line 206
    goto :goto_9

    .line 207
    :cond_b
    return-object v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x70078ad97df91174L    # -9.845947591324798E-232
        0x6d61210b4ad719a0L    # 7.558243272844464E218
    .end array-data
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(Z[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/cipher/DES;->generateWorkingKey(Z[BI)[I

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/DES;->workingKey:[I

    .line 7
    .line 8
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DES;->workingKey:[I

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 p3, 0x5

    .line 19
    new-array p3, p3, [J

    .line 20
    .line 21
    fill-array-data p3, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :array_0
    .array-data 8
        0x34480659f63fcb34L    # 7.654746162352058E-57
        0x41ce76d68e8a62b4L    # 1.0222093090811372E9
        0x53852ea193b0d484L    # 2.209218951793992E94
        -0x5f63f50cedd06055L
        0x4ebf4a27098fe1beL    # 2.159532839168461E71
    .end array-data
.end method
