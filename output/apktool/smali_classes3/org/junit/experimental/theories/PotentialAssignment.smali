.class public abstract Lorg/junit/experimental/theories/PotentialAssignment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
    }
.end annotation


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

.method public static forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/experimental/theories/PotentialAssignment$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lorg/junit/experimental/theories/PotentialAssignment$1;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method
