.class public final synthetic Lcom/google/android/gms/internal/ads/zzgik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnt;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgik;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgik;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgik;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzggq;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzggc;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgiq;

    .line 2
    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzgil;->zza:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgiq;->zzc()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/16 v0, 0x18

    .line 10
    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgig;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzgig;-><init>(Lcom/google/android/gms/internal/ads/zzgif;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgig;->zzc(Lcom/google/android/gms/internal/ads/zzgiq;)Lcom/google/android/gms/internal/ads/zzgig;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgig;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgig;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgiq;->zzc()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxr;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxr;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgig;->zzb(Lcom/google/android/gms/internal/ads/zzgxr;)Lcom/google/android/gms/internal/ads/zzgig;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgig;->zzd()Lcom/google/android/gms/internal/ads/zzgii;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 42
    .line 43
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v0, 0x6

    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x36b786e64a567f2cL    # 4.121035117555833E-45
        -0xe3d09930b8ecddeL    # -9.878350829088815E239
        0x2c3b105b64d26475L    # 1.267043952239468E-95
        0x120c67201a0e1e39L    # 9.821885648474123E-222
        -0x194af556f20057b1L    # -5.7221199536583E186
        -0x38084d5c478cbe49L    # -5.039966942446365E38
    .end array-data
.end method
