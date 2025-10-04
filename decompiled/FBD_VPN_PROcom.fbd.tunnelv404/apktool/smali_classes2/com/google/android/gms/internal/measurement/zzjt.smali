.class final Lcom/google/android/gms/internal/measurement/zzjt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzjt;


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzmh;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjt;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzb:Lcom/google/android/gms/internal/measurement/zzjt;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlx;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlx;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlx;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzlx;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzjt;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method private static final zzd(Lcom/google/android/gms/internal/measurement/zzjs;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb()Lcom/google/android/gms/internal/measurement/zznb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/measurement/zznb;->zza:Lcom/google/android/gms/internal/measurement/zznb;

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/measurement/zznc;->zza:Lcom/google/android/gms/internal/measurement/zznc;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznb;->zza()Lcom/google/android/gms/internal/measurement/zznc;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlj;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzko;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzke;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    instance-of v0, p1, [B

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    .line 67
    .line 68
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    .line 70
    :cond_0
    :goto_1
    return-void

    .line 71
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zza()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb()Lcom/google/android/gms/internal/measurement/zznb;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznb;->zza()Lcom/google/android/gms/internal/measurement/zznc;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 v2, 0x3

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    aput-object v1, v2, v3

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    aput-object p0, v2, v1

    .line 105
    .line 106
    const/4 p0, 0x2

    .line 107
    aput-object p1, v2, p0

    .line 108
    .line 109
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    const/16 p1, 0xf

    .line 112
    .line 113
    new-array p1, p1, [J

    .line 114
    .line 115
    fill-array-data p1, :array_0

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x5787337f3f773854L
        0x523a4286781d22a6L    # 1.3059640719796249E88
        -0x4fec2a510f4bf89L    # -3.204459873252007E284
        -0x76a72108eb1eb641L
        0x4fd759eff0135436L    # 4.224840358392025E76
        0x2760eb6b43d676a6L    # 5.241818191943423E-119
        -0x311505db8079ce3fL    # -1.4895138830900327E72
        0xe4824fe60e1c99eL    # 7.241887896337455E-240
        -0xb2786ad82c0c4d1L    # -7.177278447218705E254
        -0x18f64bb02ac67a39L    # -2.2368343210775535E188
        -0x6da6d18e31961dfbL
        -0x5dbed0576514131eL
        0x7c78349e7b58a38aL    # 3.774249915151316E291
        0x7f1b232d6a800adfL    # 1.8609900966287386E304
        -0x736d8fd232297788L    # -4.120425606655234E-248
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzmh;->zzb()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzmh;->zzg(I)Ljava/util/Map$Entry;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjs;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzjs;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmh;->zzc()Ljava/lang/Iterable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjs;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc(Lcom/google/android/gms/internal/measurement/zzjs;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzd:Z

    .line 74
    .line 75
    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzjt;->zzd:Z

    .line 76
    .line 77
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjt;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjt;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmh;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmh;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzc:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmh;->zza()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzc:Z

    .line 13
    .line 14
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzjs;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzjs;->zzc()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    instance-of v1, p2, Ljava/util/List;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    check-cast p2, Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzd(Lcom/google/android/gms/internal/measurement/zzjs;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    add-int/2addr v2, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object p2, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzd(Lcom/google/android/gms/internal/measurement/zzjs;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    instance-of v1, p2, Lcom/google/android/gms/internal/measurement/zzko;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzd:Z

    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zza:Lcom/google/android/gms/internal/measurement/zzmh;

    .line 72
    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmh;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 8
        0x1b5008ec0d8029d3L    # 3.957013307083816E-177
        0x50c02f463965797bL    # 9.59516778040472E80
        -0x29cf0969cf7f7f2cL    # -1.5562057085702427E107
        0x37d4c350d7820094L    # 9.533880130137729E-40
        -0xd6579e09bf7a889L
        -0x6488d65bb577cc72L
        0x3c69c16fdd070d63L    # 1.1169716692307356E-17
        0x1a1bbb0f9cf92d0dL    # 6.526248207436865E-183
    .end array-data
.end method
