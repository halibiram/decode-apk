.class public Lcom/tknetwork/tunnel/logger/TrafficHistory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;,
        Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERIODS_TO_KEEP:J = 0x5L

.field public static final TIME_PERIOD_HOURS:I = 0x36ee80

.field public static final TIME_PERIOD_MINTUES:I = 0xea60


# instance fields
.field private lastMinuteUsedForHours:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

.field private lastSecondUsedForMinute:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

.field private final trafficHistoryHours:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;",
            ">;"
        }
    .end annotation
.end field

.field private final trafficHistoryMinutes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;",
            ">;"
        }
    .end annotation
.end field

.field private final trafficHistorySeconds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tknetwork/tunnel/logger/TrafficHistory$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryMinutes:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryHours:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryMinutes:Ljava/util/LinkedList;

    .line 8
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryHours:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    iput-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastSecondUsedForMinute:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastMinuteUsedForHours:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    return-void
.end method

.method private addDataPoint(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastSecondUsedForMinute:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    const-wide/16 v8, 0x0

    .line 22
    .line 23
    move-object v3, v2

    .line 24
    invoke-direct/range {v3 .. v10}, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;-><init>(JJJI)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastSecondUsedForMinute:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 28
    .line 29
    new-instance v2, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 30
    .line 31
    const-wide/16 v14, 0x0

    .line 32
    .line 33
    const/16 v18, 0x0

    .line 34
    .line 35
    const-wide/16 v12, 0x0

    .line 36
    .line 37
    const-wide/16 v16, 0x0

    .line 38
    .line 39
    move-object v11, v2

    .line 40
    invoke-direct/range {v11 .. v18}, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;-><init>(JJJI)V

    .line 41
    .line 42
    .line 43
    iput-object v2, v0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastMinuteUsedForHours:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 44
    .line 45
    :cond_0
    const/4 v2, 0x1

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/logger/TrafficHistory;->removeAndAverage(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static getDummyList()Ljava/util/LinkedList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v9, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v6

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    move-object v1, v9

    .line 18
    invoke-direct/range {v1 .. v8}, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;-><init>(JJJI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private removeAndAverage(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;Z)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Vector;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryMinutes:Ljava/util/LinkedList;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastSecondUsedForMinute:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 18
    .line 19
    const-wide/32 v4, 0xea60

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryMinutes:Ljava/util/LinkedList;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryHours:Ljava/util/LinkedList;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastMinuteUsedForHours:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 28
    .line 29
    const-wide/32 v4, 0x36ee80

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-wide v6, p1, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 33
    .line 34
    div-long/2addr v6, v4

    .line 35
    iget-wide v8, v3, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 36
    .line 37
    div-long/2addr v8, v4

    .line 38
    cmp-long v3, v6, v8

    .line 39
    .line 40
    if-lez v3, :cond_4

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastSecondUsedForMinute:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/logger/TrafficHistory;->removeAndAverage(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastMinuteUsedForHours:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 55
    .line 56
    :goto_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 71
    .line 72
    iget-wide v6, p1, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 73
    .line 74
    iget-wide v8, v2, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 75
    .line 76
    sub-long/2addr v6, v8

    .line 77
    div-long/2addr v6, v4

    .line 78
    const-wide/16 v8, 0x5

    .line 79
    .line 80
    cmp-long v3, v6, v8

    .line 81
    .line 82
    if-ltz v3, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void
.end method


# virtual methods
.method public add(JJ)Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;
    .locals 9

    .line 1
    new-instance v8, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v0, v8

    .line 9
    move-wide v1, p1

    .line 10
    move-wide v3, p3

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;-><init>(JJJI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v8}, Lcom/tknetwork/tunnel/logger/TrafficHistory;->getLastDiff(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;)Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, v8}, Lcom/tknetwork/tunnel/logger/TrafficHistory;->addDataPoint(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHours()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryHours:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastDiff(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;)Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v8}, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;-><init>(JJJI)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 32
    .line 33
    :goto_0
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v1, 0x2

    .line 42
    if-ge p1, v1, :cond_1

    .line 43
    .line 44
    move-object p1, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 66
    .line 67
    :cond_2
    :goto_1
    new-instance v1, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-direct {v1, v0, p1, v2}, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;-><init>(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;I)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public getMinutes()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryMinutes:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeconds()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistorySeconds:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryMinutes:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->trafficHistoryHours:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastSecondUsedForMinute:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory;->lastMinuteUsedForHours:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
