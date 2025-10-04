.class public final synthetic Lcom/google/android/gms/internal/ads/zzhn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfxf;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhn;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzhn;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v2, v0, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v2, v0, [J

    .line 40
    .line 41
    fill-array-data v2, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v2, v0, [J

    .line 60
    .line 61
    fill-array-data v2, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v0, v0, [J

    .line 80
    .line 81
    fill-array-data v0, :array_3

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_2

    .line 96
    .line 97
    const/4 p1, 0x1

    .line 98
    return p1

    .line 99
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 100
    return p1

    .line 101
    :array_0
    .array-data 8
        -0x7ce5cdac97af33cL    # -9.317682041552123E270
        -0x49be0048112d44a3L    # -2.4630694737009796E-47
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_1
    .array-data 8
        -0x173c6e18008927f6L    # -4.571479945636141E196
        0x4fbecd9fb69050f5L    # 1.3932691405355267E76
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_2
    .array-data 8
        -0x6afc9e77649377afL
        0xec1a207ed79d4c1L
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_3
    .array-data 8
        0x49d8d65eb1b19917L    # 5.671855479727299E47
        -0x58e44431f39fecc7L    # -2.685024117294046E-120
    .end array-data
.end method
