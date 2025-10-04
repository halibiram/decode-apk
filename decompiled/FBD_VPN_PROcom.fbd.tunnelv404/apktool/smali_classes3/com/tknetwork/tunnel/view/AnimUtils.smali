.class public Lcom/tknetwork/tunnel/view/AnimUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static leftToRightAnimation(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const v0, 0x7f160001

    .line 2
    .line 3
    .line 4
    const/high16 v1, 0x7f160000

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static rightToLeftAnimation(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const/high16 v0, 0x7f160000

    .line 2
    .line 3
    const v1, 0x7f160001

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
