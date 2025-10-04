.class public final Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/V2rayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BurstObservatoryObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0016B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0004H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;",
        "",
        "subjectSelector",
        "",
        "",
        "pingConfig",
        "Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;",
        "<init>",
        "(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;)V",
        "getSubjectSelector",
        "()Ljava/util/List;",
        "getPingConfig",
        "()Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "PingConfigObject",
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


# instance fields
.field private final pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subjectSelector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->subjectSelector:Ljava/util/List;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x27daa53362e67525L
        -0x47945ba84e0c73caL    # -6.498594298963082E-37
        -0x3b4d9d16998361bL    # -5.291539519990808E290
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 8
        0x4782fe07461f7bfL
        -0x3d0f7517fb5af7f4L    # -2.9102054639628875E14
        0xaf8a7e3d910a9beL    # 8.21037801027824E-256
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;ILjava/lang/Object;)Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->subjectSelector:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->copy(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;)Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->subjectSelector:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;)Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;",
            ")",
            "Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;

    invoke-direct {v0, p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x315887daafbcb7efL    # -8.098964457462057E70
        -0x1d35654562a31f02L    # -7.844065916296034E167
        0x77487b86b313ac1aL    # 3.947138547132544E266
    .end array-data

    :array_1
    .array-data 8
        -0x6d799bd32ab1c2efL
        -0x5a43b36b0ae1a384L    # -6.53213568909276E-127
        -0x562a2a989e39ecfL
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->subjectSelector:Ljava/util/List;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->subjectSelector:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    iget-object p1, p1, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPingConfig()Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectSelector()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->subjectSelector:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->subjectSelector:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->subjectSelector:Ljava/util/List;

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;->pingConfig:Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BurstObservatoryObject(subjectSelector="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pingConfig="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
