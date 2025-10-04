.class public final Lcom/google/android/material/slider/BasicLabelFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/slider/LabelFormatter;


# static fields
.field private static final BILLION:I = 0x3b9aca00

.field private static final MILLION:I = 0xf4240

.field private static final THOUSAND:I = 0x3e8

.field private static final TRILLION:J = 0xe8d4a51000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const v3, 0x5368d4a5    # 1.0E12f

    .line 5
    .line 6
    .line 7
    cmpl-float v4, p1, v3

    .line 8
    .line 9
    if-ltz v4, :cond_0

    .line 10
    .line 11
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    div-float/2addr p1, v3

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p1, v1, v0

    .line 35
    .line 36
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 42
    .line 43
    .line 44
    cmpl-float v4, p1, v3

    .line 45
    .line 46
    if-ltz v4, :cond_1

    .line 47
    .line 48
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 49
    .line 50
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v2, v2, [J

    .line 53
    .line 54
    fill-array-data v2, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    div-float/2addr p1, v3

    .line 65
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object p1, v1, v0

    .line 72
    .line 73
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_1
    const v3, 0x49742400    # 1000000.0f

    .line 79
    .line 80
    .line 81
    cmpl-float v4, p1, v3

    .line 82
    .line 83
    if-ltz v4, :cond_2

    .line 84
    .line 85
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 86
    .line 87
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v2, v2, [J

    .line 90
    .line 91
    fill-array-data v2, :array_2

    .line 92
    .line 93
    .line 94
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    div-float/2addr p1, v3

    .line 102
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object p1, v1, v0

    .line 109
    .line 110
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_2
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 116
    .line 117
    cmpl-float v4, p1, v3

    .line 118
    .line 119
    if-ltz v4, :cond_3

    .line 120
    .line 121
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 122
    .line 123
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v2, v2, [J

    .line 126
    .line 127
    fill-array-data v2, :array_3

    .line 128
    .line 129
    .line 130
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    div-float/2addr p1, v3

    .line 138
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-array v1, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object p1, v1, v0

    .line 145
    .line 146
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 152
    .line 153
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    new-array v2, v2, [J

    .line 156
    .line 157
    fill-array-data v2, :array_4

    .line 158
    .line 159
    .line 160
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-array v1, v1, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object p1, v1, v0

    .line 174
    .line 175
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    return-object p1

    .line 180
    nop

    .line 181
    :array_0
    .array-data 8
        -0x3445694938edbca3L    # -6.519536759232039E56
        0x178cc241366ccc36L    # 3.077823402729261E-195
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_1
    .array-data 8
        -0x435c8b6c51f58f6fL    # -1.3499880668643066E-16
        -0x3415099987b162feL    # -5.2889488200062075E57
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_2
    .array-data 8
        0x4b9cc3eaf4af56b6L    # 1.7633079977842763E56
        0x6ad9c3d65d2af2dcL    # 5.169958009350247E206
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_3
    .array-data 8
        -0x5ae9725457cfecf1L    # -5.083863887466829E-130
        0xd7a52a97929cd01L
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_4
    .array-data 8
        0xd7f88598124eaedL
        0x132509684b80739dL
    .end array-data
.end method
