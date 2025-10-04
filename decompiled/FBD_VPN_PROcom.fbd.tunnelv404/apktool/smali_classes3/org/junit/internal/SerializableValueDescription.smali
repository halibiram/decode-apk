.class Lorg/junit/internal/SerializableValueDescription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/junit/internal/SerializableValueDescription;->value:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static asSerializableValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p0, Ljava/io/Serializable;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lorg/junit/internal/SerializableValueDescription;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lorg/junit/internal/SerializableValueDescription;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/internal/SerializableValueDescription;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
