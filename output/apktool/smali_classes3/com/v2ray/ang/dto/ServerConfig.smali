.class public final Lcom/v2ray/ang/dto/ServerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/ServerConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u0000 32\u00020\u0001:\u00013BO\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010#\u001a\u0004\u0018\u00010\u000cJ\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00070%J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00c6\u0003J\t\u0010(\u001a\u00020\u0007H\u00c6\u0003J\t\u0010)\u001a\u00020\tH\u00c6\u0003J\t\u0010*\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003JS\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00c6\u0001J\u0013\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u00020\u0003H\u00d6\u0001J\t\u00102\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u00064"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/ServerConfig;",
        "",
        "configVersion",
        "",
        "configType",
        "Lcom/v2ray/ang/dto/EConfigType;",
        "subscriptionId",
        "",
        "addedTime",
        "",
        "remarks",
        "outboundBean",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;",
        "fullConfig",
        "Lcom/v2ray/ang/dto/V2rayConfig;",
        "<init>",
        "(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;)V",
        "getConfigVersion",
        "()I",
        "getConfigType",
        "()Lcom/v2ray/ang/dto/EConfigType;",
        "getSubscriptionId",
        "()Ljava/lang/String;",
        "setSubscriptionId",
        "(Ljava/lang/String;)V",
        "getAddedTime",
        "()J",
        "getRemarks",
        "setRemarks",
        "getOutboundBean",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;",
        "getFullConfig",
        "()Lcom/v2ray/ang/dto/V2rayConfig;",
        "setFullConfig",
        "(Lcom/v2ray/ang/dto/V2rayConfig;)V",
        "getProxyOutbound",
        "getAllOutboundTags",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nServerConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServerConfig.kt\ncom/v2ray/ang/dto/ServerConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1563#2:88\n1634#2,3:89\n*S KotlinDebug\n*F\n+ 1 ServerConfig.kt\ncom/v2ray/ang/dto/ServerConfig\n*L\n82#1:88\n82#1:89,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/v2ray/ang/dto/ServerConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final addedTime:J

.field private final configType:Lcom/v2ray/ang/dto/EConfigType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configVersion:I

.field private fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private remarks:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subscriptionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/v2ray/ang/dto/ServerConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/v2ray/ang/dto/ServerConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/v2ray/ang/dto/ServerConfig;->Companion:Lcom/v2ray/ang/dto/ServerConfig$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;)V
    .locals 3
    .param p2    # Lcom/v2ray/ang/dto/EConfigType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/v2ray/ang/dto/V2rayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/v2ray/ang/dto/ServerConfig;->configVersion:I

    .line 3
    iput-object p2, p0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 4
    iput-object p3, p0, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lcom/v2ray/ang/dto/ServerConfig;->addedTime:J

    .line 6
    iput-object p6, p0, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 8
    iput-object p8, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    return-void

    nop

    :array_0
    .array-data 8
        0x1ea6e290ef0eebfaL
        -0x4adc563ff009b392L    # -1.0264610298470693E-52
        0x6cdaae6f356c48b6L    # 2.2994568484820292E216
    .end array-data

    :array_1
    .array-data 8
        -0x55a42ed83fc69d96L
        -0x53273067e7a47506L    # -1.1894443205604738E-92
        0xe5b89d6b903c751L    # 1.651971988711178E-239
    .end array-data

    :array_2
    .array-data 8
        -0x3635885ff11eae0cL    # -3.0220298349849803E47
        0x322dbca78cd28528L    # 5.515020481786083E-67
    .end array-data
.end method

.method public synthetic constructor <init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    const-wide v5, -0x35b2286adf244ce9L    # -8.722861234342186E49

    aput-wide v5, v3, v0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, p3

    :goto_1
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v7, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p4

    :goto_2
    and-int/lit8 v2, p9, 0x10

    if-eqz v2, :cond_3

    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v9, -0x6144cd393aaa54d7L

    aput-wide v9, v1, v0

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v0, p9, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v10, v1

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_5

    move-object v11, v1

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    move-object v3, p0

    move-object v5, p2

    .line 12
    invoke-direct/range {v3 .. v11}, Lcom/v2ray/ang/dto/ServerConfig;-><init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/ServerConfig;ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;ILjava/lang/Object;)Lcom/v2ray/ang/dto/ServerConfig;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/v2ray/ang/dto/ServerConfig;->configVersion:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/v2ray/ang/dto/ServerConfig;->addedTime:J

    goto :goto_3

    :cond_3
    move-wide v4, p4

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move p1, v1

    move-object p2, v2

    move-object p3, v3

    move-wide p4, v4

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/v2ray/ang/dto/ServerConfig;->copy(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;)Lcom/v2ray/ang/dto/ServerConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->configVersion:I

    return v0
.end method

.method public final component2()Lcom/v2ray/ang/dto/EConfigType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->addedTime:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    return-object v0
.end method

.method public final component7()Lcom/v2ray/ang/dto/V2rayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    return-object v0
.end method

.method public final copy(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;)Lcom/v2ray/ang/dto/ServerConfig;
    .locals 11
    .param p2    # Lcom/v2ray/ang/dto/EConfigType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/v2ray/ang/dto/V2rayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/v2ray/ang/dto/ServerConfig;

    move-object v2, v0

    move v3, p1

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/v2ray/ang/dto/ServerConfig;-><init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        0x320eb7d223d06452L    # 1.4242447606458978E-67
        -0x4adb7b4d3f71622aL    # -1.0711079801332234E-52
        0x762e4d440e500182L    # 1.863609723672819E261
    .end array-data

    :array_1
    .array-data 8
        -0x23ee190d92de6abaL    # -3.252991537883728E135
        0x7e77ebf56a26b362L    # 1.6020201183073376E301
        -0x50f764dc6426fc02L    # -4.053147658104307E-82
    .end array-data

    :array_2
    .array-data 8
        0x427005596a791a39L    # 1.100947564433639E12
        0xb02728c8713547fL
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
    instance-of v1, p1, Lcom/v2ray/ang/dto/ServerConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/ServerConfig;

    iget v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->configVersion:I

    iget v3, p1, Lcom/v2ray/ang/dto/ServerConfig;->configVersion:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    iget-object v3, p1, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/v2ray/ang/dto/ServerConfig;->addedTime:J

    iget-wide v5, p1, Lcom/v2ray/ang/dto/ServerConfig;->addedTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    iget-object p1, p1, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAddedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->addedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAllOutboundTags()Ljava/util/List;
    .locals 4
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
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 3
    .line 4
    sget-object v2, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 5
    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v2, v0, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v3, v0, [J

    .line 25
    .line 26
    fill-array-data v3, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v0, v0, [J

    .line 39
    .line 40
    fill-array-data v0, :array_2

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    const/16 v2, 0xa

    .line 70
    .line 71
    invoke-static {v0, v2}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getTag()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :array_0
    .array-data 8
        -0x7c5367ed3acd412eL
        -0x3d74ecfc28e9c8f9L    # -3.7210603445188784E12
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 8
        -0x5f3235bbd7c376fcL
        -0x2859963fdf1f19ffL    # -1.7248449769653843E114
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_2
    .array-data 8
        -0x39fc94574d608865L    # -1.923317408603108E29
        -0x4acd1a8b53c6d416L    # -1.9728669773918862E-52
    .end array-data
.end method

.method public final getConfigType()Lcom/v2ray/ang/dto/EConfigType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfigVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->configVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFullConfig()Lcom/v2ray/ang/dto/V2rayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOutboundBean()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 2
    .line 3
    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method public final getRemarks()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscriptionId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->configVersion:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v2, p0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v0

    .line 14
    mul-int/lit8 v2, v2, 0x1f

    .line 15
    .line 16
    iget-object v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p0, Lcom/v2ray/ang/dto/ServerConfig;->addedTime:J

    .line 23
    .line 24
    const/16 v4, 0x20

    .line 25
    .line 26
    ushr-long v4, v2, v4

    .line 27
    .line 28
    xor-long/2addr v2, v4

    .line 29
    long-to-int v3, v2

    .line 30
    add-int/2addr v0, v3

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v2, p0, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v2, p0, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_0
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :goto_1
    add-int/2addr v0, v3

    .line 63
    return v0
.end method

.method public final setFullConfig(Lcom/v2ray/ang/dto/V2rayConfig;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setRemarks(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x242512235e0bb009L    # -3.058304290638384E134
        -0x745ceb0534b60169L
    .end array-data
.end method

.method public final setSubscriptionId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x4d9855027bb104dfL    # -7.023138777547603E-66
        -0x5d42e7b571160e94L    # -2.385935677759249E-141
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/v2ray/ang/dto/ServerConfig;->configVersion:I

    iget-object v1, p0, Lcom/v2ray/ang/dto/ServerConfig;->configType:Lcom/v2ray/ang/dto/EConfigType;

    iget-object v2, p0, Lcom/v2ray/ang/dto/ServerConfig;->subscriptionId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/v2ray/ang/dto/ServerConfig;->addedTime:J

    iget-object v5, p0, Lcom/v2ray/ang/dto/ServerConfig;->remarks:Ljava/lang/String;

    iget-object v6, p0, Lcom/v2ray/ang/dto/ServerConfig;->outboundBean:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    iget-object v7, p0, Lcom/v2ray/ang/dto/ServerConfig;->fullConfig:Lcom/v2ray/ang/dto/V2rayConfig;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ServerConfig(configVersion="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", configType="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", subscriptionId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", addedTime="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", remarks="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", outboundBean="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fullConfig="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
