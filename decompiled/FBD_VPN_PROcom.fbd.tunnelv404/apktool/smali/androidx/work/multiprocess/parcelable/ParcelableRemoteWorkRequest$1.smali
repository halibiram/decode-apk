.class Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
    .locals 1

    .line 2
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
    .locals 0

    .line 2
    new-array p1, p1, [Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest$1;->newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    move-result-object p1

    return-object p1
.end method
