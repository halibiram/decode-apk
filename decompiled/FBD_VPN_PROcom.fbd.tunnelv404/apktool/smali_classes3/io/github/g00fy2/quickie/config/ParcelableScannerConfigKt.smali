.class public final Lio/github/g00fy2/quickie/config/ParcelableScannerConfigKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toParcelableConfig",
        "Lio/github/g00fy2/quickie/config/ParcelableScannerConfig;",
        "Lio/github/g00fy2/quickie/config/ScannerConfig;",
        "quickie-foss_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toParcelableConfig(Lio/github/g00fy2/quickie/config/ScannerConfig;)Lio/github/g00fy2/quickie/config/ParcelableScannerConfig;
    .locals 11
    .param p0    # Lio/github/g00fy2/quickie/config/ScannerConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/github/g00fy2/quickie/config/ParcelableScannerConfig;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getFormats$quickie_foss_release()[I

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getStringRes$quickie_foss_release()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getDrawableRes$quickie_foss_release()Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getHapticFeedback$quickie_foss_release()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getShowTorchToggle$quickie_foss_release()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getHorizontalFrameRatio$quickie_foss_release()F

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getUseFrontCamera$quickie_foss_release()Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getShowCloseButton$quickie_foss_release()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {p0}, Lio/github/g00fy2/quickie/config/ScannerConfig;->getKeepScreenOn$quickie_foss_release()Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    move-object v1, v0

    .line 45
    invoke-direct/range {v1 .. v10}, Lio/github/g00fy2/quickie/config/ParcelableScannerConfig;-><init>([IILjava/lang/Integer;ZZFZZZ)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method
