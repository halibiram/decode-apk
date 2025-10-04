.class public final Lcom/google/android/gms/ads/internal/client/zzbc;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzbe;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x61fcdc887a1fda45L    # 1.0387616733010346E164
        0x32c0871cb3200428L    # 3.138813411220104E-64
        0x26b06b8bb77dff72L
        0x57b443cafb8c29caL    # 3.119040649770264E114
        -0x5a76aa6e97e5a882L    # -7.309705886178706E-128
        0x7eaaa5655ffa9768L    # 1.427575102049798E302
        0x5f8baabab581d27fL    # 1.8112921620232308E152
        0x707b33e836ce5c29L    # 6.757244840339042E233
        0x70ad4b54bb283935L    # 5.8214235139146705E234
    .end array-data
.end method


# virtual methods
.method public final zzb()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayg;->zza()Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzayg;->zzbm(ILandroid/os/Parcel;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
