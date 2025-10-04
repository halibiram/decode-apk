.class Landroidx/core/view/WindowInsetsControllerCompat$Impl31;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl30;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl31"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    return-void
.end method


# virtual methods
.method public getSystemBarsBehavior()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 2
    .line 3
    invoke-static {v0}, L땲땝땤둠땀뎸땠딁듟둡땪땋땰땨딀돼뒉땀땟듬땡뒨듔땯뒨딟뒙땅땟뒷땦따듌듨딌땝둥땰두듻뒵뒨땡돶뒈듨따딎들뎸뎨돝듸될둠돤듬뒙뒉듐땀든땲듬둡뒘땀듽딨뎸딸듻땝땥딻뎹도땳돤땱둥따둔땬딀됫뒻되뎸딅돸둔돝땬땠땮땳딸돨땟뎰뒹듼땍뎨딌뎸딤돨둣땮땜디듰딟땡딹딻딟뒼된뒬뒈딐되둠듟듼드듽;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Landroid/view/WindowInsetsController;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setSystemBarsBehavior(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 2
    .line 3
    invoke-static {v0, p1}, L땲땝땤둠땀뎸땠딁듟둡땪땋땰땨딀돼뒉땀땟듬땡뒨듔땯뒨딟뒙땅땟뒷땦따듌듨딌땝둥땰두듻뒵뒨땡돶뒈듨따딎들뎸뎨돝듸될둠돤듬뒙뒉듐땀든땲듬둡뒘땀듽딨뎸딸듻땝땥딻뎹도땳돤땱둥따둔땬딀됫뒻되뎸딅돸둔돝땬땠땮땳딸돨땟뎰뒹듼땍뎨딌뎸딤돨둣땮땜디듰딟땡딹딻딟뒼된뒬뒈딐되둠듟듼드듽;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/view/WindowInsetsController;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
