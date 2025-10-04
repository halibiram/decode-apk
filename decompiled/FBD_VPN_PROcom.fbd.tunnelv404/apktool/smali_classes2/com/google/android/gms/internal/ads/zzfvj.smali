.class final Lcom/google/android/gms/internal/ads/zzfvj;
.super Lcom/google/android/gms/internal/ads/zzfvu;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfvs;

.field final synthetic zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfvq;

.field final synthetic zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfvl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfvl;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/ads/zzfvs;ILcom/google/android/gms/internal/ads/zzfvq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Lcom/google/android/gms/internal/ads/zzfvs;

    .line 2
    .line 3
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zzb:I

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zzc:Lcom/google/android/gms/internal/ads/zzfvq;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zze:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfvu;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zze:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Lcom/google/android/gms/internal/ads/zzfwe;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfwe;->zze()Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Lcom/google/android/gms/internal/ads/zzfvs;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zze:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 17
    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfvl;->zzb(Lcom/google/android/gms/internal/ads/zzfvl;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zzb:I

    .line 23
    .line 24
    new-instance v6, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v8, v1, [J

    .line 32
    .line 33
    fill-array-data v8, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfvs;->zzb()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v8, v1, [J

    .line 53
    .line 54
    fill-array-data v8, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v1, v1, [J

    .line 70
    .line 71
    fill-array-data v1, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v6, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v4, v0, [J

    .line 87
    .line 88
    fill-array-data v4, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfvs;->zza()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v6, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvk;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zze:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 108
    .line 109
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zzc:Lcom/google/android/gms/internal/ads/zzfvq;

    .line 110
    .line 111
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfvk;-><init>(Lcom/google/android/gms/internal/ads/zzfvl;Lcom/google/android/gms/internal/ads/zzfvq;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzg(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfuo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zzb:I

    .line 120
    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()Lcom/google/android/gms/internal/ads/zzfvt;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zze:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 130
    .line 131
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfvl;->zzb(Lcom/google/android/gms/internal/ads/zzfvl;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    aput-object v2, v0, v5

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    aput-object v4, v0, v2

    .line 142
    .line 143
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    const/4 v4, 0x7

    .line 146
    new-array v4, v4, [J

    .line 147
    .line 148
    fill-array-data v4, :array_4

    .line 149
    .line 150
    .line 151
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfvt;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 162
    .line 163
    new-instance v2, Ljava/lang/RuntimeException;

    .line 164
    .line 165
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    nop

    .line 173
    :array_0
    .array-data 8
        0x2483f4e50439e978L    # 8.7861557608397E-133
        0x4751dac922547174L    # 3.708261894957175E35
        -0x79e4bbafebdef390L
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
    :array_1
    .array-data 8
        -0x756a2f04bb9f607aL
        0x256a50913b0d01cbL
        0x7c06692637606dd4L    # 2.7299961566433444E289
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
    :array_2
    .array-data 8
        -0x3a2b10b2f0edb5caL    # -2.591598947021226E28
        0x7de17449be0f271dL    # 2.283005290860079E298
        -0x1ada4c7a16f640d5L    # -1.758783687081815E179
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
    .line 218
    .line 219
    .line 220
    .line 221
    :array_3
    .array-data 8
        -0x2d8c6098dc62a547L    # -1.561409363528713E89
        -0x3c67fb190123572bL    # -4.3269053477881171E17
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_4
    .array-data 8
        -0x5ebad69d34a30114L
        0x53f8e8934ac49cfL
        0x1cdae3e5155c1ac9L
        0x8fdd31e8ff23d10L
        -0x4a70e4f6a2ebc6aeL    # -1.0392247630324009E-50
        -0x4a1939b30f447d89L    # -4.8696942358404745E-49
        0x773edf2c23c82adeL    # 2.4886147788944568E266
    .end array-data
.end method
