.class public final Lcom/google/android/gms/internal/ads/zzaqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapk;


# instance fields
.field private final zza:Ljava/util/Map;

.field private zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaqv;

.field private final zzd:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqv;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {p2, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:Lcom/google/android/gms/internal/ads/zzaqv;

    const/high16 p1, 0x500000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {p2, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaqs;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzaqs;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Ljava/io/File;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:Lcom/google/android/gms/internal/ads/zzaqv;

    const/high16 p1, 0x1400000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:I

    return-void
.end method

.method public static zze(Ljava/io/InputStream;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    shl-int/lit8 v1, v1, 0x8

    .line 10
    .line 11
    or-int/2addr v0, v1

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    shl-int/lit8 v1, v1, 0x10

    .line 17
    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    shl-int/lit8 p0, p0, 0x18

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    or-int/2addr p0, v0

    .line 26
    return p0
.end method

.method public static zzf(Ljava/io/InputStream;)J
    .locals 18

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-long v2, v2

    .line 11
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    int-to-long v4, v4

    .line 16
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    int-to-long v6, v6

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    int-to-long v8, v8

    .line 26
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    int-to-long v10, v10

    .line 31
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    int-to-long v12, v12

    .line 36
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzn(Ljava/io/InputStream;)I

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    int-to-long v14, v14

    .line 41
    const-wide/16 v16, 0xff

    .line 42
    .line 43
    and-long v2, v2, v16

    .line 44
    .line 45
    and-long v4, v4, v16

    .line 46
    .line 47
    and-long v6, v6, v16

    .line 48
    .line 49
    and-long v8, v8, v16

    .line 50
    .line 51
    and-long v10, v10, v16

    .line 52
    .line 53
    and-long v12, v12, v16

    .line 54
    .line 55
    and-long v14, v14, v16

    .line 56
    .line 57
    and-long v0, v0, v16

    .line 58
    .line 59
    const/16 v16, 0x8

    .line 60
    .line 61
    shl-long v2, v2, v16

    .line 62
    .line 63
    or-long/2addr v0, v2

    .line 64
    const/16 v2, 0x10

    .line 65
    .line 66
    shl-long v2, v4, v2

    .line 67
    .line 68
    or-long/2addr v0, v2

    .line 69
    const/16 v2, 0x18

    .line 70
    .line 71
    shl-long v2, v6, v2

    .line 72
    .line 73
    or-long/2addr v0, v2

    .line 74
    const/16 v2, 0x20

    .line 75
    .line 76
    shl-long v2, v8, v2

    .line 77
    .line 78
    or-long/2addr v0, v2

    .line 79
    const/16 v2, 0x28

    .line 80
    .line 81
    shl-long v2, v10, v2

    .line 82
    .line 83
    or-long/2addr v0, v2

    .line 84
    const/16 v2, 0x30

    .line 85
    .line 86
    shl-long v2, v12, v2

    .line 87
    .line 88
    or-long/2addr v0, v2

    .line 89
    const/16 v2, 0x38

    .line 90
    .line 91
    shl-long v2, v14, v2

    .line 92
    .line 93
    or-long/2addr v0, v2

    .line 94
    return-wide v0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzaqu;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzf(Ljava/io/InputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzm(Lcom/google/android/gms/internal/ads/zzaqu;J)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x22ffecb207f14a48L    # 4.188778334688756E-140
        0x36b3e25f34a80fa7L    # 3.4829737902453884E-45
    .end array-data
.end method

.method public static zzj(Ljava/io/OutputStream;I)V
    .locals 1

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    shr-int/lit8 v0, p1, 0x8

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 11
    .line 12
    .line 13
    shr-int/lit8 v0, p1, 0x10

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 18
    .line 19
    .line 20
    shr-int/lit8 p1, p1, 0x18

    .line 21
    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static zzk(Ljava/io/OutputStream;J)V
    .locals 2

    .line 1
    long-to-int v0, p1

    .line 2
    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    ushr-long v0, p1, v0

    .line 9
    .line 10
    long-to-int v1, v0

    .line 11
    int-to-byte v0, v1

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    ushr-long v0, p1, v0

    .line 18
    .line 19
    long-to-int v1, v0

    .line 20
    int-to-byte v0, v1

    .line 21
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x18

    .line 25
    .line 26
    ushr-long v0, p1, v0

    .line 27
    .line 28
    long-to-int v1, v0

    .line 29
    int-to-byte v0, v1

    .line 30
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x20

    .line 34
    .line 35
    ushr-long v0, p1, v0

    .line 36
    .line 37
    long-to-int v1, v0

    .line 38
    int-to-byte v0, v1

    .line 39
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x28

    .line 43
    .line 44
    ushr-long v0, p1, v0

    .line 45
    .line 46
    long-to-int v1, v0

    .line 47
    int-to-byte v0, v1

    .line 48
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x30

    .line 52
    .line 53
    ushr-long v0, p1, v0

    .line 54
    .line 55
    long-to-int v1, v0

    .line 56
    int-to-byte v0, v1

    .line 57
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x38

    .line 61
    .line 62
    ushr-long/2addr p1, v0

    .line 63
    long-to-int p2, p1

    .line 64
    int-to-byte p1, p2

    .line 65
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static zzl(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    array-length v0, p1

    .line 21
    int-to-long v1, v0

    .line 22
    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzk(Ljava/io/OutputStream;J)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x52d3dc80a2589490L    # 1.011456490998594E91
        -0x7c1d60a7afbd6225L    # -5.971601224680611E-290
    .end array-data
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzaqu;J)[B
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqu;->zza()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    cmp-long v2, p1, v0

    .line 12
    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    long-to-int v2, p1

    .line 16
    int-to-long v3, v2

    .line 17
    cmp-long v5, v3, p1

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    new-array p1, v2, [B

    .line 22
    .line 23
    new-instance p2, Ljava/io/DataInputStream;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    new-array v4, v4, [J

    .line 43
    .line 44
    fill-array-data v4, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    new-array p2, p2, [J

    .line 64
    .line 65
    fill-array-data p2, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v2, v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :array_0
    .array-data 8
        -0x341d448755b7a109L    # -3.674519228815907E57
        -0x1683f36d7498d740L    # -1.3418879121941635E200
        -0x6f410d92ccd82514L
        -0x1859f1e8eafc8b68L
    .end array-data

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
    :array_1
    .array-data 8
        0x63c4fd944ee27e9cL    # 4.0559372946515E172
        0x5f5723b343d52aa8L    # 1.8936117944104685E151
        -0x708dbdddc9ba3473L    # -2.871207251387302E-234
    .end array-data
.end method

.method private static zzn(Ljava/io/InputStream;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method private final zzo(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqt;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 10
    .line 11
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzaqt;->zza:J

    .line 12
    .line 13
    add-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqt;

    .line 24
    .line 25
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 26
    .line 27
    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/zzaqt;->zza:J

    .line 28
    .line 29
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zza:J

    .line 30
    .line 31
    sub-long/2addr v3, v5

    .line 32
    add-long/2addr v3, v1

    .line 33
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final zzp(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqt;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 12
    .line 13
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzaqt;->zza:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final zzq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzapj;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/google/android/gms/internal/ads/zzaqt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v4

    .line 18
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzg(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaqu;

    .line 23
    .line 24
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 25
    .line 26
    new-instance v8, Ljava/io/FileInputStream;

    .line 27
    .line 28
    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaqt;->zza(Lcom/google/android/gms/internal/ads/zzaqu;)Lcom/google/android/gms/internal/ads/zzaqt;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaqt;->zzb:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-nez v8, :cond_1

    .line 52
    .line 53
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 v8, 0x4

    .line 56
    new-array v8, v8, [J

    .line 57
    .line 58
    fill-array-data v8, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaqt;->zzb:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v9, 0x3

    .line 75
    new-array v9, v9, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v8, v9, v1

    .line 78
    .line 79
    aput-object p1, v9, v0

    .line 80
    .line 81
    aput-object v7, v9, v2

    .line 82
    .line 83
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzp(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit p0

    .line 93
    return-object v4

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :catch_0
    move-exception v3

    .line 98
    goto :goto_2

    .line 99
    :catchall_1
    move-exception v3

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaqu;->zza()J

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaqw;->zzm(Lcom/google/android/gms/internal/ads/zzaqu;J)[B

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    new-instance v8, Lcom/google/android/gms/internal/ads/zzapj;

    .line 110
    .line 111
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzapj;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzapj;->zza:[B

    .line 115
    .line 116
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzaqt;->zzc:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzapj;->zzb:Ljava/lang/String;

    .line 119
    .line 120
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzaqt;->zzd:J

    .line 121
    .line 122
    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzapj;->zzc:J

    .line 123
    .line 124
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzaqt;->zze:J

    .line 125
    .line 126
    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzapj;->zzd:J

    .line 127
    .line 128
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzaqt;->zzf:J

    .line 129
    .line 130
    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzapj;->zze:J

    .line 131
    .line 132
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzaqt;->zzg:J

    .line 133
    .line 134
    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzapj;->zzf:J

    .line 135
    .line 136
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzaqt;->zzh:Ljava/util/List;

    .line 137
    .line 138
    new-instance v9, Ljava/util/TreeMap;

    .line 139
    .line 140
    sget-object v10, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 141
    .line 142
    invoke-direct {v9, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-eqz v10, :cond_2

    .line 154
    .line 155
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    check-cast v10, Lcom/google/android/gms/internal/ads/zzaps;

    .line 160
    .line 161
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaps;->zza()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaps;->zzb()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v9, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_2
    iput-object v9, v8, Lcom/google/android/gms/internal/ads/zzapj;->zzg:Ljava/util/Map;

    .line 174
    .line 175
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaqt;->zzh:Ljava/util/List;

    .line 176
    .line 177
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzapj;->zzh:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    .line 183
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    .line 185
    .line 186
    monitor-exit p0

    .line 187
    return-object v8

    .line 188
    :goto_1
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 189
    .line 190
    .line 191
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 192
    :goto_2
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    new-array v6, v2, [Ljava/lang/Object;

    .line 201
    .line 202
    aput-object v5, v6, v1

    .line 203
    .line 204
    aput-object v3, v6, v0

    .line 205
    .line 206
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v1, v2, [J

    .line 209
    .line 210
    fill-array-data v1, :array_1

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzi(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 224
    .line 225
    .line 226
    monitor-exit p0

    .line 227
    return-object v4

    .line 228
    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 229
    throw p1

    .line 230
    nop

    .line 231
    :array_0
    .array-data 8
        0x7a1da07ba708f51cL    # 1.680590881271302E280
        0x42d6dcd5f10c4af9L    # 1.0055095184209189E14
        -0xc48c04278018158L
        0x16ded1834c22a642L
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_1
    .array-data 8
        -0xaa350ac27ea712L
        0x61d5da83ba51c1e7L    # 1.9663467762238553E163
    .end array-data
.end method

.method public final declared-synchronized zzb()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 5
    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqv;->zza()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v2, v1, v0

    .line 29
    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqm;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    :goto_0
    array-length v3, v2

    .line 59
    if-ge v0, v3, :cond_1

    .line 60
    .line 61
    aget-object v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaqu;

    .line 68
    .line 69
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 70
    .line 71
    new-instance v8, Ljava/io/FileInputStream;

    .line 72
    .line 73
    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v6, v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaqt;->zza(Lcom/google/android/gms/internal/ads/zzaqu;)Lcom/google/android/gms/internal/ads/zzaqt;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    iput-wide v4, v7, Lcom/google/android/gms/internal/ads/zzaqt;->zza:J

    .line 87
    .line 88
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaqt;->zzb:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {p0, v4, v7}, Lcom/google/android/gms/internal/ads/zzaqw;->zzo(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqt;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    .line 92
    .line 93
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_1
    move-exception v4

    .line 98
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 99
    .line 100
    .line 101
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    :catch_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    .line 104
    .line 105
    :goto_1
    add-int/2addr v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    monitor-exit p0

    .line 108
    return-void

    .line 109
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    throw v0

    .line 111
    :array_0
    .array-data 8
        -0x504d0f63fcbddaaL
        0x5f2697900371aab5L    # 2.3110179858034318E150
        0x5743327ef7783870L
        0x27d1589b7b11f34L
        -0x6b4c9ce189e06c66L
    .end array-data
.end method

.method public final declared-synchronized zzc(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzapj;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzf:J

    .line 11
    .line 12
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzapj;->zze:J

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapj;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x5

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 13
    .line 14
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzapj;->zza:[B

    .line 15
    .line 16
    array-length v9, v9

    .line 17
    int-to-long v10, v9

    .line 18
    add-long/2addr v7, v10

    .line 19
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:I

    .line 20
    .line 21
    int-to-long v11, v10

    .line 22
    const v13, 0x3f666666    # 0.9f

    .line 23
    .line 24
    .line 25
    cmp-long v14, v7, v11

    .line 26
    .line 27
    if-lez v14, :cond_0

    .line 28
    .line 29
    int-to-float v7, v9

    .line 30
    int-to-float v8, v10

    .line 31
    mul-float v8, v8, v13

    .line 32
    .line 33
    cmpl-float v7, v7, v8

    .line 34
    .line 35
    if-gtz v7, :cond_a

    .line 36
    .line 37
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzg(Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    .line 42
    .line 43
    new-instance v9, Ljava/io/FileOutputStream;

    .line 44
    .line 45
    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaqt;

    .line 52
    .line 53
    invoke-direct {v9, v0, v2}, Lcom/google/android/gms/internal/ads/zzaqt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapj;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    const v10, 0x20150306

    .line 57
    .line 58
    .line 59
    :try_start_2
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzaqw;->zzj(Ljava/io/OutputStream;I)V

    .line 60
    .line 61
    .line 62
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzaqt;->zzb:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzaqw;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzaqt;->zzc:Ljava/lang/String;

    .line 68
    .line 69
    if-nez v10, :cond_1

    .line 70
    .line 71
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v11, v5, [J

    .line 74
    .line 75
    const-wide v14, 0x5eeee0939fb16332L    # 1.974088057206153E149

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    aput-wide v14, v11, v6

    .line 81
    .line 82
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :cond_1
    :goto_0
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzaqw;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/zzaqt;->zzd:J

    .line 100
    .line 101
    invoke-static {v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzaqw;->zzk(Ljava/io/OutputStream;J)V

    .line 102
    .line 103
    .line 104
    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/zzaqt;->zze:J

    .line 105
    .line 106
    invoke-static {v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzaqw;->zzk(Ljava/io/OutputStream;J)V

    .line 107
    .line 108
    .line 109
    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/zzaqt;->zzf:J

    .line 110
    .line 111
    invoke-static {v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzaqw;->zzk(Ljava/io/OutputStream;J)V

    .line 112
    .line 113
    .line 114
    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/zzaqt;->zzg:J

    .line 115
    .line 116
    invoke-static {v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzaqw;->zzk(Ljava/io/OutputStream;J)V

    .line 117
    .line 118
    .line 119
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzaqt;->zzh:Ljava/util/List;

    .line 120
    .line 121
    if-eqz v10, :cond_2

    .line 122
    .line 123
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzaqw;->zzj(Ljava/io/OutputStream;I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-eqz v11, :cond_3

    .line 139
    .line 140
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    check-cast v11, Lcom/google/android/gms/internal/ads/zzaps;

    .line 145
    .line 146
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaps;->zza()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    invoke-static {v8, v12}, Lcom/google/android/gms/internal/ads/zzaqw;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaps;->zzb()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzaqw;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/zzaqw;->zzj(Ljava/io/OutputStream;I)V

    .line 162
    .line 163
    .line 164
    :cond_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .line 166
    .line 167
    :try_start_3
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzapj;->zza:[B

    .line 168
    .line 169
    invoke-virtual {v8, v2}, Ljava/io/OutputStream;->write([B)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 176
    .line 177
    .line 178
    move-result-wide v10

    .line 179
    iput-wide v10, v9, Lcom/google/android/gms/internal/ads/zzaqt;->zza:J

    .line 180
    .line 181
    invoke-direct {v1, v0, v9}, Lcom/google/android/gms/internal/ads/zzaqw;->zzo(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqt;)V

    .line 182
    .line 183
    .line 184
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 185
    .line 186
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:I

    .line 187
    .line 188
    int-to-long v10, v0

    .line 189
    cmp-long v0, v8, v10

    .line 190
    .line 191
    if-gez v0, :cond_4

    .line 192
    .line 193
    goto/16 :goto_6

    .line 194
    .line 195
    :cond_4
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaqm;->zzb:Z

    .line 196
    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v2, v4, [J

    .line 202
    .line 203
    fill-array-data v2, :array_0

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-array v2, v6, [Ljava/lang/Object;

    .line 214
    .line 215
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_5
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 219
    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 221
    .line 222
    .line 223
    move-result-wide v10

    .line 224
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/4 v2, 0x0

    .line 235
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-eqz v12, :cond_8

    .line 240
    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    check-cast v12, Ljava/util/Map$Entry;

    .line 246
    .line 247
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    check-cast v12, Lcom/google/android/gms/internal/ads/zzaqt;

    .line 252
    .line 253
    iget-object v14, v12, Lcom/google/android/gms/internal/ads/zzaqt;->zzb:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzaqw;->zzg(Ljava/lang/String;)Ljava/io/File;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    if-eqz v14, :cond_6

    .line 264
    .line 265
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 266
    .line 267
    iget-wide v4, v12, Lcom/google/android/gms/internal/ads/zzaqt;->zza:J

    .line 268
    .line 269
    sub-long/2addr v14, v4

    .line 270
    iput-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 271
    .line 272
    const/4 v5, 0x1

    .line 273
    goto :goto_3

    .line 274
    :cond_6
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 275
    .line 276
    const/16 v5, 0x8

    .line 277
    .line 278
    new-array v5, v5, [J

    .line 279
    .line 280
    fill-array-data v5, :array_1

    .line 281
    .line 282
    .line 283
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzaqt;->zzb:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaqw;->zzq(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    new-array v14, v3, [Ljava/lang/Object;

    .line 297
    .line 298
    aput-object v5, v14, v6

    .line 299
    .line 300
    const/4 v5, 0x1

    .line 301
    aput-object v12, v14, v5

    .line 302
    .line 303
    invoke-static {v4, v14}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 307
    .line 308
    .line 309
    add-int/2addr v2, v5

    .line 310
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 311
    .line 312
    long-to-float v4, v4

    .line 313
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:I

    .line 314
    .line 315
    int-to-float v5, v5

    .line 316
    mul-float v5, v5, v13

    .line 317
    .line 318
    cmpg-float v4, v4, v5

    .line 319
    .line 320
    if-gez v4, :cond_7

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_7
    const/4 v4, 0x5

    .line 324
    const/4 v5, 0x1

    .line 325
    goto :goto_2

    .line 326
    :cond_8
    :goto_4
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaqm;->zzb:Z

    .line 327
    .line 328
    if-eqz v0, :cond_a

    .line 329
    .line 330
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 331
    .line 332
    const/4 v4, 0x5

    .line 333
    new-array v5, v4, [J

    .line 334
    .line 335
    fill-array-data v5, :array_2

    .line 336
    .line 337
    .line 338
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 350
    .line 351
    sub-long/2addr v4, v8

    .line 352
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 357
    .line 358
    .line 359
    move-result-wide v8

    .line 360
    sub-long/2addr v8, v10

    .line 361
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    const/4 v8, 0x3

    .line 366
    new-array v8, v8, [Ljava/lang/Object;

    .line 367
    .line 368
    aput-object v2, v8, v6

    .line 369
    .line 370
    const/4 v2, 0x1

    .line 371
    aput-object v4, v8, v2

    .line 372
    .line 373
    aput-object v5, v8, v3

    .line 374
    .line 375
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzaqm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    .line 377
    .line 378
    monitor-exit p0

    .line 379
    return-void

    .line 380
    :goto_5
    :try_start_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 381
    .line 382
    new-array v3, v3, [J

    .line 383
    .line 384
    fill-array-data v3, :array_3

    .line 385
    .line 386
    .line 387
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const/4 v3, 0x1

    .line 399
    new-array v4, v3, [Ljava/lang/Object;

    .line 400
    .line 401
    aput-object v0, v4, v6

    .line 402
    .line 403
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 407
    .line 408
    .line 409
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 410
    .line 411
    const/4 v2, 0x5

    .line 412
    new-array v3, v2, [J

    .line 413
    .line 414
    fill-array-data v3, :array_4

    .line 415
    .line 416
    .line 417
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    const/4 v3, 0x1

    .line 429
    new-array v4, v3, [Ljava/lang/Object;

    .line 430
    .line 431
    aput-object v2, v4, v6

    .line 432
    .line 433
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    new-instance v0, Ljava/io/IOException;

    .line 437
    .line 438
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 439
    .line 440
    .line 441
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 442
    :catch_1
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-nez v0, :cond_9

    .line 447
    .line 448
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    const/4 v2, 0x1

    .line 453
    new-array v2, v2, [Ljava/lang/Object;

    .line 454
    .line 455
    aput-object v0, v2, v6

    .line 456
    .line 457
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 458
    .line 459
    const/4 v3, 0x5

    .line 460
    new-array v3, v3, [J

    .line 461
    .line 462
    fill-array-data v3, :array_5

    .line 463
    .line 464
    .line 465
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    :cond_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 476
    .line 477
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqv;->zza()Ljava/io/File;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-nez v0, :cond_a

    .line 486
    .line 487
    new-array v0, v6, [Ljava/lang/Object;

    .line 488
    .line 489
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 490
    .line 491
    const/4 v3, 0x7

    .line 492
    new-array v3, v3, [J

    .line 493
    .line 494
    fill-array-data v3, :array_6

    .line 495
    .line 496
    .line 497
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Ljava/util/Map;

    .line 508
    .line 509
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 510
    .line 511
    .line 512
    const-wide/16 v2, 0x0

    .line 513
    .line 514
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:J

    .line 515
    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 517
    .line 518
    .line 519
    monitor-exit p0

    .line 520
    return-void

    .line 521
    :cond_a
    :goto_6
    monitor-exit p0

    .line 522
    return-void

    .line 523
    :goto_7
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 524
    throw v0

    .line 525
    :array_0
    .array-data 8
        0x5765d9bd6c66e260L    # 1.0509709148071048E113
        -0x209497f412bf567eL    # -4.485597853279043E151
        0x56a9d1c66232fc4L
        -0x44edd0b6413ecb66L    # -3.7605117527527435E-24
        0x1123d5dcdf8b87b9L    # 4.186530513458989E-226
    .end array-data

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :array_1
    .array-data 8
        -0x782b56eb34d722beL
        -0x29693c9772a5f927L    # -1.336515311593147E109
        0x14de9d5e50b49ca3L
        -0x6404591ef7c90598L    # -6.987583979891309E-174
        0x26f740b973bbc61dL    # 5.628045036315717E-121
        0x6802702a57b0fc57L    # 1.0515368332728176E193
        -0x6db71632f9d1c710L    # -1.378428289175739E-220
        0x1340d3205f81fe63L    # 6.10071553513622E-216
    .end array-data

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_2
    .array-data 8
        0x5e142580a4a9449fL    # 1.5723072257561903E145
        0xac9d747e1c0c7abL
        0x37297ad30737c910L    # 5.712764821955836E-43
        -0x457122464f8f9bafL    # -1.2466724422444663E-26
        -0x5de7d8644eeaf150L
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :array_3
    .array-data 8
        0x4251afd15cb1c8e0L    # 3.038567103431387E11
        -0x505e96855c31c5ceL    # -2.936976662446441E-79
    .end array-data

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_4
    .array-data 8
        -0x352dace837ee246cL    # -2.7424159796846647E52
        -0x29b4c4978baaa962L    # -4.996535830338407E107
        0x5ceccdefeaab7a0eL    # 4.2877304711755887E139
        0x3b162ccab4fe494fL    # 4.5856759165134476E-24
        0x6461067d605652d5L    # 3.3687094374698816E175
    .end array-data

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    :array_5
    .array-data 8
        -0x5123014196ace4b4L    # -5.970156430422782E-83
        -0x61b96d0de60c028dL    # -7.840089194577495E-163
        0x49671c460fb79f6bL    # 4.123040993838574E45
        -0x615199cbe8722125L
        -0x760b754602b3cb8eL    # -1.043768976542135E-260
    .end array-data

    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :array_6
    .array-data 8
        0x114d6b7f7c434d1cL
        -0xdbfb46ec9a173e1L
        0x781597479e331c1bL    # 2.8515934258221467E270
        -0x32aacb9ca302efcaL    # -3.489233366952676E64
        -0x16773bae21b6d59cL    # -2.3697270845761985E200
        0x3b7df12590ada777L    # 3.962787984227626E-22
        -0x3ed0798e00d72c19L    # -1033016.998358366
    .end array-data
.end method

.method public final zzg(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqv;->zza()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzq(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public final declared-synchronized zzi(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzg(Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzp(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzq(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object p1, v1, v2

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    aput-object v0, v1, p1

    .line 27
    .line 28
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    new-array v0, v0, [J

    .line 33
    .line 34
    fill-array-data v0, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1

    .line 55
    :array_0
    .array-data 8
        0x3604c09406215825L    # 1.7749089477648423E-48
        0x6996228a6a09ebbcL    # 4.235797358547191E200
        -0x4e8320d723df80e1L    # -2.614530056184296E-70
        -0x60c1e4e75a2edff1L    # -3.426203137972143E-158
        -0x452e665ef6d7b327L    # -2.2747613489937903E-25
        -0x6f14e8bb0e0ac01dL    # -3.573688114234421E-227
        -0x1bdfffb708f40a42L    # -1.978780895418522E174
        0x207cbb8c68788679L
    .end array-data
.end method
