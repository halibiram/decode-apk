.class public final Landroidx/test/services/storage/file/HostedFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/services/storage/file/HostedFile$FileHost;,
        Landroidx/test/services/storage/file/HostedFile$FileType;,
        Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HostedFile"

.field private static final loggedOutputDir:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/test/services/storage/file/HostedFile;->loggedOutputDir:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/services/storage/file/HostedFile;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/test/services/storage/file/HostedFile$FileHost;->getAuthority()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public static getInputRootDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getOutputRootDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/UserManager;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x17

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {v0}, L뎽들뒻됩뎠돴듬득딐땤뒤뒀듽둔듽딀뒨딞둔뒛돳땃땟땥따뒛뒷득됐땧땃땸됩돳뒤땃딻딨됐득돳둠둠디뎨뒻돴뒙딝득둬뒐땲도땬따뎨둘됴돠돴딹땠땲딸딄둑땮돶돰득뒬땋드뎽둔땭뒙뎹땡땃땀듌뒹뎸둥딄뎡딜돵돠돸둠될땟땄뒤땠땪땝뎽땸뎬돸땋돷뒷땐딽뒼땳땟돨뒋뒘두된두돛딅땲땜땁되땃두딃될뎹뎰;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/os/UserManager;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    sget-object v0, Landroidx/test/services/storage/file/HostedFile;->loggedOutputDir:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
