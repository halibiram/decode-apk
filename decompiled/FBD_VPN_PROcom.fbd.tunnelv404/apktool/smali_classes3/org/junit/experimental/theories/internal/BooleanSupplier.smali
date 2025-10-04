.class public Lorg/junit/experimental/theories/internal/BooleanSupplier;
.super Lorg/junit/experimental/theories/ParameterSupplier;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/junit/experimental/theories/ParameterSupplier;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getValueSources(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v0, "true"

    .line 4
    .line 5
    invoke-static {v0, p1}, Lorg/junit/experimental/theories/PotentialAssignment;->forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    const-string v1, "false"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lorg/junit/experimental/theories/PotentialAssignment;->forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [Lorg/junit/experimental/theories/PotentialAssignment;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object p1, v1, v2

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    aput-object v0, v1, p1

    .line 25
    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method
