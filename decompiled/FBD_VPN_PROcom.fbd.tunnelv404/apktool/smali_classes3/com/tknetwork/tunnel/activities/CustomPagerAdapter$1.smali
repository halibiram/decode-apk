.class Lcom/tknetwork/tunnel/activities/CustomPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter$1;->this$0:Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter$1;->this$0:Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;

    invoke-static {v1}, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;->돴땁돵땦듼뎬땠땔돤돰땳뎨딅땩돛돳됐돳둣돸딤딹돵뎡듰뎹돼뒹돤땝땋뎸둑됫되딤뒻뒻딨땻듽뒵뒀뎨땃뒹둠땜땤딠듼땜된뒋딤뒼돰뒈땪돠땐땋돷땱뎬땱됩땰땜땔딄땍딸뒛땫뒐딹딃땦땍땥땻땜딁딎둠딁땟돼딜땰땐땳뒼둣땵땱땨듔뒉돠됴딻뒾딄듐땋따돳딹듻된돠딀돵돝뒝땲딀듌됫땭되든득따뎸돨됴듐(Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tknetwork/tunnel/logger/JcLogs;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter$1;->this$0:Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;

    invoke-static {v1}, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;->돴땁돵땦듼뎬땠땔돤돰땳뎨딅땩돛돳됐돳둣돸딤딹돵뎡듰뎹돼뒹돤땝땋뎸둑됫되딤뒻뒻딨땻듽뒵뒀뎨땃뒹둠땜땤딠듼땜된뒋딤뒼돰뒈땪돠땐땋돷땱뎬땱됩땰땜땔딄땍딸뒛땫뒐딹딃땦땍땥땻땜딁딎둠딁땟돼딜땰땐땳뒼둣땵땱땨듔뒉돠됴딻뒾딄듐땋따돳딹듻된돠딀돵돝뒝땲딀듌됫땭되든득따뎸돨됴듐(Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter$1;->onClick()V

    return-void
.end method
