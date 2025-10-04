.class final Lcom/google/android/gms/ads/internal/client/zzau;
.super Lcom/google/android/gms/ads/internal/client/zzax;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/view/View;

.field final synthetic zzb:Ljava/util/HashMap;

.field final synthetic zzc:Ljava/util/HashMap;

.field final synthetic zzd:Lcom/google/android/gms/ads/internal/client/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzb:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzc:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzax;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzt(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzfa;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzfa;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :array_0
    .array-data 8
        0x158f29dcf8d6ae93L    # 7.765323977369502E-205
        0x7e9457fac9c9e141L    # 5.449604503878152E301
        0x7f302c34b9866305L    # 4.436266317255754E304
        -0x7fd0ccd639bc9bb5L    # -8.677748046290357E-308
        0x2cf2869076cfd146L    # 3.552504192707732E-92
    .end array-data
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzc:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzb:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v2, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzce;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbjw;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final bridge synthetic zzc()Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzki:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/view/View;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzb:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzc:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/16 v5, 0xa

    .line 55
    .line 56
    new-array v5, v5, [J

    .line 57
    .line 58
    fill-array-data v5, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-object v5, Lcom/google/android/gms/ads/internal/client/zzat;->zza:Lcom/google/android/gms/ads/internal/client/zzat;

    .line 69
    .line 70
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzceg;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcee;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbjz;

    .line 75
    .line 76
    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjz;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zze(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbjw;

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcef; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    goto :goto_0

    .line 89
    :catch_2
    move-exception v0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxy;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzs(Lcom/google/android/gms/ads/internal/client/zzaw;Lcom/google/android/gms/internal/ads/zzbxy;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzp(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/internal/ads/zzbxy;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    const/4 v3, 0x7

    .line 114
    new-array v3, v3, [J

    .line 115
    .line 116
    fill-array-data v3, :array_1

    .line 117
    .line 118
    .line 119
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbxy;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    goto :goto_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/view/View;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzb:Ljava/util/HashMap;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzc:Ljava/util/HashMap;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzk(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/internal/ads/zzblm;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzblm;->zza(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzbjw;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :goto_1
    return-object v0

    .line 148
    nop

    .line 149
    :array_0
    .array-data 8
        0x20807d92fddaec8cL    # 3.935742337674391E-152
        -0x543221ac843afabaL
        -0xdbbb8302be7d483L
        -0x5bd9031ddec0f8adL
        0x55f0c9dc54c3c3bdL    # 9.626110834676826E105
        0x5e3487ca8280e67cL    # 6.40908519650154E145
        -0x47b7639e5d0152f8L
        0x3bbd2bd80ba25f35L    # 6.1772557144203715E-21
        -0x6f21c03af837625cL
        -0x37d3c8444adacd92L    # -4.8009942235650904E39
    .end array-data

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
    .line 192
    .line 193
    :array_1
    .array-data 8
        -0x525ce87b89c3458aL    # -7.49789996031325E-89
        -0x13e5edcb5adae8e1L    # -5.4855044886113916E212
        0x48cddb5ae4911f05L    # 5.201797895366888E42
        0x7c625ede731ad2b9L    # 1.4322167066366297E291
        -0x7e8c60ba80bd131aL
        0x37ffe9bfd9a04cb1L    # 5.861507741902812E-39
        0x757638a3979457c6L    # 6.673055197382943E257
    .end array-data
.end method
