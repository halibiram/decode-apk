.class public final Lcom/jcraft/jzlib/JZlib;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jzlib/JZlib$WrapperType;
    }
.end annotation


# static fields
.field public static final DEF_WBITS:I = 0xf

.field public static final MAX_WBITS:I = 0xf

.field public static final W_ANY:Lcom/jcraft/jzlib/JZlib$WrapperType;

.field public static final W_GZIP:Lcom/jcraft/jzlib/JZlib$WrapperType;

.field public static final W_NONE:Lcom/jcraft/jzlib/JZlib$WrapperType;

.field public static final W_ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

.field public static final Z_ASCII:B = 0x1t

.field public static final Z_BEST_COMPRESSION:I = 0x9

.field public static final Z_BEST_SPEED:I = 0x1

.field public static final Z_BINARY:B = 0x0t

.field public static final Z_BUF_ERROR:I = -0x5

.field public static final Z_DATA_ERROR:I = -0x3

.field public static final Z_DEFAULT_COMPRESSION:I = -0x1

.field public static final Z_DEFAULT_STRATEGY:I = 0x0

.field public static final Z_ERRNO:I = -0x1

.field public static final Z_FILTERED:I = 0x1

.field public static final Z_FINISH:I = 0x4

.field public static final Z_FULL_FLUSH:I = 0x3

.field public static final Z_HUFFMAN_ONLY:I = 0x2

.field public static final Z_MEM_ERROR:I = -0x4

.field public static final Z_NEED_DICT:I = 0x2

.field public static final Z_NO_COMPRESSION:I = 0x0

.field public static final Z_NO_FLUSH:I = 0x0

.field public static final Z_OK:I = 0x0

.field public static final Z_PARTIAL_FLUSH:I = 0x1

.field public static final Z_STREAM_END:I = 0x1

.field public static final Z_STREAM_ERROR:I = -0x2

.field public static final Z_SYNC_FLUSH:I = 0x2

.field public static final Z_UNKNOWN:B = 0x2t

.field public static final Z_VERSION_ERROR:I = -0x6

.field private static final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
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
    sput-object v0, Lcom/jcraft/jzlib/JZlib;->version:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v0, Lcom/jcraft/jzlib/JZlib$WrapperType;->NONE:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 19
    .line 20
    sput-object v0, Lcom/jcraft/jzlib/JZlib;->W_NONE:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 21
    .line 22
    sget-object v0, Lcom/jcraft/jzlib/JZlib$WrapperType;->ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 23
    .line 24
    sput-object v0, Lcom/jcraft/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 25
    .line 26
    sget-object v0, Lcom/jcraft/jzlib/JZlib$WrapperType;->GZIP:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 27
    .line 28
    sput-object v0, Lcom/jcraft/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 29
    .line 30
    sget-object v0, Lcom/jcraft/jzlib/JZlib$WrapperType;->ANY:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 31
    .line 32
    sput-object v0, Lcom/jcraft/jzlib/JZlib;->W_ANY:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 33
    .line 34
    return-void

    :array_0
    .array-data 8
        -0x2882b3b5b90409cbL    # -2.818360126428611E113
        -0x7850246f2a340c8aL
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

.method public static adler32_combine(JJJ)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/jcraft/jzlib/Adler32;->combine(JJJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static crc32_combine(JJJ)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/jcraft/jzlib/CRC32;->combine(JJJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static version()Ljava/lang/String;
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
        -0x1a4bc4f1fe39bb3dL    # -8.39475319149288E181
        -0x4faad0791938f18cL    # -7.318514528131215E-76
    .end array-data
.end method
