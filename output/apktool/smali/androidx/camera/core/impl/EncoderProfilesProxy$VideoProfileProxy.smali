.class public abstract Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/EncoderProfilesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoProfileProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy$VideoEncoder;
    }
.end annotation


# static fields
.field public static final BIT_DEPTH_10:I = 0xa

.field public static final BIT_DEPTH_8:I = 0x8

.field public static final MEDIA_TYPE_NONE:Ljava/lang/String; = "video/none"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v11, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;

    .line 2
    .line 3
    move-object v0, v11

    .line 4
    move v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move/from16 v5, p4

    .line 9
    .line 10
    move/from16 v6, p5

    .line 11
    .line 12
    move/from16 v7, p6

    .line 13
    .line 14
    move/from16 v8, p7

    .line 15
    .line 16
    move/from16 v9, p8

    .line 17
    .line 18
    move/from16 v10, p9

    .line 19
    .line 20
    invoke-direct/range {v0 .. v10}, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;-><init>(ILjava/lang/String;IIIIIIII)V

    .line 21
    .line 22
    .line 23
    return-object v11
.end method


# virtual methods
.method public abstract getBitDepth()I
.end method

.method public abstract getBitrate()I
.end method

.method public abstract getChromaSubsampling()I
.end method

.method public abstract getCodec()I
.end method

.method public abstract getFrameRate()I
.end method

.method public abstract getHdrFormat()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMediaType()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getProfile()I
.end method

.method public abstract getWidth()I
.end method
