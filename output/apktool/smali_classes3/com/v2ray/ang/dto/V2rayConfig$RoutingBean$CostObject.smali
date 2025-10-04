.class public final Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CostObject"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;",
        "",
        "regexp",
        "",
        "match",
        "",
        "value",
        "",
        "<init>",
        "(ZLjava/lang/String;D)V",
        "getRegexp",
        "()Z",
        "getMatch",
        "()Ljava/lang/String;",
        "getValue",
        "()D",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final match:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final regexp:Z

.field private final value:D


# direct methods
.method public constructor <init>(ZLjava/lang/String;D)V
    .locals 2
    .param p2    # Ljava/lang/String;
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->regexp:Z

    .line 3
    iput-object p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->match:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->value:D

    return-void

    :array_0
    .array-data 8
        -0x5b1d1464e4ae5a4cL    # -5.331147858472061E-131
        -0x493009018c6c8648L
    .end array-data
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;DILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;-><init>(ZLjava/lang/String;D)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;ZLjava/lang/String;DILjava/lang/Object;)Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->regexp:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->match:Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->value:D

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->copy(ZLjava/lang/String;D)Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->regexp:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->match:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->value:D

    return-wide v0
.end method

.method public final copy(ZLjava/lang/String;D)Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;
    .locals 2
    .param p2    # Ljava/lang/String;
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;-><init>(ZLjava/lang/String;D)V

    return-object v0

    :array_0
    .array-data 8
        -0x4eee62ca3343ece1L    # -2.492307132870996E-72
        0xa1aa7c7bab12d4L
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;

    iget-boolean v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->regexp:Z

    iget-boolean v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->regexp:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->match:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->match:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->value:D

    iget-wide v5, p1, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMatch()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->match:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRegexp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->regexp:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->value:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->regexp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    const/16 v1, 0x1f

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->match:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-wide v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->value:D

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const/16 v3, 0x20

    .line 27
    .line 28
    ushr-long v3, v1, v3

    .line 29
    .line 30
    xor-long/2addr v1, v3

    .line 31
    long-to-int v2, v1

    .line 32
    add-int/2addr v0, v2

    .line 33
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->regexp:Z

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->match:Ljava/lang/String;

    iget-wide v2, p0, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;->value:D

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CostObject(regexp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", match="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
