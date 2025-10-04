.class public final Lcom/google/android/gms/internal/ads/zzeva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeva;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzeva;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzeva;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzeva;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzeva;->zze:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    check-cast p1, Landroid/os/Bundle;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeva;->zza:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeva;->zza:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v3, v0, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeva;->zzb:Z

    .line 32
    .line 33
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v3, v0, [J

    .line 36
    .line 37
    fill-array-data v3, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeva;->zzc:Z

    .line 51
    .line 52
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v0, v0, [J

    .line 55
    .line 56
    fill-array-data v0, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeva;->zzb:Z

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeva;->zzc:Z

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzjd:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 78
    .line 79
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeva;->zzd:Z

    .line 96
    .line 97
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    const/4 v2, 0x2

    .line 100
    new-array v2, v2, [J

    .line 101
    .line 102
    fill-array-data v2, :array_3

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    xor-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzjh:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 118
    .line 119
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeva;->zze:Z

    .line 136
    .line 137
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    const/4 v2, 0x4

    .line 140
    new-array v2, v2, [J

    .line 141
    .line 142
    fill-array-data v2, :array_4

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    .line 154
    .line 155
    :cond_3
    return-void

    .line 156
    nop

    .line 157
    :array_0
    .array-data 8
        -0x6ceddc044bb819c0L    # -8.22230925115869E-217
        -0x175ea0e85b2826a5L    # -1.014479740463951E196
        0x7cda946cb81faf9eL    # 2.6524502086972236E293
    .end array-data

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
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
    .array-data 8
        0x19e3d75a91ea1b96L    # 5.836885260555489E-184
        0x5142d6d3c1729b63L    # 2.859239598622011E83
        0x325cc981d98c9ffaL    # 4.271097113973815E-66
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_2
    .array-data 8
        -0x6cdeb776ab169086L
        -0x44e78b2341316afeL    # -5.05748427855791E-24
        -0x243882885b19656dL    # -1.3338686964384432E134
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
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
    :array_3
    .array-data 8
        0x5c87752a9ac6880eL    # 5.455984378673534E137
        0x2724c28108475a77L
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
    :array_4
    .array-data 8
        -0x181398abefea80f4L    # -4.0496830934181515E192
        -0x1d427fe424e66078L    # -4.348964673533744E167
        0x1ef83090ccc0209cL
        0x8d1c2f4e9ff44baL
    .end array-data
.end method
