.class public final Lcom/google/android/gms/internal/ads/zzgyx;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 8
        0x5129fc7ba7ecf05L
        -0x7a44cfd5254da003L    # -4.680624248363737E-281
        0x145cf1d2a3da1c7L
        -0x108a113ab3731cb0L    # -8.313210577780997E228
        0x5b35bf2f213ee358L    # 2.411869162271964E131
        0x1986b6e0bf716acdL
        -0x605d3ee02da8dcddL    # -2.731965709440552E-156
        -0x3eaf83d1d633fe51L    # -4321464.653076573
        0xdde2d854399acf1L
        -0xc33a04c07f91b51L    # -6.34840369888331E249
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xb

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :array_0
    .array-data 8
        -0x310aa67b6464dbb2L    # -2.357601180337334E72
        -0x646ece37435db9beL    # -6.789086088156267E-176
        -0x309d03711301ae49L    # -2.6837072412920447E74
        0x51a319a81fc723eeL    # 1.8552703188548848E85
        -0x36239ec5c4d2ed3cL    # -6.4807994606592546E47
        0x74d92ecca213830aL    # 7.385170684461825E254
        -0x55c0fadb8176c5afL
        0x759327b6ec41d899L    # 2.300919965716576E258
        -0x17638014a1286d58L    # -8.321799771529017E195
        -0x5569574c35dfb354L
        0x75ee34d67829f747L    # 1.1610881940123987E260
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :array_0
    .array-data 8
        0x7cb9031a09db8f4L
        0x3d09db298cbb84fcL    # 1.1482416239455389E-14
        -0x2c2ba056ce02c63eL    # -6.799672916744867E95
        0x1e667900d3651b6eL    # 3.121957581930435E-162
        -0x4e3d8d8f77a42581L    # -5.345612163962299E-69
        -0xdc3eca24ed0b20aL    # -1.87208828599757E242
        -0x7592d266bbd98578L    # -1.897715208053848E-258
        -0x4fdc52ba5cd3c7f1L    # -8.496626998399779E-77
        -0x613eb67d27c11d46L    # -1.537006803979304E-160
        0x19a83259c8a748a5L    # 4.448857559761759E-185
    .end array-data
.end method
