.class public final Lcom/google/android/gms/internal/ads/zzfof;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfon;

.field private final zzb:Landroid/webkit/WebView;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/Map;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfog;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfon;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfog;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzc:Ljava/util/List;

    .line 10
    .line 11
    new-instance p3, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzd:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfof;->zza:Lcom/google/android/gms/internal/ads/zzfon;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzb:Landroid/webkit/WebView;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzg:Lcom/google/android/gms/internal/ads/zzfog;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzf:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    new-array p2, p2, [J

    .line 30
    .line 31
    const-wide p3, 0x458f0cd4c6ac7b70L    # 1.2011934026094273E27

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 p5, 0x0

    .line 37
    aput-wide p3, p2, p5

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfof;->zze:Ljava/lang/String;

    .line 47
    .line 48
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfon;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfof;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfof;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    const-wide v2, 0x623e4b946e4bf8f7L    # 1.7445842491434942E165

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-wide v2, v1, v4

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfog;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v0, p3

    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    move-object v5, p2

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfof;-><init>(Lcom/google/android/gms/internal/ads/zzfon;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfog;)V

    .line 32
    .line 33
    .line 34
    return-object p3
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfon;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfof;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfof;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    const-wide v2, 0x28e6d9efd05b229fL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-wide v2, v1, v4

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfog;->zzc:Lcom/google/android/gms/internal/ads/zzfog;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v0, p3

    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    move-object v5, p2

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfof;-><init>(Lcom/google/android/gms/internal/ads/zzfon;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfog;)V

    .line 32
    .line 33
    .line 34
    return-object p3
.end method


# virtual methods
.method public final zza()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzb:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzg:Lcom/google/android/gms/internal/ads/zzfog;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfon;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->zza:Lcom/google/android/gms/internal/ads/zzfon;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzc:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzi()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->zzd:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
