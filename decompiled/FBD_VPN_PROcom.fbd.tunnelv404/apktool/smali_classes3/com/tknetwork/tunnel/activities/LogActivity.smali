.class public Lcom/tknetwork/tunnel/activities/LogActivity;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private adapter:Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;

.field private listLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/service/c_05$LogMsg;",
            ">;"
        }
    .end annotation
.end field

.field private logView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private copy(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/text/ClipboardManager;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        0x63634af8f7913750L    # 5.824842730093562E170
        -0x5f2cee57ed344e4aL
        0x260733d6b5503725L    # 1.713825117132964E-125
    .end array-data
.end method

.method private deleteLogs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->log_history()Ljava/util/ArrayDeque;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->adapter:Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :array_0
    .array-data 8
        -0x5f1520ead488c4a1L    # -4.10452341228558E-150
        0x7b3187742660ed33L    # 2.6066091967540267E285
        0x25c5decfe29bb9b8L
    .end array-data
.end method

.method public static bridge synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/activities/LogActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/activities/LogActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->logView:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public getFullLog()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/tknetwork/tunnel/service/c_05$LogMsg;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v2, v2, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    new-array v4, v4, [J

    .line 46
    .line 47
    fill-array-data v4, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :array_0
    .array-data 8
        0x2cb627cbf4972b1bL    # 2.6553516503247543E-93
        -0x4970f1e9c2e324cfL    # -6.799587721062278E-46
    .end array-data
.end method

.method public log(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->adapter:Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->logView:Landroid/widget/ListView;

    .line 12
    .line 13
    new-instance v1, Lcom/tknetwork/tunnel/activities/LogActivity$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/activities/LogActivity$1;-><init>(Lcom/tknetwork/tunnel/activities/LogActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->log(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0059

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a023a

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ListView;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->logView:Landroid/widget/ListView;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance p1, Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1, p0, v0}, Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->adapter:Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->logView:Landroid/widget/ListView;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->logView:Landroid/widget/ListView;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->doBindService()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0f0005

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->doUnbindService()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/tknetwork/tunnel/service/c_05$LogMsg;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 p3, 0x2

    .line 30
    new-array p3, p3, [J

    .line 31
    .line 32
    fill-array-data p3, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/LogActivity;->copy(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 p2, 0x3

    .line 48
    new-array p2, p2, [J

    .line 49
    .line 50
    fill-array-data p2, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :array_0
    .array-data 8
        -0x41a33a4861f506dfL    # -2.6796323273784667E-8
        0x52f924289eb35c43L    # 5.121362016954836E91
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x5466f665b75ab0a1L    # 3.9238064021143384E98
        -0x5dd05011574d9b69L
        0x4616aca4c3ec8643L    # 4.491125465155185E29
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public post_bind()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->log_history()Ljava/util/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->listLog:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/tknetwork/tunnel/service/c_05$LogMsg;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/LogActivity;->adapter:Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-super {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->post_bind()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
