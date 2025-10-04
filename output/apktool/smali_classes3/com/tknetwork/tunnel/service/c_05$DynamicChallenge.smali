.class Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicChallenge"
.end annotation


# instance fields
.field public challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

.field public cookie:Ljava/lang/String;

.field public expires:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$Challenge;

    invoke-direct {v0}, Lcom/tknetwork/tunnel/service/c_05$Challenge;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;-><init>()V

    return-void
.end method


# virtual methods
.method public expire_delay()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->expires:J

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public is_expired()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->expires:J

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-lez v4, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05$Challenge;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->cookie:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->expires:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v0, v3, v4

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v3, v0

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object v2, v3, v0

    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x26a965002726c9dfL
        -0x60eb8684a7c07463L    # -5.825274782624767E-159
    .end array-data
.end method
