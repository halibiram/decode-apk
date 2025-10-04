.class public abstract Lcom/google/android/gms/internal/ads/zzbfu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbft;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zza:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzc:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zza()Lcom/google/android/gms/internal/ads/zzbfv;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzd(Lcom/google/android/gms/internal/ads/zzbfu;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static zzf(ILjava/lang/String;F)Lcom/google/android/gms/internal/ads/zzbfu;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbfr;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>(ILjava/lang/String;Ljava/lang/Float;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public static zzg(ILjava/lang/String;I)Lcom/google/android/gms/internal/ads/zzbfu;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbfp;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfp;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public static zzh(ILjava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbfu;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbfq;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 p3, 0x1

    .line 8
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfq;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public static zzi(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/ads/zzbfu;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfo;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzj(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfu;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbfs;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfs;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public static zzk(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfu;
    .locals 1

    .line 1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    new-array p1, p1, [J

    .line 5
    .line 6
    fill-array-data p1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbfu;->zzj(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfu;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zza()Lcom/google/android/gms/internal/ads/zzbfv;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzc(Lcom/google/android/gms/internal/ads/zzbfu;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x560408fd105a1be6L
        0x1b7878c5d4795cbfL    # 2.415616057095154E-176
        0x65ad59135b84eda3L    # 6.0889891085054224E181
        -0x4af817386e5aca68L    # -3.120308613316229E-53
        0x35f25a5c3da143daL    # 7.848507278933848E-49
        0x425b1c26f4bce016L    # 4.6574572824350134E11
    .end array-data
.end method


# virtual methods
.method public abstract zza(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method public abstract zzb(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract zzc(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public abstract zzd(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zza:I

    return v0
.end method

.method public final zzl()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzc:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzb:Ljava/lang/String;

    return-object v0
.end method
