.class final Landroidx/camera/core/impl/utils/Exif$Speed$Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/Exif$Speed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Converter"
.end annotation


# instance fields
.field final mMph:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->mMph:D

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public toMetersPerSecond()D
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->mMph:D

    .line 2
    .line 3
    const-wide v2, 0x4001e540cc78e9f7L    # 2.23694

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    div-double/2addr v0, v2

    .line 9
    return-wide v0
.end method
