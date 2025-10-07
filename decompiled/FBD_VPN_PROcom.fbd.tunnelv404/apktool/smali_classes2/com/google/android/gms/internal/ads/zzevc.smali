.class public final synthetic Lcom/google/android/gms/internal/ads/zzevc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzevc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzevc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzevc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzevc;->zza:Lcom/google/android/gms/internal/ads/zzevc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    new-array v6, v5, [J

    .line 18
    .line 19
    fill-array-data v6, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v6, v5, [J

    .line 39
    .line 40
    fill-array-data v6, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v4, v5, [J

    .line 60
    .line 61
    fill-array-data v4, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzb()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v3, v5, [J

    .line 85
    .line 86
    fill-array-data v3, :array_3

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeve;

    .line 100
    .line 101
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeve;-><init>(Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :array_0
    .array-data 8
        0x6fcf0735c60eacb2L
        -0x4921dda70dc5f507L    # -2.1113482870057022E-44
        0x1d3cbd562468e98eL    # 7.615231006814381E-168
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 8
        -0x6b5e87078c900625L    # -2.657352036117527E-209
        -0x164f2d8f3eda30ffL    # -1.287643385933052E201
        -0xf8afe99384a3115L    # -5.217820684232518E233
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
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
    :array_2
    .array-data 8
        -0x727cc87e9d82136aL
        -0x198bf195d41dbab5L    # -3.4088534188803095E185
        -0x40518f8290ffcc17L    # -0.059451980399991396
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_3
    .array-data 8
        0x1373eb7dbc820560L    # 5.778431673174701E-215
        -0x498b89b9aace0bf0L    # -2.2401081376142986E-46
        -0x42fc19a60d7a840L    # -2.473442636555319E288
    .end array-data
.end method
