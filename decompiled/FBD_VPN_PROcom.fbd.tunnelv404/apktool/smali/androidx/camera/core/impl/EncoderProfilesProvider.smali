.class public interface abstract Landroidx/camera/core/impl/EncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field public static final QUALITY_HIGH_TO_LOW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Landroidx/camera/core/impl/EncoderProfilesProvider$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/impl/EncoderProfilesProvider$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/impl/EncoderProfilesProvider;->EMPTY:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/16 v5, 0xb

    .line 27
    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const/4 v7, 0x6

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const/4 v9, 0x5

    .line 38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    const/4 v11, 0x4

    .line 43
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    const/16 v13, 0x9

    .line 48
    .line 49
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    const/4 v15, 0x3

    .line 54
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v16

    .line 58
    const/16 v17, 0x7

    .line 59
    .line 60
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v18

    .line 64
    const/16 v19, 0x2

    .line 65
    .line 66
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v20

    .line 70
    new-array v5, v5, [Ljava/lang/Integer;

    .line 71
    .line 72
    const/16 v21, 0x0

    .line 73
    .line 74
    aput-object v0, v5, v21

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    aput-object v2, v5, v0

    .line 78
    .line 79
    aput-object v4, v5, v19

    .line 80
    .line 81
    aput-object v6, v5, v15

    .line 82
    .line 83
    aput-object v8, v5, v11

    .line 84
    .line 85
    aput-object v10, v5, v9

    .line 86
    .line 87
    aput-object v12, v5, v7

    .line 88
    .line 89
    aput-object v14, v5, v17

    .line 90
    .line 91
    aput-object v16, v5, v3

    .line 92
    .line 93
    aput-object v18, v5, v13

    .line 94
    .line 95
    aput-object v20, v5, v1

    .line 96
    .line 97
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Landroidx/camera/core/impl/EncoderProfilesProvider;->QUALITY_HIGH_TO_LOW:Ljava/util/List;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public abstract getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract hasProfile(I)Z
.end method
