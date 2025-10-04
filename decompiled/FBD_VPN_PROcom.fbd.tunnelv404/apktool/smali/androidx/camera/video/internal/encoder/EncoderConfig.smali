.class public interface abstract Landroidx/camera/video/internal/encoder/EncoderConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODEC_PROFILE_NONE:I = -0x1


# virtual methods
.method public abstract getInputTimebase()Landroidx/camera/core/impl/Timebase;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMimeType()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getProfile()I
.end method

.method public abstract toMediaFormat()Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
