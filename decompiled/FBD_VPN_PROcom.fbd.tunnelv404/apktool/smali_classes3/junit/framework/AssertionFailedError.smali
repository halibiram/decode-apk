.class public Ljunit/framework/AssertionFailedError;
.super Ljava/lang/AssertionError;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2
    const-string p1, ""

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    return-void
.end method
