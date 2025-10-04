.class public abstract Lcom/google/common/util/concurrent/Monitor$Guard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Guard"
.end annotation


# instance fields
.field final condition:Ljava/util/concurrent/locks/Condition;

.field final monitor:Lcom/google/common/util/concurrent/Monitor;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation
.end field

.field next:Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "monitor.lock"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field waiterCount:I
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "monitor.lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Monitor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 6
    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [J

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/common/util/concurrent/Monitor;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/common/util/concurrent/Monitor;->access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        0x21a78bab7f2f5432L
        -0x502f14a38671d29cL    # -2.283103372402924E-78
    .end array-data
.end method


# virtual methods
.method public abstract isSatisfied()Z
.end method
