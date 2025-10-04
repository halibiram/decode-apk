.class final Lcom/google/common/base/CharMatcher$Whitespace;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Whitespace"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$Whitespace;

.field static final MULTIPLIER:I = 0x6449bf0a

.field static final SHIFT:I

.field static final TABLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/common/base/CharMatcher$Whitespace;->TABLE:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sput v0, Lcom/google/common/base/CharMatcher$Whitespace;->SHIFT:I

    .line 44
    .line 45
    new-instance v0, Lcom/google/common/base/CharMatcher$Whitespace;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Whitespace;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/common/base/CharMatcher$Whitespace;->INSTANCE:Lcom/google/common/base/CharMatcher$Whitespace;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        0x22658ec69841c14bL    # 5.524523828357166E-143
        -0x7007cc920a2dc5e8L    # -9.742598463953019E-232
        0x2e95f4d294c129d6L    # 2.82553788502391E-84
        -0xdabde3faf03074dL    # -5.369576191197307E242
        0x1d796cc7cf53cdb0L
        -0x513d9853fc4b87acL    # -1.894812703925571E-83
        0x41618426b0b53bc7L    # 9183541.52212323
        0x3cdf50bddc009981L    # 1.7383537400824808E-15
        0x29a516a628957972L    # 4.489693530075376E-108
        0x47f7c1546b719c3aL    # 5.052171109076969E38
        0x2280ea50d144175cL    # 1.733930369210527E-142
        -0x9c2e1fdfa094075L    # -3.581509745765065E261
    .end array-data

    .line 54
    .line 55
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
    :array_1
    .array-data 8
        0x56690c96af66b94L
        -0x5b9c2517275ab2e1L
        -0x55801f9c76b7777aL
        0x1d46782b61c86c5aL
        0x482ff9f20c86c53aL    # 5.440493967702915E39
        0x5aa99f46b240ca08L
        -0x737cb856119279d5L
        -0x61daa4d06f9e451fL
        -0x4e56906ce123eb5dL    # -1.842710333972297E-69
        0x60f5518446c9dee9L    # 1.1707733721131696E159
        0x5ee2cffc6566d8f6L    # 1.2027437656945596E149
        0x49b65c8c9cd0729L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x42a8a72340cc1c3eL    # -3.317825066085676E-13
        -0x43e494d170230b3dL    # -3.7159239483735983E-19
        0x6570db5b8cea6cacL    # 4.371739166292909E180
        -0x56d96ed78bfbdb6bL
    .end array-data
.end method


# virtual methods
.method public matches(C)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x6449bf0a

    .line 18
    .line 19
    .line 20
    mul-int v1, v1, p1

    .line 21
    .line 22
    sget v2, Lcom/google/common/base/CharMatcher$Whitespace;->SHIFT:I

    .line 23
    .line 24
    ushr-int/2addr v1, v2

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1

    .line 35
    :array_0
    .array-data 8
        0x2fd56cc0a883c024L    # 2.8910673638299127E-78
        -0x34609c7b1ce551bfL    # -1.9241245585127717E56
        0x1d600eec90b2f162L
        -0xd7c5d9f51f2c031L    # -4.189494844263249E243
        -0x7f1e6a6f10626db8L    # -2.003263435319219E-304
        -0x3210588d3160a2a6L    # -2.666852275936837E67
        -0x3f985f32337eb923L    # -189.0251219296396
        -0x1b9cf523452e4c43L    # -3.767817598100392E175
        0x3ce4ca832e9d1996L    # 2.3082718158827263E-15
        -0x6dc8f6fa75771699L    # -6.372589561922399E-221
        -0x3cd18414f79a35dcL    # -4.29024934486965E15
        0x514604e5a26e429fL    # 3.341865377659148E83
    .end array-data
.end method

.method public setBits(Ljava/util/BitSet;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v3, v0, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v3, v0, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void

    .line 49
    :array_0
    .array-data 8
        -0x462cc3cae5f20c76L    # -3.793471415807764E-30
        0x4daa10f7ca224118L    # 1.3725498920615833E66
        -0x7843d21830f2ff2L
        0x329b1cea1bc725ffL    # 6.436320676048143E-65
        0x608cb36306e6f697L    # 1.2314043915513874E157
        -0x35ecac2e3f81a0adL    # -7.061763741893303E48
        0x1d8db872667f7aaL    # 9.27945172217757E-300
        -0x732f03782bd7a55fL    # -6.073599175998255E-247
        0x37e22f95c0b17ff3L    # 1.6701092022069523E-39
        -0xb2d9e1df2f54425L    # -5.390853256721915E254
        0xa4694ac5782505eL
        0xe0a58040970bf5L
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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
    :array_1
    .array-data 8
        -0x60a8ae5c6fb502b5L    # -1.061525371342036E-157
        -0x7f10cb5a70d74684L
        -0x79f7451916ffb81eL
        0x4abd5613a76cb404L    # 1.0975989500873558E52
        -0x7ef0e320a8ed05acL
        0x5222d59b8e4998e6L    # 4.683393586261044E87
        0x22081a48697954edL    # 9.651108597900289E-145
        -0x1cff034f59b27817L    # -8.013570702648144E168
        0x6da07fd14a99c190L    # 1.1648554399304824E220
        0x28f7134d1dc21c0bL    # 2.398781912121121E-111
        0x338a9e4db1952fa5L    # 2.0705817740308095E-60
        -0x6782a7db6ad8bd26L    # -1.029074065079944E-190
    .end array-data
.end method
