.class public final Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/viewmodel/MainViewModel;->sortByTestResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerDelay"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\"\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "com/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay",
        "",
        "guid",
        "",
        "testDelayMillis",
        "",
        "<init>",
        "(Ljava/lang/String;J)V",
        "getGuid",
        "()Ljava/lang/String;",
        "setGuid",
        "(Ljava/lang/String;)V",
        "getTestDelayMillis",
        "()J",
        "setTestDelayMillis",
        "(J)V",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/String;J)Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;",
        "equals",
        "",
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
.field private guid:Ljava/lang/String;

.field private testDelayMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    .line 23
    .line 24
    iput-wide p2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        0x260e3cef15c8155dL
        -0xca07e885cc0c34eL    # -5.507138825801E247
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;Ljava/lang/String;JILjava/lang/Object;)Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->copy(Ljava/lang/String;J)Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;

    invoke-direct {v0, p1, p2, p3}, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;-><init>(Ljava/lang/String;J)V

    return-object v0

    :array_0
    .array-data 8
        -0x528fe0172be28564L    # -7.91573964301114E-90
        0x3d4d680c6492baafL    # 2.0894531687145196E-13
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;

    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    iget-wide v5, p1, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTestDelayMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public final setGuid(Ljava/lang/String;)V
    .locals 2

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
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x2579bfb218e109eeL    # -1.2049843080853891E128
        -0x1501bd2478f9c479L    # -2.428860867785118E207
    .end array-data
.end method

.method public final setTestDelayMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->guid:Ljava/lang/String;

    iget-wide v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->testDelayMillis:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerDelay(guid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", testDelayMillis="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
