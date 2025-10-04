.class public final Landroidx/camera/core/impl/utils/Exif;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/Exif$Speed;
    }
.end annotation


# static fields
.field private static final ALL_EXIF_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATETIME_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DO_NOT_COPY_EXIF_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_TIMESTAMP:J = -0x1L

.field private static final KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field private static final KNOTS:Ljava/lang/String; = "N"

.field private static final MILES_PER_HOUR:Ljava/lang/String; = "M"

.field private static final TAG:Ljava/lang/String; = "Exif"

.field public static final TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field private static final TIME_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExifInterface:Landroidx/exifinterface/media/ExifInterface;

.field private mRemoveTimestamp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/impl/utils/Exif$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$2;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/camera/core/impl/utils/Exif$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->TIME_FORMAT:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$3;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/camera/core/impl/utils/Exif$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->DATETIME_FORMAT:Ljava/lang/ThreadLocal;

    .line 21
    .line 22
    invoke-static {}, Landroidx/camera/core/impl/utils/Exif;->getAllExifTags()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->ALL_EXIF_TAGS:Ljava/util/List;

    .line 27
    .line 28
    const-string v9, "ThumbnailImageWidth"

    .line 29
    .line 30
    const-string v10, "ThumbnailOrientation"

    .line 31
    .line 32
    const-string v1, "ImageWidth"

    .line 33
    .line 34
    const-string v2, "ImageLength"

    .line 35
    .line 36
    const-string v3, "PixelXDimension"

    .line 37
    .line 38
    const-string v4, "PixelYDimension"

    .line 39
    .line 40
    const-string v5, "Compression"

    .line 41
    .line 42
    const-string v6, "JPEGInterchangeFormat"

    .line 43
    .line 44
    const-string v7, "JPEGInterchangeFormatLength"

    .line 45
    .line 46
    const-string v8, "ThumbnailImageLength"

    .line 47
    .line 48
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Landroidx/camera/core/impl/utils/Exif;->DO_NOT_COPY_EXIF_TAGS:Ljava/util/List;

    .line 57
    .line 58
    return-void
.end method

.method private constructor <init>(Landroidx/exifinterface/media/ExifInterface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/impl/utils/Exif;->mRemoveTimestamp:Z

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 8
    .line 9
    return-void
.end method

.method private attachLastModifiedTimestamp()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/Exif;->convertToExifDateTime(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 10
    .line 11
    const-string v4, "DateTime"

    .line 12
    .line 13
    invoke-virtual {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {v2}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifDateTime(Ljava/lang/String;)Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 30
    .line 31
    const-string v2, "SubSecTime"

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    return-void
.end method

.method private static convertFromExifDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static convertFromExifDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->DATETIME_FORMAT:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static convertFromExifTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->TIME_FORMAT:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static convertToExifDateTime(J)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->DATETIME_FORMAT:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    new-instance v1, Ljava/util/Date;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static createFromFile(Ljava/io/File;)Landroidx/camera/core/impl/utils/Exif;
    .locals 0
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/camera/core/impl/utils/Exif;->createFromFileString(Ljava/lang/String;)Landroidx/camera/core/impl/utils/Exif;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static createFromFileString(Ljava/lang/String;)Landroidx/camera/core/impl/utils/Exif;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/Exif;

    .line 2
    .line 3
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/Exif;-><init>(Landroidx/exifinterface/media/ExifInterface;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static createFromImageProxy(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/impl/utils/Exif;
    .locals 1
    .param p0    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object p0, p0, v0

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/Exif;

    .line 2
    .line 3
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/Exif;-><init>(Landroidx/exifinterface/media/ExifInterface;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static getAllExifTags()Ljava/util/List;
    .locals 153
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v151, "NewSubfileType"

    .line 2
    .line 3
    const-string v152, "SubfileType"

    .line 4
    .line 5
    const-string v0, "ImageWidth"

    .line 6
    .line 7
    const-string v1, "ImageLength"

    .line 8
    .line 9
    const-string v2, "BitsPerSample"

    .line 10
    .line 11
    const-string v3, "Compression"

    .line 12
    .line 13
    const-string v4, "PhotometricInterpretation"

    .line 14
    .line 15
    const-string v5, "Orientation"

    .line 16
    .line 17
    const-string v6, "SamplesPerPixel"

    .line 18
    .line 19
    const-string v7, "PlanarConfiguration"

    .line 20
    .line 21
    const-string v8, "YCbCrSubSampling"

    .line 22
    .line 23
    const-string v9, "YCbCrPositioning"

    .line 24
    .line 25
    const-string v10, "XResolution"

    .line 26
    .line 27
    const-string v11, "YResolution"

    .line 28
    .line 29
    const-string v12, "ResolutionUnit"

    .line 30
    .line 31
    const-string v13, "StripOffsets"

    .line 32
    .line 33
    const-string v14, "RowsPerStrip"

    .line 34
    .line 35
    const-string v15, "StripByteCounts"

    .line 36
    .line 37
    const-string v16, "JPEGInterchangeFormat"

    .line 38
    .line 39
    const-string v17, "JPEGInterchangeFormatLength"

    .line 40
    .line 41
    const-string v18, "TransferFunction"

    .line 42
    .line 43
    const-string v19, "WhitePoint"

    .line 44
    .line 45
    const-string v20, "PrimaryChromaticities"

    .line 46
    .line 47
    const-string v21, "YCbCrCoefficients"

    .line 48
    .line 49
    const-string v22, "ReferenceBlackWhite"

    .line 50
    .line 51
    const-string v23, "DateTime"

    .line 52
    .line 53
    const-string v24, "ImageDescription"

    .line 54
    .line 55
    const-string v25, "Make"

    .line 56
    .line 57
    const-string v26, "Model"

    .line 58
    .line 59
    const-string v27, "Software"

    .line 60
    .line 61
    const-string v28, "Artist"

    .line 62
    .line 63
    const-string v29, "Copyright"

    .line 64
    .line 65
    const-string v30, "ExifVersion"

    .line 66
    .line 67
    const-string v31, "FlashpixVersion"

    .line 68
    .line 69
    const-string v32, "ColorSpace"

    .line 70
    .line 71
    const-string v33, "Gamma"

    .line 72
    .line 73
    const-string v34, "PixelXDimension"

    .line 74
    .line 75
    const-string v35, "PixelYDimension"

    .line 76
    .line 77
    const-string v36, "ComponentsConfiguration"

    .line 78
    .line 79
    const-string v37, "CompressedBitsPerPixel"

    .line 80
    .line 81
    const-string v38, "MakerNote"

    .line 82
    .line 83
    const-string v39, "UserComment"

    .line 84
    .line 85
    const-string v40, "RelatedSoundFile"

    .line 86
    .line 87
    const-string v41, "DateTimeOriginal"

    .line 88
    .line 89
    const-string v42, "DateTimeDigitized"

    .line 90
    .line 91
    const-string v43, "OffsetTime"

    .line 92
    .line 93
    const-string v44, "OffsetTimeOriginal"

    .line 94
    .line 95
    const-string v45, "OffsetTimeDigitized"

    .line 96
    .line 97
    const-string v46, "SubSecTime"

    .line 98
    .line 99
    const-string v47, "SubSecTimeOriginal"

    .line 100
    .line 101
    const-string v48, "SubSecTimeDigitized"

    .line 102
    .line 103
    const-string v49, "ExposureTime"

    .line 104
    .line 105
    const-string v50, "FNumber"

    .line 106
    .line 107
    const-string v51, "ExposureProgram"

    .line 108
    .line 109
    const-string v52, "SpectralSensitivity"

    .line 110
    .line 111
    const-string v53, "PhotographicSensitivity"

    .line 112
    .line 113
    const-string v54, "OECF"

    .line 114
    .line 115
    const-string v55, "SensitivityType"

    .line 116
    .line 117
    const-string v56, "StandardOutputSensitivity"

    .line 118
    .line 119
    const-string v57, "RecommendedExposureIndex"

    .line 120
    .line 121
    const-string v58, "ISOSpeed"

    .line 122
    .line 123
    const-string v59, "ISOSpeedLatitudeyyy"

    .line 124
    .line 125
    const-string v60, "ISOSpeedLatitudezzz"

    .line 126
    .line 127
    const-string v61, "ShutterSpeedValue"

    .line 128
    .line 129
    const-string v62, "ApertureValue"

    .line 130
    .line 131
    const-string v63, "BrightnessValue"

    .line 132
    .line 133
    const-string v64, "ExposureBiasValue"

    .line 134
    .line 135
    const-string v65, "MaxApertureValue"

    .line 136
    .line 137
    const-string v66, "SubjectDistance"

    .line 138
    .line 139
    const-string v67, "MeteringMode"

    .line 140
    .line 141
    const-string v68, "LightSource"

    .line 142
    .line 143
    const-string v69, "Flash"

    .line 144
    .line 145
    const-string v70, "SubjectArea"

    .line 146
    .line 147
    const-string v71, "FocalLength"

    .line 148
    .line 149
    const-string v72, "FlashEnergy"

    .line 150
    .line 151
    const-string v73, "SpatialFrequencyResponse"

    .line 152
    .line 153
    const-string v74, "FocalPlaneXResolution"

    .line 154
    .line 155
    const-string v75, "FocalPlaneYResolution"

    .line 156
    .line 157
    const-string v76, "FocalPlaneResolutionUnit"

    .line 158
    .line 159
    const-string v77, "SubjectLocation"

    .line 160
    .line 161
    const-string v78, "ExposureIndex"

    .line 162
    .line 163
    const-string v79, "SensingMethod"

    .line 164
    .line 165
    const-string v80, "FileSource"

    .line 166
    .line 167
    const-string v81, "SceneType"

    .line 168
    .line 169
    const-string v82, "CFAPattern"

    .line 170
    .line 171
    const-string v83, "CustomRendered"

    .line 172
    .line 173
    const-string v84, "ExposureMode"

    .line 174
    .line 175
    const-string v85, "WhiteBalance"

    .line 176
    .line 177
    const-string v86, "DigitalZoomRatio"

    .line 178
    .line 179
    const-string v87, "FocalLengthIn35mmFilm"

    .line 180
    .line 181
    const-string v88, "SceneCaptureType"

    .line 182
    .line 183
    const-string v89, "GainControl"

    .line 184
    .line 185
    const-string v90, "Contrast"

    .line 186
    .line 187
    const-string v91, "Saturation"

    .line 188
    .line 189
    const-string v92, "Sharpness"

    .line 190
    .line 191
    const-string v93, "DeviceSettingDescription"

    .line 192
    .line 193
    const-string v94, "SubjectDistanceRange"

    .line 194
    .line 195
    const-string v95, "ImageUniqueID"

    .line 196
    .line 197
    const-string v96, "CameraOwnerName"

    .line 198
    .line 199
    const-string v97, "BodySerialNumber"

    .line 200
    .line 201
    const-string v98, "LensSpecification"

    .line 202
    .line 203
    const-string v99, "LensMake"

    .line 204
    .line 205
    const-string v100, "LensModel"

    .line 206
    .line 207
    const-string v101, "LensSerialNumber"

    .line 208
    .line 209
    const-string v102, "GPSVersionID"

    .line 210
    .line 211
    const-string v103, "GPSLatitudeRef"

    .line 212
    .line 213
    const-string v104, "GPSLatitude"

    .line 214
    .line 215
    const-string v105, "GPSLongitudeRef"

    .line 216
    .line 217
    const-string v106, "GPSLongitude"

    .line 218
    .line 219
    const-string v107, "GPSAltitudeRef"

    .line 220
    .line 221
    const-string v108, "GPSAltitude"

    .line 222
    .line 223
    const-string v109, "GPSTimeStamp"

    .line 224
    .line 225
    const-string v110, "GPSSatellites"

    .line 226
    .line 227
    const-string v111, "GPSStatus"

    .line 228
    .line 229
    const-string v112, "GPSMeasureMode"

    .line 230
    .line 231
    const-string v113, "GPSDOP"

    .line 232
    .line 233
    const-string v114, "GPSSpeedRef"

    .line 234
    .line 235
    const-string v115, "GPSSpeed"

    .line 236
    .line 237
    const-string v116, "GPSTrackRef"

    .line 238
    .line 239
    const-string v117, "GPSTrack"

    .line 240
    .line 241
    const-string v118, "GPSImgDirectionRef"

    .line 242
    .line 243
    const-string v119, "GPSImgDirection"

    .line 244
    .line 245
    const-string v120, "GPSMapDatum"

    .line 246
    .line 247
    const-string v121, "GPSDestLatitudeRef"

    .line 248
    .line 249
    const-string v122, "GPSDestLatitude"

    .line 250
    .line 251
    const-string v123, "GPSDestLongitudeRef"

    .line 252
    .line 253
    const-string v124, "GPSDestLongitude"

    .line 254
    .line 255
    const-string v125, "GPSDestBearingRef"

    .line 256
    .line 257
    const-string v126, "GPSDestBearing"

    .line 258
    .line 259
    const-string v127, "GPSDestDistanceRef"

    .line 260
    .line 261
    const-string v128, "GPSDestDistance"

    .line 262
    .line 263
    const-string v129, "GPSProcessingMethod"

    .line 264
    .line 265
    const-string v130, "GPSAreaInformation"

    .line 266
    .line 267
    const-string v131, "GPSDateStamp"

    .line 268
    .line 269
    const-string v132, "GPSDifferential"

    .line 270
    .line 271
    const-string v133, "GPSHPositioningError"

    .line 272
    .line 273
    const-string v134, "InteroperabilityIndex"

    .line 274
    .line 275
    const-string v135, "ThumbnailImageLength"

    .line 276
    .line 277
    const-string v136, "ThumbnailImageWidth"

    .line 278
    .line 279
    const-string v137, "ThumbnailOrientation"

    .line 280
    .line 281
    const-string v138, "DNGVersion"

    .line 282
    .line 283
    const-string v139, "DefaultCropSize"

    .line 284
    .line 285
    const-string v140, "ThumbnailImage"

    .line 286
    .line 287
    const-string v141, "PreviewImageStart"

    .line 288
    .line 289
    const-string v142, "PreviewImageLength"

    .line 290
    .line 291
    const-string v143, "AspectFrame"

    .line 292
    .line 293
    const-string v144, "SensorBottomBorder"

    .line 294
    .line 295
    const-string v145, "SensorLeftBorder"

    .line 296
    .line 297
    const-string v146, "SensorRightBorder"

    .line 298
    .line 299
    const-string v147, "SensorTopBorder"

    .line 300
    .line 301
    const-string v148, "ISO"

    .line 302
    .line 303
    const-string v149, "JpgFromRaw"

    .line 304
    .line 305
    const-string v150, "Xmp"

    .line 306
    .line 307
    filled-new-array/range {v0 .. v152}, [Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    return-object v0
.end method

.method private parseTimestamp(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method private parseTimestamp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    if-nez p2, :cond_1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide v0

    :cond_1
    if-nez p1, :cond_2

    .line 2
    :try_start_1
    invoke-static {p2}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p1

    :catch_1
    return-wide v0

    .line 3
    :cond_2
    const-string v0, " "

    .line 4
    invoke-static {p1, v0, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/utils/Exif;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public attachLocation(Landroid/location/Location;)V
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setGpsInfo(Landroid/location/Location;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public attachTimestamp()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/Exif;->convertToExifDateTime(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 10
    .line 11
    const-string v4, "DateTimeOriginal"

    .line 12
    .line 13
    invoke-virtual {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 17
    .line 18
    const-string v4, "DateTimeDigitized"

    .line 19
    .line 20
    invoke-virtual {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-static {v2}, Landroidx/camera/core/impl/utils/Exif;->convertFromExifDateTime(Ljava/lang/String;)Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    sub-long/2addr v0, v2

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 37
    .line 38
    const-string v2, "SubSecTimeOriginal"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 44
    .line 45
    const-string v2, "SubSecTimeDigitized"

    .line 46
    .line 47
    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/camera/core/impl/utils/Exif;->mRemoveTimestamp:Z

    .line 52
    .line 53
    return-void
.end method

.method public copyToCroppedImage(Landroidx/camera/core/impl/utils/Exif;)V
    .locals 4
    .param p1    # Landroidx/camera/core/impl/utils/Exif;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/impl/utils/Exif;->ALL_EXIF_TAGS:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroidx/camera/core/impl/utils/Exif;->DO_NOT_COPY_EXIF_TAGS:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p1, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    iget-object v3, p1, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 50
    .line 51
    invoke-virtual {v3, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public flipHorizontally()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    const/4 v0, 0x7

    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    const/16 v0, 0x8

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    const/4 v0, 0x5

    .line 16
    goto :goto_0

    .line 17
    :pswitch_3
    const/4 v0, 0x6

    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    const/4 v0, 0x3

    .line 20
    goto :goto_0

    .line 21
    :pswitch_5
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :pswitch_6
    const/4 v0, 0x1

    .line 24
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 25
    .line 26
    const-string v2, "Orientation"

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flipVertically()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    const/4 v0, 0x5

    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    const/4 v0, 0x6

    .line 13
    goto :goto_0

    .line 14
    :pswitch_2
    const/4 v0, 0x7

    .line 15
    goto :goto_0

    .line 16
    :pswitch_3
    const/16 v0, 0x8

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :pswitch_5
    const/4 v0, 0x2

    .line 22
    goto :goto_0

    .line 23
    :pswitch_6
    const/4 v0, 0x3

    .line 24
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 25
    .line 26
    const-string v2, "Orientation"

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "ImageDescription"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getExifInterface()Landroidx/exifinterface/media/ExifInterface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "ImageLength"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getLastModifiedTimestamp()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "DateTime"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Landroidx/camera/core/impl/utils/Exif;->parseTimestamp(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-wide v2

    .line 20
    :cond_0
    iget-object v2, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 21
    .line 22
    const-string v3, "SubSecTime"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    :goto_0
    const-wide/16 v4, 0x3e8

    .line 35
    .line 36
    cmp-long v6, v2, v4

    .line 37
    .line 38
    if-lez v6, :cond_1

    .line 39
    .line 40
    const-wide/16 v4, 0xa

    .line 41
    .line 42
    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    add-long/2addr v0, v2

    .line 45
    :catch_0
    :cond_2
    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 4
    .line 5
    const-string v2, "GPSProcessingMethod"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    invoke-virtual {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->getAltitude(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    iget-object v3, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 26
    .line 27
    const-string v8, "GPSSpeed"

    .line 28
    .line 29
    invoke-virtual {v3, v8, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    iget-object v3, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 34
    .line 35
    const-string v10, "GPSSpeedRef"

    .line 36
    .line 37
    invoke-virtual {v3, v10}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v10, "K"

    .line 42
    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    move-object v3, v10

    .line 46
    :cond_0
    iget-object v11, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 47
    .line 48
    const-string v12, "GPSDateStamp"

    .line 49
    .line 50
    invoke-virtual {v11, v12}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    iget-object v12, v0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 55
    .line 56
    const-string v13, "GPSTimeStamp"

    .line 57
    .line 58
    invoke-virtual {v12, v13}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    invoke-direct {v0, v11, v12}, Landroidx/camera/core/impl/utils/Exif;->parseTimestamp(Ljava/lang/String;Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v11

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    return-object v1

    .line 70
    :cond_1
    if-nez v1, :cond_2

    .line 71
    .line 72
    sget-object v1, Landroidx/camera/core/impl/utils/Exif;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    :cond_2
    new-instance v13, Landroid/location/Location;

    .line 75
    .line 76
    invoke-direct {v13, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    aget-wide v14, v2, v1

    .line 81
    .line 82
    invoke-virtual {v13, v14, v15}, Landroid/location/Location;->setLatitude(D)V

    .line 83
    .line 84
    .line 85
    const/4 v14, 0x1

    .line 86
    aget-wide v1, v2, v14

    .line 87
    .line 88
    invoke-virtual {v13, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 89
    .line 90
    .line 91
    cmpl-double v1, v6, v4

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {v13, v6, v7}, Landroid/location/Location;->setAltitude(D)V

    .line 96
    .line 97
    .line 98
    :cond_3
    cmpl-double v1, v8, v4

    .line 99
    .line 100
    if-eqz v1, :cond_a

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/16 v2, 0x4b

    .line 107
    .line 108
    if-eq v1, v2, :cond_6

    .line 109
    .line 110
    const/16 v2, 0x4d

    .line 111
    .line 112
    if-eq v1, v2, :cond_5

    .line 113
    .line 114
    const/16 v2, 0x4e

    .line 115
    .line 116
    if-eq v1, v2, :cond_4

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    const-string v1, "N"

    .line 120
    .line 121
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    const-string v1, "M"

    .line 130
    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    goto :goto_1

    .line 139
    :cond_6
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    const/4 v1, 0x2

    .line 146
    goto :goto_1

    .line 147
    :cond_7
    :goto_0
    const/4 v1, -0x1

    .line 148
    :goto_1
    if-eqz v1, :cond_9

    .line 149
    .line 150
    if-eq v1, v14, :cond_8

    .line 151
    .line 152
    invoke-static {v8, v9}, Landroidx/camera/core/impl/utils/Exif$Speed;->fromKilometersPerHour(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->toMetersPerSecond()D

    .line 157
    .line 158
    .line 159
    move-result-wide v1

    .line 160
    goto :goto_2

    .line 161
    :cond_8
    invoke-static {v8, v9}, Landroidx/camera/core/impl/utils/Exif$Speed;->fromKnots(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->toMetersPerSecond()D

    .line 166
    .line 167
    .line 168
    move-result-wide v1

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    invoke-static {v8, v9}, Landroidx/camera/core/impl/utils/Exif$Speed;->fromMilesPerHour(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->toMetersPerSecond()D

    .line 175
    .line 176
    .line 177
    move-result-wide v1

    .line 178
    :goto_2
    double-to-float v1, v1

    .line 179
    invoke-virtual {v13, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 180
    .line 181
    .line 182
    :cond_a
    const-wide/16 v1, -0x1

    .line 183
    .line 184
    cmp-long v3, v11, v1

    .line 185
    .line 186
    if-eqz v3, :cond_b

    .line 187
    .line 188
    invoke-virtual {v13, v11, v12}, Landroid/location/Location;->setTime(J)V

    .line 189
    .line 190
    .line 191
    :cond_b
    return-object v13
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "Xmp"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getOrientation()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "Orientation"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getRotation()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xb4

    .line 6
    .line 7
    const/16 v2, 0x5a

    .line 8
    .line 9
    const/16 v3, 0x10e

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :pswitch_0
    return v3

    .line 17
    :pswitch_1
    return v2

    .line 18
    :pswitch_2
    return v3

    .line 19
    :pswitch_3
    return v1

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimestamp()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "DateTimeOriginal"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Landroidx/camera/core/impl/utils/Exif;->parseTimestamp(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-wide v2

    .line 20
    :cond_0
    iget-object v2, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 21
    .line 22
    const-string v3, "SubSecTimeOriginal"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    :goto_0
    const-wide/16 v4, 0x3e8

    .line 35
    .line 36
    cmp-long v6, v2, v4

    .line 37
    .line 38
    if-lez v6, :cond_1

    .line 39
    .line 40
    const-wide/16 v4, 0xa

    .line 41
    .line 42
    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    add-long/2addr v0, v2

    .line 45
    :catch_0
    :cond_2
    return-wide v0
.end method

.method public getWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "ImageWidth"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isFlippedHorizontally()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public isFlippedVertically()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    return v2
.end method

.method public removeLocation()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "GPSProcessingMethod"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 10
    .line 11
    const-string v1, "GPSLatitude"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 17
    .line 18
    const-string v1, "GPSLatitudeRef"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 24
    .line 25
    const-string v1, "GPSLongitude"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 31
    .line 32
    const-string v1, "GPSLongitudeRef"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 38
    .line 39
    const-string v1, "GPSAltitude"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 45
    .line 46
    const-string v1, "GPSAltitudeRef"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 52
    .line 53
    const-string v1, "GPSSpeed"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 59
    .line 60
    const-string v1, "GPSSpeedRef"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 66
    .line 67
    const-string v1, "GPSDateStamp"

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 73
    .line 74
    const-string v1, "GPSTimeStamp"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public removeTimestamp()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "DateTime"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 10
    .line 11
    const-string v1, "DateTimeOriginal"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 17
    .line 18
    const-string v1, "DateTimeDigitized"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 24
    .line 25
    const-string v1, "SubSecTime"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 31
    .line 32
    const-string v1, "SubSecTimeOriginal"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 38
    .line 39
    const-string v1, "SubSecTimeDigitized"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Landroidx/camera/core/impl/utils/Exif;->mRemoveTimestamp:Z

    .line 46
    .line 47
    return-void
.end method

.method public rotate(I)V
    .locals 9

    .line 1
    rem-int/lit8 v0, p1, 0x5a

    .line 2
    .line 3
    const-string v1, "Orientation"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/camera/core/impl/utils/Exif;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Can only rotate in right angles (eg. 0, 90, 180, 270). "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " is unsupported."

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :goto_0
    const/4 v2, 0x5

    .line 51
    const/4 v3, 0x7

    .line 52
    const/4 v4, 0x4

    .line 53
    const/4 v5, 0x1

    .line 54
    const/4 v6, 0x2

    .line 55
    const/16 v7, 0x8

    .line 56
    .line 57
    const/4 v8, 0x6

    .line 58
    if-gez p1, :cond_1

    .line 59
    .line 60
    add-int/lit8 p1, p1, 0x5a

    .line 61
    .line 62
    packed-switch v0, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    const/16 v0, 0x8

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_0
    const/4 v0, 0x6

    .line 69
    goto :goto_0

    .line 70
    :pswitch_1
    const/4 v0, 0x2

    .line 71
    goto :goto_0

    .line 72
    :pswitch_2
    const/4 v0, 0x1

    .line 73
    goto :goto_0

    .line 74
    :pswitch_3
    const/4 v0, 0x4

    .line 75
    goto :goto_0

    .line 76
    :pswitch_4
    const/4 v0, 0x7

    .line 77
    goto :goto_0

    .line 78
    :pswitch_5
    const/4 v0, 0x5

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    if-lez p1, :cond_2

    .line 81
    .line 82
    add-int/lit8 p1, p1, -0x5a

    .line 83
    .line 84
    packed-switch v0, :pswitch_data_1

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    goto :goto_1

    .line 89
    :pswitch_6
    const/4 v0, 0x1

    .line 90
    goto :goto_1

    .line 91
    :pswitch_7
    const/4 v0, 0x4

    .line 92
    goto :goto_1

    .line 93
    :pswitch_8
    const/4 v0, 0x3

    .line 94
    goto :goto_1

    .line 95
    :pswitch_9
    const/4 v0, 0x2

    .line 96
    goto :goto_1

    .line 97
    :pswitch_a
    const/4 v0, 0x5

    .line 98
    goto :goto_1

    .line 99
    :pswitch_b
    const/16 v0, 0x8

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_c
    const/4 v0, 0x7

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object p1, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public save()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/utils/Exif;->mRemoveTimestamp:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/camera/core/impl/utils/Exif;->attachLastModifiedTimestamp()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "ImageDescription"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Exif;->mExifInterface:Landroidx/exifinterface/media/ExifInterface;

    .line 2
    .line 3
    const-string v1, "Orientation"

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->isFlippedVertically()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->isFlippedHorizontally()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getLocation()Landroid/location/Location;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getTimestamp()J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getDescription()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const/16 v9, 0x8

    .line 60
    .line 61
    new-array v9, v9, [Ljava/lang/Object;

    .line 62
    .line 63
    const/4 v10, 0x0

    .line 64
    aput-object v1, v9, v10

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aput-object v2, v9, v1

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    aput-object v3, v9, v1

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    aput-object v4, v9, v1

    .line 74
    .line 75
    const/4 v1, 0x4

    .line 76
    aput-object v5, v9, v1

    .line 77
    .line 78
    const/4 v1, 0x5

    .line 79
    aput-object v6, v9, v1

    .line 80
    .line 81
    const/4 v1, 0x6

    .line 82
    aput-object v7, v9, v1

    .line 83
    .line 84
    const/4 v1, 0x7

    .line 85
    aput-object v8, v9, v1

    .line 86
    .line 87
    const-string v1, "Exif{width=%s, height=%s, rotation=%d, isFlippedVertically=%s, isFlippedHorizontally=%s, location=%s, timestamp=%s, description=%s}"

    .line 88
    .line 89
    invoke-static {v0, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method
