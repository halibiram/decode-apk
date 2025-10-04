.class public final Lcom/google/android/gms/internal/ads/zzsx;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzb:Z

.field public final zzc:Lcom/google/android/gms/internal/ads/zzsv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zze:Lcom/google/android/gms/internal/ads/zzsx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzam;Ljava/lang/Throwable;ZI)V
    .locals 11
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzam;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2
    invoke-static {v1, v0, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 4
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 5
    invoke-static {p4, p3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    .line 6
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzsx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzsv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsx;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x17076121e4fe027L    # -4.224260087096611E301
        0x6be6a9ba188f03d5L    # 5.960521904986652E211
        -0x5ba56c9f8ae7511eL
        -0x1790d3f0c56a009dL    # -1.1377671105539158E195
    .end array-data

    :array_1
    .array-data 8
        -0x3855b41717c0c86bL    # -1.7477037037162213E37
        -0x378ab88ab11ea7e1L    # -1.1585462386647109E41
    .end array-data

    :array_2
    .array-data 8
        -0x6b477dd252b5eb88L    # -7.454867306267161E-209
        -0x66c40a7fdc558563L
        -0x3e487e1638c9e69eL    # -3.943899592113248E8
        -0xbe3e7e36afce629L    # -2.01146674296226E251
        0x2af611bd1f44cbf6L    # 9.853485358977034E-102
        -0xf5a6c70d5d1982eL    # -4.287712824967558E234
        0x450d69d79089bf49L    # 4.4448342143209175E24
        -0x4eeec431b4b58245L    # -2.4384703254439094E-72
        -0x4bc28e8e711f145eL    # -4.6905626594210746E-57
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzam;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzsv;)V
    .locals 11
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iget-object p3, p4, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzam;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    invoke-static {p3, v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 18
    sget p1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 19
    instance-of p1, p2, Landroid/media/MediaCodec$CodecException;

    if-eqz p1, :cond_0

    .line 20
    move-object p1, p2

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v9, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v8, p4

    .line 21
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzsx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzsv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsx;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x4a71802fd13567f8L
        -0x3f676b95edd3647dL    # -1573.1035849542538
        -0x230c80e37137ca01L    # -5.804373047191937E139
        0x274a06c124718475L
    .end array-data

    :array_1
    .array-data 8
        -0x7213262630c6089bL
        0x511a8656d161a10L
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzsv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsx;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzsv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzsx;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsx;->zza:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzb:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzsx;->zze:Lcom/google/android/gms/internal/ads/zzsx;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzsx;Lcom/google/android/gms/internal/ads/zzsx;)Lcom/google/android/gms/internal/ads/zzsx;
    .locals 9

    .line 1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzsv;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v8, Lcom/google/android/gms/internal/ads/zzsx;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsx;->zza:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v0, v8

    .line 19
    move-object v7, p1

    .line 20
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzsx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzsv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsx;)V

    .line 21
    .line 22
    .line 23
    return-object v8
.end method
