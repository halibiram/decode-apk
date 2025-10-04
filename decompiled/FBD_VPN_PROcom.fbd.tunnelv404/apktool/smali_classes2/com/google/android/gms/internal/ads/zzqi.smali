.class final Lcom/google/android/gms/internal/ads/zzqi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# direct methods
.method public static zza(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lcom/google/android/gms/internal/ads/zzpg;
    .locals 4
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-static {p0, p1}, L땸땥듔따됨딽돨드뒉땦돛뒤되땹땐딠뒾딞둠딽듨뒛뒀두뒾듽딀돨딄땭딄땃딃뒀들땪둥됨딌땧뒝땠돛딃뒷땡돸딸뒷됫땦돨듔딁땱땭디뒹땝땠땐따뒬따듬뒹뒨딜됐딹됐뎰듔딤땳둑땝땋뒻돵듻딤땡되됨딤들딌뎸뎬땲돠땁둡뒼뒘땳들땔땳돛딸듔돳땯딎땸딟땬땳듽딠돸땱돼돤뒀둠득땲땃따땤돼듸딜딨땟돛딌;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpe;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpe;-><init>()V

    .line 13
    .line 14
    .line 15
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-le v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p0, v0, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_1
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzpe;->zza(Z)Lcom/google/android/gms/internal/ads/zzpe;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzpe;->zzb(Z)Lcom/google/android/gms/internal/ads/zzpe;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpe;->zzc(Z)Lcom/google/android/gms/internal/ads/zzpe;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzd()Lcom/google/android/gms/internal/ads/zzpg;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
