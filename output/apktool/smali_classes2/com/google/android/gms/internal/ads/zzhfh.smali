.class public final Lcom/google/android/gms/internal/ads/zzhfh;
.super Lcom/google/android/gms/internal/ads/zzgzp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfj;->zzc()Lcom/google/android/gms/internal/ads/zzhfj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzp;-><init>(Lcom/google/android/gms/internal/ads/zzgzu;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhdp;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfj;->zzc()Lcom/google/android/gms/internal/ads/zzhfj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzp;-><init>(Lcom/google/android/gms/internal/ads/zzgzu;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzhfh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzap()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfj;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhfj;->zze(Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzgyl;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhfh;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzap()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhfj;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
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
    move-result-object v0

    .line 23
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhfj;->zzd(Lcom/google/android/gms/internal/ads/zzhfj;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    :array_0
    .array-data 8
        -0x7b7c892ca538d2b7L    # -6.391309708035074E-287
        0x702233324c4690faL    # 1.4127903955379733E232
        0x3994d23441842158L    # 2.5663999333625124E-31
    .end array-data
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzhfh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzap()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzp;->zza:Lcom/google/android/gms/internal/ads/zzgzu;

    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhfj;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhfj;->zzf(Lcom/google/android/gms/internal/ads/zzhfj;I)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
