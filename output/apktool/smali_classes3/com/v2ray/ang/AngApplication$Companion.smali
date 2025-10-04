.class public final Lcom/v2ray/ang/AngApplication$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/AngApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/v2ray/ang/AngApplication$Companion;",
        "",
        "<init>",
        "()V",
        "application",
        "Lcom/v2ray/ang/AngApplication;",
        "getApplication",
        "()Lcom/v2ray/ang/AngApplication;",
        "setApplication",
        "(Lcom/v2ray/ang/AngApplication;)V",
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
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/AngApplication$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApplication()Lcom/v2ray/ang/AngApplication;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/v2ray/ang/AngApplication;->application:Lcom/v2ray/ang/AngApplication;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x17cfadbfeea3dc3fL    # -7.446491687160572E193
        0x2b6ec10293b6cb86L    # 1.7575686010500785E-99
        0x15ff38597778aa05L    # 9.957663172108585E-203
    .end array-data
.end method

.method public final setApplication(Lcom/v2ray/ang/AngApplication;)V
    .locals 2
    .param p1    # Lcom/v2ray/ang/AngApplication;
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
    sput-object p1, Lcom/v2ray/ang/AngApplication;->application:Lcom/v2ray/ang/AngApplication;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x6bcb40a5f8c1c083L    # -2.465177214650737E-211
        0x7d5117a48aa6bd1fL    # 4.366542080957415E295
    .end array-data
.end method
