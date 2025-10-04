.class final Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;
.super Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal$Builder;
    }
.end annotation


# instance fields
.field private final collectionUri:Landroid/net/Uri;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final contentValues:Landroid/content/ContentValues;

.field private final durationLimitMillis:J

.field private final fileSizeLimit:J

.field private final location:Landroid/location/Location;


# direct methods
.method private constructor <init>(JJLandroid/location/Location;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .param p5    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->fileSizeLimit:J

    .line 4
    iput-wide p3, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->durationLimitMillis:J

    .line 5
    iput-object p5, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->location:Landroid/location/Location;

    .line 6
    iput-object p6, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentResolver:Landroid/content/ContentResolver;

    .line 7
    iput-object p7, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->collectionUri:Landroid/net/Uri;

    .line 8
    iput-object p8, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public synthetic constructor <init>(JJLandroid/location/Location;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;-><init>(JJLandroid/location/Location;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    .line 11
    .line 12
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->fileSizeLimit:J

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getFileSizeLimit()J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    cmp-long v1, v3, v5

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->durationLimitMillis:J

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getDurationLimitMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->location:Landroid/location/Location;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getLocation()Landroid/location/Location;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getLocation()Landroid/location/Location;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentResolver:Landroid/content/ContentResolver;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->collectionUri:Landroid/net/Uri;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;->getCollectionUri()Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentValues:Landroid/content/ContentValues;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;->getContentValues()Landroid/content/ContentValues;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const/4 v0, 0x0

    .line 91
    :goto_1
    return v0

    .line 92
    :cond_3
    return v2
.end method

.method public getCollectionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->collectionUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDurationLimitMillis()J
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->durationLimitMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFileSizeLimit()J
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->fileSizeLimit:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->location:Landroid/location/Location;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->fileSizeLimit:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v1, v0

    .line 9
    const v0, 0xf4243

    .line 10
    .line 11
    .line 12
    xor-int/2addr v1, v0

    .line 13
    mul-int v1, v1, v0

    .line 14
    .line 15
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->durationLimitMillis:J

    .line 16
    .line 17
    ushr-long v5, v3, v2

    .line 18
    .line 19
    xor-long v2, v5, v3

    .line 20
    .line 21
    long-to-int v3, v2

    .line 22
    xor-int/2addr v1, v3

    .line 23
    mul-int v1, v1, v0

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->location:Landroid/location/Location;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Landroid/location/Location;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :goto_0
    xor-int/2addr v1, v2

    .line 36
    mul-int v1, v1, v0

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentResolver:Landroid/content/ContentResolver;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    xor-int/2addr v1, v2

    .line 45
    mul-int v1, v1, v0

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->collectionUri:Landroid/net/Uri;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    xor-int/2addr v1, v2

    .line 54
    mul-int v1, v1, v0

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentValues:Landroid/content/ContentValues;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/ContentValues;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    xor-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaStoreOutputOptionsInternal{fileSizeLimit="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->fileSizeLimit:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", durationLimitMillis="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->durationLimitMillis:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", location="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->location:Landroid/location/Location;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", contentResolver="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentResolver:Landroid/content/ContentResolver;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", collectionUri="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->collectionUri:Landroid/net/Uri;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", contentValues="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaStoreOutputOptions_MediaStoreOutputOptionsInternal;->contentValues:Landroid/content/ContentValues;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "}"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
