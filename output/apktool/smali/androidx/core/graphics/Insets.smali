.class public final Landroidx/core/graphics/Insets;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/Insets$Api29Impl;
    }
.end annotation


# static fields
.field public static final NONE:Landroidx/core/graphics/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/graphics/Insets;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/core/graphics/Insets;-><init>(IIII)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/graphics/Insets;->left:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/graphics/Insets;->top:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/graphics/Insets;->right:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 11
    .line 12
    return-void
.end method

.method public static add(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 7
    .line 8
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    .line 9
    .line 10
    add-int/2addr v1, v2

    .line 11
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    .line 12
    .line 13
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 17
    .line 18
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 19
    .line 20
    add-int/2addr p0, p1

    .line 21
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 10
    .line 11
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    .line 18
    .line 19
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 26
    .line 27
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 28
    .line 29
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static min(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 10
    .line 11
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    .line 18
    .line 19
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 26
    .line 27
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 28
    .line 29
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static of(IIII)Landroidx/core/graphics/Insets;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1
    sget-object p0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroidx/core/graphics/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/graphics/Insets;-><init>(IIII)V

    return-object v0
.end method

.method public static of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;
    .locals 3

    .line 3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static subtract(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 7
    .line 8
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    .line 12
    .line 13
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    .line 14
    .line 15
    sub-int/2addr v2, v3

    .line 16
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 17
    .line 18
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 19
    .line 20
    sub-int/2addr p0, p1

    .line 21
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 1
    invoke-static {p0}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/graphics/Insets;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/graphics/Insets;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Landroid/graphics/Insets;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p0}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Landroid/graphics/Insets;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static wrap(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroidx/core/graphics/Insets;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Landroidx/core/graphics/Insets;

    .line 18
    .line 19
    iget v2, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 22
    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    iget v2, p0, Landroidx/core/graphics/Insets;->left:I

    .line 27
    .line 28
    iget v3, p1, Landroidx/core/graphics/Insets;->left:I

    .line 29
    .line 30
    if-eq v2, v3, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    .line 34
    .line 35
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    .line 36
    .line 37
    if-eq v2, v3, :cond_4

    .line 38
    .line 39
    return v1

    .line 40
    :cond_4
    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    .line 41
    .line 42
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 43
    .line 44
    if-eq v2, p1, :cond_5

    .line 45
    .line 46
    return v1

    .line 47
    :cond_5
    return v0

    .line 48
    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/core/graphics/Insets;->right:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget v1, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public toPlatformInsets()Landroid/graphics/Insets;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets$Api29Impl;->of(IIII)Landroid/graphics/Insets;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Insets{left="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/core/graphics/Insets;->left:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", top="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", right="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/core/graphics/Insets;->right:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", bottom="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 39
    .line 40
    const/16 v2, 0x7d

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
