.class Lorg/junit/runner/Result$SerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runner/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final fCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final fFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;"
        }
    .end annotation
.end field

.field private final fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final fRunTime:J

.field private final fStartTime:J


# direct methods
.method private constructor <init>(Ljava/io/ObjectInputStream$GetField;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "fCount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lorg/junit/runner/Result$SerializedForm;->fCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    const-string v0, "fIgnoreCount"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lorg/junit/runner/Result$SerializedForm;->fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    const-string v0, "assumptionFailureCount"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lorg/junit/runner/Result$SerializedForm;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    const-string v0, "fFailures"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/junit/runner/Result$SerializedForm;->fFailures:Ljava/util/List;

    .line 13
    const-string v0, "fRunTime"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/junit/runner/Result$SerializedForm;->fRunTime:J

    .line 14
    const-string v0, "fStartTime"

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/runner/Result$SerializedForm;->fStartTime:J

    return-void
.end method

.method public constructor <init>(Lorg/junit/runner/Result;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/junit/runner/Result;->access$800(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result$SerializedForm;->fCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-static {p1}, Lorg/junit/runner/Result;->access$1000(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result$SerializedForm;->fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p1}, Lorg/junit/runner/Result;->access$1100(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result$SerializedForm;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/junit/runner/Result;->access$900(Lorg/junit/runner/Result;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result$SerializedForm;->fFailures:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lorg/junit/runner/Result;->access$700(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/runner/Result$SerializedForm;->fRunTime:J

    .line 7
    invoke-static {p1}, Lorg/junit/runner/Result;->access$600(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/runner/Result$SerializedForm;->fStartTime:J

    return-void
.end method

.method public static synthetic access$000(Lorg/junit/runner/Result$SerializedForm;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/junit/runner/Result$SerializedForm;->fCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lorg/junit/runner/Result$SerializedForm;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/junit/runner/Result$SerializedForm;->fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lorg/junit/runner/Result$SerializedForm;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/junit/runner/Result$SerializedForm;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lorg/junit/runner/Result$SerializedForm;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/junit/runner/Result$SerializedForm;->fFailures:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lorg/junit/runner/Result$SerializedForm;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/junit/runner/Result$SerializedForm;->fRunTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$500(Lorg/junit/runner/Result$SerializedForm;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/junit/runner/Result$SerializedForm;->fStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static deserialize(Ljava/io/ObjectInputStream;)Lorg/junit/runner/Result$SerializedForm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/junit/runner/Result$SerializedForm;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lorg/junit/runner/Result$SerializedForm;-><init>(Ljava/io/ObjectInputStream$GetField;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/io/ObjectOutputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "fCount"

    .line 6
    .line 7
    iget-object v2, p0, Lorg/junit/runner/Result$SerializedForm;->fCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "fIgnoreCount"

    .line 13
    .line 14
    iget-object v2, p0, Lorg/junit/runner/Result$SerializedForm;->fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "fFailures"

    .line 20
    .line 21
    iget-object v2, p0, Lorg/junit/runner/Result$SerializedForm;->fFailures:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "fRunTime"

    .line 27
    .line 28
    iget-wide v2, p0, Lorg/junit/runner/Result$SerializedForm;->fRunTime:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    const-string v1, "fStartTime"

    .line 34
    .line 35
    iget-wide v2, p0, Lorg/junit/runner/Result$SerializedForm;->fStartTime:J

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 38
    .line 39
    .line 40
    const-string v1, "assumptionFailureCount"

    .line 41
    .line 42
    iget-object v2, p0, Lorg/junit/runner/Result$SerializedForm;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
