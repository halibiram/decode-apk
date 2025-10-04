.class public Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/browser/trusted/TrustedWebActivityDisplayMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmersiveMode"
.end annotation


# static fields
.field private static final ID:I = 0x1

.field public static final KEY_CUTOUT_MODE:Ljava/lang/String; = "androidx.browser.trusted.displaymode.KEY_CUTOUT_MODE"

.field public static final KEY_STICKY:Ljava/lang/String; = "androidx.browser.trusted.displaymode.KEY_STICKY"


# instance fields
.field private final mIsSticky:Z

.field private final mLayoutInDisplayCutoutMode:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->mIsSticky:Z

    .line 5
    .line 6
    iput p2, p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->mLayoutInDisplayCutoutMode:I

    .line 7
    .line 8
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;

    .line 2
    .line 3
    const-string v1, "androidx.browser.trusted.displaymode.KEY_STICKY"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "androidx.browser.trusted.displaymode.KEY_CUTOUT_MODE"

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-direct {v0, v1, p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;-><init>(ZI)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public isSticky()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->mIsSticky:Z

    .line 2
    .line 3
    return v0
.end method

.method public layoutInDisplayCutoutMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->mLayoutInDisplayCutoutMode:I

    .line 2
    .line 3
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "androidx.browser.trusted.displaymode.KEY_ID"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "androidx.browser.trusted.displaymode.KEY_STICKY"

    .line 13
    .line 14
    iget-boolean v2, p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->mIsSticky:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string v1, "androidx.browser.trusted.displaymode.KEY_CUTOUT_MODE"

    .line 20
    .line 21
    iget v2, p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->mLayoutInDisplayCutoutMode:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
