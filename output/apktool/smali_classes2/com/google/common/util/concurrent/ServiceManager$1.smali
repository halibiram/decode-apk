.class Lcom/google/common/util/concurrent/ServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
        "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
        ">;"
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


# virtual methods
.method public call(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->healthy()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$1;->call(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :array_0
    .array-data 8
        0x487e1b59b906566fL    # 1.6391721649092243E41
        0x44c27e922b58a278L    # 1.7467483810909875E23
        -0x612629edcd175fd6L
    .end array-data
.end method
