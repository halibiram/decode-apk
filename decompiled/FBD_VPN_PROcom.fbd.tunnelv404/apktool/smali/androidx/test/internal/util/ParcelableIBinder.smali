.class public Landroidx/test/internal/util/ParcelableIBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
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
            "Landroidx/test/internal/util/ParcelableIBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/internal/util/ParcelableIBinder$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/internal/util/ParcelableIBinder$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/test/internal/util/ParcelableIBinder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Landroidx/test/internal/util/ParcelableIBinder;->iBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/util/ParcelableIBinder;->iBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/internal/util/ParcelableIBinder;->iBinder:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/test/internal/util/ParcelableIBinder;->iBinder:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
