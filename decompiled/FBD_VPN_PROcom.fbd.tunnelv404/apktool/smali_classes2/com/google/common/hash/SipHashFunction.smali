.class final Lcom/google/common/hash/SipHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/SipHashFunction$SipHasher;
    }
.end annotation


# static fields
.field static final SIP_HASH_24:Lcom/google/common/hash/HashFunction;

.field private static final serialVersionUID:J


# instance fields
.field private final c:I

.field private final d:I

.field private final k0:J

.field private final k1:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Lcom/google/common/hash/SipHashFunction;

    .line 2
    .line 3
    const-wide v3, 0x706050403020100L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v5, 0xf0e0d0c0b0a0908L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x4

    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    .line 17
    .line 18
    .line 19
    sput-object v7, Lcom/google/common/hash/SipHashFunction;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(IIJJ)V
    .locals 6

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v5, v0, [J

    .line 16
    .line 17
    fill-array-data v5, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v3, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    if-lez p2, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    iput p1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 51
    .line 52
    iput p2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 53
    .line 54
    iput-wide p3, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 55
    .line 56
    iput-wide p5, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 8
        -0x2eb437f31ecd86bdL    # -4.21641812121048E83
        -0x1bee5da4bc281660L    # -1.0903687563639817E174
        0x6af33c0619257ee2L    # 1.543821959614631E207
        -0x697446495bcbbd6bL
        -0x71d601dcd11cc25cL
        -0x52760c8335a8c786L    # -2.5479297569389997E-89
        0x47f18a60be73e2c4L    # 3.73046001525746E38
        -0x2a90716b329b68ffL    # -3.533976542813968E103
        0x1edb7720ad27c8f7L
        0x3c01bed58720d22eL    # 1.2024781721256468E-19
        -0xe00912c45471de5L    # -1.3099697028241353E241
    .end array-data

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
    :array_1
    .array-data 8
        -0x7add167379c04b2dL    # -6.359141034140602E-284
        -0xa1d33e9f1a074feL    # -7.225363560793634E259
        0x2cbe4e1b58a0224cL    # 3.632094526137109E-93
        0x7d8dd98a30e94e6bL    # 6.100517270949276E296
        -0x55f3332b8975753aL    # -3.924151720663559E-106
        -0x58915baf6075ffecL    # -9.493072060120103E-119
        -0x398cfe3c4fea7d00L    # -2.4094098317583852E31
        -0x561cde77b80feef8L
        -0x4a57109215c9d2eeL    # -3.332305607325436E-50
        -0x376d8f193dbf3407L    # -4.016098757314213E41
        0x20ef5f74826099c8L    # 4.792106304843115E-150
    .end array-data
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/hash/SipHashFunction;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/common/hash/SipHashFunction;

    .line 7
    .line 8
    iget v0, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 9
    .line 10
    iget v2, p1, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 15
    .line 16
    iget v2, p1, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 21
    .line 22
    iget-wide v4, p1, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 23
    .line 24
    cmp-long v0, v2, v4

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 29
    .line 30
    iget-wide v4, p1, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 31
    .line 32
    cmp-long p1, v2, v4

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    const-class v0, Lcom/google/common/hash/SipHashFunction;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 8
    .line 9
    xor-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 11
    .line 12
    xor-int/2addr v0, v1

    .line 13
    int-to-long v0, v0

    .line 14
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 15
    .line 16
    xor-long/2addr v0, v2

    .line 17
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 18
    .line 19
    xor-long/2addr v0, v2

    .line 20
    long-to-int v1, v0

    .line 21
    return v1
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/common/hash/SipHashFunction$SipHasher;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/SipHashFunction$SipHasher;-><init>(IIJJ)V

    .line 13
    .line 14
    .line 15
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 8
    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/16 v7, 0x51

    .line 12
    .line 13
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v8, 0x3

    .line 19
    new-array v8, v8, [J

    .line 20
    .line 21
    fill-array-data v8, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    new-array v7, v1, [J

    .line 44
    .line 45
    fill-array-data v7, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v2, v1, [J

    .line 64
    .line 65
    fill-array-data v2, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v1, v1, [J

    .line 84
    .line 85
    fill-array-data v1, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        0x6f74aa4e3d7a874L
        0x24ea691cf07ebea5L    # 7.441665193297201E-131
        -0x7ecc059e15970771L    # -7.283122409901767E-303
    .end array-data

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
        0x251099db0e20c976L
        0x2c1230264adcd7ccL    # 2.128768104660509E-96
    .end array-data

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
    :array_2
    .array-data 8
        0x6cd215a4fafa319aL    # 1.5585637764542894E216
        0x48332d752f0bceb0L    # 6.525788684249328E39
    .end array-data

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
    :array_3
    .array-data 8
        0x23d0662012588ce1L    # 3.52531068933211E-136
        -0x4c8a1e656c2d0502L    # -8.510465366374493E-61
    .end array-data
.end method
