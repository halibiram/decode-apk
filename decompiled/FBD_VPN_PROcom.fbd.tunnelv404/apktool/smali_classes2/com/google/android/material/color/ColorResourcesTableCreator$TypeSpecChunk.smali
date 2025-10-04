.class Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSpecChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x10s

.field private static final SPEC_PUBLIC:I = 0x40000000


# instance fields
.field private final entryCount:I

.field private final entryFlags:[I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    iput v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    .line 52
    .line 53
    new-array v1, v1, [I

    .line 54
    .line 55
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_1
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    .line 59
    .line 60
    if-ge v1, v2, :cond_2

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    .line 73
    .line 74
    const/high16 v3, 0x40000000    # 2.0f

    .line 75
    .line 76
    aput v3, v2, v1

    .line 77
    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    int-to-short v1, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 83
    .line 84
    const/16 v2, 0x10

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSize()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const/16 v4, 0x202

    .line 91
    .line 92
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 96
    .line 97
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    .line 98
    .line 99
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    .line 100
    .line 101
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;-><init>(Ljava/util/List;Ljava/util/Set;I)V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    .line 105
    .line 106
    return-void
.end method

.method private getChunkSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    return v0
.end method


# virtual methods
.method public getChunkSizeWithTypeChunk()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getChunkSize()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1300()B

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x4

    .line 12
    new-array v2, v2, [B

    .line 13
    .line 14
    aput-byte v0, v2, v1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    aput-byte v1, v2, v0

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    aput-byte v1, v2, v3

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    aput-byte v1, v2, v3

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    .line 29
    .line 30
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    .line 38
    .line 39
    array-length v3, v2

    .line 40
    :goto_0
    if-ge v1, v3, :cond_0

    .line 41
    .line 42
    aget v4, v2, v1

    .line 43
    .line 44
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 49
    .line 50
    .line 51
    add-int/2addr v1, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
