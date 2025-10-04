.class Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lde/blinkt/openvpn/core/TkLogStatus$LogListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/logger/JcLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogWindowListAdapter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_STORED_LOG_ENTRIES:I = 0x3e8

.field private static final MESSAGE_CLEARLOG:I = 0x1

.field private static final MESSAGE_NEWLOG:I = 0x0

.field private static final MESSAGE_NEWLOGLEVEL:I = 0x3

.field private static final MESSAGE_NEWTS:I = 0x2

.field public static final TIME_FORMAT_ISO:I = 0x2

.field public static final TIME_FORMAT_NONE:I = 0x0

.field public static final TIME_FORMAT_SHORT:I = 0x1


# instance fields
.field private allEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lde/blinkt/openvpn/core/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private final currentLevelEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lde/blinkt/openvpn/core/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLogLevel:I

.field private mTimeFormat:I

.field private final observers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 17
    .line 18
    new-instance v0, Ljava/util/Vector;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->observers:Ljava/util/Vector;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mTimeFormat:I

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    iput v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mLogLevel:I

    .line 30
    .line 31
    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->initLogBuffer()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    new-instance p1, Landroid/os/Handler;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    :cond_0
    invoke-static {p0}, Lde/blinkt/openvpn/core/TkLogStatus;->addLogListener(Lde/blinkt/openvpn/core/TkLogStatus$LogListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private addLogMessage(Lde/blinkt/openvpn/core/LogItem;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x3e8

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-le v0, v1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 18
    .line 19
    new-instance v0, Ljava/util/Vector;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 31
    .line 32
    const/16 v0, 0x32

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge v0, v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lde/blinkt/openvpn/core/LogItem;

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->initCurrentMessages()V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_1
    invoke-virtual {p1}, Lde/blinkt/openvpn/core/LogItem;->getVerbosityLevel()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x3

    .line 63
    if-gt v0, v1, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    return p1
.end method

.method private getTime(Lde/blinkt/openvpn/core/LogItem;I)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    new-instance v1, Ljava/util/Date;

    .line 5
    .line 6
    invoke-virtual {p1}, Lde/blinkt/openvpn/core/LogItem;->getLogtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 11
    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {p1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 p2, 0x1

    .line 76
    new-array p2, p2, [J

    .line 77
    .line 78
    const-wide v0, -0x6008e9c1d9c2978cL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    aput-wide v0, p2, v2

    .line 85
    .line 86
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        -0x4b2caaec12d857a9L    # -3.153734348160544E-54
        -0x13d3ad82ce5967daL    # -1.191829928034152E213
        -0x5eb6be832ba925e0L
        -0x47c66ccbe2cdba7dL    # -7.51582110430448E-38
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        0x94954880ae3e56bL    # 6.28452480464396E-264
        -0x1833b5cf0c9816cL    # -1.926580049235816E301
    .end array-data
.end method

.method private initCurrentMessages()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lde/blinkt/openvpn/core/LogItem;

    .line 23
    .line 24
    invoke-virtual {v1}, Lde/blinkt/openvpn/core/LogItem;->getVerbosityLevel()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x3

    .line 29
    if-le v2, v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method private initLogBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->allEntries:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->getlogbuffer()[Lde/blinkt/openvpn/core/LogItem;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->initCurrentMessages()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mTimeFormat:I

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearLog()V
    .locals 2

    .line 1
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->clearLog()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lde/blinkt/openvpn/core/LogItem;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    int-to-long v0, p1

    .line 14
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d005b

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object p3, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 16
    .line 17
    invoke-virtual {p3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lde/blinkt/openvpn/core/LogItem;

    .line 22
    .line 23
    iget-object p3, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lde/blinkt/openvpn/core/LogItem;->getString(Landroid/content/Context;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iget v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mTimeFormat:I

    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->getTime(Lde/blinkt/openvpn/core/LogItem;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const v0, 0x7f0a026f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    const v1, 0x7f0a0010

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/TextView;

    .line 52
    .line 53
    const/high16 v2, 0x41300000    # 11.0f

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    .line 60
    .line 61
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    new-array v3, v2, [J

    .line 77
    .line 78
    fill-array-data v3, :array_0

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v0, v2, [J

    .line 97
    .line 98
    fill-array-data v0, :array_1

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    return-object p2

    .line 119
    :array_0
    .array-data 8
        -0x3ba27981b5c951a0L    # -2.1785873727377564E21
        0x36512fa7c9e5513eL    # 4.703697501998207E-47
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 8
        -0x2ee8561fdf8b87c4L    # -4.489305983561325E82
        0x1f3bb5e469344908L    # 3.153602204555949E-158
    .end array-data
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v0, v0, [J

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lde/blinkt/openvpn/core/LogItem;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->addLogMessage(Lde/blinkt/openvpn/core/LogItem;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->observers:Ljava/util/Vector;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/database/DataSetObserver;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    if-ne v1, v2, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->observers:Ljava/util/Vector;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/database/DataSetObserver;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->initLogBuffer()V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_2
    const/4 p1, 0x2

    .line 88
    if-ne v1, p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->observers:Ljava/util/Vector;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/database/DataSetObserver;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    if-ne v1, v0, :cond_4

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->initCurrentMessages()V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->observers:Ljava/util/Vector;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/database/DataSetObserver;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    :goto_4
    return v2

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        0xd19157d3ac263b0L
        0x70b672ab9496fc31L    # 8.921809511953915E234
        -0x764d54ada4fb011dL    # -5.928844774262493E-262
    .end array-data
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public newLog(Lde/blinkt/openvpn/core/LogItem;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x67be150694b421e1L    # 5.361247631967068E191
        0x32a2bb412ffda18fL    # 8.893293999675187E-65
        0x48d205525c8fd0a0L    # 6.279328143640672E42
    .end array-data
.end method

.method public onClear()V
    .locals 0

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->observers:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->observers:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
