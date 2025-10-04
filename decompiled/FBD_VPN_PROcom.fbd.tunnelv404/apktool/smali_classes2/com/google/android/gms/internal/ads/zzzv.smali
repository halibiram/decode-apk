.class public final synthetic Lcom/google/android/gms/internal/ads/zzzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfxu;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzzv;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzv;->zza:Lcom/google/android/gms/internal/ads/zzzv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xa

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
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    new-array v4, v4, [J

    .line 34
    .line 35
    fill-array-data v4, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdm;

    .line 56
    .line 57
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :array_0
    .array-data 8
        -0x5bea2fc20852d409L    # -7.502849263411075E-135
        0x4195acdcf5071d92L    # 9.091257325694874E7
        0x20f3fa2b32e7e5c9L    # 6.102914089740869E-150
        0x6920203b33575017L    # 2.4108556728010075E198
        0x1d64afd357db46eL
        -0x30aa6d54d6776763L    # -1.5246423140741572E74
        -0x51a5651a8cdb1d98L    # -2.1398608935211802E-85
        0x7905535ad7b02419L    # 9.229271400659693E274
        -0x37836a22918ae2a0L    # -1.5563377572972493E41
        -0x50a0b21f4d3e5720L    # -1.6500758847125851E-80
    .end array-data

    .line 68
    .line 69
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
    :array_1
    .array-data 8
        -0x365560bb0f1a4901L    # -7.59927920682705E46
        0x756bda960a44c487L    # 4.1822652422928053E257
    .end array-data
.end method
