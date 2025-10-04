.class public final Lcom/google/android/gms/internal/consent_sdk/zzct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Z)Z
    .locals 3

    .line 1
    const/4 p0, 0x2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v2, p0, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v2, p0, [J

    .line 33
    .line 34
    fill-array-data v2, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array p0, p0, [J

    .line 55
    .line 56
    fill-array-data p0, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 p0, 0x0

    .line 74
    return p0

    .line 75
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 76
    return p0

    .line 77
    :cond_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array p0, p0, [J

    .line 82
    .line 83
    fill-array-data p0, :array_3

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        -0x1f581e420b278d77L    # -4.098593935056095E157
        -0x4fca6da21c98d98L
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
    :array_1
    .array-data 8
        0x315d9268062df61eL    # 6.694840854514093E-71
        -0x17902961e2979fb9L    # -1.1620846550695669E195
    .end array-data

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
    .line 122
    .line 123
    :array_2
    .array-data 8
        -0x3f946ddaf12f0521L    # -220.56702366653823
        0x5ad50e104dbe21c6L    # 3.648648982488489E129
    .end array-data

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
    :array_3
    .array-data 8
        0x710abab3b189fcb6L    # 3.399493933791973E236
        0x4ce4996283f420b5L    # 2.648125843387866E62
    .end array-data
.end method
