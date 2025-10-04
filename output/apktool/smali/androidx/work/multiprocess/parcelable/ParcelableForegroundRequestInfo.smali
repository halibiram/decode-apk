.class public Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mForegroundInfo:Landroidx/work/ForegroundInfo;

.field private final mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 9
    new-instance v2, Landroidx/work/ForegroundInfo;

    invoke-direct {v2, v0, p1, v1}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    iput-object v2, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Landroidx/work/ForegroundInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/ForegroundInfo;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/ForegroundInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Landroidx/work/ForegroundInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundInfo()Landroidx/work/ForegroundInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Landroidx/work/ForegroundInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Landroidx/work/ForegroundInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/work/ForegroundInfo;->getNotificationId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Landroidx/work/ForegroundInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/work/ForegroundInfo;->getForegroundServiceType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Landroidx/work/ForegroundInfo;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/work/ForegroundInfo;->getNotification()Landroid/app/Notification;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
