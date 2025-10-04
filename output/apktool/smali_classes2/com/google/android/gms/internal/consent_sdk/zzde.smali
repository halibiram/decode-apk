.class public abstract Lcom/google/android/gms/internal/consent_sdk/zzde;
.super Lcom/google/android/gms/internal/consent_sdk/zzda;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Lj$/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/consent_sdk/zzdd;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzda;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzf(I)I
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const v0, 0x2ccccccc

    .line 7
    .line 8
    .line 9
    if-ge p0, v0, :cond_1

    .line 10
    .line 11
    add-int/lit8 v0, p0, -0x1

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    add-int/2addr v0, v0

    .line 18
    int-to-double v1, v0

    .line 19
    const-wide v3, 0x3fe6666666666666L    # 0.7

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    mul-double v1, v1, v3

    .line 25
    .line 26
    int-to-double v3, p0

    .line 27
    cmpg-double v5, v1, v3

    .line 28
    .line 29
    if-gez v5, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return v0

    .line 33
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 34
    .line 35
    if-ge p0, v0, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :array_0
    .array-data 8
        0x7e343e36ed84e72eL    # 8.47288132813433E299
        0x7e30fb4b68ea2060L    # 7.107793501771502E299
        0x52ddbe04cf89bcc7L    # 1.5146513870450112E91
        -0x3e80fe6d867286e2L    # -3.2512295597039334E7
    .end array-data
.end method

.method public static zzi()Lcom/google/android/gms/internal/consent_sdk/zzde;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzdh;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdh;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzj(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzde;
    .locals 4

    .line 1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    new-array p2, p1, [J

    .line 5
    .line 6
    fill-array-data p2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 p3, 0x4

    .line 19
    new-array v0, p3, [J

    .line 20
    .line 21
    fill-array-data v0, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v1, p1, [J

    .line 34
    .line 35
    fill-array-data v1, :array_2

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v2, p3, [J

    .line 48
    .line 49
    fill-array-data v2, :array_3

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-array v2, p3, [Ljava/lang/Object;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    aput-object p0, v2, v3

    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    aput-object p2, v2, p0

    .line 66
    .line 67
    const/4 p0, 0x2

    .line 68
    aput-object v0, v2, p0

    .line 69
    .line 70
    aput-object v1, v2, p1

    .line 71
    .line 72
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/consent_sdk/zzde;->zzl(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzde;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :array_0
    .array-data 8
        -0x7f640c4a79237cbcL    # -9.951238270734357E-306
        0x3b2b910bdc2f2613L    # 1.1401273251598945E-23
        -0x755e6505df291a2eL
    .end array-data

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
    :array_1
    .array-data 8
        0x5c14b3d44da41114L    # 3.7618370844249026E135
        -0xa6bfa5c74c90691L
        0x11ac2466aa2d457bL
        0x7851355ab288b423L    # 3.6364446521645935E271
    .end array-data

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
    :array_2
    .array-data 8
        0x8fe4baa2c7704d6L
        -0x297c27d8c99811b0L    # -5.825662136700827E108
        0x4f51202e069b3e16L    # 1.2103398735045336E74
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
    .line 126
    .line 127
    .line 128
    .line 129
    :array_3
    .array-data 8
        0x4eff818d000b6b97L    # 3.4791491027527496E72
        0x5970f0cd6b40533bL    # 6.999192196615767E122
        0x1a100723d433aabbL    # 3.77206363332044E-183
        0xd1c8a7f4d0eeee0L
    .end array-data
.end method

.method private static varargs zzl(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzde;
    .locals 14

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq p0, v1, :cond_7

    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzde;->zzf(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    new-array v7, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    add-int/lit8 v8, v3, -0x1

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    :goto_0
    if-ge v4, p0, :cond_3

    .line 20
    .line 21
    aget-object v5, p1, v4

    .line 22
    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    invoke-static {v10}, Lcom/google/android/gms/internal/consent_sdk/zzcz;->zza(I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    :goto_1
    and-int v12, v11, v8

    .line 34
    .line 35
    aget-object v13, v7, v12

    .line 36
    .line 37
    if-nez v13, :cond_0

    .line 38
    .line 39
    add-int/lit8 v11, v9, 0x1

    .line 40
    .line 41
    aput-object v5, p1, v9

    .line 42
    .line 43
    aput-object v5, v7, v12

    .line 44
    .line 45
    add-int/2addr v6, v10

    .line 46
    move v9, v11

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v12

    .line 52
    if-nez v12, :cond_1

    .line 53
    .line 54
    add-int/2addr v11, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_2
    add-int/2addr v4, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v0, v0, [J

    .line 68
    .line 69
    fill-array-data v0, :array_0

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1, p1, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_3
    const/4 v4, 0x0

    .line 84
    invoke-static {p1, v9, p0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    if-ne v9, v1, :cond_4

    .line 88
    .line 89
    aget-object p0, p1, v2

    .line 90
    .line 91
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzdi;

    .line 95
    .line 96
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzdi;-><init>(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_4
    div-int/lit8 v3, v3, 0x2

    .line 101
    .line 102
    invoke-static {v9}, Lcom/google/android/gms/internal/consent_sdk/zzde;->zzf(I)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-lt p0, v3, :cond_6

    .line 107
    .line 108
    if-ge v9, v0, :cond_5

    .line 109
    .line 110
    invoke-static {p1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :cond_5
    move-object v5, p1

    .line 115
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzdh;

    .line 116
    .line 117
    move-object v4, p0

    .line 118
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/consent_sdk/zzdh;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_6
    invoke-static {v9, p1}, Lcom/google/android/gms/internal/consent_sdk/zzde;->zzl(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzde;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :cond_7
    aget-object p0, p1, v2

    .line 128
    .line 129
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzdi;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzdi;-><init>(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_8
    sget-object p0, Lcom/google/android/gms/internal/consent_sdk/zzdh;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdh;

    .line 139
    .line 140
    return-object p0

    .line 141
    :array_0
    .array-data 8
        -0x1c43b46ef50c98fcL    # -2.7336948069500396E172
        0x33269e140aa35fe9L    # 2.74900403152774E-62
        -0x3c97ff3d2b38b832L    # -5.4049889876328048E16
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/consent_sdk/zzde;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzde;->zzk()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzde;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzde;->zzk()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzde;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v2

    .line 37
    :cond_2
    :goto_0
    if-ne p1, p0, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    instance-of v1, p1, Ljava/util/Set;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    check-cast p1, Ljava/util/Set;

    .line 45
    .line 46
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ne v1, v3, :cond_4

    .line 55
    .line 56
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    :catch_0
    :cond_4
    const/4 v0, 0x0

    .line 63
    nop

    .line 64
    :cond_5
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_1
    add-int/2addr v2, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzde;->zzd()Lcom/google/android/gms/internal/consent_sdk/zzdj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/consent_sdk/zzdj;
.end method

.method public final zzg()Lcom/google/android/gms/internal/consent_sdk/zzdd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzde;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzde;->zzh()Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzde;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public zzh()Lcom/google/android/gms/internal/consent_sdk/zzdd;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzda;->toArray()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/google/android/gms/internal/consent_sdk/zzdd;->zzd:I

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdd;->zzg([Ljava/lang/Object;I)Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public zzk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
