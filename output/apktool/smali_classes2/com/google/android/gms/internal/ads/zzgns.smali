.class public final Lcom/google/android/gms/internal/ads/zzgns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnr;-><init>(Lcom/google/android/gms/internal/ads/zzgnq;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgns;->zza:Lcom/google/android/gms/internal/ads/zzgrx;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzggx;)Lcom/google/android/gms/internal/ads/zzgsd;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgrz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgrz;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggx;->zzb()Lcom/google/android/gms/internal/ads/zzgrw;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgrz;->zzb(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgrz;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggx;->zzd()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_5

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/google/android/gms/internal/ads/zzggt;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzggt;->zzh()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    add-int/lit8 v4, v4, -0x2

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    if-eq v4, v5, :cond_3

    .line 57
    .line 58
    const/4 v5, 0x2

    .line 59
    if-eq v4, v5, :cond_2

    .line 60
    .line 61
    const/4 v5, 0x3

    .line 62
    if-ne v4, v5, :cond_1

    .line 63
    .line 64
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgge;->zzc:Lcom/google/android/gms/internal/ads/zzgge;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_0

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgge;->zzb:Lcom/google/android/gms/internal/ads/zzgge;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgge;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzggt;->zza()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzggt;->zzf()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/4 v8, 0x6

    .line 104
    new-array v8, v8, [J

    .line 105
    .line 106
    fill-array-data v8, :array_1

    .line 107
    .line 108
    .line 109
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_4

    .line 121
    .line 122
    const/16 v7, 0x22

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzggt;->zzc()Lcom/google/android/gms/internal/ads/zzgvz;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzgrz;->zza(Lcom/google/android/gms/internal/ads/zzgge;ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgrz;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggx;->zza()Lcom/google/android/gms/internal/ads/zzggt;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggx;->zza()Lcom/google/android/gms/internal/ads/zzggt;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggt;->zza()I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgrz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgrz;

    .line 155
    .line 156
    .line 157
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgrz;->zzd()Lcom/google/android/gms/internal/ads/zzgsd;

    .line 158
    .line 159
    .line 160
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-object p0

    .line 162
    :catch_0
    move-exception p0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :array_0
    .array-data 8
        0x482b2e2569ab3322L    # 4.62448132643603E39
        0x5438cd62a0cb76ccL    # 5.297736177466844E97
        -0x73d01af15ceb30d3L
        -0x2e8fa3639093d27fL    # -1.9865928802176975E84
    .end array-data

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
        -0x60aa445017861408L    # -9.893387417744166E-158
        -0x3b0b7bd7f4cb2334L    # -1.550162965331708E24
        -0x7c90046694e66fc9L    # -4.006183457612332E-292
        -0xcbed0d401883628L    # -1.501887559646042E247
        0x6f98cfa7a45a07a6L    # 3.761695508229353E229
        -0x21ef4236efe8a07cL    # -1.3065570668929618E145
    .end array-data
.end method
