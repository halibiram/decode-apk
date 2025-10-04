.class public final Lcom/google/android/gms/internal/ads/zzens;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeip;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeow;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdua;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeow;Lcom/google/android/gms/internal/ads/zzdua;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzens;->zza:Lcom/google/android/gms/internal/ads/zzeow;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzens;->zzb:Lcom/google/android/gms/internal/ads/zzdua;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzeiq;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgc;->zzbE:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzens;->zzb:Lcom/google/android/gms/internal/ads/zzdua;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdua;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbus;

    .line 23
    .line 24
    .line 25
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p2

    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    move-object p2, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzens;->zza:Lcom/google/android/gms/internal/ads/zzeow;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzeow;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbus;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :goto_0
    if-nez p2, :cond_1

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekj;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzekj;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeiq;

    .line 63
    .line 64
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzeiq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdch;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x6af9516b64682682L
        0x75d181c3ae088812L    # 3.364692146270314E259
        -0x4ba0c5e71f15e580L    # -1.9898955558323935E-56
        -0x7499064ad615d676L    # -9.793031112915198E-254
        0xa93ac390082d51dL
    .end array-data
.end method
