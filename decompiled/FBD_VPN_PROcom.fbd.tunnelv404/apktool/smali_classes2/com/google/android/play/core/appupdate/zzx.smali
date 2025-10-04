.class final Lcom/google/android/play/core/appupdate/zzx;
.super Lcom/google/android/play/core/appupdate/AppUpdateOptions;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:Z


# direct methods
.method public synthetic constructor <init>(IZLcom/google/android/play/core/appupdate/zzw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    iput-boolean p2, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    return-void
.end method


# virtual methods
.method public final allowAssetPackDeletion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    return v0
.end method

.method public final appUpdateType()I
    .locals 1
    .annotation build Lcom/google/android/play/core/install/model/AppUpdateType;
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->appUpdateType()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->allowAssetPackDeletion()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne v1, p1, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    if-eq v2, v3, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v4, 0x5

    .line 13
    new-array v5, v4, [J

    .line 14
    .line 15
    fill-array-data v5, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v3, v4, [J

    .line 34
    .line 35
    fill-array-data v3, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    new-array v1, v1, [J

    .line 55
    .line 56
    fill-array-data v1, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :array_0
    .array-data 8
        0x2129f5b8b9327e47L    # 6.34445515745839E-149
        -0x56f72bbf03af796L
        0x207c4bba8993ee59L
        0x4bceede549be795cL    # 1.5167674733274474E57
        0x13a4c10176719994L    # 4.816298653470743E-214
    .end array-data

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
    :array_1
    .array-data 8
        -0x9165407d7e3efabL    # -6.466983766758036E264
        -0x6f36bdfcbe152473L    # -8.329709981012556E-228
        0x59da3e0f349aedb0L    # 6.939083222976657E124
        0x2aa2d64d7b4e751aL    # 2.628245897521373E-103
        -0x86490a69a8df6eL
    .end array-data

    :array_2
    .array-data 8
        0x1b874aef34c7a2f5L    # 4.59846210006771E-176
        -0x4f405fd440cb1619L    # -6.991989642521682E-74
    .end array-data
.end method
