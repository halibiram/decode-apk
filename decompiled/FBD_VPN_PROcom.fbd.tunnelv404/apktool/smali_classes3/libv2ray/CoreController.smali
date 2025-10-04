.class public final Llibv2ray/CoreController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgo/Seq$Proxy;


# instance fields
.field private final refnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Llibv2ray/Libv2ray;->touch()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llibv2ray/CoreController;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method

.method public constructor <init>(Llibv2ray/CoreCallbackHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Llibv2ray/CoreController;->__NewCoreController(Llibv2ray/CoreCallbackHandler;)I

    move-result p1

    iput p1, p0, Llibv2ray/CoreController;->refnum:I

    .line 3
    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method

.method private static native __NewCoreController(Llibv2ray/CoreCallbackHandler;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    instance-of v1, p1, Llibv2ray/CoreController;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Llibv2ray/CoreController;

    .line 10
    .line 11
    invoke-virtual {p0}, Llibv2ray/CoreController;->getCallbackHandler()Llibv2ray/CoreCallbackHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Llibv2ray/CoreController;->getCallbackHandler()Llibv2ray/CoreCallbackHandler;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    return v0

    .line 31
    :cond_2
    invoke-virtual {p0}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eq v1, p1, :cond_3

    .line 40
    .line 41
    return v0

    .line 42
    :cond_3
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_4
    :goto_0
    return v0
.end method

.method public final native getCallbackHandler()Llibv2ray/CoreCallbackHandler;
.end method

.method public final native getIsRunning()Z
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Llibv2ray/CoreController;->getCallbackHandler()Llibv2ray/CoreCallbackHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v2, v0

    .line 21
    .line 22
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final incRefnum()I
    .locals 1

    .line 1
    iget v0, p0, Llibv2ray/CoreController;->refnum:I

    .line 2
    .line 3
    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Llibv2ray/CoreController;->refnum:I

    .line 7
    .line 8
    return v0
.end method

.method public native measureDelay(Ljava/lang/String;)J
.end method

.method public native queryStats(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public final native setCallbackHandler(Llibv2ray/CoreCallbackHandler;)V
.end method

.method public final native setIsRunning(Z)V
.end method

.method public native startLoop(Ljava/lang/String;)V
.end method

.method public native stopLoop()V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CoreController{CallbackHandler:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Llibv2ray/CoreController;->getCallbackHandler()Llibv2ray/CoreCallbackHandler;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ",IsRunning:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ",}"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
