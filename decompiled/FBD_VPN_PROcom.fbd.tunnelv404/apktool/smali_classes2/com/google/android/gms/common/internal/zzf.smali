.class public final Lcom/google/android/gms/common/internal/zzf;
.super Lcom/google/android/gms/common/internal/zza;
.source "SourceFile"


# instance fields
.field public final zze:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/zza;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzf;->zze:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final zzd()Z
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzf;->zze:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-interface {v4}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object v5, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 15
    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    new-array v4, v4, [J

    .line 35
    .line 36
    fill-array-data v4, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v1, v1, [J

    .line 48
    .line 49
    fill-array-data v1, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v1, v2, [J

    .line 61
    .line 62
    fill-array-data v1, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    return v3

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/google/android/gms/common/internal/zzf;->zze:Landroid/os/IBinder;

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    iget-object v5, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 83
    .line 84
    invoke-static {v5, v1, v0, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 91
    .line 92
    invoke-static {v1, v2, v0, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getConnectionHint()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    const/4 v0, 0x1

    .line 126
    return v0

    .line 127
    :cond_3
    return v3

    .line 128
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v2, v2, [J

    .line 131
    .line 132
    fill-array-data v2, :array_3

    .line 133
    .line 134
    .line 135
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v0, v0, [J

    .line 144
    .line 145
    fill-array-data v0, :array_4

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    return v3

    .line 155
    :array_0
    .array-data 8
        -0x3e8340be30a5b66aL    # -3.0143516959542833E7
        -0x17480ed105f6ef98L
        0x391f8173c89e3d3cL    # 1.5169429747033189E-33
        -0x795682c2d50779eaL
        0x1fd82ab79da53bcfL
    .end array-data

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
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        -0x3d7a23419e87f2b8L    # -3.00472888089766E12
        0x2fc39e6f9ff5d71L
    .end array-data

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
    .line 190
    .line 191
    :array_2
    .array-data 8
        -0x362226ac7275b6c7L    # -6.816290901813289E47
        0x1a6d54c20740f6e2L
        -0x78203893efd6b89eL
    .end array-data

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
    .line 206
    .line 207
    :array_3
    .array-data 8
        0x67e941507ff0fcdbL    # 3.600782868964215E192
        0x44b025d1d9cfd0b8L    # 7.62555146023608E22
        0x6a6e2abc1d02c5a0L    # 4.7290970888645566E204
    .end array-data

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
    .line 222
    .line 223
    :array_4
    .array-data 8
        0x5dab2e55b0824a58L    # 1.6572701522077418E143
        0x3fb949d8edb66f5fL    # 0.09878307155162024
        -0x19362e968d49aafL    # -9.58117077883348E300
        -0x25827024532e105fL    # -8.004444434848241E127
    .end array-data
.end method
