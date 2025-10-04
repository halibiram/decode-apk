.class final Lcom/google/android/gms/internal/ads/zzfwo;
.super Lcom/google/android/gms/internal/ads/zzfwn;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfwp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwo;->zza:Lcom/google/android/gms/internal/ads/zzfwp;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwn;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x22d941c92179d15eL    # 8.284825715891132E-141
        0x2a209e6e9b14a3eaL    # 9.057600413652511E-106
        -0x36b5869f5b41677bL    # -1.1807856956995696E45
        0x2f58473bddbe3a30L    # 1.2797309674650686E-80
    .end array-data
.end method


# virtual methods
.method public final zzb(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
