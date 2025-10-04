.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;
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
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mWorkRequest:Landroidx/work/WorkRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v3, v0, v2}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v2

    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 10
    new-instance v2, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v2, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {v2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->getData()Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 12
    new-instance v2, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v2, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    .line 13
    invoke-virtual {v2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->getData()Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v3, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    .line 19
    invoke-virtual {v2}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->getConstraints()Landroidx/work/Constraints;

    move-result-object v2

    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v2

    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 24
    invoke-static {p1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->readBooleanValue(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, v3, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v2

    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/work/impl/model/WorkSpec;->setTraceTag(Ljava/lang/String;)V

    .line 27
    new-instance p1, Landroidx/work/impl/WorkRequestHolder;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p1, v0, v3, v1}, Landroidx/work/impl/WorkRequestHolder;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    return-void
.end method

.method public constructor <init>(Landroidx/work/WorkRequest;)V
    .locals 0
    .param p1    # Landroidx/work/WorkRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWorkRequest()Landroidx/work/WorkRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableData;

    .line 50
    .line 51
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/Data;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableData;

    .line 60
    .line 61
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 62
    .line 63
    invoke-direct {v1, v2}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/Data;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    .line 68
    .line 69
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 70
    .line 71
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    .line 73
    .line 74
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 75
    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    .line 78
    .line 79
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 80
    .line 81
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    .line 83
    .line 84
    iget v1, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    .line 90
    .line 91
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 92
    .line 93
    invoke-direct {v1, v2}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;-><init>(Landroidx/work/Constraints;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    .line 98
    .line 99
    iget-object p2, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 100
    .line 101
    invoke-static {p2}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    .line 107
    .line 108
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 109
    .line 110
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    .line 112
    .line 113
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 114
    .line 115
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    .line 117
    .line 118
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 119
    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    .line 122
    .line 123
    iget-boolean p2, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 124
    .line 125
    invoke-static {p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->writeBooleanValue(Landroid/os/Parcel;Z)V

    .line 126
    .line 127
    .line 128
    iget-object p2, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 129
    .line 130
    invoke-static {p2}, Landroidx/work/impl/model/WorkTypeConverters;->outOfQuotaPolicyToInt(Landroidx/work/OutOfQuotaPolicy;)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->getTraceTag()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
