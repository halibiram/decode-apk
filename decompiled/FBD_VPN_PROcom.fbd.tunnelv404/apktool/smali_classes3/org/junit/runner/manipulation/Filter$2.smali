.class final Lorg/junit/runner/manipulation/Filter$2;
.super Lorg/junit/runner/manipulation/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runner/manipulation/Filter;->matchMethodDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$desiredDescription:Lorg/junit/runner/Description;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Description;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Method "

    .line 8
    .line 9
    invoke-static {v1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/junit/runner/Description;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lorg/junit/runner/Description;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/junit/runner/manipulation/Filter$2;->shouldRun(Lorg/junit/runner/Description;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    return p1
.end method
