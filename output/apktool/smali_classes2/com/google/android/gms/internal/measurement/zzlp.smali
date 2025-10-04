.class final Lcom/google/android/gms/internal/measurement/zzlp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzlo;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzlo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x7

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :catch_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlp;->zza:Lcom/google/android/gms/internal/measurement/zzlo;

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlo;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzlo;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlp;->zzb:Lcom/google/android/gms/internal/measurement/zzlo;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x72100e6ebbd53644L    # 2.6766038664841005E241
        0x4227110a9e015106L    # 4.953507814465825E10
        -0x35d400aad591ec76L    # -2.0459118057004687E49
        0x1d8b843d7be5bd7dL
        0x186e6d23bfe9b52bL
        0x23bdb4eeda33ec8aL
        0x2b23849c7dc76460L    # 6.971513315975711E-101
    .end array-data
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzlo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlp;->zza:Lcom/google/android/gms/internal/measurement/zzlo;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzlo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlp;->zzb:Lcom/google/android/gms/internal/measurement/zzlo;

    return-object v0
.end method
