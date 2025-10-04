.class final Lcom/google/android/gms/internal/ads/zzfk;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 3

    .line 1
    invoke-static {p1}, L땸딀딄땳둘땮땲듼땸딟땔땀뒈딽딃땱땍뎹돵땣땧땲딜돛딐둑딄뎠듌뒾돳뒀듸도뎡딜땭땡뒘딟돝뎠둠땸땵듻땧딜듸뒻뎹됫땍땨디뒻듽딠듸땧땝땣딞땅땟땹든따뒷뎠땻뎬득땱땣든땠뒈뒘뒐듻땡뒙됴둡땄돴돼땵딅땱돴됐땍뒈듼뎬돼땲뒀딌뒙듼딐딻딁드됩뎰땄뎸뒐뒘딽듐뒷땃딸딌땩뒝땱뒝땹듻딟땹땐땳됩;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/telephony/TelephonyDisplayInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x3

    .line 6
    const/4 v1, 0x5

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    .line 19
    .line 20
    if-eq v2, p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/16 v1, 0xa

    .line 24
    .line 25
    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfn;->zzc(Lcom/google/android/gms/internal/ads/zzfn;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
