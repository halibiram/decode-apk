.class public Lcom/tknetwork/tunnel/service/c_05$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_05;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_05;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$LocalBinder;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getService()Lcom/tknetwork/tunnel/service/c_05;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$LocalBinder;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    return-object v0
.end method
