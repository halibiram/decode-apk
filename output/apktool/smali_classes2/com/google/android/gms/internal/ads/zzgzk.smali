.class final Lcom/google/android/gms/internal/ads/zzgzk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgzk;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhcl;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzk;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzk;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzk;->zzb:Lcom/google/android/gms/internal/ads/zzgzk;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcb;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcb;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhcb;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhcb;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzk;->zzb()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzk;->zzb()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgzk;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method private static final zzd(Lcom/google/android/gms/internal/ads/zzgzj;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgzj;->zzb()Lcom/google/android/gms/internal/ads/zzhdf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhae;->zzd:[B

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdf;->zza:Lcom/google/android/gms/internal/ads/zzhdf;

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdg;->zza:Lcom/google/android/gms/internal/ads/zzhdg;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhdf;->zza()Lcom/google/android/gms/internal/ads/zzhdg;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhbe;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhaj;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgzw;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgyl;

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    instance-of v0, p1, [B

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    .line 69
    .line 70
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    .line 72
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgzj;->zza()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgzj;->zzb()Lcom/google/android/gms/internal/ads/zzhdf;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdf;->zza()Lcom/google/android/gms/internal/ads/zzhdg;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/4 v2, 0x3

    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    aput-object v1, v2, v3

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    aput-object p0, v2, v1

    .line 107
    .line 108
    const/4 p0, 0x2

    .line 109
    aput-object p1, v2, p0

    .line 110
    .line 111
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    const/16 p1, 0xf

    .line 114
    .line 115
    new-array p1, p1, [J

    .line 116
    .line 117
    fill-array-data p1, :array_0

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
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
    :array_0
    .array-data 8
        -0x527f3e4c0b80249eL
        0x26a59538c8c84ec3L
        -0xc4f1561ea0ff85eL
        -0x7821d6befc805621L    # -8.920553102437393E-271
        0x24b67fa31b7b2cc4L    # 7.92422988147869E-132
        -0x5c55e285769d2a3bL    # -7.017533960922712E-137
        -0x596890886616a7aL
        0x19c32b7a543ea483L
        -0x551f27bc48022b5dL    # -3.760424790469156E-102
        0x77a25c3bf2d4a3ceL
        -0x7b18e4b79f12da84L
        -0x303abd46c1085428L    # -1.923292049439529E76
        0x42fff36fab34847cL    # 5.6208657608096775E14
        -0x25e2cd11c9478216L    # -1.2353368595429964E126
        0x31af22524c144c4eL
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzk;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgzk;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcl;->zzb()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhcl;->zzg(I)Ljava/util/Map$Entry;

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
    check-cast v3, Lcom/google/android/gms/internal/ads/zzgzj;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzgzk;->zzc(Lcom/google/android/gms/internal/ads/zzgzj;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcl;->zzc()Ljava/lang/Iterable;

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
    check-cast v3, Lcom/google/android/gms/internal/ads/zzgzj;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzgzk;->zzc(Lcom/google/android/gms/internal/ads/zzgzj;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzd:Z

    .line 74
    .line 75
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzgzk;->zzd:Z

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
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgzk;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzk;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhcl;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhcl;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcl;->zzb()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhcl;->zzg(I)Ljava/util/Map$Entry;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzgzu;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzu;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaS()V

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhcl;->zza()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Z

    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgzj;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgzj;->zzc()Z

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
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzgzk;->zzd(Lcom/google/android/gms/internal/ads/zzgzj;Ljava/lang/Object;)V

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
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgzk;->zzd(Lcom/google/android/gms/internal/ads/zzgzj;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    instance-of v1, p2, Lcom/google/android/gms/internal/ads/zzhaj;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzd:Z

    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    .line 72
    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhcl;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 8
        -0x1ff965f4f3cd2e53L    # -3.78799586401615E154
        0x7bd873d32176d5d7L    # 3.72338608667411E288
        -0x39eaf045944c5aa4L    # -4.1716476418910396E29
        -0x2d52eaa80797831L    # -8.563818931240035E294
        0x7b5110325a31b2c9L    # 1.0149347399582463E286
        -0x19a54c3111e3aedeL
        0x78debbf8b7afc4c4L    # 1.6626425369974925E274
        0x7e38da465c511eafL    # 1.0402270902904776E300
    .end array-data
.end method
