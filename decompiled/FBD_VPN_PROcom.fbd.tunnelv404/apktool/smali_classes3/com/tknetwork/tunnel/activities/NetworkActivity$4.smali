.class Lcom/tknetwork/tunnel/activities/NetworkActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/NetworkActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/NetworkActivity;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity$4;->this$0:Lcom/tknetwork/tunnel/activities/NetworkActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity$4;->this$0:Lcom/tknetwork/tunnel/activities/NetworkActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->뎻뎨듔듬뒵돛둑딌땍땦든딠땨돤뎰뎽되뒻뒝돼딻둔뒝듸땹됴돝땪둘듬둬둬듬땵뒾딠땡뒋뒷땍땰땱뎬됨딤뎠둑뒤뒼땁듰뎹듰딄땦뒈득딠돨둥땬뒉뒛땨땝딠딽뒤땬뒀땜돝딽땃딄뒉딄뎠뎠땱뒹뒐듐뎠땀뎸듻땔땜땍딜뒤뎨뎽뎠땍딁땡땁되땪땨둔두딸딠딟뒨딠뒈땝딀땸뒵딃듰듰땬뒻뒛딨됐땟든딽땻득땫땮딝(Lcom/tknetwork/tunnel/activities/NetworkActivity;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
