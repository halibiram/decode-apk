.class Landroidx/browser/customtabs/CustomTabsService$1;
.super Landroid/support/customtabs/ICustomTabsService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsService;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const-string v0, "android.support.customtabs.extra.SESSION_ID"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/app/PendingIntent;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method private synthetic lambda$newSessionInternal$0(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsService;->cleanUpSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private newSessionInternal(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)Z
    .locals 4
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    :try_start_0
    new-instance v1, Landroidx/browser/customtabs/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Landroidx/browser/customtabs/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 13
    .line 14
    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Landroidx/collection/SimpleArrayMap;

    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 25
    .line 26
    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Landroidx/collection/SimpleArrayMap;

    .line 27
    .line 28
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v3, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsService;->newSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    .line 39
    .line 40
    .line 41
    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    return p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    :catch_0
    return p2
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/browser/customtabs/CustomTabsService$1;->lambda$newSessionInternal$0(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 3
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->mayLaunchUrl(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .locals 1
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsService$1;->newSessionInternal(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public newSessionWithExtras(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .locals 0
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->newSessionInternal(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p2, p3}, Landroidx/browser/customtabs/CustomTabsService;->postMessage(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public receiveFile(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 4
    .line 5
    invoke-direct {p0, p4}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->receiveFile(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;ILandroid/os/Bundle;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    .locals 3
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->requestPostMessageChannel(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public requestPostMessageChannelWithExtras(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-direct {v1, p1, p3}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->requestPostMessageChannel(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .locals 3
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->updateVisuals(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 3
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 4
    .line 5
    invoke-direct {p0, p4}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->validateRelationship(Landroidx/browser/customtabs/CustomTabsSessionToken;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public warmup(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->warmup(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
