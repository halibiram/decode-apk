.class public final Lcom/google/android/gms/internal/ads/zzfpu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 v2, 0x4

    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    if-eqz v1, :cond_2

    .line 51
    .line 52
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v0, v0, [J

    .line 55
    .line 56
    fill-array-data v0, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const/4 v1, 0x0

    .line 72
    cmpl-float p0, p0, v1

    .line 73
    .line 74
    if-nez p0, :cond_3

    .line 75
    .line 76
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v0, v0, [J

    .line 79
    .line 80
    fill-array-data v0, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_3
    const/4 p0, 0x0

    .line 92
    return-object p0

    .line 93
    :cond_4
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v0, v0, [J

    .line 96
    .line 97
    fill-array-data v0, :array_4

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x6514fc55d149b2f8L    # 8.503947699075223E178
        -0x5440f206ac5166a3L    # -5.679199979123544E-98
    .end array-data

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
        0x1ec3fa250eed7b04L
        0x5c9340a1145bb92bL    # 8.955796431331259E137
        -0x4144b28bebf12cdbL    # -1.6273589411423093E-6
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
        0x404eeff46eb99b5bL    # 61.87464698851428
        0x27b34be2477b4314L
        -0x339cac2ac8ba0ea8L    # -9.705640726213529E59
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
        0x528bda3ce09d3c48L    # 4.432541175289361E89
        -0x70db832c0945e3cdL
        -0x2e9783d386bb2f3bL    # -1.4864484994422325E84
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_4
    .array-data 8
        -0xbf1665d25af59c2L
        0x3a3118011a573469L    # 2.1575366998743883E-28
        -0x5a81671b0f1fd9f1L
    .end array-data
.end method
