.class final Lcom/jcraft/jzlib/InfTree;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BMAX:I = 0xf

.field private static final MANY:I = 0x5a0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field static final cpdext:[I

.field static final cpdist:[I

.field static final cplens:[I

.field static final cplext:[I

.field static final fixed_bd:I = 0x5

.field static final fixed_bl:I = 0x9

.field static final fixed_td:[I

.field static final fixed_tl:[I


# instance fields
.field c:[I

.field hn:[I

.field r:[I

.field u:[I

.field v:[I

.field x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/16 v2, 0x600

    .line 6
    .line 7
    new-array v2, v2, [I

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v2, Lcom/jcraft/jzlib/InfTree;->fixed_tl:[I

    .line 13
    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    fill-array-data v0, :array_1

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->fixed_td:[I

    .line 20
    .line 21
    new-array v0, v1, [I

    .line 22
    .line 23
    fill-array-data v0, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->cplens:[I

    .line 27
    .line 28
    new-array v0, v1, [I

    .line 29
    .line 30
    fill-array-data v0, :array_3

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->cplext:[I

    .line 34
    .line 35
    const/16 v0, 0x1e

    .line 36
    .line 37
    new-array v0, v0, [I

    .line 38
    .line 39
    fill-array-data v0, :array_4

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->cpdist:[I

    .line 43
    .line 44
    const/16 v0, 0x1e

    .line 45
    .line 46
    new-array v0, v0, [I

    .line 47
    .line 48
    fill-array-data v0, :array_5

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->cpdext:[I

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 4
        0x60
        0x7
        0x100
        0x0
        0x8
        0x50
        0x0
        0x8
        0x10
        0x54
        0x8
        0x73
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x70
        0x0
        0x8
        0x30
        0x0
        0x9
        0xc0
        0x50
        0x7
        0xa
        0x0
        0x8
        0x60
        0x0
        0x8
        0x20
        0x0
        0x9
        0xa0
        0x0
        0x8
        0x0
        0x0
        0x8
        0x80
        0x0
        0x8
        0x40
        0x0
        0x9
        0xe0
        0x50
        0x7
        0x6
        0x0
        0x8
        0x58
        0x0
        0x8
        0x18
        0x0
        0x9
        0x90
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x78
        0x0
        0x8
        0x38
        0x0
        0x9
        0xd0
        0x51
        0x7
        0x11
        0x0
        0x8
        0x68
        0x0
        0x8
        0x28
        0x0
        0x9
        0xb0
        0x0
        0x8
        0x8
        0x0
        0x8
        0x88
        0x0
        0x8
        0x48
        0x0
        0x9
        0xf0
        0x50
        0x7
        0x4
        0x0
        0x8
        0x54
        0x0
        0x8
        0x14
        0x55
        0x8
        0xe3
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x74
        0x0
        0x8
        0x34
        0x0
        0x9
        0xc8
        0x51
        0x7
        0xd
        0x0
        0x8
        0x64
        0x0
        0x8
        0x24
        0x0
        0x9
        0xa8
        0x0
        0x8
        0x4
        0x0
        0x8
        0x84
        0x0
        0x8
        0x44
        0x0
        0x9
        0xe8
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5c
        0x0
        0x8
        0x1c
        0x0
        0x9
        0x98
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7c
        0x0
        0x8
        0x3c
        0x0
        0x9
        0xd8
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6c
        0x0
        0x8
        0x2c
        0x0
        0x9
        0xb8
        0x0
        0x8
        0xc
        0x0
        0x8
        0x8c
        0x0
        0x8
        0x4c
        0x0
        0x9
        0xf8
        0x50
        0x7
        0x3
        0x0
        0x8
        0x52
        0x0
        0x8
        0x12
        0x55
        0x8
        0xa3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x72
        0x0
        0x8
        0x32
        0x0
        0x9
        0xc4
        0x51
        0x7
        0xb
        0x0
        0x8
        0x62
        0x0
        0x8
        0x22
        0x0
        0x9
        0xa4
        0x0
        0x8
        0x2
        0x0
        0x8
        0x82
        0x0
        0x8
        0x42
        0x0
        0x9
        0xe4
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5a
        0x0
        0x8
        0x1a
        0x0
        0x9
        0x94
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7a
        0x0
        0x8
        0x3a
        0x0
        0x9
        0xd4
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6a
        0x0
        0x8
        0x2a
        0x0
        0x9
        0xb4
        0x0
        0x8
        0xa
        0x0
        0x8
        0x8a
        0x0
        0x8
        0x4a
        0x0
        0x9
        0xf4
        0x50
        0x7
        0x5
        0x0
        0x8
        0x56
        0x0
        0x8
        0x16
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x76
        0x0
        0x8
        0x36
        0x0
        0x9
        0xcc
        0x51
        0x7
        0xf
        0x0
        0x8
        0x66
        0x0
        0x8
        0x26
        0x0
        0x9
        0xac
        0x0
        0x8
        0x6
        0x0
        0x8
        0x86
        0x0
        0x8
        0x46
        0x0
        0x9
        0xec
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5e
        0x0
        0x8
        0x1e
        0x0
        0x9
        0x9c
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7e
        0x0
        0x8
        0x3e
        0x0
        0x9
        0xdc
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6e
        0x0
        0x8
        0x2e
        0x0
        0x9
        0xbc
        0x0
        0x8
        0xe
        0x0
        0x8
        0x8e
        0x0
        0x8
        0x4e
        0x0
        0x9
        0xfc
        0x60
        0x7
        0x100
        0x0
        0x8
        0x51
        0x0
        0x8
        0x11
        0x55
        0x8
        0x83
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x71
        0x0
        0x8
        0x31
        0x0
        0x9
        0xc2
        0x50
        0x7
        0xa
        0x0
        0x8
        0x61
        0x0
        0x8
        0x21
        0x0
        0x9
        0xa2
        0x0
        0x8
        0x1
        0x0
        0x8
        0x81
        0x0
        0x8
        0x41
        0x0
        0x9
        0xe2
        0x50
        0x7
        0x6
        0x0
        0x8
        0x59
        0x0
        0x8
        0x19
        0x0
        0x9
        0x92
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x79
        0x0
        0x8
        0x39
        0x0
        0x9
        0xd2
        0x51
        0x7
        0x11
        0x0
        0x8
        0x69
        0x0
        0x8
        0x29
        0x0
        0x9
        0xb2
        0x0
        0x8
        0x9
        0x0
        0x8
        0x89
        0x0
        0x8
        0x49
        0x0
        0x9
        0xf2
        0x50
        0x7
        0x4
        0x0
        0x8
        0x55
        0x0
        0x8
        0x15
        0x50
        0x8
        0x102
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x75
        0x0
        0x8
        0x35
        0x0
        0x9
        0xca
        0x51
        0x7
        0xd
        0x0
        0x8
        0x65
        0x0
        0x8
        0x25
        0x0
        0x9
        0xaa
        0x0
        0x8
        0x5
        0x0
        0x8
        0x85
        0x0
        0x8
        0x45
        0x0
        0x9
        0xea
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5d
        0x0
        0x8
        0x1d
        0x0
        0x9
        0x9a
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7d
        0x0
        0x8
        0x3d
        0x0
        0x9
        0xda
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6d
        0x0
        0x8
        0x2d
        0x0
        0x9
        0xba
        0x0
        0x8
        0xd
        0x0
        0x8
        0x8d
        0x0
        0x8
        0x4d
        0x0
        0x9
        0xfa
        0x50
        0x7
        0x3
        0x0
        0x8
        0x53
        0x0
        0x8
        0x13
        0x55
        0x8
        0xc3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x73
        0x0
        0x8
        0x33
        0x0
        0x9
        0xc6
        0x51
        0x7
        0xb
        0x0
        0x8
        0x63
        0x0
        0x8
        0x23
        0x0
        0x9
        0xa6
        0x0
        0x8
        0x3
        0x0
        0x8
        0x83
        0x0
        0x8
        0x43
        0x0
        0x9
        0xe6
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5b
        0x0
        0x8
        0x1b
        0x0
        0x9
        0x96
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7b
        0x0
        0x8
        0x3b
        0x0
        0x9
        0xd6
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6b
        0x0
        0x8
        0x2b
        0x0
        0x9
        0xb6
        0x0
        0x8
        0xb
        0x0
        0x8
        0x8b
        0x0
        0x8
        0x4b
        0x0
        0x9
        0xf6
        0x50
        0x7
        0x5
        0x0
        0x8
        0x57
        0x0
        0x8
        0x17
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x77
        0x0
        0x8
        0x37
        0x0
        0x9
        0xce
        0x51
        0x7
        0xf
        0x0
        0x8
        0x67
        0x0
        0x8
        0x27
        0x0
        0x9
        0xae
        0x0
        0x8
        0x7
        0x0
        0x8
        0x87
        0x0
        0x8
        0x47
        0x0
        0x9
        0xee
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5f
        0x0
        0x8
        0x1f
        0x0
        0x9
        0x9e
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7f
        0x0
        0x8
        0x3f
        0x0
        0x9
        0xde
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6f
        0x0
        0x8
        0x2f
        0x0
        0x9
        0xbe
        0x0
        0x8
        0xf
        0x0
        0x8
        0x8f
        0x0
        0x8
        0x4f
        0x0
        0x9
        0xfe
        0x60
        0x7
        0x100
        0x0
        0x8
        0x50
        0x0
        0x8
        0x10
        0x54
        0x8
        0x73
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x70
        0x0
        0x8
        0x30
        0x0
        0x9
        0xc1
        0x50
        0x7
        0xa
        0x0
        0x8
        0x60
        0x0
        0x8
        0x20
        0x0
        0x9
        0xa1
        0x0
        0x8
        0x0
        0x0
        0x8
        0x80
        0x0
        0x8
        0x40
        0x0
        0x9
        0xe1
        0x50
        0x7
        0x6
        0x0
        0x8
        0x58
        0x0
        0x8
        0x18
        0x0
        0x9
        0x91
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x78
        0x0
        0x8
        0x38
        0x0
        0x9
        0xd1
        0x51
        0x7
        0x11
        0x0
        0x8
        0x68
        0x0
        0x8
        0x28
        0x0
        0x9
        0xb1
        0x0
        0x8
        0x8
        0x0
        0x8
        0x88
        0x0
        0x8
        0x48
        0x0
        0x9
        0xf1
        0x50
        0x7
        0x4
        0x0
        0x8
        0x54
        0x0
        0x8
        0x14
        0x55
        0x8
        0xe3
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x74
        0x0
        0x8
        0x34
        0x0
        0x9
        0xc9
        0x51
        0x7
        0xd
        0x0
        0x8
        0x64
        0x0
        0x8
        0x24
        0x0
        0x9
        0xa9
        0x0
        0x8
        0x4
        0x0
        0x8
        0x84
        0x0
        0x8
        0x44
        0x0
        0x9
        0xe9
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5c
        0x0
        0x8
        0x1c
        0x0
        0x9
        0x99
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7c
        0x0
        0x8
        0x3c
        0x0
        0x9
        0xd9
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6c
        0x0
        0x8
        0x2c
        0x0
        0x9
        0xb9
        0x0
        0x8
        0xc
        0x0
        0x8
        0x8c
        0x0
        0x8
        0x4c
        0x0
        0x9
        0xf9
        0x50
        0x7
        0x3
        0x0
        0x8
        0x52
        0x0
        0x8
        0x12
        0x55
        0x8
        0xa3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x72
        0x0
        0x8
        0x32
        0x0
        0x9
        0xc5
        0x51
        0x7
        0xb
        0x0
        0x8
        0x62
        0x0
        0x8
        0x22
        0x0
        0x9
        0xa5
        0x0
        0x8
        0x2
        0x0
        0x8
        0x82
        0x0
        0x8
        0x42
        0x0
        0x9
        0xe5
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5a
        0x0
        0x8
        0x1a
        0x0
        0x9
        0x95
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7a
        0x0
        0x8
        0x3a
        0x0
        0x9
        0xd5
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6a
        0x0
        0x8
        0x2a
        0x0
        0x9
        0xb5
        0x0
        0x8
        0xa
        0x0
        0x8
        0x8a
        0x0
        0x8
        0x4a
        0x0
        0x9
        0xf5
        0x50
        0x7
        0x5
        0x0
        0x8
        0x56
        0x0
        0x8
        0x16
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x76
        0x0
        0x8
        0x36
        0x0
        0x9
        0xcd
        0x51
        0x7
        0xf
        0x0
        0x8
        0x66
        0x0
        0x8
        0x26
        0x0
        0x9
        0xad
        0x0
        0x8
        0x6
        0x0
        0x8
        0x86
        0x0
        0x8
        0x46
        0x0
        0x9
        0xed
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5e
        0x0
        0x8
        0x1e
        0x0
        0x9
        0x9d
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7e
        0x0
        0x8
        0x3e
        0x0
        0x9
        0xdd
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6e
        0x0
        0x8
        0x2e
        0x0
        0x9
        0xbd
        0x0
        0x8
        0xe
        0x0
        0x8
        0x8e
        0x0
        0x8
        0x4e
        0x0
        0x9
        0xfd
        0x60
        0x7
        0x100
        0x0
        0x8
        0x51
        0x0
        0x8
        0x11
        0x55
        0x8
        0x83
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x71
        0x0
        0x8
        0x31
        0x0
        0x9
        0xc3
        0x50
        0x7
        0xa
        0x0
        0x8
        0x61
        0x0
        0x8
        0x21
        0x0
        0x9
        0xa3
        0x0
        0x8
        0x1
        0x0
        0x8
        0x81
        0x0
        0x8
        0x41
        0x0
        0x9
        0xe3
        0x50
        0x7
        0x6
        0x0
        0x8
        0x59
        0x0
        0x8
        0x19
        0x0
        0x9
        0x93
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x79
        0x0
        0x8
        0x39
        0x0
        0x9
        0xd3
        0x51
        0x7
        0x11
        0x0
        0x8
        0x69
        0x0
        0x8
        0x29
        0x0
        0x9
        0xb3
        0x0
        0x8
        0x9
        0x0
        0x8
        0x89
        0x0
        0x8
        0x49
        0x0
        0x9
        0xf3
        0x50
        0x7
        0x4
        0x0
        0x8
        0x55
        0x0
        0x8
        0x15
        0x50
        0x8
        0x102
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x75
        0x0
        0x8
        0x35
        0x0
        0x9
        0xcb
        0x51
        0x7
        0xd
        0x0
        0x8
        0x65
        0x0
        0x8
        0x25
        0x0
        0x9
        0xab
        0x0
        0x8
        0x5
        0x0
        0x8
        0x85
        0x0
        0x8
        0x45
        0x0
        0x9
        0xeb
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5d
        0x0
        0x8
        0x1d
        0x0
        0x9
        0x9b
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7d
        0x0
        0x8
        0x3d
        0x0
        0x9
        0xdb
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6d
        0x0
        0x8
        0x2d
        0x0
        0x9
        0xbb
        0x0
        0x8
        0xd
        0x0
        0x8
        0x8d
        0x0
        0x8
        0x4d
        0x0
        0x9
        0xfb
        0x50
        0x7
        0x3
        0x0
        0x8
        0x53
        0x0
        0x8
        0x13
        0x55
        0x8
        0xc3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x73
        0x0
        0x8
        0x33
        0x0
        0x9
        0xc7
        0x51
        0x7
        0xb
        0x0
        0x8
        0x63
        0x0
        0x8
        0x23
        0x0
        0x9
        0xa7
        0x0
        0x8
        0x3
        0x0
        0x8
        0x83
        0x0
        0x8
        0x43
        0x0
        0x9
        0xe7
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5b
        0x0
        0x8
        0x1b
        0x0
        0x9
        0x97
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7b
        0x0
        0x8
        0x3b
        0x0
        0x9
        0xd7
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6b
        0x0
        0x8
        0x2b
        0x0
        0x9
        0xb7
        0x0
        0x8
        0xb
        0x0
        0x8
        0x8b
        0x0
        0x8
        0x4b
        0x0
        0x9
        0xf7
        0x50
        0x7
        0x5
        0x0
        0x8
        0x57
        0x0
        0x8
        0x17
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x77
        0x0
        0x8
        0x37
        0x0
        0x9
        0xcf
        0x51
        0x7
        0xf
        0x0
        0x8
        0x67
        0x0
        0x8
        0x27
        0x0
        0x9
        0xaf
        0x0
        0x8
        0x7
        0x0
        0x8
        0x87
        0x0
        0x8
        0x47
        0x0
        0x9
        0xef
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5f
        0x0
        0x8
        0x1f
        0x0
        0x9
        0x9f
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7f
        0x0
        0x8
        0x3f
        0x0
        0x9
        0xdf
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6f
        0x0
        0x8
        0x2f
        0x0
        0x9
        0xbf
        0x0
        0x8
        0xf
        0x0
        0x8
        0x8f
        0x0
        0x8
        0x4f
        0x0
        0x9
        0xff
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
    .array-data 4
        0x50
        0x5
        0x1
        0x57
        0x5
        0x101
        0x53
        0x5
        0x11
        0x5b
        0x5
        0x1001
        0x51
        0x5
        0x5
        0x59
        0x5
        0x401
        0x55
        0x5
        0x41
        0x5d
        0x5
        0x4001
        0x50
        0x5
        0x3
        0x58
        0x5
        0x201
        0x54
        0x5
        0x21
        0x5c
        0x5
        0x2001
        0x52
        0x5
        0x9
        0x5a
        0x5
        0x801
        0x56
        0x5
        0x81
        0xc0
        0x5
        0x6001
        0x50
        0x5
        0x2
        0x57
        0x5
        0x181
        0x53
        0x5
        0x19
        0x5b
        0x5
        0x1801
        0x51
        0x5
        0x7
        0x59
        0x5
        0x601
        0x55
        0x5
        0x61
        0x5d
        0x5
        0x6001
        0x50
        0x5
        0x4
        0x58
        0x5
        0x301
        0x54
        0x5
        0x31
        0x5c
        0x5
        0x3001
        0x52
        0x5
        0xd
        0x5a
        0x5
        0xc01
        0x56
        0x5
        0xc1
        0xc0
        0x5
        0x6001
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xd
        0xf
        0x11
        0x13
        0x17
        0x1b
        0x1f
        0x23
        0x2b
        0x33
        0x3b
        0x43
        0x53
        0x63
        0x73
        0x83
        0xa3
        0xc3
        0xe3
        0x102
        0x0
        0x0
    .end array-data

    :array_3
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
        0x70
        0x70
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0x9
        0xd
        0x11
        0x19
        0x21
        0x31
        0x41
        0x61
        0x81
        0xc1
        0x101
        0x181
        0x201
        0x301
        0x401
        0x601
        0x801
        0xc01
        0x1001
        0x1801
        0x2001
        0x3001
        0x4001
        0x6001
    .end array-data

    :array_5
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
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 8
    .line 9
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->r:[I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->u:[I

    .line 14
    .line 15
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->x:[I

    .line 16
    .line 17
    return-void
.end method

.method private huft_build([IIII[I[I[I[I[I[I[I)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p9

    const/4 v4, 0x0

    move v6, v1

    const/4 v5, 0x0

    .line 1
    :goto_0
    iget-object v7, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    add-int v8, p2, v5

    aget v8, p1, v8

    aget v9, v7, v8

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aput v9, v7, v8

    add-int/2addr v5, v10

    const/4 v8, -0x1

    add-int/2addr v6, v8

    if-nez v6, :cond_1d

    .line 2
    aget v5, v7, v4

    if-ne v5, v1, :cond_0

    .line 3
    aput v8, p7, v4

    .line 4
    aput v4, p8, v4

    return v4

    .line 5
    :cond_0
    aget v5, p8, v4

    const/4 v7, 0x1

    :goto_1
    const/16 v6, 0xf

    if-gt v7, v6, :cond_2

    .line 6
    iget-object v9, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    aget v9, v9, v7

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v5, v7, :cond_3

    move v5, v7

    :cond_3
    const/16 v9, 0xf

    :goto_3
    if-eqz v9, :cond_5

    .line 7
    iget-object v6, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    aget v6, v6, v9

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-le v5, v9, :cond_6

    move v11, v9

    goto :goto_5

    :cond_6
    move v11, v5

    .line 8
    :goto_5
    aput v11, p8, v4

    shl-int v5, v10, v7

    move v6, v7

    :goto_6
    const/4 v12, -0x3

    if-ge v6, v9, :cond_8

    .line 9
    iget-object v13, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    aget v13, v13, v6

    sub-int/2addr v5, v13

    if-gez v5, :cond_7

    return v12

    :cond_7
    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 10
    :cond_8
    iget-object v6, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    aget v13, v6, v9

    sub-int v14, v5, v13

    if-gez v14, :cond_9

    return v12

    :cond_9
    add-int/2addr v13, v14

    .line 11
    aput v13, v6, v9

    .line 12
    iget-object v5, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    aput v4, v5, v10

    move v5, v9

    const/4 v6, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_7
    add-int/2addr v5, v8

    if-eqz v5, :cond_a

    .line 13
    iget-object v8, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    iget-object v13, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    aget v13, v13, v16

    add-int/2addr v15, v13

    aput v15, v8, v6

    add-int/2addr v6, v10

    add-int/lit8 v16, v16, 0x1

    const/4 v8, -0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    add-int v8, p2, v5

    .line 14
    aget v8, p1, v8

    if-eqz v8, :cond_b

    .line 15
    iget-object v13, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    aget v15, v13, v8

    add-int/lit8 v16, v15, 0x1

    aput v16, v13, v8

    aput v6, p11, v15

    :cond_b
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v1, :cond_1c

    .line 16
    iget-object v1, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    aget v5, v1, v9

    .line 17
    aput v4, v1, v4

    neg-int v1, v11

    .line 18
    iget-object v6, v0, Lcom/jcraft/jzlib/InfTree;->u:[I

    aput v4, v6, v4

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_9
    if-gt v7, v9, :cond_1a

    .line 19
    iget-object v12, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    aget v12, v12, v7

    :goto_a
    add-int/lit8 v17, v12, -0x1

    if-eqz v12, :cond_19

    move/from16 v20, v16

    :goto_b
    add-int v4, v1, v11

    if-le v7, v4, :cond_12

    add-int/lit8 v1, v8, 0x1

    sub-int v15, v9, v4

    if-le v15, v11, :cond_c

    move v15, v11

    :cond_c
    sub-int v10, v7, v4

    move/from16 v21, v9

    const/16 v16, 0x1

    shl-int v9, v16, v10

    if-le v9, v12, :cond_f

    sub-int/2addr v9, v12

    if-ge v10, v15, :cond_f

    move/from16 v20, v7

    :goto_c
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v15, :cond_e

    shl-int/lit8 v9, v9, 0x1

    move/from16 p2, v10

    .line 20
    iget-object v10, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    add-int/lit8 v20, v20, 0x1

    aget v10, v10, v20

    if-gt v9, v10, :cond_d

    goto :goto_d

    :cond_d
    sub-int/2addr v9, v10

    move/from16 v10, p2

    goto :goto_c

    :cond_e
    move/from16 p2, v10

    :goto_d
    move/from16 v10, p2

    :cond_f
    shl-int v20, v16, v10

    const/4 v9, 0x0

    .line 21
    aget v15, p10, v9

    add-int v9, v15, v20

    move/from16 p2, v12

    const/16 v12, 0x5a0

    if-le v9, v12, :cond_10

    const/4 v9, -0x3

    return v9

    :cond_10
    const/4 v9, -0x3

    .line 22
    iget-object v12, v0, Lcom/jcraft/jzlib/InfTree;->u:[I

    aput v15, v12, v1

    const/16 v16, 0x0

    .line 23
    aget v19, p10, v16

    add-int v19, v19, v20

    aput v19, p10, v16

    if-eqz v1, :cond_11

    .line 24
    iget-object v9, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    aput v6, v9, v1

    .line 25
    iget-object v9, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    int-to-byte v10, v10

    aput v10, v9, v16

    int-to-byte v10, v11

    const/16 v16, 0x1

    .line 26
    aput v10, v9, v16

    sub-int v10, v4, v11

    ushr-int v10, v6, v10

    .line 27
    aget v16, v12, v8

    sub-int v16, v15, v16

    sub-int v16, v16, v10

    const/16 v18, 0x2

    aput v16, v9, v18

    .line 28
    aget v8, v12, v8

    add-int/2addr v8, v10

    const/4 v10, 0x3

    mul-int/lit8 v8, v8, 0x3

    const/4 v12, 0x0

    invoke-static {v9, v12, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    :cond_11
    const/4 v12, 0x0

    .line 29
    aput v15, p7, v12

    :goto_e
    move/from16 v12, p2

    move v8, v1

    move v1, v4

    move/from16 v9, v21

    const/4 v10, 0x1

    goto/16 :goto_b

    :cond_12
    move/from16 v21, v9

    const/4 v12, 0x0

    .line 30
    iget-object v4, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    sub-int v9, v7, v1

    int-to-byte v10, v9

    const/16 v16, 0x1

    aput v10, v4, v16

    if-lt v13, v5, :cond_13

    const/16 v10, 0xc0

    .line 31
    aput v10, v4, v12

    :goto_f
    const/4 v4, 0x1

    const/16 v18, 0x2

    goto :goto_11

    .line 32
    :cond_13
    aget v10, p11, v13

    if-ge v10, v2, :cond_15

    const/16 v12, 0x100

    if-ge v10, v12, :cond_14

    const/4 v10, 0x0

    goto :goto_10

    :cond_14
    const/16 v10, 0x60

    :goto_10
    int-to-byte v10, v10

    const/4 v12, 0x0

    .line 33
    aput v10, v4, v12

    add-int/lit8 v10, v13, 0x1

    .line 34
    aget v13, p11, v13

    const/16 v16, 0x2

    aput v13, v4, v16

    move v13, v10

    goto :goto_f

    :cond_15
    sub-int/2addr v10, v2

    .line 35
    aget v10, p6, v10

    add-int/lit8 v10, v10, 0x50

    int-to-byte v10, v10

    aput v10, v4, v12

    add-int/lit8 v10, v13, 0x1

    .line 36
    aget v12, p11, v13

    sub-int/2addr v12, v2

    aget v12, p5, v12

    const/16 v18, 0x2

    aput v12, v4, v18

    move v13, v10

    const/4 v4, 0x1

    :goto_11
    shl-int v9, v4, v9

    ushr-int v4, v6, v1

    move/from16 v10, v20

    :goto_12
    if-ge v4, v10, :cond_16

    .line 37
    iget-object v12, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    add-int v16, v15, v4

    move/from16 p1, v5

    const/4 v2, 0x3

    mul-int/lit8 v5, v16, 0x3

    move/from16 p2, v6

    const/4 v6, 0x0

    invoke-static {v12, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v9

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v2, p4

    goto :goto_12

    :cond_16
    move/from16 p1, v5

    move/from16 p2, v6

    const/4 v6, 0x0

    add-int/lit8 v2, v7, -0x1

    const/4 v4, 0x1

    shl-int v2, v4, v2

    move/from16 v5, p2

    :goto_13
    and-int v9, v5, v2

    if-eqz v9, :cond_17

    xor-int/2addr v5, v2

    ushr-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_17
    xor-int/2addr v2, v5

    :goto_14
    shl-int v5, v4, v1

    sub-int/2addr v5, v4

    and-int/2addr v5, v2

    .line 38
    iget-object v9, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    aget v9, v9, v8

    if-eq v5, v9, :cond_18

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v1, v11

    goto :goto_14

    :cond_18
    move/from16 v5, p1

    move v6, v2

    move/from16 v16, v10

    move/from16 v12, v17

    move/from16 v9, v21

    const/4 v4, 0x0

    const/4 v10, 0x1

    move/from16 v2, p4

    goto/16 :goto_a

    :cond_19
    move/from16 p1, v5

    move/from16 p2, v6

    move/from16 v21, v9

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v18, 0x2

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, p2

    move/from16 v2, p4

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v12, -0x3

    goto/16 :goto_9

    :cond_1a
    move/from16 v21, v9

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v14, :cond_1b

    move/from16 v9, v21

    if-eq v9, v4, :cond_1b

    const/4 v4, -0x5

    goto :goto_15

    :cond_1b
    const/4 v4, 0x0

    :goto_15
    return v4

    :cond_1c
    move v2, v6

    const/4 v6, 0x0

    const/16 v18, 0x2

    move v6, v2

    const/4 v4, 0x0

    move/from16 v2, p4

    goto/16 :goto_8

    :cond_1d
    move v2, v6

    move/from16 v2, p4

    goto/16 :goto_0
.end method

.method public static inflate_trees_fixed([I[I[[I[[ILcom/jcraft/jzlib/ZStream;)I
    .locals 1

    .line 1
    const/16 p4, 0x9

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aput p4, p0, v0

    .line 5
    .line 6
    const/4 p0, 0x5

    .line 7
    aput p0, p1, v0

    .line 8
    .line 9
    sget-object p0, Lcom/jcraft/jzlib/InfTree;->fixed_tl:[I

    .line 10
    .line 11
    aput-object p0, p2, v0

    .line 12
    .line 13
    sget-object p0, Lcom/jcraft/jzlib/InfTree;->fixed_td:[I

    .line 14
    .line 15
    aput-object p0, p3, v0

    .line 16
    .line 17
    return v0
.end method

.method private initWorkArea(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/16 v3, 0x10

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    .line 14
    .line 15
    new-array v0, p1, [I

    .line 16
    .line 17
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 18
    .line 19
    new-array v0, v3, [I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    .line 22
    .line 23
    new-array v0, v2, [I

    .line 24
    .line 25
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->r:[I

    .line 26
    .line 27
    new-array v0, v1, [I

    .line 28
    .line 29
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->u:[I

    .line 30
    .line 31
    new-array v0, v3, [I

    .line 32
    .line 33
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->x:[I

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    if-ge v0, p1, :cond_1

    .line 39
    .line 40
    new-array v0, p1, [I

    .line 41
    .line 42
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 43
    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_0
    if-ge v4, p1, :cond_2

    .line 47
    .line 48
    iget-object v5, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 49
    .line 50
    aput v0, v5, v4

    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    :goto_1
    if-ge p1, v3, :cond_3

    .line 57
    .line 58
    iget-object v4, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    .line 59
    .line 60
    aput v0, v4, p1

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    :goto_2
    if-ge p1, v2, :cond_4

    .line 67
    .line 68
    iget-object v4, p0, Lcom/jcraft/jzlib/InfTree;->r:[I

    .line 69
    .line 70
    aput v0, v4, p1

    .line 71
    .line 72
    add-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    .line 76
    .line 77
    iget-object v2, p0, Lcom/jcraft/jzlib/InfTree;->u:[I

    .line 78
    .line 79
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->x:[I

    .line 85
    .line 86
    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public inflate_trees_bits([I[I[I[ILcom/jcraft/jzlib/ZStream;)I
    .locals 16

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p5

    .line 4
    .line 5
    const/4 v14, 0x6

    .line 6
    const/16 v0, 0x13

    .line 7
    .line 8
    invoke-direct {v12, v0}, Lcom/jcraft/jzlib/InfTree;->initWorkArea(I)V

    .line 9
    .line 10
    .line 11
    iget-object v10, v12, Lcom/jcraft/jzlib/InfTree;->hn:[I

    .line 12
    .line 13
    const/4 v15, 0x0

    .line 14
    aput v15, v10, v15

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    iget-object v11, v12, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/16 v3, 0x13

    .line 21
    .line 22
    const/16 v4, 0x13

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    move-object/from16 v0, p0

    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    move-object/from16 v7, p3

    .line 30
    .line 31
    move-object/from16 v8, p2

    .line 32
    .line 33
    move-object/from16 v9, p4

    .line 34
    .line 35
    invoke-direct/range {v0 .. v11}, Lcom/jcraft/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, -0x3

    .line 40
    if-ne v0, v1, :cond_0

    .line 41
    .line 42
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v2, v14, [J

    .line 45
    .line 46
    fill-array-data v2, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v13, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v2, -0x5

    .line 60
    if-eq v0, v2, :cond_1

    .line 61
    .line 62
    aget v2, p2, v15

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v14, [J

    .line 69
    .line 70
    fill-array-data v2, :array_1

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, v13, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v0, -0x3

    .line 83
    :cond_2
    :goto_0
    return v0

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        -0x25f22355f6a09277L    # -6.316938628067759E125
        0x4990a023fe98a3a6L    # 2.3728776782391877E46
        -0x151383db0cb6e357L    # -1.1431476541640606E207
        0x3a7b414d14bc5129L    # 5.504120059892015E-27
        -0x7ec1f3c3f08ce101L
        -0x3f363bb340c99141L    # -13192.599585346294
    .end array-data

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
    :array_1
    .array-data 8
        0x6bbe275a19e1c296L    # 9.91329110545523E210
        0xad82158d0fd784aL
        -0x130070303b910e0bL    # -1.0880232199171977E217
        -0x697d633bb43d8476L    # -3.039447001776193E-200
        -0x4e7010a892b2c512L    # -5.7838491475397726E-70
        -0x7b9dd9442b05b4a6L
    .end array-data
.end method

.method public inflate_trees_dynamic(II[I[I[I[I[I[ILcom/jcraft/jzlib/ZStream;)I
    .locals 18

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p9

    .line 4
    .line 5
    const/16 v15, 0x120

    .line 6
    .line 7
    invoke-direct {v12, v15}, Lcom/jcraft/jzlib/InfTree;->initWorkArea(I)V

    .line 8
    .line 9
    .line 10
    iget-object v10, v12, Lcom/jcraft/jzlib/InfTree;->hn:[I

    .line 11
    .line 12
    const/16 v16, 0x0

    .line 13
    .line 14
    aput v16, v10, v16

    .line 15
    .line 16
    sget-object v5, Lcom/jcraft/jzlib/InfTree;->cplens:[I

    .line 17
    .line 18
    sget-object v6, Lcom/jcraft/jzlib/InfTree;->cplext:[I

    .line 19
    .line 20
    iget-object v11, v12, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/16 v4, 0x101

    .line 24
    .line 25
    move-object/from16 v0, p0

    .line 26
    .line 27
    move-object/from16 v1, p3

    .line 28
    .line 29
    move/from16 v3, p1

    .line 30
    .line 31
    move-object/from16 v7, p6

    .line 32
    .line 33
    move-object/from16 v8, p4

    .line 34
    .line 35
    move-object/from16 v9, p8

    .line 36
    .line 37
    invoke-direct/range {v0 .. v11}, Lcom/jcraft/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v11, -0x4

    .line 42
    const/4 v10, -0x3

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    aget v1, p4, v16

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    :cond_0
    const/4 v14, -0x3

    .line 50
    const/4 v15, -0x4

    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    invoke-direct {v12, v15}, Lcom/jcraft/jzlib/InfTree;->initWorkArea(I)V

    .line 54
    .line 55
    .line 56
    sget-object v5, Lcom/jcraft/jzlib/InfTree;->cpdist:[I

    .line 57
    .line 58
    sget-object v6, Lcom/jcraft/jzlib/InfTree;->cpdext:[I

    .line 59
    .line 60
    iget-object v15, v12, Lcom/jcraft/jzlib/InfTree;->hn:[I

    .line 61
    .line 62
    iget-object v9, v12, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    move-object/from16 v0, p0

    .line 66
    .line 67
    move-object/from16 v1, p3

    .line 68
    .line 69
    move/from16 v2, p1

    .line 70
    .line 71
    move/from16 v3, p2

    .line 72
    .line 73
    move-object/from16 v7, p7

    .line 74
    .line 75
    move-object/from16 v8, p5

    .line 76
    .line 77
    move-object/from16 v17, v9

    .line 78
    .line 79
    move-object/from16 v9, p8

    .line 80
    .line 81
    const/4 v14, -0x3

    .line 82
    move-object v10, v15

    .line 83
    const/4 v15, -0x4

    .line 84
    move-object/from16 v11, v17

    .line 85
    .line 86
    invoke-direct/range {v0 .. v11}, Lcom/jcraft/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_3

    .line 91
    .line 92
    aget v0, p5, v16

    .line 93
    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    const/16 v0, 0x101

    .line 97
    .line 98
    move/from16 v1, p1

    .line 99
    .line 100
    if-le v1, v0, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    return v16

    .line 104
    :cond_3
    :goto_0
    if-ne v10, v14, :cond_4

    .line 105
    .line 106
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    const/4 v1, 0x5

    .line 109
    new-array v1, v1, [J

    .line 110
    .line 111
    fill-array-data v1, :array_0

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, v13, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const/4 v0, -0x5

    .line 125
    if-ne v10, v0, :cond_5

    .line 126
    .line 127
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    const/4 v1, 0x4

    .line 130
    new-array v1, v1, [J

    .line 131
    .line 132
    fill-array-data v1, :array_1

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iput-object v0, v13, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 143
    .line 144
    :goto_1
    const/4 v10, -0x3

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    if-eq v10, v15, :cond_6

    .line 147
    .line 148
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    const/4 v1, 0x5

    .line 151
    new-array v1, v1, [J

    .line 152
    .line 153
    fill-array-data v1, :array_2

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, v13, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    :goto_2
    return v10

    .line 167
    :goto_3
    if-ne v0, v14, :cond_7

    .line 168
    .line 169
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    const/4 v2, 0x6

    .line 172
    new-array v2, v2, [J

    .line 173
    .line 174
    fill-array-data v2, :array_3

    .line 175
    .line 176
    .line 177
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iput-object v1, v13, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    if-eq v0, v15, :cond_8

    .line 188
    .line 189
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    const/4 v1, 0x5

    .line 192
    new-array v1, v1, [J

    .line 193
    .line 194
    fill-array-data v1, :array_4

    .line 195
    .line 196
    .line 197
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, v13, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 205
    .line 206
    const/4 v0, -0x3

    .line 207
    :cond_8
    :goto_4
    return v0

    .line 208
    nop

    :array_0
    .array-data 8
        -0x7da62720cce370fdL
        -0x67ac69f1c6faf8b8L    # -1.717164663669868E-191
        0x12089029de35caa0L    # 8.494094094054324E-222
        -0x490ef49419aaebf6L    # -4.776918612351425E-44
        0x5aa07fcc6980a28dL    # 3.573974015194562E128
    .end array-data

    :array_1
    .array-data 8
        0x39220551e86e7930L    # 1.735338093804442E-33
        -0xbd0af140d09a14dL
        0x1d9cb02736d14fe4L
        0x3e5366b299147b81L    # 1.806874078580431E-8
    .end array-data

    :array_2
    .array-data 8
        0x59b310d7783d049L
        0x327310574bc2650dL    # 1.1313869283568684E-65
        0x721193a85c61771dL    # 2.9300568571631895E241
        0x21851abdf08c925bL
        0x374097a7038231e5L    # 1.488057195325831E-42
    .end array-data

    :array_3
    .array-data 8
        -0x35a37420367cb22L
        0x66266d7ede11531cL
        -0x4e7f1faced040ee8L
        -0x2bc7193d1d443f11L    # -5.3189091540864994E97
        0x15537b5720938b03L    # 6.06809002251967E-206
        -0x7d42eb5aa930dd03L
    .end array-data

    :array_4
    .array-data 8
        0x4e5c3f67f0b9e6e5L    # 3.046223758518976E69
        -0x3b7b0999f2082b87L    # -1.2374072813222994E22
        -0x5981389cb7dfb78L
        0x33c9aff931833857L    # 3.1970611725110384E-59
        0x6916ca8f1d72b4e4L    # 1.7036690665035204E198
    .end array-data
.end method
