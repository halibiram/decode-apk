.class abstract Lcom/google/android/gms/internal/ads/zzfyt;
.super Lcom/google/android/gms/internal/ads/zzfyw;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final transient zza:Ljava/util/Map;

.field private transient zzb:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfyw;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxe;->zze(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    .line 12
    .line 13
    return-void
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfyt;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    return p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzfyt;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzfyt;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    .line 2
    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    check-cast p1, Ljava/util/Collection;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    .line 21
    .line 22
    sub-int/2addr p1, v0

    .line 23
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract zza()Ljava/util/Collection;
.end method

.method public zzb(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzc(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    return v0
.end method

.method public final zzf()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyv;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfyv;-><init>(Lcom/google/android/gms/internal/ads/zzfyw;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zzg()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyd;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfyd;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zzh(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfyq;)Ljava/util/List;
    .locals 1
    .param p3    # Lcom/google/android/gms/internal/ads/zzfyq;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p2, Ljava/util/RandomAccess;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfym;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfym;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfyq;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfys;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfys;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfyq;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public zzj()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzk()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/NavigableMap;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyk;

    .line 8
    .line 9
    check-cast v0, Ljava/util/NavigableMap;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfyk;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/util/NavigableMap;)V

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 20
    .line 21
    check-cast v0, Ljava/util/SortedMap;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/util/SortedMap;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyg;

    .line 28
    .line 29
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfyg;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public zzl()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzm()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/NavigableMap;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyl;

    .line 8
    .line 9
    check-cast v0, Ljava/util/NavigableMap;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfyl;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/util/NavigableMap;)V

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyo;

    .line 20
    .line 21
    check-cast v0, Ljava/util/SortedMap;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfyo;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/util/SortedMap;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyj;

    .line 28
    .line 29
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>(Lcom/google/android/gms/internal/ads/zzfyt;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public final zzp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    .line 34
    .line 35
    return-void
.end method

.method public final zzq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfyt;->zza()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    .line 23
    .line 24
    add-int/2addr p2, v1

    .line 25
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    .line 26
    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zza:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 34
    .line 35
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v0, 0x7

    .line 38
    new-array v0, v0, [J

    .line 39
    .line 40
    fill-array-data v0, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    .line 61
    .line 62
    add-int/2addr p1, v1

    .line 63
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfyt;->zzb:I

    .line 64
    .line 65
    return v1

    .line 66
    :cond_2
    const/4 p1, 0x0

    .line 67
    return p1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x80ec3b0200dae47L    # -5.690918713438549E269
        0x70f0def599b593bL
        -0x4b7ec79cd26f8dedL    # -8.778707912987115E-56
        -0x783ec49aeaf7193fL
        -0x7b219fcdd1a92cebL    # -3.191768273647377E-285
        -0x7849224e9f8a3adcL
        -0x4139dd4ccf9dd610L    # -2.638762796773992E-6
    .end array-data
.end method
