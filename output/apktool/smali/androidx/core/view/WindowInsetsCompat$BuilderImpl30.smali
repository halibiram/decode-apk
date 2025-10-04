.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderImpl30"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method


# virtual methods
.method public setInsets(ILandroidx/core/graphics/Insets;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {v0, p1, p2}, L땲땝땤둠땀뎸땠딁듟둡땪땋땰땨딀돼뒉땀땟듬땡뒨듔땯뒨딟뒙땅땟뒷땦따듌듨딌땝둥땰두듻뒵뒨땡돶뒈듨따딎들뎸뎨돝듸될둠돤듬뒙뒉듐땀든땲듬둡뒘땀듽딨뎸딸듻땝땥딻뎹도땳돤땱둥따둔땬딀됫뒻되뎸딅돸둔돝땬땠땮땳딸돨땟뎰뒹듼땍뎨딌뎸딤돨둣땮땜디듰딟땡딹딻딟뒼된뒬뒈딐되둠듟듼드듽;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {v0, p1, p2}, L땲땝땤둠땀뎸땠딁듟둡땪땋땰땨딀돼뒉땀땟듬땡뒨듔땯뒨딟뒙땅땟뒷땦따듌듨딌땝둥땰두듻뒵뒨땡돶뒈듨따딎들뎸뎨돝듸될둠돤듬뒙뒉듐땀든땲듬둡뒘땀듽딨뎸딸듻땝땥딻뎹도땳돤땱둥따둔땬딀됫뒻되뎸딅돸둔돝땬땠땮땳딸돨땟뎰뒹듼땍뎨딌뎸딤돨둣땮땜디듰딟땡딹딻딟뒼된뒬뒈딐되둠듟듼드듽;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setVisible(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1, p2}, L땲땝땤둠땀뎸땠딁듟둡땪땋땰땨딀돼뒉땀땟듬땡뒨듔땯뒨딟뒙땅땟뒷땦따듌듨딌땝둥땰두듻뒵뒨땡돶뒈듨따딎들뎸뎨돝듸될둠돤듬뒙뒉듐땀든땲듬둡뒘땀듽딨뎸딸듻땝땥딻뎹도땳돤땱둥따둔땬딀됫뒻되뎸딅돸둔돝땬땠땮땳딸돨땟뎰뒹듼땍뎨딌뎸딤돨둣땮땜디듰딟땡딹딻딟뒼된뒬뒈딐되둠듟듼드듽;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroid/view/WindowInsets$Builder;IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
