.class Lcom/tknetwork/tunnel/activities/ServerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/ServerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/ServerActivity;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/ServerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity$3;->this$0:Lcom/tknetwork/tunnel/activities/ServerActivity;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity$3;->this$0:Lcom/tknetwork/tunnel/activities/ServerActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->뎹돠듰뎽돼땃딄따듨뎬땻딽뎡듽딸뒝둡따땦돝딟뒉딸딞디듻뎬딨딅뒀딹됩돷뒤득딹뒻땔딀될딠딨듰땯뎽땦땄땄뒻뒀뎠뎹딻돷땦뒈뒷땭뎻뒾뒝땲땦뒛땍딐듌돳됩땫따땱땥듨딀뒹뒋되땀딜듬땁땸딜든듬뒝딅두땜뒈되땤됴땦돷뒻듰땡땧땮뒈든둣딌뒉돰딐뎰땹디득뒨딤땍듨뎻뒹됩땜돛되뒼땧뎹딜뎨뎨뒤딞(Lcom/tknetwork/tunnel/activities/ServerActivity;Ljava/lang/String;)V

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
