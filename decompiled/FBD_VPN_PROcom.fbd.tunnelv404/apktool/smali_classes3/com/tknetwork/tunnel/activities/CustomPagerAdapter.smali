.class public Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;
.super Lcom/tknetwork/tunnel/activities/ActivityUi;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ActivityUi;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic 돴땁돵땦듼뎬땠땔돤돰땳뎨딅땩돛돳됐돳둣돸딤딹돵뎡듰뎹돼뒹돤땝땋뎸둑됫되딤뒻뒻딨땻듽뒵뒀뎨땃뒹둠땜땤딠듼땜된뒋딤뒼돰뒈땪돠땐땋돷땱뎬땱됩땰땜땔딄땍딸뒛땫뒐딹딃땦땍땥땻땜딁딎둠딁땟돼딜땰땐땳뒼둣땵땱땨듔뒉돠됴딻뒾딄듐땋따돳딹듻된돠딀돵돝뒝땲딀듌됫땭되든득따뎸돨됴듐(Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/activities/CustomPagerAdapter$1;-><init>(Lcom/tknetwork/tunnel/activities/CustomPagerAdapter;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method
