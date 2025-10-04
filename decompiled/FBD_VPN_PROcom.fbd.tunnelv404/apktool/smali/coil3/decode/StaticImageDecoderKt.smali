.class public final Lcoil3/decode/StaticImageDecoderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "toImageDecoderSourceOrNull",
        "Landroid/graphics/ImageDecoder$Source;",
        "Lcoil3/decode/ImageSource;",
        "options",
        "Lcoil3/request/Options;",
        "animated",
        "",
        "coil-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toImageDecoderSourceOrNull(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)Landroid/graphics/ImageDecoder$Source;
    .locals 3
    .param p0    # Lcoil3/decode/ImageSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Lcoil3/annotation/InternalCoilApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->fileOrNull()Lokio/Path;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lokio/Path;->toFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, L딨딽땅딌딄딤땩들딟땲돝됐딞듌돸딝듻땥됴땨땫돛땅돵딄뒀뎡딝될뒐됐땬딌땅뎸땲땹뎻땠돴듨듼딞돴땲땄뎨돛듰딝뎡될딃땵도돨두땯뒋뒾뎻딤땀뒈돷듔듰둥땩뎨땣땪될땥돰뒛땝뎸땄땨땹땫된됴둠땋뒘딤되딄뒤땱듼땻땬둡땮득땦둘뒋딐땰뒷딃땃땤뒋뎽된돳든뎨땩됨땔땥디뒉땥되딜둬딞뒹땰든뎸땀돰;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->getMetadata()Lcoil3/decode/ImageSource$Metadata;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    instance-of v0, p0, Lcoil3/decode/AssetMetadata;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcoil3/request/Options;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p0, Lcoil3/decode/AssetMetadata;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcoil3/decode/AssetMetadata;->getFilePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p1, p0}, L땤뒾듼땯도딞둑뎹땥뒀뒉딅둔땠듬딝둥땟뒵딝됫딟뎹딐도돴된든뎹뎽땟도땠땵뎠돛땧뒻뒾땄뎨땱듰둠땡딅땣뒐땐땫땡땵드돨됴딠땝뒾땬된딜뒹뎨딞딐뒷듟뒨듌든땤뒉땟땨딹듬든돤딌둠뎻딌뎻따땮딸딟땁두돴뎻땋딄돠땝뒨땃딽두땰땝뒾돷땜땣돸땠딟뒷딠땠땡돳땹땳땁땦땤땟뒷뒋땲땁땪디돵돼딐딨뎠;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    instance-of v0, p0, Lcoil3/decode/ContentMetadata;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v1, 0x1d

    .line 58
    .line 59
    if-lt v0, v1, :cond_2

    .line 60
    .line 61
    :try_start_0
    check-cast p0, Lcoil3/decode/ContentMetadata;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcoil3/decode/ContentMetadata;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    sget p2, Landroid/system/OsConstants;->SEEK_SET:I

    .line 76
    .line 77
    invoke-static {p1, v0, v1, p2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 78
    .line 79
    .line 80
    new-instance p1, L돴됨돵딎딸둘땀땠돠뎠뒀듼땝돸돷땮듰땣돶땟뒤딀뎽듬땪듐땭딠땳듌딟딅듐돼득뎽땫뒹둡듽들딐돝돵딟돛땝땫돴땵돝둠됫땣땔된딽뎻듻둑듰땃뎠듔땩땔뒹뒻뒛듐땮둠뎰돸든뎨듻딜딅득딄돨뒝뒝뒛듻됩땬뎽땵따땰듸땃땅땳뒀뎸뒷돠땄둬될될땮땡딁땮돳딀뎨둡땝뒼듼돰듟뒘땄듸됐딤딌돝뒝돝뎬됫듼뎨;

    .line 81
    .line 82
    const/4 p2, 0x2

    .line 83
    invoke-direct {p1, p0, p2}, L돴됨돵딎딸둘땀땠돠뎠뒀듼땝돸돷땮듰땣돶땟뒤딀뎽듬땪듐땭딠땳듌딟딅듐돼득뎽땫뒹둡듽들딐돝돵딟돛땝땫돴땵돝둠됫땣땔된딽뎻듻둑듰땃뎠듔땩땔뒹뒻뒛듐땮둠뎰돸든뎨듻딜딅득딄돨뒝뒝뒛듻됩땬뎽땵따땰듸땃땅땳뒀뎸뒷돠땄둬될될땮땡딁땮돳딀뎨둡땝뒼듼돰듟뒘땄듸됐딤딌돝뒝돝뎬됫듼뎨;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(L돴됨돵딎딸둘땀땠돠뎠뒀듼땝돸돷땮듰땣돶땟뒤딀뎽듬땪듐땭딠땳듌딟딅듐돼득뎽땫뒹둡듽들딐돝돵딟돛땝땫돴땵돝둠됫땣땔된딽뎻듻둑듰땃뎠듔땩땔뒹뒻뒛듐땮둠뎰돸든뎨듻딜딅득딄돨뒝뒝뒛듻됩땬뎽땵따땰듸땃땅땳뒀뎸뒷돠땄둬될될땮땡딁땮돳딀뎨둡땝뒼듼돰듟뒘땄듸됐딤딌돝뒝돝뎬됫듼뎨;)Landroid/graphics/ImageDecoder$Source;

    .line 87
    .line 88
    .line 89
    move-result-object p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object p0

    .line 91
    :cond_2
    instance-of v0, p0, Lcoil3/decode/ResourceMetadata;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    move-object v0, p0

    .line 96
    check-cast v0, Lcoil3/decode/ResourceMetadata;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcoil3/decode/ResourceMetadata;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcoil3/request/Options;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1}, Lcoil3/request/Options;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v0}, Lcoil3/decode/ResourceMetadata;->getResId()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-static {p0, p1}, L땤뒾듼땯도딞둑뎹땥뒀뒉딅둔땠듬딝둥땟뒵딝됫딟뎹딐도돴된든뎹뎽땟도땠땵뎠돛땧뒻뒾땄뎨땱듰둠땡딅땣뒐땐땫땡땵드돨됴딠땝뒾땬된딜뒹뎨딞딐뒷듟뒨듌든땤뒉땟땨딹듬든돤딌둠뎻딌뎻따땮딸딟땁두돴뎻땋딄돠땝뒨땃딽두땰땝뒾돷땜땣돸땠딟뒷딠땠땡돳땹땳땁땦땤땟뒷뒋땲땁땪디돵돼딐딨뎠;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_3
    instance-of p1, p0, Lcoil3/decode/ByteBufferMetadata;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 138
    .line 139
    const/16 v0, 0x1e

    .line 140
    .line 141
    if-ge p1, v0, :cond_4

    .line 142
    .line 143
    if-eqz p2, :cond_4

    .line 144
    .line 145
    move-object p1, p0

    .line 146
    check-cast p1, Lcoil3/decode/ByteBufferMetadata;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcoil3/decode/ByteBufferMetadata;->getByteBuffer()Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    :cond_4
    check-cast p0, Lcoil3/decode/ByteBufferMetadata;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcoil3/decode/ByteBufferMetadata;->getByteBuffer()Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {p0}, L땤뒾듼땯도딞둑뎹땥뒀뒉딅둔땠듬딝둥땟뒵딝됫딟뎹딐도돴된든뎹뎽땟도땠땵뎠돛땧뒻뒾땄뎨땱듰둠땡딅땣뒐땐땫땡땵드돨됴딠땝뒾땬된딜뒹뎨딞딐뒷듟뒨듌든땤뒉땟땨딹듬든돤딌둠뎻딌뎻따땮딸딟땁두돴뎻땋딄돠땝뒨땃딽두땰땝뒾돷땜땣돸땠딟뒷딠땠땡돳땹땳땁땦땤땟뒷뒋땲땁땪디돵돼딐딨뎠;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :catch_0
    :cond_5
    const/4 p0, 0x0

    .line 170
    return-object p0
.end method
