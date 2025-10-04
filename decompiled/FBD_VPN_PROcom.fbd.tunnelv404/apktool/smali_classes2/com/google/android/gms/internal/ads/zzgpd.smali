.class public final Lcom/google/android/gms/internal/ads/zzgpd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzb:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzc:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgpj;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpj;->zzf(Lcom/google/android/gms/internal/ads/zzgpj;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpj;->zze(Lcom/google/android/gms/internal/ads/zzgpj;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzb:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpj;->zzh(Lcom/google/android/gms/internal/ads/zzgpj;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzc:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpj;->zzg(Lcom/google/android/gms/internal/ads/zzgpj;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzd:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzgpd;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzb:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzgpd;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zza:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzgpd;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzd:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzgpd;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzc:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgnh;)Lcom/google/android/gms/internal/ads/zzgpd;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpf;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnh;->zzd()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnh;->zzc()Lcom/google/android/gms/internal/ads/zzgxq;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgpf;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxq;Lcom/google/android/gms/internal/ads/zzgpe;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzb:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzb:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgnh;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpf;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/16 v2, 0xb

    .line 53
    .line 54
    new-array v2, v2, [J

    .line 55
    .line 56
    fill-array-data v2, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzb:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object p0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x60e4e5a66cdd4fL
        -0x4f750c83a27a9c6cL    # -7.448140291213538E-75
        0x2d137af498b56d66L    # 1.4942279319218125E-91
        0x614c1ecbc1571212L    # 4.9418277379727085E160
        -0x638428043dde955dL
        0x594df1758dc3d1b9L    # 1.5464164898631219E122
        -0x1d716d2b44f0b737L    # -5.633958057656219E166
        -0x67103f962664a105L
        -0x64988b0b796ea9f7L
        0x797cd44c13b8fb3dL    # 1.597018372590201E277
        0x76678ac4b531d28L
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgnl;)Lcom/google/android/gms/internal/ads/zzgpd;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgph;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzd()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgph;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgpg;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zza:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zza:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgnl;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgph;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/16 v2, 0xb

    .line 53
    .line 54
    new-array v2, v2, [J

    .line 55
    .line 56
    fill-array-data v2, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zza:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object p0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x4c3c7e908c189017L    # -2.4276737928624244E-59
        0x92f3948b83c1689L
        0x782328208b95734L
        -0x4bb0b662ac3a4072L    # -9.968790754729679E-57
        0x4bde81a8fa5de8f1L    # 2.9920673083512658E57
        0x7e2f9cab316605ceL    # 6.615725853941627E299
        0x3a28882325b19b93L    # 1.5481733720585044E-28
        0x75e1131a8fb3cbf0L    # 6.563227000558445E259
        -0x2ae6704d74d1a35fL    # -8.94544185010367E101
        -0x1c5821591ff23b00L
        0xe9e4ef62c100786L    # 2.909022501354695E-238
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgoi;)Lcom/google/android/gms/internal/ads/zzgpd;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpf;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoi;->zzd()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoi;->zzc()Lcom/google/android/gms/internal/ads/zzgxq;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgpf;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxq;Lcom/google/android/gms/internal/ads/zzgpe;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzd:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzd:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgoi;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpf;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/16 v2, 0xb

    .line 53
    .line 54
    new-array v2, v2, [J

    .line 55
    .line 56
    fill-array-data v2, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzd:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object p0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x4cf154edaa42c791L    # 4.456168132642656E62
        0x1bcd8c9109ad5f2cL    # 9.333759595093749E-175
        0x74b5e22c0c22a235L    # 1.6044006736596764E254
        0x327e78ad57433ebaL    # 1.8083949703889583E-65
        -0x493efc1610c56d0fL    # -5.960874343660598E-45
        0x5d40003c6b1f86d9L    # 1.5243791132719482E141
        -0x589a4cb16ea2772cL
        0x5337f3eb1a2571d3L    # 7.806836449357688E92
        -0x7f71b7a23800eb34L
        0x4baab6161ee3a510L    # 3.2747927904972587E56
        0x4cfd8bd29f9251f7L    # 7.596621582986574E62
    .end array-data
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgom;)Lcom/google/android/gms/internal/ads/zzgpd;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgph;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgom;->zzc()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgom;->zzd()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgph;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgpg;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzc:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzc:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgom;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgph;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/16 v2, 0xb

    .line 53
    .line 54
    new-array v2, v2, [J

    .line 55
    .line 56
    fill-array-data v2, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpd;->zzc:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object p0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x260f588610b29507L    # 2.315320489649437E-125
        -0x5c49843286ba3294L
        -0x2f39c90c7061c19eL    # -1.3170079703537473E81
        -0x5d91bf471178ed42L
        -0x1a68a96bb6808253L    # -2.421055625080687E181
        -0x6812bc129d2a3ddbL    # -2.0045014984000975E-193
        0x4c9da0e2285850cdL    # 1.1902771232332502E61
        0x3f8896b126cd1c89L    # 0.012006172176951562
        -0x37ddf7b585e90b68L    # -3.068051567391696E39
        0x595395fe27e259b3L    # 2.0230284822527097E122
        0x3a7208daf9be39c9L    # 3.642056709037639E-27
    .end array-data
.end method
