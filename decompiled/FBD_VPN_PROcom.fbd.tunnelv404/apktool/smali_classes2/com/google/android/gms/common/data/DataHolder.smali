.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "DataHolderCreator"
    validate = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaf:Lcom/google/android/gms/common/data/DataHolder$Builder;


# instance fields
.field final zaa:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x3e8
    .end annotation
.end field

.field zab:Landroid/os/Bundle;

.field zac:[I

.field zad:I

.field zae:Z

.field private final zag:[Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getColumns"
        id = 0x1
    .end annotation
.end field

.field private final zah:[Landroid/database/CursorWindow;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWindows"
        id = 0x2
    .end annotation
.end field

.field private final zai:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStatusCode"
        id = 0x3
    .end annotation
.end field

.field private final zaj:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getMetadata"
        id = 0x4
    .end annotation
.end field

.field private zak:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/zaf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/data/zaf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/common/data/zab;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/zab;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->zaf:Lcom/google/android/gms/common/data/DataHolder$Builder;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3e8
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p3    # [Landroid/database/CursorWindow;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zak:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILandroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/common/sqlite/CursorWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/sqlite/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 4
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v6

    if-nez v6, :cond_0

    .line 9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 10
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 13
    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 15
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 16
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    goto :goto_1

    .line 17
    :cond_1
    new-instance v6, Landroid/database/CursorWindow;

    .line 18
    invoke-direct {v6, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 19
    invoke-virtual {v6, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 20
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 21
    :goto_1
    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v6}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v6

    goto :goto_0

    .line 24
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    .line 26
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void

    .line 27
    :goto_3
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    .line 28
    throw p1
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V
    .locals 1
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;ILcom/google/android/gms/common/data/zae;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object p4

    const/4 p5, -0x1

    invoke-static {p1, p5}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object p1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;Lcom/google/android/gms/common/data/zae;)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/database/CursorWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zak:Z

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Ljava/lang/String;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/database/CursorWindow;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:I

    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Landroid/os/Bundle;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zad()V

    return-void
.end method

.method public static builder([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .locals 2
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/zac;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static empty(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->zaf:Lcom/google/android/gms/common/data/DataHolder$Builder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private final zae(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    if-ltz p2, :cond_1

    .line 19
    .line 20
    iget p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    .line 21
    .line 22
    if-ge p2, p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance p1, Landroid/database/CursorIndexOutOfBoundsException;

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    .line 28
    .line 29
    invoke-direct {p1, p2, v0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [J

    .line 39
    .line 40
    fill-array-data v0, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v1, 0x3

    .line 63
    new-array v1, v1, [J

    .line 64
    .line 65
    fill-array-data v1, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p2

    .line 95
    :array_0
    .array-data 8
        -0x76b51ad5157af2c5L
        -0x54478c4aaf0065aeL    # -4.471729764063485E-98
        0xf7e59d5903a8999L    # 4.772821255059334E-234
        -0x6c6bf0efab85e5a9L
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        0x2155519964b57f42L
        0x2aeab26c87df6fc7L    # 5.959823913217457E-102
        0x2a9e33a84ee42fc7L    # 2.106949563835054E-103
    .end array-data
.end method

.method private static zaf(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;
    .locals 16

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x3

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    array-length v5, v5

    .line 11
    const/4 v6, 0x0

    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    new-array v0, v6, [Landroid/database/CursorWindow;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    new-instance v8, Landroid/database/CursorWindow;

    .line 26
    .line 27
    invoke-direct {v8, v6}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    new-instance v9, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    array-length v10, v10

    .line 43
    invoke-virtual {v8, v10}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 44
    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    :goto_0
    if-ge v10, v7, :cond_f

    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v8}, Landroid/database/CursorWindow;->allocRow()Z

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    if-nez v12, :cond_1

    .line 55
    .line 56
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/16 v12, 0x9

    .line 59
    .line 60
    new-array v12, v12, [J

    .line 61
    .line 62
    fill-array-data v12, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v12, v2, [J

    .line 74
    .line 75
    fill-array-data v12, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v12, v4, [J

    .line 87
    .line 88
    fill-array-data v12, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    new-instance v8, Landroid/database/CursorWindow;

    .line 98
    .line 99
    invoke-direct {v8, v6}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v10}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 103
    .line 104
    .line 105
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    array-length v12, v12

    .line 110
    invoke-virtual {v8, v12}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Landroid/database/CursorWindow;->allocRow()Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-nez v12, :cond_1

    .line 121
    .line 122
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v2, v4, [J

    .line 125
    .line 126
    fill-array-data v2, :array_3

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v1, v1, [J

    .line 138
    .line 139
    fill-array-data v1, :array_4

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    new-array v0, v0, [Landroid/database/CursorWindow;

    .line 156
    .line 157
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, [Landroid/database/CursorWindow;

    .line 162
    .line 163
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const/4 v8, 0x0

    .line 166
    goto/16 :goto_6

    .line 167
    .line 168
    :cond_1
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    check-cast v12, Ljava/util/Map;

    .line 173
    .line 174
    const/4 v13, 0x0

    .line 175
    const/4 v14, 0x1

    .line 176
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    array-length v15, v15

    .line 181
    if-ge v13, v15, :cond_b

    .line 182
    .line 183
    if-eqz v14, :cond_c

    .line 184
    .line 185
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    aget-object v14, v14, v13

    .line 190
    .line 191
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    if-nez v15, :cond_2

    .line 196
    .line 197
    invoke-virtual {v8, v10, v13}, Landroid/database/CursorWindow;->putNull(II)Z

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :cond_2
    instance-of v6, v15, Ljava/lang/String;

    .line 204
    .line 205
    if-eqz v6, :cond_3

    .line 206
    .line 207
    check-cast v15, Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v8, v15, v10, v13}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    :goto_2
    move v14, v6

    .line 214
    goto :goto_4

    .line 215
    :cond_3
    instance-of v6, v15, Ljava/lang/Long;

    .line 216
    .line 217
    if-eqz v6, :cond_4

    .line 218
    .line 219
    check-cast v15, Ljava/lang/Long;

    .line 220
    .line 221
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 222
    .line 223
    .line 224
    move-result-wide v14

    .line 225
    invoke-virtual {v8, v14, v15, v10, v13}, Landroid/database/CursorWindow;->putLong(JII)Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    goto :goto_2

    .line 230
    :cond_4
    instance-of v6, v15, Ljava/lang/Integer;

    .line 231
    .line 232
    if-eqz v6, :cond_5

    .line 233
    .line 234
    check-cast v15, Ljava/lang/Integer;

    .line 235
    .line 236
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    int-to-long v14, v6

    .line 241
    invoke-virtual {v8, v14, v15, v10, v13}, Landroid/database/CursorWindow;->putLong(JII)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    goto :goto_2

    .line 246
    :cond_5
    instance-of v6, v15, Ljava/lang/Boolean;

    .line 247
    .line 248
    if-eqz v6, :cond_7

    .line 249
    .line 250
    check-cast v15, Ljava/lang/Boolean;

    .line 251
    .line 252
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eq v3, v6, :cond_6

    .line 257
    .line 258
    const-wide/16 v14, 0x0

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_6
    const-wide/16 v14, 0x1

    .line 262
    .line 263
    :goto_3
    invoke-virtual {v8, v14, v15, v10, v13}, Landroid/database/CursorWindow;->putLong(JII)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    goto :goto_2

    .line 268
    :cond_7
    instance-of v6, v15, [B

    .line 269
    .line 270
    if-eqz v6, :cond_8

    .line 271
    .line 272
    check-cast v15, [B

    .line 273
    .line 274
    invoke-virtual {v8, v15, v10, v13}, Landroid/database/CursorWindow;->putBlob([BII)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    goto :goto_2

    .line 279
    :cond_8
    instance-of v6, v15, Ljava/lang/Double;

    .line 280
    .line 281
    if-eqz v6, :cond_9

    .line 282
    .line 283
    check-cast v15, Ljava/lang/Double;

    .line 284
    .line 285
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    .line 286
    .line 287
    .line 288
    move-result-wide v14

    .line 289
    invoke-virtual {v8, v14, v15, v10, v13}, Landroid/database/CursorWindow;->putDouble(DII)Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    goto :goto_2

    .line 294
    :cond_9
    instance-of v6, v15, Ljava/lang/Float;

    .line 295
    .line 296
    if-eqz v6, :cond_a

    .line 297
    .line 298
    check-cast v15, Ljava/lang/Float;

    .line 299
    .line 300
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    float-to-double v14, v6

    .line 305
    invoke-virtual {v8, v14, v15, v10, v13}, Landroid/database/CursorWindow;->putDouble(DII)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    goto :goto_2

    .line 310
    :goto_4
    add-int/2addr v13, v3

    .line 311
    const/4 v6, 0x0

    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 315
    .line 316
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    add-int/lit8 v5, v5, 0x20

    .line 329
    .line 330
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    add-int/2addr v5, v6

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 338
    .line 339
    .line 340
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array v0, v0, [J

    .line 343
    .line 344
    fill-array-data v0, :array_5

    .line 345
    .line 346
    .line 347
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 361
    .line 362
    new-array v2, v2, [J

    .line 363
    .line 364
    fill-array-data v2, :array_6

    .line 365
    .line 366
    .line 367
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v1

    .line 388
    :cond_b
    if-eqz v14, :cond_c

    .line 389
    .line 390
    move-object v6, v8

    .line 391
    const/4 v8, 0x0

    .line 392
    const/4 v11, 0x0

    .line 393
    goto :goto_5

    .line 394
    :cond_c
    if-nez v11, :cond_d

    .line 395
    .line 396
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 397
    .line 398
    new-array v11, v1, [J

    .line 399
    .line 400
    fill-array-data v11, :array_7

    .line 401
    .line 402
    .line 403
    invoke-direct {v6, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 410
    .line 411
    new-array v11, v0, [J

    .line 412
    .line 413
    fill-array-data v11, :array_8

    .line 414
    .line 415
    .line 416
    invoke-direct {v6, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 423
    .line 424
    new-array v11, v4, [J

    .line 425
    .line 426
    fill-array-data v11, :array_9

    .line 427
    .line 428
    .line 429
    invoke-direct {v6, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v8}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 436
    .line 437
    .line 438
    new-instance v6, Landroid/database/CursorWindow;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .line 440
    const/4 v8, 0x0

    .line 441
    :try_start_1
    invoke-direct {v6, v8}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v6, v10}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 445
    .line 446
    .line 447
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v11

    .line 451
    array-length v11, v11

    .line 452
    invoke-virtual {v6, v11}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 453
    .line 454
    .line 455
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    add-int/lit8 v10, v10, -0x1

    .line 459
    .line 460
    const/4 v11, 0x1

    .line 461
    :goto_5
    add-int/2addr v10, v3

    .line 462
    move-object v8, v6

    .line 463
    const/4 v6, 0x0

    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :catch_1
    move-exception v0

    .line 467
    goto :goto_6

    .line 468
    :cond_d
    const/4 v8, 0x0

    .line 469
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 470
    .line 471
    const/16 v1, 0x10

    .line 472
    .line 473
    new-array v1, v1, [J

    .line 474
    .line 475
    fill-array-data v1, :array_a

    .line 476
    .line 477
    .line 478
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    new-instance v1, Lcom/google/android/gms/common/data/zad;

    .line 486
    .line 487
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/data/zad;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    const/4 v6, 0x0

    .line 496
    :goto_7
    if-ge v6, v1, :cond_e

    .line 497
    .line 498
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    check-cast v2, Landroid/database/CursorWindow;

    .line 503
    .line 504
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 505
    .line 506
    .line 507
    add-int/2addr v6, v3

    .line 508
    goto :goto_7

    .line 509
    :cond_e
    throw v0

    .line 510
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    new-array v0, v0, [Landroid/database/CursorWindow;

    .line 515
    .line 516
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    check-cast v0, [Landroid/database/CursorWindow;

    .line 521
    .line 522
    return-object v0

    .line 523
    :array_0
    .array-data 8
        -0xe8ba177a419f2aL
        0x1d904f1c556282bL
        -0x488fc87b787a1f3L
        0x2b7a2a2437dd8dL
        -0x5e30a67e31ae657fL    # -7.845572267546878E-146
        0x5dc021f029844325L    # 3.934517938576965E143
        -0x2bc1916fed66ed9eL    # -6.500211370580568E97
        0x3369a2671d437a50L    # 4.985099221602974E-61
        -0x59fa562d6a17c334L    # -1.600139421341503E-125
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_1
    .array-data 8
        -0x790a862e3a9db222L    # -3.876809645725788E-275
        -0x150392fae1124c52L    # -2.281553398074048E207
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_2
    .array-data 8
        -0x14c8a67e5b723434L    # -2.9985900980520504E208
        0x7ac477830d708375L    # 2.377698615384573E283
        -0x4ae718c42ddcdf4aL    # -6.500053247695091E-53
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_3
    .array-data 8
        -0x20ea2ca703f1ab7bL    # -1.116306832520954E150
        -0x713a35963a156b9eL
        -0x21182b604e8df08dL    # -1.5235690806320546E149
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    :array_4
    .array-data 8
        -0x7b2a4095e46fa3a5L
        -0x425639bcc0ddae77L    # -1.1720869043506448E-11
        0x6d28f746a91fd500L    # 6.885167194047465E217
        -0x6b6bfb03cf060214L
        0x30d2a45bcac1854bL    # 1.648595718064698E-73
        0x19c3768bc33bfadL
    .end array-data

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_5
    .array-data 8
        -0x70e6bcc1435142baL    # -6.207300365448767E-236
        -0x6f324642be4274bfL    # -9.803092565693657E-228
        -0x6d87423a079d8efL
        0x2957b3c1c1fcfdcdL    # 1.576920474581046E-109
        -0x74af24b72c329470L    # -3.592469870739821E-254
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_6
    .array-data 8
        0x30604da054daa76aL    # 1.12637938023804E-75
        -0x7acc640777826e5eL
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    :array_7
    .array-data 8
        -0x3f0cc1e4622409b4L    # -78817.72603985033
        -0x217202c127ed1c79L    # -2.995803745216715E147
        0x244a6caa9e020635L    # 7.271070604487747E-134
        -0x17f5956d2603b280L    # -1.5065351879319394E193
        0x1b6b6b0fa6c0915dL
        -0x4fbdc661d46acd4aL    # -3.14789548343966E-76
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_8
    .array-data 8
        0x2b74794ebbd1297bL    # 2.340136112235819E-99
        0x3f62f3ca728a89feL    # 0.002313514142160188
        0x2cb9b00ed2899ae1L    # 3.078697477773968E-93
        -0x1da4b98cd6d2dc6cL    # -6.282687987320615E165
        0x1d37be8d45114d71L    # 6.291621493059685E-168
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_9
    .array-data 8
        -0x3553a81d52f28420L    # -5.302244234976719E51
        -0x75941e207e33ba05L
        -0x3220c00c22f5f3eaL    # -1.3163958447734709E67
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    :array_a
    .array-data 8
        0x513298243d0a3ccfL    # 1.4110380438540849E83
        -0x5852a48bb813679cL
        -0x4c3285a6368efc99L    # -3.668832491008242E-59
        -0x5083aea99757045fL    # -5.9706211910816065E-80
        -0x47591f856182ae1bL    # -8.605322447135529E-36
        0x5f1e4eca2fb8e590L    # 1.550143410001513E150
        0x73440e568ce6904fL    # 1.752875032092448E247
        0x59f527f74f141091L    # 2.2376604277349043E125
        0x511f2f4806e1a8d3L    # 5.916165293216768E82
        0x197412e44a47cfc1L    # 4.613517721465087E-186
        -0x4d98358fd7aad81cL    # -7.059590786913701E-66
        0x3f805653c93c3df2L    # 0.007977156237330061
        -0x1fb3478dffe9d9b2L    # -7.701576139305316E155
        0x7773000d42a7fc22L    # 2.4506110803843276E267
        -0x5315b1c1e195fd40L
        -0x1c4e59413d4985ffL    # -1.705357443583095E172
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    aget-object v1, v1, v0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public final finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zak:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/lit16 v0, v0, 0xb2

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/16 v1, 0x18

    .line 55
    .line 56
    new-array v1, v1, [J

    .line 57
    .line 58
    fill-array-data v1, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    new-array v1, v1, [J

    .line 71
    .line 72
    fill-array-data v1, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        -0x20468482f8ac6a93L    # -1.3346203522817555E153
        0x4128ce97608e1f76L    # 812875.6885843116
        -0xcda549ca9634b3L
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 8
        0x6b853cf2a7618989L    # 8.727748006466338E209
        0x5d13df9d59c35546L    # 2.3666402192550122E140
        0x6c5f618185005dfeL    # 1.0564333246907323E214
        -0x7ab96999c5e34766L    # -3.037961065737054E-283
        -0x528a559cfcb14fdaL    # -1.0635832439365116E-89
        -0x32aca996be898158L    # -3.182001607963649E64
        -0x6c74a2da11d18724L
        0x55e5783c82283a62L    # 6.155083245703304E105
        0x5c19966b53c53f3aL
        0x5e6444b6e7209c5cL
        0x210ddc0d83765c0dL
        -0x7934f525caaff021L    # -6.102096764685452E-276
        -0x5851eeb5e786a0ceL    # -1.490423041794835E-117
        0x61f0b9b0d4db886bL    # 6.019674240597908E163
        0x2d614e8c8e274e72L    # 4.248042843755408E-90
        -0x5d15b8da8be24f27L    # -1.72394315419371E-140
        0x5bbd2096e37d372fL    # 8.269863790011373E133
        -0x71409bded1a2fa0eL
        -0x4696dc13a40d14c3L    # -3.8734804252920984E-32
        0x554771f99ae857d3L    # 6.563912106260036E102
        -0x3a48c7ddbfdeb0eL
        -0x35d45d909caef2fbL    # -2.019394237361068E49
        -0x193189e77db6c9b3L    # -1.6567459672310737E187
        0x19da952de0f65feeL
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_2
    .array-data 8
        -0x4c840534c9b1401fL    # -1.0882367000367192E-60
        -0x51d7215d3273a513L    # -2.50035287462087E-86
    .end array-data
.end method

.method public getBoolean(Ljava/lang/String;II)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    cmp-long p3, p1, v0

    .line 21
    .line 22
    if-nez p3, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public getByteArray(Ljava/lang/String;II)[B
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getCount()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    return v0
.end method

.method public getInteger(Ljava/lang/String;II)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getInt(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public getLong(Ljava/lang/String;II)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:I

    return v0
.end method

.method public getString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getWindowIndex(I)I
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    .line 5
    .line 6
    if-ge p1, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 12
    .line 13
    .line 14
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    if-ge v0, v2, :cond_2

    .line 18
    .line 19
    aget v1, v1, v0

    .line 20
    .line 21
    if-ge p1, v1, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_2
    if-ne v0, v2, :cond_3

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    :cond_3
    return v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasNull(Ljava/lang/String;II)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->isNull(II)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public isClosed()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iget-object v4, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 14
    .line 15
    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {p1, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x3e8

    .line 35
    .line 36
    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    .line 37
    .line 38
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    and-int/lit8 p1, p2, 0x1

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final zaa(Ljava/lang/String;II)D
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public final zab(Ljava/lang/String;II)F
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final zac(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/database/CharArrayBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 5
    .line 6
    aget-object p3, v0, p3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p3, p2, p1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zad()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Ljava/lang/String;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 26
    .line 27
    array-length v1, v1

    .line 28
    new-array v1, v1, [I

    .line 29
    .line 30
    iput-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 34
    .line 35
    array-length v3, v2

    .line 36
    if-ge v0, v3, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    .line 39
    .line 40
    aput v1, v3, v0

    .line 41
    .line 42
    aget-object v2, v2, v0

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    .line 49
    .line 50
    aget-object v3, v3, v0

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    sub-int v2, v1, v2

    .line 57
    .line 58
    sub-int/2addr v3, v2

    .line 59
    add-int/2addr v1, v3

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    .line 64
    .line 65
    return-void
.end method
