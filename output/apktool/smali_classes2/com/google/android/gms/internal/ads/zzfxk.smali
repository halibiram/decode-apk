.class final Lcom/google/android/gms/internal/ads/zzfxk;
.super Lcom/google/android/gms/internal/ads/zzfxp;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfxl;Lcom/google/android/gms/internal/ads/zzfxr;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxk;->zza:Lcom/google/android/gms/internal/ads/zzfxl;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzfxp;-><init>(Lcom/google/android/gms/internal/ads/zzfxr;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzc(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final zzd(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxp;->zzb:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    new-array v3, v3, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxe;->zzb(IILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    if-ge p1, v1, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfxk;->zza:Lcom/google/android/gms/internal/ads/zzfxl;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfxl;->zza:Lcom/google/android/gms/internal/ads/zzfwp;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfwp;->zzb(C)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, -0x1

    .line 46
    :goto_1
    return p1

    .line 47
    :array_0
    .array-data 8
        0x7d84ef675f934b4cL    # 4.2786056573334035E296
        -0x173aeed387e95f3aL    # -4.921206956109891E196
    .end array-data
.end method
