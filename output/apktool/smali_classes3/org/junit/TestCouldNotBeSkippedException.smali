.class public Lorg/junit/TestCouldNotBeSkippedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lorg/junit/internal/AssumptionViolatedException;)V
    .locals 1

    .line 1
    const-string v0, "Test could not be skipped due to other failures"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
