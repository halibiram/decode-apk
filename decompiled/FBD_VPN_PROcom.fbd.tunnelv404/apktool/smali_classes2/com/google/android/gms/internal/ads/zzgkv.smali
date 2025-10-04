.class public final synthetic Lcom/google/android/gms/internal/ads/zzgkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgok;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkv;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkv;->zza:Lcom/google/android/gms/internal/ads/zzgkv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzggq;)Lcom/google/android/gms/internal/ads/zzgpc;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgku;

    .line 2
    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgkz;->zza:I

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguy;->zza()Lcom/google/android/gms/internal/ads/zzgux;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgux;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgux;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgvq;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgku;->zzc()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgvq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvq;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvr;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxt;->zzau()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgux;->zzc(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzgux;

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvz;->zzd:Lcom/google/android/gms/internal/ads/zzgvz;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Lcom/google/android/gms/internal/ads/zzgvz;)Lcom/google/android/gms/internal/ads/zzgux;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/google/android/gms/internal/ads/zzguy;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgoy;->zzb(Lcom/google/android/gms/internal/ads/zzguy;)Lcom/google/android/gms/internal/ads/zzgoy;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x6c4ebc1930296e2bL    # 5.173408353019679E213
        0x4514103e8766f5b1L    # 6.063806927726713E24
        0x12bc0a796928fe1bL
        -0x3f06829f163fe1faL    # -104406.05706798294
        -0x2832b9cfa4707d42L    # -9.011415935077853E114
        -0x59a4c51264b7edd0L    # -6.436243056114666E-124
        -0x29e65ba330b85729L    # -5.880998591950952E106
        -0x10817e381968e5bbL    # -1.1563135228719973E229
    .end array-data
.end method
