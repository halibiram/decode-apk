.class final Lcom/google/android/play/core/appupdate/zzv;
.super Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;
.source "SourceFile"


# instance fields
.field private zza:I

.field private zzb:Z

.field private zzc:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/google/android/play/core/appupdate/zzv;->zzc:B

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-byte v2, p0, Lcom/google/android/play/core/appupdate/zzv;->zzc:B

    .line 12
    .line 13
    and-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v1, v1, [J

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-byte v1, p0, Lcom/google/android/play/core/appupdate/zzv;->zzc:B

    .line 35
    .line 36
    and-int/lit8 v1, v1, 0x2

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    new-array v2, v2, [J

    .line 44
    .line 45
    fill-array-data v2, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v3, 0x5

    .line 67
    new-array v3, v3, [J

    .line 68
    .line 69
    fill-array-data v3, :array_2

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_2
    new-instance v0, Lcom/google/android/play/core/appupdate/zzx;

    .line 88
    .line 89
    iget v1, p0, Lcom/google/android/play/core/appupdate/zzv;->zza:I

    .line 90
    .line 91
    iget-boolean v2, p0, Lcom/google/android/play/core/appupdate/zzv;->zzb:Z

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/core/appupdate/zzx;-><init>(IZLcom/google/android/play/core/appupdate/zzw;)V

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        -0x7a08a876123c8398L    # -6.429558399953225E-280
        -0x28a26dea7b092a48L    # -7.111465908150198E112
        0x382c96434b02a85L
    .end array-data

    .line 100
    .line 101
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
    .line 114
    .line 115
    :array_1
    .array-data 8
        0x4b55d87aadd4f70fL    # 8.369579550115065E54
        -0x51cbf845b915ed46L    # -4.027599083483322E-86
        0x545aa375806a16baL    # 2.275980624394694E98
        -0x1755e4f532138aa4L    # -1.5245491601879642E196
    .end array-data

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
    :array_2
    .array-data 8
        0x5bdb6b9ca344129aL    # 3.114090413762349E134
        -0x3dbc32c941bd61fL    # -9.861088846327777E289
        0x221a069cf2c00f2aL    # 2.084235158650162E-144
        -0x402c3968c0684226L    # -0.3089960213682993
        -0x3adb450e5714a2adL    # -1.2530667197676565E25
    .end array-data
.end method

.method public final setAllowAssetPackDeletion(Z)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/play/core/appupdate/zzv;->zzb:Z

    iget-byte p1, p0, Lcom/google/android/play/core/appupdate/zzv;->zzc:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/play/core/appupdate/zzv;->zzc:B

    return-object p0
.end method

.method public final setAppUpdateType(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/play/core/appupdate/zzv;->zza:I

    iget-byte p1, p0, Lcom/google/android/play/core/appupdate/zzv;->zzc:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/play/core/appupdate/zzv;->zzc:B

    return-object p0
.end method
