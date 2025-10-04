.class public final Lcom/google/android/gms/internal/ads/zzbtz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;


# instance fields
.field private final zza:Ljava/util/Date;

.field private final zzb:I

.field private final zzc:Ljava/util/Set;

.field private final zzd:Z

.field private final zze:Landroid/location/Location;

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbjb;

.field private final zzh:Ljava/util/List;

.field private final zzi:Z

.field private final zzj:Ljava/util/Map;

.field private final zzk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzbjb;Ljava/util/List;ZILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p10, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zza:Ljava/util/Date;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzb:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzc:Ljava/util/Set;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zze:Landroid/location/Location;

    .line 12
    .line 13
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzd:Z

    .line 14
    .line 15
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzf:I

    .line 16
    .line 17
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzg:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 18
    .line 19
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzi:Z

    .line 20
    .line 21
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzk:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzh:Ljava/util/List;

    .line 29
    .line 30
    new-instance p1, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzj:Ljava/util/Map;

    .line 36
    .line 37
    if-eqz p8, :cond_3

    .line 38
    .line 39
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Ljava/lang/String;

    .line 54
    .line 55
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array p4, p10, [J

    .line 58
    .line 59
    fill-array-data p4, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array p4, p10, [J

    .line 78
    .line 79
    fill-array-data p4, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    const/4 p4, 0x3

    .line 90
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    array-length p3, p2

    .line 95
    if-ne p3, p4, :cond_0

    .line 96
    .line 97
    aget-object p3, p2, p10

    .line 98
    .line 99
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array p5, p10, [J

    .line 102
    .line 103
    fill-array-data p5, :array_2

    .line 104
    .line 105
    .line 106
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    const/4 p4, 0x1

    .line 118
    if-eqz p3, :cond_1

    .line 119
    .line 120
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzj:Ljava/util/Map;

    .line 121
    .line 122
    aget-object p2, p2, p4

    .line 123
    .line 124
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    aget-object p3, p2, p10

    .line 131
    .line 132
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array p6, p10, [J

    .line 135
    .line 136
    fill-array-data p6, :array_3

    .line 137
    .line 138
    .line 139
    invoke-direct {p5, p6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p5

    .line 146
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p3

    .line 150
    if-eqz p3, :cond_0

    .line 151
    .line 152
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzj:Ljava/util/Map;

    .line 153
    .line 154
    aget-object p2, p2, p4

    .line 155
    .line 156
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzh:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    return-void

    .line 169
    :array_0
    .array-data 8
        0x607f3c04a5a191e5L    # 6.700567224423874E156
        0x101957d0ddb6d5fcL    # 4.080955790306592E-231
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
    :array_1
    .array-data 8
        0x73368ecaa39c0561L    # 9.857636726314502E246
        0x313d8c1d3dbb04e3L    # 1.672319114275804E-71
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
    :array_2
    .array-data 8
        0xda30e1631fde827L    # 5.58139883603561E-243
        0x5cd575516c00c20fL    # 1.5971025146788105E139
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
    :array_3
    .array-data 8
        0x7a1b5e7f841785f0L    # 1.5525193747527794E280
        -0x5f66cd9067ee895L    # -7.253681190421756E279
    .end array-data
.end method


# virtual methods
.method public final getAdVolume()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzej;->zzf()Lcom/google/android/gms/ads/internal/client/zzej;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzej;->zza()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getBirthday()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zza:Ljava/util/Date;

    return-object v0
.end method

.method public final getGender()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzb:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzc:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zze:Landroid/location/Location;

    return-object v0
.end method

.method public final getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzg:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbjb;->zza:I

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v2, v3, :cond_3

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    if-eq v2, v3, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzbjb;->zzg:Z

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 30
    .line 31
    .line 32
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbjb;->zzh:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbjb;->zzf:Lcom/google/android/gms/ads/internal/client/zzfk;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    new-instance v3, Lcom/google/android/gms/ads/VideoOptions;

    .line 42
    .line 43
    invoke-direct {v3, v2}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/internal/client/zzfk;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbjb;->zze:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzbjb;->zzb:Z

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 57
    .line 58
    .line 59
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbjb;->zzc:I

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 62
    .line 63
    .line 64
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbjb;->zzd:Z

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_1
    return-object v0
.end method

.method public final getNativeAdRequestOptions()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzg:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjb;->zza(Lcom/google/android/gms/internal/ads/zzbjb;)Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isAdMuted()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzej;->zzf()Lcom/google/android/gms/ads/internal/client/zzej;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzej;->zzw()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final isDesignedForFamilies()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzi:Z

    return v0
.end method

.method public final isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzd:Z

    return v0
.end method

.method public final isUnifiedNativeAdRequested()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzh:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x49a1af6099f39cc4L    # 5.048194434010805E46
        -0x1149cd9884413189L    # -2.0540401753677783E225
    .end array-data
.end method

.method public final taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzf:I

    return v0
.end method

.method public final zza()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzj:Ljava/util/Map;

    return-object v0
.end method

.method public final zzb()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzh:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x2be88c78b3efe32eL    # 3.5915358401842015E-97
        -0x46ffeb38dfd68274L    # -3.871399270440145E-34
    .end array-data
.end method
