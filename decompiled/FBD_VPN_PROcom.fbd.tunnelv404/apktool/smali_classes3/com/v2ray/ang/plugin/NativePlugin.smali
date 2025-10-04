.class public final Lcom/v2ray/ang/plugin/NativePlugin;
.super Lcom/v2ray/ang/plugin/ResolvedPlugin;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/v2ray/ang/plugin/NativePlugin;",
        "Lcom/v2ray/ang/plugin/ResolvedPlugin;",
        "resolveInfo",
        "Landroid/content/pm/ResolveInfo;",
        "<init>",
        "(Landroid/content/pm/ResolveInfo;)V",
        "componentInfo",
        "Landroid/content/pm/ProviderInfo;",
        "getComponentInfo",
        "()Landroid/content/pm/ProviderInfo;",
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
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .param p1    # Landroid/content/pm/ResolveInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-direct {p0, p1}, Lcom/v2ray/ang/plugin/ResolvedPlugin;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :array_0
    .array-data 8
        -0xc80f80d6f05bc64L
        0x3b94e68a837b4921L    # 1.1064659596846405E-21
        -0x1b36b6382c710ed8L    # -3.202325495781009E177
    .end array-data

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
    .line 62
    .line 63
    :array_1
    .array-data 8
        0x28fb2e13b53f0cc2L    # 2.825471149734742E-111
        -0x182eb6fcff9eb560L    # -1.2322298111289619E192
        -0x467cd176ae7b6395L    # -1.1821686369983983E-31
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getComponentInfo()Landroid/content/pm/ComponentInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/v2ray/ang/plugin/NativePlugin;->getComponentInfo()Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getComponentInfo()Landroid/content/pm/ProviderInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
