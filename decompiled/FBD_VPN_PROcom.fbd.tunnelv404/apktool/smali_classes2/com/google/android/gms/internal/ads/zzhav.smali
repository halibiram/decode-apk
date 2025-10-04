.class final Lcom/google/android/gms/internal/ads/zzhav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbc;


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/ads/zzhbc;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzhbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhav;->zza:[Lcom/google/android/gms/internal/ads/zzhbc;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhbb;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhav;->zza:[Lcom/google/android/gms/internal/ads/zzhbc;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzhbc;->zzc(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzhbc;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhbb;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x7

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x3ee35b5e9c87bc9fL    # -469288.3471384552
        0x6ea8b0c39ea41656L    # 1.1423952742029879E225
        -0x208ea4b75013a37fL    # -5.68148589804815E151
        0x26b6ffeeea5a1a72L    # 3.479242363147064E-122
        -0x300989c87799c69cL    # -1.625560623334879E77
        -0x11789180131fcd95L    # -2.710375505156541E224
        -0x32660c6c11b08bd6L    # -6.832523523405282E65
    .end array-data
.end method

.method public final zzc(Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhav;->zza:[Lcom/google/android/gms/internal/ads/zzhbc;

    .line 7
    .line 8
    aget-object v2, v2, v1

    .line 9
    .line 10
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzhbc;->zzc(Ljava/lang/Class;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v0
.end method
