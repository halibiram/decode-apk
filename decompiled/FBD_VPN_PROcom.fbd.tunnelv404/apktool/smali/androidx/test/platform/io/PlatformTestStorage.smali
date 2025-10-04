.class public interface abstract Landroidx/test/platform/io/PlatformTestStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addOutputProperties(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getInputArg(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInputArgs()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getOutputFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getOutputProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isTestStorageFilePath(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract openInputFile(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract openInternalInputFile(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract openInternalOutputFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract openOutputFile(Ljava/lang/String;)Ljava/io/OutputStream;
.end method

.method public abstract openOutputFile(Ljava/lang/String;Z)Ljava/io/OutputStream;
.end method
