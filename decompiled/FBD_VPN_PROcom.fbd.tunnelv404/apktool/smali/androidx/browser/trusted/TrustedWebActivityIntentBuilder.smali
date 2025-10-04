.class public Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_ADDITIONAL_TRUSTED_ORIGINS:Ljava/lang/String; = "android.support.customtabs.extra.ADDITIONAL_TRUSTED_ORIGINS"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ActionValue"
        }
    .end annotation
.end field

.field public static final EXTRA_DISPLAY_MODE:Ljava/lang/String; = "androidx.browser.trusted.extra.DISPLAY_MODE"

.field public static final EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "androidx.browser.trusted.extra.SCREEN_ORIENTATION"

.field public static final EXTRA_SHARE_DATA:Ljava/lang/String; = "androidx.browser.trusted.extra.SHARE_DATA"

.field public static final EXTRA_SHARE_TARGET:Ljava/lang/String; = "androidx.browser.trusted.extra.SHARE_TARGET"

.field public static final EXTRA_SPLASH_SCREEN_PARAMS:Ljava/lang/String; = "androidx.browser.trusted.EXTRA_SPLASH_SCREEN_PARAMS"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ActionValue"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalTrustedOrigins:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayMode:Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mScreenOrientation:I

.field private mShareData:Landroidx/browser/trusted/sharing/ShareData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mShareTarget:Landroidx/browser/trusted/sharing/ShareTarget;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSplashScreenParams:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 10
    .line 11
    new-instance v0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mDisplayMode:Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mScreenOrientation:I

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mUri:Landroid/net/Uri;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public build(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/trusted/TrustedWebActivityIntent;
    .locals 3
    .param p1    # Landroidx/browser/customtabs/CustomTabsSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSession(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mUri:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v0, "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mAdditionalTrustedOrigins:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mAdditionalTrustedOrigins:Ljava/util/List;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "android.support.customtabs.extra.ADDITIONAL_TRUSTED_ORIGINS"

    .line 39
    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mSplashScreenParams:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string v1, "androidx.browser.trusted.EXTRA_SPLASH_SCREEN_PARAMS"

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mShareTarget:Landroidx/browser/trusted/sharing/ShareTarget;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mShareData:Landroidx/browser/trusted/sharing/ShareData;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    const-string v2, "androidx.browser.trusted.extra.SHARE_TARGET"

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/browser/trusted/sharing/ShareTarget;->toBundle()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mShareData:Landroidx/browser/trusted/sharing/ShareData;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/browser/trusted/sharing/ShareData;->toBundle()Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "androidx.browser.trusted.extra.SHARE_DATA"

    .line 80
    .line 81
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mShareData:Landroidx/browser/trusted/sharing/ShareData;

    .line 85
    .line 86
    iget-object v1, v1, Landroidx/browser/trusted/sharing/ShareData;->uris:Ljava/util/List;

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    move-object v0, v1

    .line 91
    :cond_2
    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mDisplayMode:Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    .line 92
    .line 93
    invoke-interface {v1}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode;->toBundle()Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "androidx.browser.trusted.extra.DISPLAY_MODE"

    .line 98
    .line 99
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const-string v1, "androidx.browser.trusted.extra.SCREEN_ORIENTATION"

    .line 103
    .line 104
    iget v2, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mScreenOrientation:I

    .line 105
    .line 106
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    new-instance v1, Landroidx/browser/trusted/TrustedWebActivityIntent;

    .line 110
    .line 111
    invoke-direct {v1, p1, v0}, Landroidx/browser/trusted/TrustedWebActivityIntent;-><init>(Landroid/content/Intent;Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 116
    .line 117
    const-string v0, "CustomTabsSession is required for launching a TWA"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public buildCustomTabsIntent()Landroidx/browser/customtabs/CustomTabsIntent;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDisplayMode()Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mDisplayMode:Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdditionalTrustedOrigins(Ljava/util/List;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mAdditionalTrustedOrigins:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setColorScheme(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorScheme(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setColorSchemeParams(ILandroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 1
    .param p2    # Landroidx/browser/customtabs/CustomTabColorSchemeParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorSchemeParams(ILandroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDefaultColorSchemeParams(Landroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 1
    .param p1    # Landroidx/browser/customtabs/CustomTabColorSchemeParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDefaultColorSchemeParams(Landroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDisplayMode(Landroidx/browser/trusted/TrustedWebActivityDisplayMode;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 0
    .param p1    # Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mDisplayMode:Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNavigationBarColor(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setNavigationBarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setNavigationBarDividerColor(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setNavigationBarDividerColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setScreenOrientation(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mScreenOrientation:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setShareParams(Landroidx/browser/trusted/sharing/ShareTarget;Landroidx/browser/trusted/sharing/ShareData;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 0
    .param p1    # Landroidx/browser/trusted/sharing/ShareTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/browser/trusted/sharing/ShareData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mShareTarget:Landroidx/browser/trusted/sharing/ShareTarget;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mShareData:Landroidx/browser/trusted/sharing/ShareData;

    .line 4
    .line 5
    return-object p0
.end method

.method public setSplashScreenParams(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mSplashScreenParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public setToolbarColor(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->mIntentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
