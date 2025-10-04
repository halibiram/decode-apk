.class public final synthetic Lcom/google/android/gms/internal/ads/zzbmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzbmj;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbmj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmj;->zza:Lcom/google/android/gms/internal/ads/zzbmj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzckn;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbnf;->zza:Lcom/google/android/gms/internal/ads/zzbng;

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Ljava/lang/String;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 p2, 0x5

    .line 31
    new-array p2, p2, [J

    .line 32
    .line 33
    fill-array-data p2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzca;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzckn;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcku;

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcku;->zzn()Lcom/google/android/gms/internal/ads/zzcei;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzca;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0xad8e552677e94daL
        0x38e8b4ba64d376b4L    # 1.4869364306385273E-34
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x2cc16974adf40028L    # -9.969437682384572E92
        -0x77a5dec8cb25e073L
        -0x755c08ea75548e56L
        0x1663f261ce161fb2L    # 8.14340886334379E-201
        -0x2ab1adcef03b8d1aL    # -8.488929652728916E102
    .end array-data
.end method
