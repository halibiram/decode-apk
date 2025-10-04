.class public Lcom/google/android/gms/internal/ads/zzgzp;
.super Lcom/google/android/gms/internal/ads/zzgxs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgzu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgzp<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzgxs<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/ads/zzgzu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgzu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxs;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zzb:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaY()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaD()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    new-array v1, v1, [J

    .line 25
    .line 26
    fill-array-data v1, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x72408c8c601d603dL    # 2.2069816786989544E242
        -0x6f6feecb33ae68c7L    # -6.623443332245984E-229
        -0x39c91e98291099f1L    # -1.8127792368855916E30
        0x67e2bab12ba358e1L    # 2.6703488597173907E192
        -0x77d048548b756b68L
        0x351f8b05b2e4526aL    # 8.233121693498698E-53
    .end array-data
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbn;->zza()Lcom/google/android/gms/internal/ads/zzhbn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhbn;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhby;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhby;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzai()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzah()Lcom/google/android/gms/internal/ads/zzgxs;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzai()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzai()Lcom/google/android/gms/internal/ads/zzgzp;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zzb:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzgzu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzp;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzam()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 16
    .line 17
    return-object v0
.end method

.method public final zzaj(Lcom/google/android/gms/internal/ads/zzgzu;)Lcom/google/android/gms/internal/ads/zzgzp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zzb:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaY()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzaq()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-object p0
.end method

.method public final zzak([BIILcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzp;
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaY()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzaq()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbn;->zza()Lcom/google/android/gms/internal/ads/zzhbn;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzhbn;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhby;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 27
    .line 28
    new-instance v6, Lcom/google/android/gms/internal/ads/zzgxx;

    .line 29
    .line 30
    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/ads/zzgxx;-><init>(Lcom/google/android/gms/internal/ads/zzgzf;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    move-object v3, p1

    .line 35
    move v5, p3

    .line 36
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhby;->zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgxx;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhag; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 45
    .line 46
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/16 p4, 0x8

    .line 49
    .line 50
    new-array p4, p4, [J

    .line 51
    .line 52
    fill-array-data p4, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzj()Lcom/google/android/gms/internal/ads/zzhag;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    throw p1

    .line 71
    :goto_1
    throw p1

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        0x5897f5dd84ed2fcdL    # 6.042164973366079E118
        -0x5b021cfec46f3665L
        -0x5f0cbeffe7592adL    # -8.85008576395855E279
        0x63e29982a9dd2629L    # 1.437580908133285E173
        -0x7812b9c10b91e8bdL
        -0x3c42c3f90471b331L    # -2.10656640319650586E18
        0x1b847037b161a2cL
        0x22e080ecd16fb1baL
    .end array-data
.end method

.method public final zzal()Lcom/google/android/gms/internal/ads/zzgzu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzam()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaX()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhco;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhco;-><init>(Lcom/google/android/gms/internal/ads/zzhbe;)V

    .line 15
    .line 16
    .line 17
    throw v1
.end method

.method public zzam()Lcom/google/android/gms/internal/ads/zzgzu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaY()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaS()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 18
    .line 19
    return-object v0
.end method

.method public bridge synthetic zzan()Lcom/google/android/gms/internal/ads/zzhbe;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzam()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaY()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzaq()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public zzaq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zzb:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaD()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 13
    .line 14
    return-void
.end method

.method public final synthetic zzbk()Lcom/google/android/gms/internal/ads/zzhbe;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
