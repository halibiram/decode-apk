.class final Lorg/junit/internal/management/ManagementFactory$ThreadHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/management/ManagementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadHolder"
.end annotation


# static fields
.field private static final THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "getThreadMXBean"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/junit/internal/management/ManagementFactory$FactoryHolder;->getBeanObject(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->getBean(Ljava/lang/Object;)Lorg/junit/internal/management/ThreadMXBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;

    .line 12
    .line 13
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

.method public static synthetic access$100()Lorg/junit/internal/management/ThreadMXBean;
    .locals 1

    .line 1
    sget-object v0, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final getBean(Ljava/lang/Object;)Lorg/junit/internal/management/ThreadMXBean;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/junit/internal/management/ReflectiveThreadMXBean;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/junit/internal/management/ReflectiveThreadMXBean;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lorg/junit/internal/management/FakeThreadMXBean;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/junit/internal/management/FakeThreadMXBean;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-object v0
.end method
