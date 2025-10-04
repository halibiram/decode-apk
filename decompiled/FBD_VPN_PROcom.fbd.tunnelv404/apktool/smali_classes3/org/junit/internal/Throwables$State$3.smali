.class final enum Lorg/junit/internal/Throwables$State$3;
.super Lorg/junit/internal/Throwables$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/Throwables$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/junit/internal/Throwables$State;-><init>(Ljava/lang/String;ILorg/junit/internal/Throwables$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public processLine(Ljava/lang/String;)Lorg/junit/internal/Throwables$State;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/junit/internal/Throwables;->access$200(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1}, Lorg/junit/internal/Throwables;->access$100(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget-object p1, Lorg/junit/internal/Throwables$State;->PROCESSING_TEST_FRAMEWORK_CODE:Lorg/junit/internal/Throwables$State;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    sget-object p1, Lorg/junit/internal/Throwables$State;->DONE:Lorg/junit/internal/Throwables$State;

    .line 18
    .line 19
    return-object p1
.end method
