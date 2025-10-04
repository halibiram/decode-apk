.class final Lcom/google/android/gms/internal/ads/zzkf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzko;Z)Lcom/google/android/gms/internal/ads/zzpb;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzox;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzox;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [J

    .line 11
    .line 12
    fill-array-data p1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 p2, 0x5

    .line 25
    new-array p2, p2, [J

    .line 26
    .line 27
    fill-array-data p2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Lcom/google/android/gms/internal/ads/zzpb;

    .line 41
    .line 42
    invoke-static {}, L딨뒘딨뒾될돶뒹뎽땟땯돼뒀뎹뎻돸땪뒨딤뒾듽돴돸딄됩딐뒾딐땔됫뒤딄도돼딜디뎹땝땠땩뒾땄땰돛땭딌땦둬딜돰드뒻땀땭땰드땍땍땡뒨딻땵듼듔됐뎬땠땦딽뎹돼땝됴디땅뎠들됩땩돶돰뎹도되딁딨된땠땻둣뎬될됐뒤뒙땀땬뎡뒷땫됨뒀딅돶듸듨딐땮됐땅둘둬뒵딨뒘듔뒐뒵뎸딟딎듌딀땳둡땀뒨땅딎땳땫;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Landroid/media/metrics/LogSessionId;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpb;-><init>(Landroid/media/metrics/LogSessionId;)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_0
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzko;->zzz(Lcom/google/android/gms/internal/ads/zzms;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpb;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzox;->zza()Landroid/media/metrics/LogSessionId;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzpb;-><init>(Landroid/media/metrics/LogSessionId;)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :array_0
    .array-data 8
        -0x423a9a1783d0066L    # -4.314947899425072E288
        -0x135d1b342b0fda01L    # -2.0353764347513984E215
        -0x7ad9f3ff2a8e7467L    # -7.413126103856793E-284
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x7ceb43fca4f2990bL    # -8.116265812503185E-294
        0x1308bbcd574700fcL    # 5.60532118960661E-217
        -0x63497b8d2afa5e1cL
        -0x1ba7dc3b0d3c8b70L    # -2.3881950456582155E175
        0x2e7d829b082fae3L
    .end array-data
.end method
