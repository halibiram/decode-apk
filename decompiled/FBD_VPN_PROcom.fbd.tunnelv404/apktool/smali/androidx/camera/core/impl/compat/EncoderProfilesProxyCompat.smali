.class public final Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EncoderProfilesProxyCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static from(Landroid/media/CamcorderProfile;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3
    .param p0    # Landroid/media/CamcorderProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should use from(EncoderProfiles) on API "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "instead. CamcorderProfile is deprecated on API 31."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EncoderProfilesProxyCompat"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-static {p0}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompatBaseImpl;->from(Landroid/media/CamcorderProfile;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/media/EncoderProfiles;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3
    .param p0    # Landroid/media/EncoderProfiles;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompatApi33Impl;->from(Landroid/media/EncoderProfiles;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompatApi31Impl;->from(Landroid/media/EncoderProfiles;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to call from(EncoderProfiles) on API "

    const-string v2, ". Version 31 or higher required."

    .line 5
    invoke-static {v0, v1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
