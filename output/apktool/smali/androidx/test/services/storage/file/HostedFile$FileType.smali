.class public final enum Landroidx/test/services/storage/file/HostedFile$FileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/HostedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/HostedFile$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/HostedFile$FileType;

.field public static final enum DIRECTORY:Landroidx/test/services/storage/file/HostedFile$FileType;

.field public static final enum FILE:Landroidx/test/services/storage/file/HostedFile$FileType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "f"

    .line 5
    .line 6
    const-string v3, "FILE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Landroidx/test/services/storage/file/HostedFile$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileType;->FILE:Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 12
    .line 13
    new-instance v2, Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "d"

    .line 17
    .line 18
    const-string v5, "DIRECTORY"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Landroidx/test/services/storage/file/HostedFile$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Landroidx/test/services/storage/file/HostedFile$FileType;->DIRECTORY:Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    new-array v4, v4, [Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 27
    .line 28
    aput-object v0, v4, v1

    .line 29
    .line 30
    aput-object v2, v4, v3

    .line 31
    .line 32
    sput-object v4, Landroidx/test/services/storage/file/HostedFile$FileType;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
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
    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$FileType;->type:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static fromTypeCode(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$FileType;
    .locals 5

    .line 1
    invoke-static {}, Landroidx/test/services/storage/file/HostedFile$FileType;->values()[Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/test/services/storage/file/HostedFile$FileType;->getTypeCode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "unknown type: "

    .line 28
    .line 29
    invoke-static {v1, p0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$FileType;
    .locals 1

    .line 1
    const-class v0, Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/test/services/storage/file/HostedFile$FileType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileType;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/test/services/storage/file/HostedFile$FileType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$FileType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
