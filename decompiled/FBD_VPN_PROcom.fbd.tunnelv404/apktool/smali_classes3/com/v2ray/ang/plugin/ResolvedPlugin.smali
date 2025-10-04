.class public abstract Lcom/v2ray/ang/plugin/ResolvedPlugin;
.super Lcom/v2ray/ang/plugin/Plugin;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010(\u001a\u00020)2\u0006\u0010\"\u001a\u00020\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\r8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0012\u001a\u00020\u00138VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\r8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u000fR\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u000fR\u0014\u0010$\u001a\u00020%8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcom/v2ray/ang/plugin/ResolvedPlugin;",
        "Lcom/v2ray/ang/plugin/Plugin;",
        "resolveInfo",
        "Landroid/content/pm/ResolveInfo;",
        "<init>",
        "(Landroid/content/pm/ResolveInfo;)V",
        "getResolveInfo",
        "()Landroid/content/pm/ResolveInfo;",
        "componentInfo",
        "Landroid/content/pm/ComponentInfo;",
        "getComponentInfo",
        "()Landroid/content/pm/ComponentInfo;",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "id$delegate",
        "Lkotlin/Lazy;",
        "version",
        "",
        "getVersion",
        "()I",
        "version$delegate",
        "versionName",
        "getVersionName",
        "versionName$delegate",
        "label",
        "",
        "getLabel",
        "()Ljava/lang/CharSequence;",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "getIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "packageName",
        "getPackageName",
        "directBootAware",
        "",
        "getDirectBootAware",
        "()Z",
        "getPackageInfo",
        "Landroid/content/pm/PackageInfo;",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final id$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resolveInfo:Landroid/content/pm/ResolveInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final version$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final versionName$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1    # Landroid/content/pm/ResolveInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/v2ray/ang/plugin/Plugin;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 23
    .line 24
    new-instance p1, L땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p1, p0, v0}, L땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻;-><init>(Lcom/v2ray/ang/plugin/ResolvedPlugin;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->id$delegate:Lkotlin/Lazy;

    .line 35
    .line 36
    new-instance p1, L땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {p1, p0, v0}, L땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻;-><init>(Lcom/v2ray/ang/plugin/ResolvedPlugin;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->version$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance p1, L땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻;

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    invoke-direct {p1, p0, v0}, L땅땪뒹뒨땜뎻돨돴땧딁되듌돷들듌땧딻둡땤돤땐뎹땝뒛둑뒈뒈돳돶땯돠딻된뒾뎠듻땝뎸돤땝따듌땹뒛뒾디땲땻땸딝뒉땸뒨드딻뒝돳딻뎨딻드땁돛듬딃딤땄됨땀땤땡둬뎡따뒝딽땁땍땜돳돰돠딜땃딤된됩듟뎻땍딹딐땁땮땅땫딠둘땤뎨됫둥듔땝땰돤뒹뎠뎠둥되돸딹딹뎨뒛뎬돰듻땲돼두딟뒻뎻딞듬뒼땻듻;-><init>(Lcom/v2ray/ang/plugin/ResolvedPlugin;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->versionName$delegate:Lkotlin/Lazy;

    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 8
        -0x59a003ba7e3032ecL    # -7.560213578710196E-124
        0x33b6af85b333fdfL
        0x5f528d2e0e4fec66L    # 1.518156337806554E151
    .end array-data
.end method

.method private static final id_delegate$lambda$0(Lcom/v2ray/ang/plugin/ResolvedPlugin;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/v2ray/ang/plugin/PluginManager;->INSTANCE:Lcom/v2ray/ang/plugin/PluginManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p0, v1}, Lcom/v2ray/ang/plugin/PluginManager;->loadString(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x62a1505f4af48b6cL    # -3.252395492391148E-167
        -0x5bdffab9c4e83d1L    # -8.169012193366804E280
        -0xb71e8d6636b03e6L
        0x1ee622b9803b9e6L
        -0x732fbaff6507536L
        -0x3637a8ba8c53879fL    # -2.779239868829961E47
    .end array-data
.end method

.method private static final versionName_delegate$lambda$2(Lcom/v2ray/ang/plugin/ResolvedPlugin;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :array_0
    .array-data 8
        0x38a40cbf5525d854L    # 7.541894455840783E-36
        -0x2c0685bf430db10aL    # -3.4012323250216823E96
        0xc37c0741234f664L
    .end array-data
.end method

.method private static final version_delegate$lambda$1(Lcom/v2ray/ang/plugin/ResolvedPlugin;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 30
    .line 31
    return p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x64bb5c5818be0227L    # 1.7323872451193404E177
        -0xe6a12025fd35258L    # -1.4280003045075472E239
        -0x157b6f6a41cd962cL    # -1.289529363394641E205
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/v2ray/ang/plugin/ResolvedPlugin;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->version_delegate$lambda$1(Lcom/v2ray/ang/plugin/ResolvedPlugin;)I

    move-result p0

    return p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/v2ray/ang/plugin/ResolvedPlugin;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->id_delegate$lambda$0(Lcom/v2ray/ang/plugin/ResolvedPlugin;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/v2ray/ang/plugin/ResolvedPlugin;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->versionName_delegate$lambda$2(Lcom/v2ray/ang/plugin/ResolvedPlugin;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getComponentInfo()Landroid/content/pm/ComponentInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getDirectBootAware()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Landroid/content/pm/ComponentInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    sget-object v1, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x3b47ac27870c0456L    # 3.916282994062365E-23
        0x1c686b2c41c1e30cL
        -0x3b678d065905ff1dL    # -2.8864428438479417E22
    .end array-data
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->id$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    sget-object v1, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x123effb7181ae3c5L    # -4.801137888600617E220
        -0x388a05dc333725e0L    # -1.8257867646974325E36
        -0x2bcd47b0355b2590L    # -3.9985607941683186E97
    .end array-data
.end method

.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v2, 0x1c

    .line 32
    .line 33
    if-lt v1, v2, :cond_0

    .line 34
    .line 35
    const/high16 v1, 0x8000000

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v1, 0x40

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x5df2af7e0f91d5c2L    # 3.64571790610917E144
        -0x1b0d8e8f26fe4ca4L    # -1.8684093622081405E178
        0x238b853a9b3a6336L
    .end array-data
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/v2ray/ang/plugin/ResolvedPlugin;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        0x1aabe0446bb83bbfL
        -0x2d0d969bccc885e9L    # -3.750526509998568E91
        0x41b73756b53dd7b1L    # 3.8950264524157244E8
    .end array-data
.end method

.method public final getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->version$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/plugin/ResolvedPlugin;->versionName$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method
