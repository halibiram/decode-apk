.class public final Lcoil3/decode/ExifUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001J\'\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcoil3/decode/ExifUtils;",
        "",
        "",
        "mimeType",
        "Lokio/BufferedSource;",
        "source",
        "Lcoil3/decode/ExifOrientationStrategy;",
        "strategy",
        "Lcoil3/decode/ExifData;",
        "getExifData",
        "(Ljava/lang/String;Lokio/BufferedSource;Lcoil3/decode/ExifOrientationStrategy;)Lcoil3/decode/ExifData;",
        "Landroid/graphics/Bitmap;",
        "inBitmap",
        "exifData",
        "reverseTransformations",
        "(Landroid/graphics/Bitmap;Lcoil3/decode/ExifData;)Landroid/graphics/Bitmap;",
        "coil-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExifUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExifUtils.kt\ncoil3/decode/ExifUtils\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,114:1\n89#2:115\n89#2:116\n42#2,3:117\n*S KotlinDebug\n*F\n+ 1 ExifUtils.kt\ncoil3/decode/ExifUtils\n*L\n60#1:115\n62#1:116\n65#1:117,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil3/decode/ExifUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/decode/ExifUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcoil3/decode/ExifUtils;->INSTANCE:Lcoil3/decode/ExifUtils;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcoil3/decode/ExifUtils;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Landroid/graphics/Paint;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getExifData(Ljava/lang/String;Lokio/BufferedSource;Lcoil3/decode/ExifOrientationStrategy;)Lcoil3/decode/ExifData;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/decode/ExifOrientationStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p3, p1, p2}, Lcoil3/decode/ExifOrientationStrategy;->supports(Ljava/lang/String;Lokio/BufferedSource;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroidx/exifinterface/media/ExifInterface;

    .line 8
    .line 9
    new-instance p3, L뒤됩둡뒀딜돳땟뎸딌땬득뒨땜땨땰땅돛뒐뎸뒷딹든뒝딹땱딝돸드돳뒷듌뒙따땋땩땸딸뎰됨돤둡땨땨됐뒹땦됐뒷둔뒬듔딁돝뒨돸될딹뒷딹땡뒉딹드딀드돝딸뒼딻땟땧딹땄돨땲뒛땤둣땨듨뒈뒙됫뎽득둡딅뒐뎨도뒨땟돴득듐뒀둥뒛땍딟뎽되땯돝딸따딸뎨땰땄딟뒨땳돠둠뒙돷뒨땔돴땩되땳땰뒐돷뒵뒤땯따;

    .line 10
    .line 11
    invoke-interface {p2}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p3, p2}, L뒤됩둡뒀딜돳땟뎸딌땬득뒨땜땨땰땅돛뒐뎸뒷딹든뒝딹땱딝돸드돳뒷듌뒙따땋땩땸딸뎰됨돤둡땨땨됐뒹땦됐뒷둔뒬듔딁돝뒨돸될딹뒷딹땡뒉딹드딀드돝딸뒼딻땟땧딹땄돨땲뒛땤둣땨듨뒈뒙됫뎽득둡딅뒐뎨도뒨땟돴득듐뒀둥뒛땍딟뎽되땯돝딸따딸뎨땰땄딟뒨땳돠둠뒙돷뒨땔돴땩되땳땰뒐돷뒵뒤땯따;-><init>(Ljava/io/InputStream;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lcoil3/decode/ExifData;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface;->isFlipped()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-direct {p2, p3, p1}, Lcoil3/decode/ExifData;-><init>(ZI)V

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_0
    sget-object p1, Lcoil3/decode/ExifData;->NONE:Lcoil3/decode/ExifData;

    .line 40
    .line 41
    return-object p1
.end method

.method public final reverseTransformations(Landroid/graphics/Bitmap;Lcoil3/decode/ExifData;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/decode/ExifData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcoil3/decode/ExifData;->isFlipped()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Lcoil3/decode/ExifUtilsKt;->isRotated(Lcoil3/decode/ExifData;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    const/high16 v2, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr v1, v2

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    div-float/2addr v3, v2

    .line 33
    invoke-virtual {p2}, Lcoil3/decode/ExifData;->isFlipped()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/high16 v2, -0x40800000    # -1.0f

    .line 40
    .line 41
    const/high16 v4, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {p2}, Lcoil3/decode/ExifUtilsKt;->isRotated(Lcoil3/decode/ExifData;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Lcoil3/decode/ExifData;->getRotationDegrees()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-float v2, v2

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    int-to-float v3, v3

    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 77
    .line 78
    .line 79
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 80
    .line 81
    cmpg-float v3, v2, v4

    .line 82
    .line 83
    if-nez v3, :cond_3

    .line 84
    .line 85
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 86
    .line 87
    cmpg-float v3, v3, v4

    .line 88
    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    neg-float v2, v2

    .line 93
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 94
    .line 95
    neg-float v1, v1

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-static {p2}, Lcoil3/decode/ExifUtilsKt;->isSwapped(Lcoil3/decode/ExifData;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {p1}, Lcoil3/util/BitmapsKt;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-static {p1}, Lcoil3/util/BitmapsKt;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    .line 139
    .line 140
    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    .line 142
    .line 143
    sget-object v2, Lcoil3/decode/ExifUtils;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Landroid/graphics/Paint;

    .line 144
    .line 145
    invoke-virtual {v1, p1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    .line 150
    .line 151
    return-object p2
.end method
