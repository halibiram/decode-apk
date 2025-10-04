.class public final Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/V2rayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FakednsBean"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;",
        "",
        "ipPool",
        "",
        "poolSize",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "getIpPool",
        "()Ljava/lang/String;",
        "setIpPool",
        "(Ljava/lang/String;)V",
        "getPoolSize",
        "()I",
        "setPoolSize",
        "(I)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private ipPool:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private poolSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    return-void

    :array_0
    .array-data 8
        0x67090df9f1aca888L    # 2.1802921736180903E188
        0x65005a31c6ef62eaL    # 3.313194086158965E178
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p4, 0x3

    new-array p4, p4, [J

    fill-array-data p4, :array_0

    invoke-direct {p1, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0x2710

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;-><init>(Ljava/lang/String;I)V

    return-void

    nop

    :array_0
    .array-data 8
        0x730e36e1665e6820L
        -0xf07c3159b2d0918L    # -1.541318997068645E236
        0x438807b42d570a84L    # 2.1644383607176E17
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;Ljava/lang/String;IILjava/lang/Object;)Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->copy(Ljava/lang/String;I)Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;

    invoke-direct {v0, p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;-><init>(Ljava/lang/String;I)V

    return-object v0

    :array_0
    .array-data 8
        0x5bf51939ea4aa080L    # 9.584522420793881E134
        -0xca42491c8766791L    # -4.869374129564145E247
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
    instance-of v1, p1, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    iget p1, p1, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getIpPool()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPoolSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setIpPool(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x681268267587b07dL    # 2.099502500941506E193
        0x2d299deb3a32e9acL    # 3.92986286692409E-91
    .end array-data
.end method

.method public final setPoolSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->ipPool:Ljava/lang/String;

    iget v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;->poolSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FakednsBean(ipPool="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", poolSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
