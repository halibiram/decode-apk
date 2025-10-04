.class public final Lcom/v2ray/ang/dto/SubscriptionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u00088\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0006H\u00c6\u0003J\t\u00105\u001a\u00020\u0008H\u00c6\u0003J\t\u00106\u001a\u00020\u0008H\u00c6\u0003J\t\u00107\u001a\u00020\u0006H\u00c6\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u000b\u00109\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0006H\u00c6\u0003J\u0090\u0001\u0010>\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010?J\u0013\u0010@\u001a\u00020\u00062\u0008\u0010A\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010B\u001a\u00020\u000cH\u00d6\u0001J\t\u0010C\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001f\"\u0004\u0008!\u0010\"R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001b\"\u0004\u0008$\u0010\u001dR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0015\"\u0004\u0008)\u0010\u0017R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0015\"\u0004\u0008+\u0010\u0017R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0015\"\u0004\u0008-\u0010\u0017R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0015\"\u0004\u0008/\u0010\u0017R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001b\"\u0004\u00081\u0010\u001d\u00a8\u0006D"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/SubscriptionItem;",
        "",
        "remarks",
        "",
        "url",
        "enabled",
        "",
        "addedTime",
        "",
        "lastUpdated",
        "autoUpdate",
        "updateInterval",
        "",
        "prevProfile",
        "nextProfile",
        "filter",
        "intelligentSelectionFilter",
        "allowInsecureUrl",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "getRemarks",
        "()Ljava/lang/String;",
        "setRemarks",
        "(Ljava/lang/String;)V",
        "getUrl",
        "setUrl",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "getAddedTime",
        "()J",
        "getLastUpdated",
        "setLastUpdated",
        "(J)V",
        "getAutoUpdate",
        "setAutoUpdate",
        "getUpdateInterval",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getPrevProfile",
        "setPrevProfile",
        "getNextProfile",
        "setNextProfile",
        "getFilter",
        "setFilter",
        "getIntelligentSelectionFilter",
        "setIntelligentSelectionFilter",
        "getAllowInsecureUrl",
        "setAllowInsecureUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/v2ray/ang/dto/SubscriptionItem;",
        "equals",
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
.field private final addedTime:J

.field private allowInsecureUrl:Z

.field private autoUpdate:Z

.field private enabled:Z

.field private filter:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private intelligentSelectionFilter:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastUpdated:J

.field private nextProfile:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prevProfile:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private remarks:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateInterval:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    const/16 v15, 0xfff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/v2ray/ang/dto/SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x2

    new-array v5, v4, [J

    fill-array-data v5, :array_0

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    move v1, p3

    .line 5
    iput-boolean v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    move-wide v1, p4

    .line 6
    iput-wide v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->addedTime:J

    move-wide v1, p6

    .line 7
    iput-wide v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    move v1, p8

    .line 8
    iput-boolean v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->updateInterval:Ljava/lang/Integer;

    move-object/from16 v1, p10

    .line 10
    iput-object v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 11
    iput-object v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 12
    iput-object v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    move/from16 v1, p14

    .line 14
    iput-boolean v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    return-void

    nop

    :array_0
    .array-data 8
        -0x7872a7a49fd4a468L    # -2.712252898135561E-272
        -0x73e9d71d3a3abbecL    # -1.934406283272373E-250
    .end array-data

    :array_1
    .array-data 8
        -0x51cabccd2a0d4688L    # -4.275387290417332E-86
        -0x7bb61d4887b232b4L    # -5.312422359872587E-288
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p15

    const/4 v1, 0x0

    const/4 v2, 0x1

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    const-wide v5, 0x2e307874fa71a844L    # 3.311836998821402E-86

    aput-wide v5, v4, v1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    .line 16
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    const-wide v6, -0x57eb5042bd14f63fL

    aput-wide v6, v5, v1

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v2, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const-wide/16 v7, -0x1

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    move-object v10, v11

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    move-object v12, v11

    goto :goto_7

    :cond_7
    move-object/from16 v12, p10

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    move-object v13, v11

    goto :goto_8

    :cond_8
    move-object/from16 v13, p11

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    move-object v14, v11

    goto :goto_9

    :cond_9
    move-object/from16 v14, p12

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v11, p13

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v1, p14

    :goto_b
    move-object/from16 p1, p0

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v2

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v11

    move/from16 p15, v1

    .line 18
    invoke-direct/range {p1 .. p15}, Lcom/v2ray/ang/dto/SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/SubscriptionItem;Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/v2ray/ang/dto/SubscriptionItem;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->addedTime:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-boolean v9, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->updateInterval:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p13

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    goto :goto_b

    :cond_b
    move/from16 v1, p14

    :goto_b
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/v2ray/ang/dto/SubscriptionItem;->copy(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/v2ray/ang/dto/SubscriptionItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->addedTime:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    return-wide v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    return v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->updateInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/v2ray/ang/dto/SubscriptionItem;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/v2ray/ang/dto/SubscriptionItem;

    move-object v2, v0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v2 .. v16}, Lcom/v2ray/ang/dto/SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :array_0
    .array-data 8
        0xc129603a521b469L
        0x7c0b2ab8a185976aL    # 3.309372172768176E289
    .end array-data

    :array_1
    .array-data 8
        0x49d67628e559af77L    # 5.1293138970745094E47
        -0x5d12c42ac65755aaL
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
    instance-of v1, p1, Lcom/v2ray/ang/dto/SubscriptionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/SubscriptionItem;

    iget-object v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    iget-boolean v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->addedTime:J

    iget-wide v5, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->addedTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    iget-wide v5, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    iget-boolean v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->updateInterval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->updateInterval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    iget-boolean p1, p1, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAddedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->addedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAllowInsecureUrl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getAutoUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFilter()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIntelligentSelectionFilter()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastUpdated()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNextProfile()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrevProfile()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemarks()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpdateInterval()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->updateInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v2, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-boolean v2, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    .line 18
    .line 19
    const/16 v3, 0x4d5

    .line 20
    .line 21
    const/16 v4, 0x4cf

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v2, 0x4cf

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v2, 0x4d5

    .line 29
    .line 30
    :goto_0
    add-int/2addr v0, v2

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-wide v5, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->addedTime:J

    .line 34
    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    ushr-long v7, v5, v2

    .line 38
    .line 39
    xor-long/2addr v5, v7

    .line 40
    long-to-int v6, v5

    .line 41
    add-int/2addr v0, v6

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget-wide v5, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    .line 45
    .line 46
    ushr-long v7, v5, v2

    .line 47
    .line 48
    xor-long/2addr v5, v7

    .line 49
    long-to-int v2, v5

    .line 50
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const/16 v2, 0x4cf

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/16 v2, 0x4d5

    .line 61
    .line 62
    :goto_1
    add-int/2addr v0, v2

    .line 63
    mul-int/lit8 v0, v0, 0x1f

    .line 64
    .line 65
    iget-object v2, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->updateInterval:Ljava/lang/Integer;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_2
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_3
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_4

    .line 98
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_4
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_5

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_5
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_6

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    :goto_6
    add-int/2addr v0, v5

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    .line 129
    .line 130
    iget-boolean v1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    const/16 v3, 0x4cf

    .line 135
    .line 136
    :cond_7
    add-int/2addr v0, v3

    .line 137
    return v0
.end method

.method public final setAllowInsecureUrl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setAutoUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFilter(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIntelligentSelectionFilter(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastUpdated(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    .line 2
    .line 3
    return-void
.end method

.method public final setNextProfile(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrevProfile(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x40dcbaf41bdc94ecL    # 29419.81420054
        -0x275529b927717127L    # -1.353513433775568E119
    .end array-data
.end method

.method public final setUrl(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x73b155c3b2973f23L    # -2.141491359346976E-249
        -0x721d14973ff90c28L    # -8.866754535878507E-242
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 17
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->remarks:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->url:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->enabled:Z

    .line 8
    .line 9
    iget-wide v4, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->addedTime:J

    .line 10
    .line 11
    iget-wide v6, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->lastUpdated:J

    .line 12
    .line 13
    iget-boolean v8, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->autoUpdate:Z

    .line 14
    .line 15
    iget-object v9, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->updateInterval:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v10, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->prevProfile:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v11, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->nextProfile:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v12, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->filter:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v13, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->intelligentSelectionFilter:Ljava/lang/String;

    .line 24
    .line 25
    iget-boolean v14, v0, Lcom/v2ray/ang/dto/SubscriptionItem;->allowInsecureUrl:Z

    .line 26
    .line 27
    const-string v15, "SubscriptionItem(remarks="

    .line 28
    .line 29
    const-string v0, ", url="

    .line 30
    .line 31
    move/from16 v16, v14

    .line 32
    .line 33
    const-string v14, ", enabled="

    .line 34
    .line 35
    invoke-static {v15, v1, v0, v2, v14}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", addedTime="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", lastUpdated="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", autoUpdate="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", updateInterval="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", prevProfile="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", nextProfile="

    .line 80
    .line 81
    const-string v2, ", filter="

    .line 82
    .line 83
    invoke-static {v0, v10, v1, v11, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, ", intelligentSelectionFilter="

    .line 87
    .line 88
    const-string v2, ", allowInsecureUrl="

    .line 89
    .line 90
    invoke-static {v0, v12, v1, v13, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move/from16 v1, v16

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ")"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method
