.class Landroidx/work/multiprocess/RemoteWorkManagerClient$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;->getWorkInfos(Landroidx/work/WorkQuery;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "[B",
        "Ljava/util/List<",
        "Landroidx/work/WorkInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$8;->this$0:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient$8;->apply([B)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    .line 4
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->getWorkInfos()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
