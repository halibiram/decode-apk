.class Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;
    .locals 1

    .line 2
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;
    .locals 0

    .line 2
    new-array p1, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests$1;->newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    move-result-object p1

    return-object p1
.end method
