.class public Lcom/tknetwork/tunnel/adapter/LogsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lde/blinkt/openvpn/core/TkLogStatus$LogListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;,
        Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;",
        ">;",
        "Lde/blinkt/openvpn/core/TkLogStatus$LogListener;",
        "Landroid/os/Handler$Callback;",
        "Landroid/view/View$OnTouchListener;"
    }
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

.field private currentLevelEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lde/blinkt/openvpn/core/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemClickListener:Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLockAutoScroll:Z

.field private mLogLevel:I

.field private mTimeFormat:I

.field private observers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 17
    .line 18
    new-instance v0, Ljava/util/Vector;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    .line 24
    .line 25
    const/16 v0, -0x64

    .line 26
    .line 27
    iput v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mTimeFormat:I

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mLogLevel:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mLockAutoScroll:Z

    .line 34
    .line 35
    iput-object p2, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->initLogBuffer()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    new-instance p1, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    :cond_0
    invoke-static {p0}, Lde/blinkt/openvpn/core/TkLogStatus;->addLogListener(Lde/blinkt/openvpn/core/TkLogStatus$LogListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private addLogMessage(Lde/blinkt/openvpn/core/LogItem;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    .line 18
    .line 19
    new-instance v0, Ljava/util/Vector;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

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
    iget-object v1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

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
    invoke-direct {p0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->initCurrentMessages()V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_1
    invoke-virtual {p1}, Lde/blinkt/openvpn/core/LogItem;->getLogLevel()Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->getInt()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget v1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mLogLevel:I

    .line 67
    .line 68
    if-gt v0, v1, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_2
    const/4 p1, 0x0

    .line 77
    return p1
.end method

.method private getTime(Lde/blinkt/openvpn/core/LogItem;I)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    new-instance v2, Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {p1}, Lde/blinkt/openvpn/core/LogItem;->getLogtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    if-ne p2, v1, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-ne p2, v0, :cond_1

    .line 42
    .line 43
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v0, v1, [J

    .line 48
    .line 49
    fill-array-data v0, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array p2, v0, [J

    .line 77
    .line 78
    const-wide v0, 0x5a5a167235294537L    # 1.765930668919975E127

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
        -0x2b6f81433c952477L    # -2.254928062573594E99
        0x3175bedf8ac90d51L    # 1.9692116123194206E-70
        0x5d1980ca53bbbdb2L
        0x3a15ecd7ccb22e64L    # 6.918363099906105E-29
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
        -0x2ace2ce69a95f8f6L    # -2.4951605101414633E102
        -0xd76dc76db88025aL    # -5.364030626965017E243
    .end array-data
.end method

.method private initCurrentMessages()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
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
    invoke-virtual {v1}, Lde/blinkt/openvpn/core/LogItem;->getLogLevel()Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->getInt()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget v3, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mLogLevel:I

    .line 33
    .line 34
    if-gt v2, v3, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method private initLogBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

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
    invoke-direct {p0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->initCurrentMessages()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/adapter/LogsAdapter;)Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->itemClickListener:Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItem(I)Lde/blinkt/openvpn/core/LogItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

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
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

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

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-long v0, p1

    .line 12
    return-wide v0
.end method

.method public getLogStr()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, 0x430dde94657f1577L    # 1.0509379079953109E15

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lde/blinkt/openvpn/core/LogItem;

    .line 38
    .line 39
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-direct {p0, v2, v3}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->getTime(Lde/blinkt/openvpn/core/LogItem;I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lde/blinkt/openvpn/core/LogItem;->getString(Landroid/content/Context;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v2, 0xa

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return-object v0
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
    if-nez v1, :cond_1

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
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->addLogMessage(Lde/blinkt/openvpn/core/LogItem;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->observers:Ljava/util/Vector;

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
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mLockAutoScroll:Z

    .line 60
    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->scrollToLastPosition()V

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_1
    if-ne v1, v2, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->initLogBuffer()V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_3
    const/4 p1, 0x2

    .line 96
    if-ne v1, p1, :cond_4

    .line 97
    .line 98
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    if-ne v1, v0, :cond_5

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->initCurrentMessages()V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    :goto_4
    return v2

    .line 148
    nop

    .line 149
    :array_0
    .array-data 8
        -0x1e4065f1cad8aacfL    # -7.108684039275915E162
        -0x4d8705357ec2a2b0L    # -1.4824748898551083E-65
        0x5d9dee3da95a2ecdL    # 9.124599194950719E142
    .end array-data
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mHandler:Landroid/os/Handler;

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
        0x6a3385e075286a1aL    # 3.8256273724879066E203
        -0x7afce40f6e1a9d7cL
        0x519699765e872401L    # 1.097581815677481E85
    .end array-data
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->onBindViewHolder(Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;I)V
    .locals 7
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/blinkt/openvpn/core/LogItem;

    .line 3
    iget-object v3, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lde/blinkt/openvpn/core/LogItem;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget v4, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mTimeFormat:I

    invoke-direct {p0, v2, v4}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->getTime(Lde/blinkt/openvpn/core/LogItem;I)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x2

    new-array v6, v6, [J

    fill-array-data v6, :array_0

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v5, -0x171c4cca9f521aa1L    # -1.8407471466404164E197

    aput-wide v5, v1, v0

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;->textLog:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v1, p1, Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;->textLog:Landroid/widget/TextView;

    new-instance v2, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;-><init>(Lcom/tknetwork/tunnel/adapter/LogsAdapter;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p1, Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;->textLog:Landroid/widget/TextView;

    new-instance v1, Lcom/tknetwork/tunnel/adapter/LogsAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter$2;-><init>(Lcom/tknetwork/tunnel/adapter/LogsAdapter;ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :catch_0
    return-void

    nop

    :array_0
    .array-data 8
        -0x45b4c0920a74fddfL    # -6.878304564644032E-28
        0x2796304829d4586eL
    .end array-data
.end method

.method public onClear()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0054

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    new-instance p2, Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;-><init>(Lcom/tknetwork/tunnel/adapter/LogsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public scrollToLastPosition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->mLogLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemClickListener(Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->itemClickListener:Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
