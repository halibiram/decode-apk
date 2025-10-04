.class public final Landroidx/core/content/IntentSanitizer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final HISTORY_STACK_FLAGS:I = 0x7debf000

.field private static final RECEIVER_FLAGS:I = 0x78200000


# instance fields
.field private mAllowAnyComponent:Z

.field private mAllowClipDataText:Z

.field private mAllowIdentifier:Z

.field private mAllowSelector:Z

.field private mAllowSomeComponents:Z

.field private mAllowSourceBounds:Z

.field private mAllowedActions:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedCategories:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipData:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipDataUri:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedComponents:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedData:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllowedFlags:I

.field private mAllowedPackages:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedTypes:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Landroidx/core/util/Predicate;

    .line 11
    .line 12
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Landroidx/core/util/Predicate;

    .line 19
    .line 20
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Landroidx/core/util/Predicate;

    .line 27
    .line 28
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Landroidx/core/util/Predicate;

    .line 35
    .line 36
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 37
    .line 38
    const/4 v1, 0x6

    .line 39
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Landroidx/core/util/Predicate;

    .line 43
    .line 44
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 45
    .line 46
    const/4 v1, 0x7

    .line 47
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Landroidx/core/util/Predicate;

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowClipDataText:Z

    .line 61
    .line 62
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    .line 70
    .line 71
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 72
    .line 73
    const/16 v1, 0x9

    .line 74
    .line 75
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Landroidx/core/util/Predicate;

    .line 79
    .line 80
    return-void
.end method

.method private static synthetic lambda$allowAnyComponent$10(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$allowClipDataUriWithAuthority$11(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$allowComponentWithPackage$9(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$allowDataWithAuthority$8(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$allowExtra$12(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$allowExtra$13(Ljava/lang/Class;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method private static synthetic lambda$allowExtra$14(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$allowExtraOutput$16(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$allowExtraStreamUriWithAuthority$15(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$1(Landroid/net/Uri;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$2(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$3(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$4(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$5(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$6(Landroid/net/Uri;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$7(Landroid/content/ClipData;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$5(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowComponentWithPackage$9(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowClipDataUriWithAuthority$11(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Ljava/lang/Class;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtra$13(Ljava/lang/Class;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$4(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtraOutput$16(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtraStreamUriWithAuthority$15(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtra$14(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowAnyComponent$10(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$1(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$6(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowDataWithAuthority$8(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtra$12(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/content/ClipData;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$7(Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public allowAction(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowAction(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowAction(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowAnyComponent()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowAnyComponent:Z

    .line 3
    .line 4
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Landroidx/core/util/Predicate;

    .line 11
    .line 12
    return-object p0
.end method

.method public allowCategory(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowCategory(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowCategory(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowClipData(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Landroidx/core/util/Predicate;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Landroidx/core/util/Predicate;

    .line 11
    .line 12
    return-object p0
.end method

.method public allowClipDataText()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowClipDataText:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public allowClipDataUri(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    .line 11
    .line 12
    return-object p0
.end method

.method public allowClipDataUriWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowClipDataUri(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public allowComponent(Landroid/content/ComponentName;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, L둥땩딎돴듸뒼딎땳뎽땧딤땣도둠딸돶뒐딀들땬듸뎨땨둔땧딄딅뒛땤듌딟둬딞땸돶돴땩땍딸딽딻딞딽돛돶땥될땐뒙뒙듔땩딝땃뎸땟돶돶돵딟돠돳듽듐땰뒘뒉땳듔둡돝뒹돵땍땋딽땦땋땸되됩딻땵딃땡뎹듸뒨뒐땻둬뒤땳돠딅든땪둔땟땀돼둔딎땜딎땯둠땀땵딜둔뎻듸뒻됩땫뒙뎻뒷듸뎽땹돳뒐뒼두뎽뎨듬돝;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, L둥땩딎돴듸뒼딎땳뎽땧딤땣도둠딸돶뒐딀들땬듸뎨땨둔땧딄딅뒛땤듌딟둬딞땸돶돴땩땍딸딽딻딞딽돛돶땥될땐뒙뒙듔땩딝땃뎸땟돶돶돵딟돠돳듽듐땰뒘뒉땳듔둡돝뒹돵땍땋딽땦땋땸되됩딻땵딃땡뎹듸뒨뒐땻둬뒤땳돠딅든땪둔땟땀돼둔딎땜딎땯둠땀땵딜둔뎻듸뒻됩땫뒙뎻뒷듸뎽땹돳뒐뒼두뎽뎨듬돝;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowComponent(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowComponent(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSomeComponents:Z

    .line 5
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowComponentWithPackage(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowComponent(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public allowData(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Landroidx/core/util/Predicate;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Landroidx/core/util/Predicate;

    .line 11
    .line 12
    return-object p0
.end method

.method public allowDataWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowData(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public allowExtra(Ljava/lang/String;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Predicate;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    .line 10
    :cond_0
    invoke-interface {v0, p2}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p2

    .line 11
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowExtra(Ljava/lang/String;Ljava/lang/Class;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, L딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/core/util/Predicate<",
            "TT;>;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, L딹듸디듽따뒙땧뎸돤듬뒙돶듌된드땀돼듨뒀둑땲듽땲땱돤디땰뎡듰뒐듬들땳뒈뒈땪땵뒛듼땰땀두뎸땡뒨둬땯뒙딎뒛든뎬땨드돷땜됫땮땩뎰뎻뒨둔땰딝뎽뒝듌땄땟땡땃딨돷땸뒘돷둡뎹뒀뒐돸딐둘뒐땍뎰땟둘듸땳뒝딹땔땣돼딄돷딄딃뎰땯딎딅도땵뒋딅땨딨땯뒙돰뎰땍딎딟됨듨뒋뒀뒐딐뒬될땱땐둬듰뒐;

    invoke-direct {v0, p2, p3}, L딹듸디듽따뒙땧뎸돤듬뒙돶듌된드땀돼듨뒀둑땲듽땲땱돤디땰뎡듰뒐듬들땳뒈뒈땪땵뒛듼땰땀두뎸땡뒨둬땯뒙딎뒛든뎬땨드돷땜됫땮땩뎰뎻뒨둔땰딝뎽뒝듌땄땟땡땃딨돷땸뒘돷둡뎹뒀뒐돸딐둘뒐땍뎰땟둘듸땳뒝딹땔땣돼딄돷딄딃뎰땯딎딅도땵뒋딅땨딨땯뒙돰뎰땍딎딟됨듨뒋뒀뒐딐뒬될땱땐둬듰뒐;-><init>(Ljava/lang/Class;Landroidx/core/util/Predicate;)V

    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowExtraOutput(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 2
    const-string v0, "output"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowExtraOutput(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    const-string p1, "output"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowExtraStream(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    const-string v0, "android.intent.extra.STREAM"

    .line 2
    .line 3
    const-class v1, Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public allowExtraStreamUriWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    const-string p1, "android.intent.extra.STREAM"

    .line 11
    .line 12
    const-class v1, Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v1, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public allowFlags(I)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 5
    .line 6
    return-object p0
.end method

.method public allowHistoryStackFlags()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 2
    .line 3
    const v1, 0x7debf000

    .line 4
    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 8
    .line 9
    return-object p0
.end method

.method public allowIdentifier()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowIdentifier:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public allowPackage(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowPackage(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowPackage(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowReceiverFlags()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 2
    .line 3
    const/high16 v1, 0x78200000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 7
    .line 8
    return-object p0
.end method

.method public allowSelector()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSelector:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public allowSourceBounds()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSourceBounds:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public allowType(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowType(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, L딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowType(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Landroidx/core/content/IntentSanitizer;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowAnyComponent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSomeComponents:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :cond_0
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSomeComponents:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 17
    .line 18
    const-string v1, "You must call either allowAnyComponent or one or more of the allowComponent methods; but not both."

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_2
    :goto_0
    new-instance v0, Landroidx/core/content/IntentSanitizer;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Landroidx/core/content/IntentSanitizer;-><init>(Landroidx/core/content/IntentSanitizer$1;)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$102(Landroidx/core/content/IntentSanitizer;I)I

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Landroidx/core/util/Predicate;

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$202(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Landroidx/core/util/Predicate;

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$302(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Landroidx/core/util/Predicate;

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$402(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Landroidx/core/util/Predicate;

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$502(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Landroidx/core/util/Predicate;

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$602(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 58
    .line 59
    .line 60
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowAnyComponent:Z

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$702(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Landroidx/core/util/Predicate;

    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$802(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    .line 71
    .line 72
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$902(Landroidx/core/content/IntentSanitizer;Ljava/util/Map;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowClipDataText:Z

    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1002(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1102(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Landroidx/core/util/Predicate;

    .line 86
    .line 87
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1202(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowIdentifier:Z

    .line 91
    .line 92
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1302(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 93
    .line 94
    .line 95
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSelector:Z

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1402(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 98
    .line 99
    .line 100
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSourceBounds:Z

    .line 101
    .line 102
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1502(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 103
    .line 104
    .line 105
    return-object v0
.end method
