.class final Lcom/v2ray/ang/service/V2RayServiceManager$CoreCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llibv2ray/CoreCallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/service/V2RayServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoreCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u001a\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/v2ray/ang/service/V2RayServiceManager$CoreCallback;",
        "Llibv2ray/CoreCallbackHandler;",
        "<init>",
        "()V",
        "startup",
        "",
        "shutdown",
        "onEmitStatus",
        "l",
        "s",
        "",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
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
.method public onEmitStatus(JLjava/lang/String;)J
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public shutdown()J
    .locals 4

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayServiceManager;->getServiceControl()Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/v2ray/ang/service/ServiceControl;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/v2ray/ang/service/ServiceControl;->stopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v3, v3, [J

    .line 30
    .line 31
    fill-array-data v3, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    new-array v3, v3, [J

    .line 44
    .line 45
    fill-array-data v3, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-wide v1

    .line 55
    :array_0
    .array-data 8
        0x4c634d71a62213ebL    # 9.693108230898354E59
        0x6c178e5d98d1ef84L    # 4.9563347907695644E212
        0x3d69dbbd7e10b6d3L    # 7.349387992465387E-13
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0x31de4f857ef88888L    # 1.7566934056388043E-68
        -0x54cfceeab8133c7eL
        -0x113020932fdf334L
        -0x68cac9e8ae6dc677L    # -7.093980558861972E-197
        0x2dee390d2d94fa58L    # 1.8990954422654833E-87
        -0xfe41e184e07b13dL    # -1.0821998775170786E232
    .end array-data
.end method

.method public startup()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
