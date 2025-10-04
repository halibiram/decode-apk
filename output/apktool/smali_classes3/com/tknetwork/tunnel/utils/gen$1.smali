.class Lcom/tknetwork/tunnel/utils/gen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/utils/gen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private I:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field final synthetic this$0:Lcom/tknetwork/tunnel/utils/gen;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/utils/gen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const/16 p1, 0x14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    goto/16 :goto_7

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {p2}, Lcom/tknetwork/tunnel/utils/gen;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tknetwork/tunnel/utils/gen$1;->I:Ljava/lang/String;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v5, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v5}, Lcom/tknetwork/tunnel/utils/gen;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v6, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v6}, Lcom/tknetwork/tunnel/utils/gen;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-object v7, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v7}, Lcom/tknetwork/tunnel/utils/gen;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/utils/gen;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_0

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v1, [J

    const-wide v11, -0x3dca8c4703b97513L    # -9.213581626254268E10

    aput-wide v11, v10, v0

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_1

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v1, [J

    const-wide v11, 0x43b741c6b1ddf0d4L    # 1.67583900359359386E18

    aput-wide v11, v10, v0

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 6
    iget-object v8, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v8}, Lcom/tknetwork/tunnel/utils/gen;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_2

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_3

    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 8
    invoke-static {v7, v8}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 9
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v9, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v9}, Lcom/tknetwork/tunnel/utils/gen;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 11
    invoke-static {v7}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 12
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v3, [J

    fill-array-data v11, :array_4

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_5

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v9, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v9}, Lcom/tknetwork/tunnel/utils/gen;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v3, [J

    fill-array-data v11, :array_6

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 17
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v10, -0x761edb34dbb068e6L    # -4.355509366225682E-261

    aput-wide v10, v1, v0

    invoke-direct {v9, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->I:Ljava/lang/String;

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_7

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/gen;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_8

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_9

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    :goto_0
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_a

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_b

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_c

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_d

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    goto :goto_0

    .line 20
    :cond_7
    :goto_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v4, [J

    fill-array-data v9, :array_e

    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    invoke-static {v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_f

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v4, [J

    fill-array-data v9, :array_10

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 23
    :cond_8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v4, [J

    fill-array-data v9, :array_11

    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_12

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_13

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_14

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v2, [J

    fill-array-data v9, :array_15

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 25
    :cond_9
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_a

    .line 26
    invoke-static {v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_16

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v2, [J

    fill-array-data v9, :array_17

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 28
    :cond_a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v4, [J

    fill-array-data v9, :array_18

    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    .line 29
    :cond_b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_19

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 30
    :cond_c
    :goto_2
    invoke-static {v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_1a

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v2, [J

    fill-array-data v9, :array_1b

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_1c

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_1d

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v4, [J

    fill-array-data v9, :array_1e

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_1f

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_d
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v4, [J

    fill-array-data v9, :array_20

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_21

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_e
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v2, [J

    fill-array-data v9, :array_22

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_23

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_f
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x5

    new-array v6, v6, [J

    fill-array-data v6, :array_24

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_10
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 42
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->b:Ljava/lang/String;

    .line 43
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_25

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xb

    new-array v1, v1, [J

    fill-array-data v1, :array_26

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 45
    :cond_11
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->b:Ljava/lang/String;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_27

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 46
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x15

    new-array v1, v1, [J

    fill-array-data v1, :array_28

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 47
    :cond_12
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->b:Ljava/lang/String;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_29

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 48
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x16

    new-array v1, v1, [J

    fill-array-data v1, :array_2a

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 49
    :cond_13
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->b:Ljava/lang/String;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_2b

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_2c

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 51
    :cond_14
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->b:Ljava/lang/String;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_2d

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_2e

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 53
    :cond_15
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->b:Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_2f

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 54
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x18

    new-array v1, v1, [J

    fill-array-data v1, :array_30

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 55
    :cond_16
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->b:Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_31

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 56
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_32

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_17
    :goto_4
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/gen;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_33

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_18
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_34

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_35

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 61
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/gen;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_19

    .line 62
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_36

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_37

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 64
    :cond_19
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/gen;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/gen;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_5

    .line 65
    :cond_1a
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_38

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 67
    :cond_1b
    :goto_5
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_39

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_3a

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1c
    :goto_6
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_3b

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/utils/gen;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_3c

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_3d

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_3e

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_3f

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_40

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_41

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_42

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_43

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_44

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_45

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_46

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_47

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_48

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_49

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-static {}, Lcom/tknetwork/tunnel/utils/gen;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_4a

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/gen;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$1;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/gen;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/tknetwork/tunnel/utils/gen;)Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;->onGenerate(Ljava/lang/String;)V

    :goto_7
    return-void

    nop

    :array_0
    .array-data 8
        -0x11ed7a616cf393c9L    # -1.6737999326029676E222
        -0x5e03ab1b7332fffaL
    .end array-data

    :array_1
    .array-data 8
        0x45cd3e846e1b8ea5L    # 1.8101288138276814E28
        -0xfc06c57b8443529L    # -4.90235323414073E232
    .end array-data

    :array_2
    .array-data 8
        0x2c2d46e145c93396L    # 6.853242644912165E-96
        -0x78771206888e68bL
        0x188fa8b06c5b02baL
    .end array-data

    :array_3
    .array-data 8
        0x71acd74e717e624aL    # 3.7561030400168156E239
        0x29660a1120e44b52L    # 2.93257987176432E-109
    .end array-data

    :array_4
    .array-data 8
        0x65fb8c94320b8113L    # 1.8290491186944686E183
        0xb8271a9e0a73022L
    .end array-data

    :array_5
    .array-data 8
        0x69a459378ad62cc8L    # 7.787886364091605E200
        -0x59ce35bfd9c7f9b2L
        0x4b9aa076d4cb1049L    # 1.6322189011199114E56
    .end array-data

    :array_6
    .array-data 8
        -0xdf27de4c36cae4cL    # -2.4595161355674993E241
        0x4d0dd999cf0dfd5eL    # 1.5349473837142048E63
    .end array-data

    :array_7
    .array-data 8
        -0x6e5d086123d08655L
        0x13eed09842f2cbbL
    .end array-data

    :array_8
    .array-data 8
        0x2c4a44bd8fbd94c4L    # 2.4596139430604636E-95
        -0x24cab8a37acc6eceL    # -2.3599584199184384E131
        0x16696e473d6634a3L
    .end array-data

    :array_9
    .array-data 8
        0x719c0fba540ad3a3L    # 1.8272858029008773E239
        -0xbe594da8aab1351L
        -0x5acf6afe5bbc8fe3L    # -1.495134484898536E-129
        0x10871407efb3345L
    .end array-data

    :array_a
    .array-data 8
        0xb9c7fc1c36e1149L
        0x5c8b33940449b957L    # 6.3267478605805635E137
        -0x14231000d731a3e7L    # -3.8053778795406566E211
    .end array-data

    :array_b
    .array-data 8
        0x453796670d051d95L    # 2.8515549776395133E25
        0x68eb8281459a1ebfL    # 2.570480857371585E197
        0xa313d56c31f920aL
    .end array-data

    :array_c
    .array-data 8
        0x56e5a7f4189f161aL    # 4.068815897905029E110
        -0x655d2b85d314c565L
        -0x6fbe57aa834bdea9L    # -2.274698699815988E-230
    .end array-data

    :array_d
    .array-data 8
        0x680db9de17997457L    # 1.695291445014137E193
        0x21baf58fc11c1986L    # 3.373413010337633E-146
    .end array-data

    :array_e
    .array-data 8
        -0x7031ec131eb886f7L
        -0x3d512afe5dc6f6f6L    # -1.695010213798852E13
        0x5812cc95ebda5aeaL    # 1.851811804854564E116
    .end array-data

    :array_f
    .array-data 8
        0x759f4d4bbed597f6L    # 3.759997104886216E258
        0x3d7d8319de87886dL    # 1.6775694282110816E-12
    .end array-data

    :array_10
    .array-data 8
        -0x1cf4de0791200513L    # -1.279972238834895E169
        -0x7b7798f646d35792L    # -8.012874154798983E-287
        -0x756f34cf5b584a6dL    # -8.737966898415526E-258
    .end array-data

    :array_11
    .array-data 8
        0x7555d7e14ae5d53cL    # 1.6398880302059282E257
        -0x29726e6e9fed44e9L    # -8.680396719278495E108
        -0x300d27bd03abb7c3L    # -1.3637972093651718E77
    .end array-data

    :array_12
    .array-data 8
        0x378e2c7cf0ac17baL    # 4.3297252953882557E-41
        0x5da52c670a46bda0L    # 1.2909800451839273E143
    .end array-data

    :array_13
    .array-data 8
        0x20907e912004a685L    # 7.87333566544184E-152
        0x435316446359e2d9L    # 2.14900301516993E16
        -0x174aa8d7075835eaL    # -2.492534328614076E196
        -0x7a2efdf89008b053L
    .end array-data

    :array_14
    .array-data 8
        -0x513658ac3fda4d53L    # -2.641069899767602E-83
        0x6f03a4ac86a9b231L    # 5.816748184176995E226
    .end array-data

    :array_15
    .array-data 8
        0x7ab23a891c2feb71L    # 1.0588405335875245E283
        0x38d0e7d0b92f8f1eL    # 5.087322466775066E-35
        -0x59ba11f350b999fbL
        0x5b929537dd4b82cfL    # 1.319019478814218E133
    .end array-data

    :array_16
    .array-data 8
        -0x6bf0ad8e41708172L
        -0x1f04aef788070e00L    # -1.5001799102860492E159
    .end array-data

    :array_17
    .array-data 8
        -0x7adb67375888fbc2L    # -6.925547255741447E-284
        0x3390757a64e9c34L
        0x3eecb56ab373b730L    # 1.3689355553538404E-5
        0x46ea4d4b5f59c90bL    # 4.2677323588498436E33
    .end array-data

    :array_18
    .array-data 8
        0x2df4a4b26ac6b2b0L    # 2.5943071222946357E-87
        -0x369516df8e52c907L    # -4.8010206233742693E45
        -0x27fe67290154ed95L    # -8.66697883967374E115
    .end array-data

    :array_19
    .array-data 8
        0x56a26620f94be06cL    # 2.1605347786039403E109
        0x3d1392a57603c10L
        -0xa74ae94654d34e1L
    .end array-data

    :array_1a
    .array-data 8
        0x3bec9f426ee0c723L    # 4.8487736041242446E-20
        -0x4fb8cd022ec0686cL
    .end array-data

    :array_1b
    .array-data 8
        -0x27a6695f26835017L    # -4.032935899989488E117
        -0x6df893bbaf071665L    # -8.099798064497134E-222
        -0x36f9f55fab83edc2L    # -6.144275933813314E43
        0x240b0894bfa13f05L    # 4.649160607982559E-135
    .end array-data

    :array_1c
    .array-data 8
        0x4c0f17fa52119e47L    # 2.439726101305541E58
        -0xed42b5d15d17623L    # -1.4158242419284311E237
    .end array-data

    :array_1d
    .array-data 8
        -0x51adfb652c429e5cL    # -1.449197315151623E-85
        0x7f863a67565c1a17L    # 1.9511412805301583E306
    .end array-data

    :array_1e
    .array-data 8
        0x45bdb75b21ef23a3L    # 9.196729071132776E27
        -0x3c0960a9f9dc8514L    # -2.6081858791943356E19
        0x35b06f0273b3c2f9L    # 4.392322943372042E-50
    .end array-data

    :array_1f
    .array-data 8
        0x1f15de337d43892aL    # 6.221725271680274E-159
        -0x170fd5865b7ba4c0L    # -3.021047551204399E197
    .end array-data

    :array_20
    .array-data 8
        0x7e6c2f48a570bdL
        -0x12490a1e7b8034e8L    # -3.2420347242917415E220
        0x3eb6159e2bca743bL    # 1.3163354843145073E-6
    .end array-data

    :array_21
    .array-data 8
        0x4f9a9601cc78a043L    # 3.0062933842901384E75
        -0x6320140edad53a59L
    .end array-data

    :array_22
    .array-data 8
        0x38ae46c3c8400d54L    # 1.1388725258465175E-35
        -0x3a6c10d7407390eL    # -9.84116442544678E290
        0x12276aa794496832L
        -0x70b76f4451706094L    # -4.828770837509124E-235
    .end array-data

    :array_23
    .array-data 8
        -0x25fbefd67ba872b1L    # -4.2441133285925446E125
        -0x40e1fcf654ad59L
    .end array-data

    :array_24
    .array-data 8
        0x69f9275d7d8aae5eL    # 3.0806346381003978E202
        0x4805230b7c12e850L    # 8.990640396218023E38
        -0x369839575376f18fL    # -4.2417821516575074E45
        -0x23343f44b4211a5bL    # -1.0327988143655696E139
        -0x5a1716f4fc026b8eL    # -4.599929838857347E-126
    .end array-data

    :array_25
    .array-data 8
        0x7da39e27b63bd3a3L    # 1.6037471420871885E297
        -0x6d6bab7990329775L
    .end array-data

    :array_26
    .array-data 8
        -0x44f84c24a85a6ff3L    # -2.45078784657281E-24
        0x7c3f940df4ced6baL    # 3.077408193388395E290
        -0x6cdab32d037d4683L    # -1.930877200054956E-216
        0x197f2b6340042b18L
        0x5dcaa67ae2bc1250L    # 6.499654272110293E143
        -0x61bd2f0e1b9a384bL    # -6.534977052594011E-163
        0x39d483d9d818461bL    # 4.045878805995117E-30
        -0x129b04c344d26a80L    # -9.258086496697712E218
        -0x4894d331dcea8c6L
        -0x27e5a5d1971c3761L    # -2.595830829213115E116
        0x7b5687fde9997be7L    # 1.3401720941425376E286
    .end array-data

    :array_27
    .array-data 8
        0x3660db2acd48a1b2L    # 9.226741277300247E-47
        -0x682e038aeeda5b43L    # -6.15972445170478E-194
    .end array-data

    :array_28
    .array-data 8
        -0x69247958a83404b0L
        0x2d6f250aca454468L    # 7.644611154634406E-90
        -0x5e6ffc0b2efdff23L    # -5.010042253211484E-147
        0x56f23d75bafaa187L    # 6.854015860555E110
        -0x5b6b02969343e949L
        -0x4ccc9950fb2fdcb3L    # -4.71614812335722E-62
        -0x69d7aaae2fb09eb4L    # -6.20888427144869E-202
        0x7a6fc407d5726aa1L    # 5.7661376016080326E281
        -0x590de400b9ef407dL    # -4.383136018107803E-121
        -0x6b20d6116c3f0b15L    # -3.79169478287373E-208
        -0x21037ea219147da9L    # -3.644887079045808E149
        -0x8213ce4fa25f12eL
        0x232d6076fdbdf310L
        -0x1228b941e2d01ff1L    # -1.3146540915267243E221
        -0xc204cdd4b35feefL
        -0x69e865926a8394c2L    # -3.011302923709221E-202
        0xc8840e09d4fcfc5L
        -0xec88c93efeee6a6L    # -2.3860278930601934E237
        -0x657f957cf35c839L    # -1.064749777902787E278
        0x399af2c78dba0424L    # 3.321641507739889E-31
        -0x1757e53bb7f8a47fL    # -1.407687837188729E196
    .end array-data

    :array_29
    .array-data 8
        -0x7df918842c735367L    # -6.84022001481697E-299
        0x7475c62640ac0f55L    # 9.97734561189173E252
        0x66fe944dd8ee0984L    # 1.3305311111141714E188
    .end array-data

    :array_2a
    .array-data 8
        -0x63f8f2805a08e5f2L
        0x1d3c55c277c518f1L    # 7.508023505364139E-168
        -0x31322f8269c9e2ddL    # -4.115430775870614E71
        0x64b4fbd9f14ac2ecL    # 1.3286221480997483E177
        -0x2982e8f42209cf92L    # -4.2699476274550306E108
        0x52bdaf089811fcdcL    # 3.7791759688219675E90
        -0x2efd1257a03e653dL    # -1.7954842563201265E82
        0x70c2fc6dcbb53ae4L    # 1.509180757484765E235
        -0x4c6311b184ffde7cL    # -4.5009334865628884E-60
        -0x5a30c69d3658c106L
        0xb90c950d7e98caL
        0x714fafea6212f0bfL    # 6.4480745822965785E237
        -0x560efccdf4c03601L
        -0x65bb475094fc1346L
        0xfe17065f1a0ef2eL    # 3.510235972927101E-232
        0x3f42c271185051eeL    # 5.724956723747712E-4
        -0x8db90b6a3898668L    # -8.236348879972391E265
        -0x5c8be1cfe1a7cbcaL    # -6.75748528637864E-138
        -0xc90142cc41bb28L
        -0x6071540c4bb7e32cL
        -0x288f99a8b803604bL    # -1.5775971967546005E113
        0xdb2fedeff6854f6L
    .end array-data

    :array_2b
    .array-data 8
        -0x742ebf4fd4a56d26L    # -9.412834122900766E-252
        0xd38b8293eb19862L
    .end array-data

    :array_2c
    .array-data 8
        -0xa5cff741d90465L
        -0xa5c011398bbecd6L    # -4.80380049394872E258
        -0x52c9db73a746e907L    # -6.793806901307323E-91
        -0x78fc545edcaa4724L    # -7.10178902641109E-275
        -0x1ccf2dfc905dc206L    # -6.347942521857853E169
        -0x604e44f36111bb95L    # -5.165676311613589E-156
        0x58d5b53da6f09082L    # 8.758657502451785E119
        -0x6cd63572fd4a490cL
        0x44d563ec230d2176L    # 4.040517570472572E23
        0x68f1aae7b617a5f9L    # 3.3016777663114674E197
        -0x67ca77dd08db5692L    # -4.719356444124656E-192
        -0x17f5f872db424966L
        -0x23d124679b6e6036L    # -1.1214319841953707E136
        -0x2f75407b42913735L    # -9.911105937532721E79
        0x575ac166af2288b8L    # 6.434444069189121E112
        -0x52117d9337379d94L    # -1.917105301388935E-87
        0xa85ac45ecb1812cL
        0x1978f7717f47fed5L    # 5.738014836611921E-186
        0x9294f657889940aL    # 1.5698870356310008E-264
        0x25fca14038a90cL
    .end array-data

    :array_2d
    .array-data 8
        -0x7c71eb8425acb655L
        -0x4126a9ce0c0bb47L    # -9.009403851377923E288
    .end array-data

    :array_2e
    .array-data 8
        0x10137e56810f9258L
        -0x1bcfbcebf482e49L
        -0x56af609b61df5d8bL
        -0x3070e75ea1c30f1dL    # -1.758152044681324E75
        0x3c35fe31f895d0eaL
        -0x3b01889f81f2ae47L    # -2.3019697606460824E24
        0x78f6805e4b06d206L    # 4.869073739663137E274
        0x395f2112fd370329L    # 2.398106028919996E-32
        -0x4db4c1eabd2a6924L    # -2.0209618553437758E-66
        -0x6a3d06a894402b2fL    # -7.56469836776549E-204
        0x2a2847266837ef72L
        -0x18fdcd5b7f86d5e7L    # -1.5836045261004166E188
        -0x5d30c2e8b0e4d3fdL    # -5.123469057111868E-141
        0x55c6002a752e74ffL    # 1.5768267313546078E105
        0x438ad11fa53d53c2L    # 2.41545063709702208E17
        0x661b30d33480b861L    # 7.221012948061433E183
        -0x79715c2ee3de0224L    # -4.321171275878435E-277
        -0x3696af1c72acf0d8L    # -4.516520358300103E45
        0x19770d990e00021dL    # 5.298248657009418E-186
        -0x54e7cac2576522e7L
    .end array-data

    :array_2f
    .array-data 8
        -0x64f65152241cbe2dL    # -1.980556232207182E-178
        -0x4c3d171651507fceL    # -2.3535214412876285E-59
        -0x226847c6a2aa403cL    # -7.231123626812477E142
    .end array-data

    :array_30
    .array-data 8
        0x6a1f17159ad232fbL    # 1.5230713165655815E203
        -0x66e92ed58ffaba2bL    # -8.193741918551156E-188
        0x22a5d4143fcae4f2L    # 8.950238957957574E-142
        -0x6209b336c0d7346cL    # -2.420283183505303E-164
        -0x54c45f5c5a1549bdL
        -0xd9ced70c98db485L
        -0x34d530db99d96ce6L    # -1.2839031729543769E54
        0x3793cd86c0430d3eL    # 5.683135615035547E-41
        -0x49349510d03a6853L    # -9.605099499592744E-45
        -0x177637665df25d1bL    # -3.7643557661463543E195
        -0x65e7da6b76b14f84L    # -5.682797611333061E-183
        0x276f47d5fe16a9e9L    # 9.690962685641101E-119
        -0x56006884be08fb02L
        -0x3124e2678017782aL    # -7.485801996138328E71
        -0x1b534a118e291364L    # -9.089307450173204E176
        -0x2326f4ebfb6f466bL    # -1.8639279585468398E139
        -0x4fb061d6671052c4L    # -5.461136841785597E-76
        0x1124fe4a18cf17eeL    # 4.430924521050644E-226
        -0x5a36727a5b3d08b5L    # -1.179643226018405E-126
        -0x61c7880076c76939L
        -0x738f368ee0e8c67fL    # -9.378505486998745E-249
        0x20947a9944918725L    # 9.775271860088916E-152
        0x653fd8478a89d80cL    # 5.161744771043065E179
        -0x656eec6bacbcadd7L
    .end array-data

    :array_31
    .array-data 8
        -0x154ad452468dae86L    # -1.0620149238503971E206
        -0x5fdde1cf3e1986b7L    # -6.75648531583282E-154
    .end array-data

    :array_32
    .array-data 8
        0x787b440366d810afL    # 2.304689279573666E272
        -0xa6d05c5844ba8e1L    # -2.279576990447168E258
        -0x1d4176e4002f65a3L    # -4.501568152055122E167
        0x478376697f53566dL    # 3.233770336249659E36
    .end array-data

    :array_33
    .array-data 8
        -0xcfa05c53efd48a4L
        -0x2c0ab02f274952c6L    # -2.84510542814185E96
        0x2764e994e59ed67eL    # 6.478824040908219E-119
        0x647f50584074d157L    # 1.2391786008060246E176
        0x48f24b4dbf3afea1L    # 2.549833068434694E43
        0x6ab78e513be604eL
    .end array-data

    :array_34
    .array-data 8
        0xdb1ffd9bd4133f4L
        -0x3e22976f0c847297L    # -1.973568461930506E9
    .end array-data

    :array_35
    .array-data 8
        0x22a1bced6246108dL    # 7.273050996256347E-142
        -0x1b1d1a9395563a49L    # -9.571535175850685E177
        0x7799a2f228179e56L    # 1.3226197967244379E268
    .end array-data

    :array_36
    .array-data 8
        -0x7cf05658641f9690L
        0x7b3480e2f8393d88L    # 3.0488996582103485E285
    .end array-data

    :array_37
    .array-data 8
        0x63a1ba75b42b7fbL
        -0x5b3e595dab11ecc3L
        -0xe96b143219157f7L    # -2.059951636831662E238
        -0x1592b4d80f7c0857L    # -4.5921862799567817E204
    .end array-data

    :array_38
    .array-data 8
        -0x4ab8c431d2fd2713L    # -4.851405122975596E-52
        0x427e7d2bfdd310dL
        0x5b4c42f592aa1695L    # 6.268797594946752E131
        0x5c232b8c6ed3030bL    # 6.966789724926207E135
    .end array-data

    :array_39
    .array-data 8
        -0x1f835b5580bcd1aaL    # -6.144686087563714E156
        0x70b6c5658de11a7aL    # 9.050243837980894E234
    .end array-data

    :array_3a
    .array-data 8
        0x5e030464d1482541L    # 7.420850266072919E144
        0x4d0eb160a540d5c1L    # 1.5782898584384586E63
        0x6385d692dfbacddcL    # 2.637326897052268E171
        -0x7c369c8fc1409b26L
    .end array-data

    :array_3b
    .array-data 8
        0x32773f282ba55e4fL    # 1.3796292397797665E-65
        -0x28c118a2ed9cb2ddL    # -1.8580174212756029E112
    .end array-data

    :array_3c
    .array-data 8
        -0x5f6c129eed61ecf1L    # -9.511956050134168E-152
        -0x13e70c5180f4602eL    # -5.250011476389722E212
        -0x3ab42ab7ae17e6d5L    # -6.729639051602903E25
    .end array-data

    :array_3d
    .array-data 8
        0xd7ffa21b1b86d54L
        -0x72d88c34dddd692dL    # -2.683362355129779E-245
        0x6d964ae5ad86ddaaL    # 7.869315085241974E219
    .end array-data

    :array_3e
    .array-data 8
        -0x67e468dd5eeead03L    # -1.511820890481463E-192
        0x2873ad97c2e2bd32L    # 7.990698481760854E-114
        -0x14b49173519a9ed0L    # -7.045662867564043E208
    .end array-data

    :array_3f
    .array-data 8
        0x59bec6da4e14d07bL    # 2.0345166563290583E124
        0x1fe4cbf977173a20L    # 4.847169881232381E-155
        0x10683862f99ad27fL
    .end array-data

    :array_40
    .array-data 8
        0x2c81df644aa56016L    # 2.6775629293759343E-94
        -0x451e4b0ce8029632L    # -4.577109392373592E-25
        0x785e870e2fbab0faL    # 6.451017244819404E271
    .end array-data

    :array_41
    .array-data 8
        -0x2fded3d56ffef6b6L    # -9.94221241914086E77
        0x7ce1eb6f5a9b12c4L    # 3.576479548061433E293
        -0x75738fd8037ba38dL    # -7.398342906381248E-258
    .end array-data

    :array_42
    .array-data 8
        0x1812c81d72922b15L
        0x3e8198455d52e04eL    # 1.3109153821299518E-7
        0x2210fdf543557b61L
    .end array-data

    :array_43
    .array-data 8
        0x4026e372a841358cL    # 11.44423414035807
        0x6ba77a6e949e658L
        0x6ecbb7373669bde9L    # 5.129468954495608E225
    .end array-data

    :array_44
    .array-data 8
        -0x3055a70bb64e7924L    # -5.9586513088729505E75
        0x3a51bba0d61741d9L    # 8.952838159721964E-28
        -0x4383b4baf77597d5L    # -2.4541152196789206E-17
    .end array-data

    :array_45
    .array-data 8
        0x7368208a84aae844L    # 8.434742295013659E247
        -0x775b77c9437dd751L
        0x6ca99d469f7fefd6L    # 2.7593729781472386E215
    .end array-data

    :array_46
    .array-data 8
        -0x6771e7952b8e2faaL    # -2.11082673448647E-190
        0x38a29865addbb79fL    # 6.994774996999349E-36
        -0x207f1fcea87fa4c3L    # -1.104818620628897E152
    .end array-data

    :array_47
    .array-data 8
        -0x20f9891cad68e900L    # -5.744904387647717E149
        0x5662d400349652aL
        0x3a0574094c4f853cL    # 3.3847287057974633E-29
    .end array-data

    :array_48
    .array-data 8
        -0x71ec55c75e5544b9L    # -7.372856952483284E-241
        -0x5a893bfa4b1865c1L    # -3.284302075357636E-128
        -0x7df3299e0cea06a2L    # -8.612136391082405E-299
    .end array-data

    :array_49
    .array-data 8
        0x49533c4429e97bd3L    # 1.71585636335841E45
        -0x201e3d8fb2c4d54L    # -7.87673154902583E298
        -0xd1648883969c8dfL    # -3.511892704148631E245
    .end array-data

    :array_4a
    .array-data 8
        -0x2c436c55ebc76868L    # -2.3843634423384137E95
        0x2cedd9f364d762f1L    # 2.862171213196409E-92
        0x5f23b8544b8d3b32L    # 2.0172306693855865E150
    .end array-data
.end method
