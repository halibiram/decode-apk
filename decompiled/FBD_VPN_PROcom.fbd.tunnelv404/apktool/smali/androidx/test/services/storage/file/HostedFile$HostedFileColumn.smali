.class public final enum Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/HostedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HostedFileColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum DATA:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum DISPLAY_NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum SIZE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum SIZE_2:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum TYPE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;


# instance fields
.field private final androidType:I

.field private final columnName:Ljava/lang/String;

.field private final columnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 2
    .line 3
    const/4 v5, 0x3

    .line 4
    const/4 v6, 0x0

    .line 5
    const-string v1, "NAME"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "name"

    .line 9
    .line 10
    const-class v4, Ljava/lang/String;

    .line 11
    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    .line 14
    .line 15
    .line 16
    sput-object v7, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 17
    .line 18
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 19
    .line 20
    const/4 v13, 0x3

    .line 21
    const/4 v14, 0x1

    .line 22
    const-string v9, "TYPE"

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    const-string v11, "type"

    .line 26
    .line 27
    const-class v12, Ljava/lang/String;

    .line 28
    .line 29
    move-object v8, v0

    .line 30
    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->TYPE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 34
    .line 35
    new-instance v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 36
    .line 37
    const/16 v20, 0x1

    .line 38
    .line 39
    const/16 v21, 0x2

    .line 40
    .line 41
    const-string v16, "SIZE"

    .line 42
    .line 43
    const/16 v17, 0x2

    .line 44
    .line 45
    const-string v18, "size"

    .line 46
    .line 47
    const-class v19, Ljava/lang/Long;

    .line 48
    .line 49
    move-object v15, v1

    .line 50
    invoke-direct/range {v15 .. v21}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    .line 51
    .line 52
    .line 53
    sput-object v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 54
    .line 55
    new-instance v2, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 56
    .line 57
    const/4 v13, 0x4

    .line 58
    const/4 v14, 0x3

    .line 59
    const-string v9, "DATA"

    .line 60
    .line 61
    const/4 v10, 0x3

    .line 62
    const-string v11, "_data"

    .line 63
    .line 64
    const-class v12, [Ljava/lang/Byte;

    .line 65
    .line 66
    move-object v8, v2

    .line 67
    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    .line 68
    .line 69
    .line 70
    sput-object v2, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DATA:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 71
    .line 72
    new-instance v3, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 73
    .line 74
    const/16 v20, 0x3

    .line 75
    .line 76
    const/16 v21, 0x4

    .line 77
    .line 78
    const-string v16, "DISPLAY_NAME"

    .line 79
    .line 80
    const/16 v17, 0x4

    .line 81
    .line 82
    const-string v18, "_display_name"

    .line 83
    .line 84
    const-class v19, Ljava/lang/String;

    .line 85
    .line 86
    move-object v15, v3

    .line 87
    invoke-direct/range {v15 .. v21}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    .line 88
    .line 89
    .line 90
    sput-object v3, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DISPLAY_NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 91
    .line 92
    new-instance v4, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 93
    .line 94
    const/4 v13, 0x2

    .line 95
    const/4 v14, 0x5

    .line 96
    const-string v9, "SIZE_2"

    .line 97
    .line 98
    const/4 v10, 0x5

    .line 99
    const-string v11, "_size"

    .line 100
    .line 101
    const-class v12, Ljava/lang/Long;

    .line 102
    .line 103
    move-object v8, v4

    .line 104
    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    .line 105
    .line 106
    .line 107
    sput-object v4, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE_2:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 108
    .line 109
    const/4 v5, 0x6

    .line 110
    new-array v5, v5, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 111
    .line 112
    aput-object v7, v5, v6

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    aput-object v0, v5, v6

    .line 116
    .line 117
    const/4 v0, 0x2

    .line 118
    aput-object v1, v5, v0

    .line 119
    .line 120
    const/4 v0, 0x3

    .line 121
    aput-object v2, v5, v0

    .line 122
    .line 123
    const/4 v0, 0x4

    .line 124
    aput-object v3, v5, v0

    .line 125
    .line 126
    const/4 v0, 0x5

    .line 127
    aput-object v4, v5, v0

    .line 128
    .line 129
    sput-object v5, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 130
    .line 131
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p4}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Class;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnType:Ljava/lang/Class;

    .line 19
    .line 20
    iput p5, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->androidType:I

    .line 21
    .line 22
    iput p6, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->position:I

    .line 23
    .line 24
    return-void
.end method

.method public static getColumnNames()[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->values()[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    new-array v2, v1, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    aget-object v4, v0, v3

    .line 12
    .line 13
    invoke-virtual {v4}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->getColumnName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    aput-object v4, v2, v3

    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    .locals 1

    .line 1
    const-class v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getAndroidType()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->androidType:I

    .line 2
    .line 3
    return v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getColumnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->position:I

    .line 2
    .line 3
    return v0
.end method
