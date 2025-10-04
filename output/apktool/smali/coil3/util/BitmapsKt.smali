.class public final Lcoil3/util/BitmapsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0014\u001a\u00020\u0015*\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0017H\u0080\u0008\u001a\u000e\u0010\u0018\u001a\u00020\u0002*\u0004\u0018\u00010\u0002H\u0007\" \u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00028@X\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0018\u0010\u0007\u001a\u00020\u0001*\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\"\u0018\u0010\u000b\u001a\u00020\u000c*\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\r\"\u001e\u0010\u000e\u001a\u00020\u000c*\u00020\u00028FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u0010\"\u0018\u0010\u0011\u001a\u00020\u0002*\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "bytesPerPixel",
        "",
        "Landroid/graphics/Bitmap$Config;",
        "getBytesPerPixel$annotations",
        "(Landroid/graphics/Bitmap$Config;)V",
        "getBytesPerPixel",
        "(Landroid/graphics/Bitmap$Config;)I",
        "allocationByteCountCompat",
        "Landroid/graphics/Bitmap;",
        "getAllocationByteCountCompat",
        "(Landroid/graphics/Bitmap;)I",
        "isImmutable",
        "",
        "(Landroid/graphics/Bitmap;)Z",
        "isHardware",
        "isHardware$annotations",
        "(Landroid/graphics/Bitmap$Config;)Z",
        "safeConfig",
        "getSafeConfig",
        "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;",
        "toDrawable",
        "Landroid/graphics/drawable/BitmapDrawable;",
        "context",
        "Landroid/content/Context;",
        "toSoftware",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nbitmaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 bitmaps.kt\ncoil3/util/BitmapsKt\n+ 2 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,58:1\n27#2:59\n*S KotlinDebug\n*F\n+ 1 bitmaps.kt\ncoil3/util/BitmapsKt\n*L\n51#1:59\n*E\n"
    }
.end annotation


# direct methods
.method public static final getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    mul-int v1, v1, v0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lcoil3/util/BitmapsKt;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    mul-int p0, p0, v1

    .line 31
    .line 32
    :goto_0
    return p0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Cannot obtain size for recycled bitmap: "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " ["

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " x "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "] + "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0
.end method

.method public static final getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    :goto_0
    const/4 p0, 0x2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 15
    .line 16
    if-ne p0, v0, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v1, 0x1a

    .line 22
    .line 23
    if-lt v0, v1, :cond_3

    .line 24
    .line 25
    invoke-static {}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨()Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-ne p0, v0, :cond_3

    .line 30
    .line 31
    const/16 p0, 0x8

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 p0, 0x4

    .line 35
    :goto_1
    return p0
.end method

.method public static synthetic getBytesPerPixel$annotations(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    return-void
.end method

.method public static final getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public static final isHardware(Landroid/graphics/Bitmap$Config;)Z
    .locals 2
    .param p0    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻()Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static synthetic isHardware$annotations(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .annotation build Lcoil3/annotation/InternalCoilApi;
    .end annotation

    return-void
.end method

.method public static final isImmutable(Landroid/graphics/Bitmap;)Z
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public static final toDrawable(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcoil3/annotation/InternalCoilApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    :cond_1
    return-object p0
.end method
