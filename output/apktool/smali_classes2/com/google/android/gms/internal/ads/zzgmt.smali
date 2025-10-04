.class final Lcom/google/android/gms/internal/ads/zzgmt;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final zza()Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwz;->zza:Lcom/google/android/gms/internal/ads/zzgwz;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljavax/crypto/Cipher;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmu;->zzc(Ljavax/crypto/Cipher;)Z

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    :cond_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :array_0
    .array-data 8
        0x1f01ede2571942d2L    # 2.550551283671775E-159
        -0x6e264d16e0c36f44L
        0x21ce0cda7bba9658L    # 7.520376878355462E-146
        -0x3aec1013ecf978e0L    # -6.025647741154226E24
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmt;->zza()Ljavax/crypto/Cipher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
