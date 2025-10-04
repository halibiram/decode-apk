.class public Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/logger/TrafficHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficDatapoint"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final in:J

.field public final out:J

.field public final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(JJJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->in:J

    .line 5
    iput-wide p3, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->out:J

    .line 6
    iput-wide p5, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->timestamp:J

    return-void
.end method

.method public synthetic constructor <init>(JJJI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;-><init>(JJJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->in:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->out:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->in:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->out:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
