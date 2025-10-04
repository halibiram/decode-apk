.class final Lcom/google/android/gms/internal/ads/zzfvi;
.super Lcom/google/android/gms/internal/ads/zzfvu;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfvc;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfvq;

.field final synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfvl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfvl;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/ads/zzfvc;Lcom/google/android/gms/internal/ads/zzfvq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzb:Lcom/google/android/gms/internal/ads/zzfvq;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfvu;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Lcom/google/android/gms/internal/ads/zzfwe;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwe;->zze()Landroid/os/IInterface;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfvl;->zzb(Lcom/google/android/gms/internal/ads/zzfvl;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v6, v0, [J

    .line 29
    .line 30
    fill-array-data v6, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfvc;->zzb()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v0, v0, [J

    .line 50
    .line 51
    fill-array-data v0, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v3, 0x2

    .line 67
    new-array v3, v3, [J

    .line 68
    .line 69
    fill-array-data v3, :array_2

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfvc;->zza()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvk;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzb:Lcom/google/android/gms/internal/ads/zzfvq;

    .line 91
    .line 92
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfvk;-><init>(Lcom/google/android/gms/internal/ads/zzfvl;Lcom/google/android/gms/internal/ads/zzfvq;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1, v4, v0}, Lcom/google/android/gms/internal/ads/zzfum;->zze(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfuo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 101
    .line 102
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()Lcom/google/android/gms/internal/ads/zzfvt;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfvl;->zzb(Lcom/google/android/gms/internal/ads/zzfvl;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/4 v3, 0x1

    .line 111
    new-array v3, v3, [Ljava/lang/Object;

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    aput-object v1, v3, v4

    .line 115
    .line 116
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/4 v4, 0x5

    .line 119
    new-array v4, v4, [J

    .line 120
    .line 121
    fill-array-data v4, :array_3

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfvt;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvi;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 135
    .line 136
    new-instance v2, Ljava/lang/RuntimeException;

    .line 137
    .line 138
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :array_0
    .array-data 8
        -0x3e7e58df9146194cL    # -3.702068584077206E7
        0x4a00796f9417b00L
        -0x12e6ad77afc62d97L    # -3.4917377843432865E217
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_1
    .array-data 8
        0x6ddd07e040f964e1L    # 1.6396657452484264E221
        -0x63eee18a1653806L
        -0x119df974db99e629L    # -5.212614130108852E223
    .end array-data

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
    .line 174
    .line 175
    .line 176
    .line 177
    :array_2
    .array-data 8
        -0x1afbfee13590eecbL    # -4.053147948649466E178
        -0x42b5e128700496aL    # -3.141726276606966E288
    .end array-data

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
    :array_3
    .array-data 8
        0x72bb0358e6cc8d65L    # 4.611163541616363E244
        0x8ad23f7b64c9ccL
        0x37eb8a17f78d256cL    # 2.5290970533301787E-39
        0x25f05c1840ec056eL    # 6.041967060859678E-126
        -0x7952c0ab41949ef4L
    .end array-data
.end method
