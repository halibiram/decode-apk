.class public Landroidx/core/content/UriMatcherCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static asPredicate(Landroid/content/UriMatcher;)Landroidx/core/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriMatcher;",
            ")",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L둥땩딎돴듸뒼딎땳뎽땧딤땣도둠딸돶뒐딀들땬듸뎨땨둔땧딄딅뒛땤듌딟둬딞땸돶돴땩땍딸딽딻딞딽돛돶땥될땐뒙뒙듔땩딝땃뎸땟돶돶돵딟돠돳듽듐땰뒘뒉땳듔둡돝뒹돵땍땋딽땦땋땸되됩딻땵딃땡뎹듸뒨뒐땻둬뒤땳돠딅든땪둔땟땀돼둔딎땜딎땯둠땀땵딜둔뎻듸뒻됩땫뒙뎻뒷듸뎽땹돳뒐뒼두뎽뎨듬돝;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, L둥땩딎돴듸뒼딎땳뎽땧딤땣도둠딸돶뒐딀들땬듸뎨땨둔땧딄딅뒛땤듌딟둬딞땸돶돴땩땍딸딽딻딞딽돛돶땥될땐뒙뒙듔땩딝땃뎸땟돶돶돵딟돠돳듽듐땰뒘뒉땳듔둡돝뒹돵땍땋딽땦땋땸되됩딻땵딃땡뎹듸뒨뒐땻둬뒤땳돠딅든땪둔땟땀돼둔딎땜딎땯둠땀땵딜둔뎻듸뒻됩땫뒙뎻뒷듸뎽땹돳뒐뒼두뎽뎨듬돝;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static synthetic lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/UriMatcher;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/UriMatcherCompat;->lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method
