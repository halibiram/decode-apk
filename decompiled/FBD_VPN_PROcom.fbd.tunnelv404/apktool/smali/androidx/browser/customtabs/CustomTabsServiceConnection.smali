.class public abstract Landroidx/browser/customtabs/CustomTabsServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mApplicationContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/browser/customtabs/CustomTabsClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/browser/customtabs/CustomTabsServiceConnection$1;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/support/customtabs/ICustomTabsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/browser/customtabs/CustomTabsServiceConnection$1;-><init>(Landroidx/browser/customtabs/CustomTabsServiceConnection;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "Custom Tabs Service connected before an applicationcontext has been provided."

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
