.class public final Lio/github/g00fy2/quickie/config/ScannerConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/g00fy2/quickie/config/ScannerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001J&\u0010\u0008\u001a\u00020\u00072\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u00a2\u0006\u0002\u0008\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lio/github/g00fy2/quickie/config/ScannerConfig$Companion;",
        "",
        "Lkotlin/Function1;",
        "Lio/github/g00fy2/quickie/config/ScannerConfig$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "func",
        "Lio/github/g00fy2/quickie/config/ScannerConfig;",
        "build",
        "(Lkotlin/jvm/functions/Function1;)Lio/github/g00fy2/quickie/config/ScannerConfig;",
        "quickie-foss_release"
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
        "SMAP\nScannerConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScannerConfig.kt\nio/github/g00fy2/quickie/config/ScannerConfig$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final build(Lkotlin/jvm/functions/Function1;)Lio/github/g00fy2/quickie/config/ScannerConfig;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/g00fy2/quickie/config/ScannerConfig$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/g00fy2/quickie/config/ScannerConfig;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "func"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/github/g00fy2/quickie/config/ScannerConfig$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/github/g00fy2/quickie/config/ScannerConfig$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lio/github/g00fy2/quickie/config/ScannerConfig$Builder;->build()Lio/github/g00fy2/quickie/config/ScannerConfig;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
