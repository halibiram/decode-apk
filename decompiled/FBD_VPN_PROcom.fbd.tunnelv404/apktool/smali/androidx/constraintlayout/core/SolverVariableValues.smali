.class public Landroidx/constraintlayout/core/SolverVariableValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final HASH:Z = true

.field private static sEpsilon:F = 0.001f


# instance fields
.field protected final mCache:Landroidx/constraintlayout/core/Cache;

.field mCount:I

.field private mHashSize:I

.field mHead:I

.field mKeys:[I

.field mNext:[I

.field mNextKeys:[I

.field private final mNone:I

.field mPrevious:[I

.field private final mRow:Landroidx/constraintlayout/core/ArrayRow;

.field private mSize:I

.field mValues:[F

.field mVariables:[I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNone:I

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mSize:I

    .line 10
    .line 11
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHashSize:I

    .line 12
    .line 13
    new-array v2, v1, [I

    .line 14
    .line 15
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mKeys:[I

    .line 16
    .line 17
    new-array v2, v1, [I

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 20
    .line 21
    new-array v2, v1, [I

    .line 22
    .line 23
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 24
    .line 25
    new-array v2, v1, [F

    .line 26
    .line 27
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 28
    .line 29
    new-array v2, v1, [I

    .line 30
    .line 31
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 32
    .line 33
    new-array v1, v1, [I

    .line 34
    .line 35
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    .line 43
    .line 44
    iput-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->clear()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 3

    .line 1
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHashSize:I

    .line 4
    .line 5
    rem-int/2addr p1, v0

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mKeys:[I

    .line 7
    .line 8
    aget v1, v0, p1

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    aput p2, v0, p1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 17
    .line 18
    aget v0, p1, v1

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    move v1, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    aput p2, p1, v1

    .line 25
    .line 26
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 27
    .line 28
    aput v2, p1, p2

    .line 29
    .line 30
    return-void
.end method

.method private addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 2
    .line 3
    iget v1, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 4
    .line 5
    aput v1, v0, p1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 8
    .line 9
    aput p3, v0, p1

    .line 10
    .line 11
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    aput v0, p3, p1

    .line 15
    .line 16
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 17
    .line 18
    aput v0, p3, p1

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 23
    .line 24
    .line 25
    iget p1, p2, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p2, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 30
    .line 31
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    iput p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 36
    .line 37
    return-void
.end method

.method private displayHash()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHashSize:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mKeys:[I

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eq v2, v3, :cond_2

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, " hash ["

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, "] => "

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mKeys:[I

    .line 44
    .line 45
    aget v4, v4, v1

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    :goto_1
    if-nez v5, :cond_1

    .line 49
    .line 50
    const-string v6, " "

    .line 51
    .line 52
    invoke-static {v2, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 57
    .line 58
    aget v6, v6, v4

    .line 59
    .line 60
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 68
    .line 69
    aget v6, v6, v4

    .line 70
    .line 71
    if-eq v6, v3, :cond_0

    .line 72
    .line 73
    move v4, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    const/4 v5, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    return-void
.end method

.method private findEmptySlot()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mSize:I

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 8
    .line 9
    aget v1, v1, v0

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v2
.end method

.method private increaseSize()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mSize:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 6
    .line 7
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 38
    .line 39
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 44
    .line 45
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mSize:I

    .line 46
    .line 47
    :goto_0
    if-ge v1, v0, :cond_0

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    aput v3, v2, v1

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 55
    .line 56
    aput v3, v2, v1

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mSize:I

    .line 62
    .line 63
    return-void
.end method

.method private insertVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->findEmptySlot()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0, p2, p3}, Landroidx/constraintlayout/core/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    .line 6
    .line 7
    .line 8
    const/4 p3, -0x1

    .line 9
    if-eq p1, p3, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 12
    .line 13
    aput p1, v1, v0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 16
    .line 17
    aget v2, v1, p1

    .line 18
    .line 19
    aput v2, v1, v0

    .line 20
    .line 21
    aput v0, v1, p1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 25
    .line 26
    aput p3, p1, v0

    .line 27
    .line 28
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 29
    .line 30
    if-lez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 33
    .line 34
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 35
    .line 36
    aput v1, p1, v0

    .line 37
    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 42
    .line 43
    aput p3, p1, v0

    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 46
    .line 47
    aget p1, p1, v0

    .line 48
    .line 49
    if-eq p1, p3, :cond_2

    .line 50
    .line 51
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 52
    .line 53
    aput v0, p3, p1

    .line 54
    .line 55
    :cond_2
    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/core/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private removeFromHashMap(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 5

    .line 1
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHashSize:I

    .line 4
    .line 5
    rem-int v0, p1, v0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mKeys:[I

    .line 8
    .line 9
    aget v2, v1, v0

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 16
    .line 17
    aget v4, v4, v2

    .line 18
    .line 19
    if-ne v4, p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 22
    .line 23
    aget v4, p1, v2

    .line 24
    .line 25
    aput v4, v1, v0

    .line 26
    .line 27
    aput v3, p1, v2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 31
    .line 32
    aget v1, v0, v2

    .line 33
    .line 34
    if-eq v1, v3, :cond_2

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 37
    .line 38
    aget v4, v4, v1

    .line 39
    .line 40
    if-eq v4, p1, :cond_2

    .line 41
    .line 42
    move v2, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-eq v1, v3, :cond_3

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 47
    .line 48
    aget v4, v4, v1

    .line 49
    .line 50
    if-ne v4, p1, :cond_3

    .line 51
    .line 52
    aget p1, v0, v1

    .line 53
    .line 54
    aput p1, v0, v2

    .line 55
    .line 56
    aput v3, v0, v1

    .line 57
    .line 58
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .locals 4

    .line 1
    sget v0, Landroidx/constraintlayout/core/SolverVariableValues;->sEpsilon:F

    .line 2
    .line 3
    neg-float v1, v0

    .line 4
    cmpl-float v1, p2, v1

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    cmpg-float v0, p2, v0

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 25
    .line 26
    aget v2, v1, v0

    .line 27
    .line 28
    add-float/2addr v2, p2

    .line 29
    aput v2, v1, v0

    .line 30
    .line 31
    sget p2, Landroidx/constraintlayout/core/SolverVariableValues;->sEpsilon:F

    .line 32
    .line 33
    neg-float v3, p2

    .line 34
    cmpl-float v3, v2, v3

    .line 35
    .line 36
    if-lez v3, :cond_2

    .line 37
    .line 38
    cmpg-float p2, v2, p2

    .line 39
    .line 40
    if-gez p2, :cond_2

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    aput p2, v1, v0

    .line 44
    .line 45
    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mSize:I

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    if-ge v0, v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 28
    .line 29
    aput v3, v2, v0

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 32
    .line 33
    aput v3, v2, v0

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHashSize:I

    .line 40
    .line 41
    if-ge v0, v2, :cond_3

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mKeys:[I

    .line 44
    .line 45
    aput v3, v2, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 51
    .line 52
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 53
    .line 54
    return-void
.end method

.method public contains(Landroidx/constraintlayout/core/SolverVariable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public display()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 2
    .line 3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 4
    .line 5
    const-string v2, "{ "

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " = "

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariableValue(I)F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " "

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 58
    .line 59
    const-string v1, " }"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public divideByAmount(F)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 9
    .line 10
    aget v4, v3, v1

    .line 11
    .line 12
    div-float/2addr v4, p1

    .line 13
    aput v4, v3, v1

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 16
    .line 17
    aget v1, v3, v1

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return-void
.end method

.method public get(Landroidx/constraintlayout/core/SolverVariable;)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 9
    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public getCurrentSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_3

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    if-ne v3, p1, :cond_1

    .line 14
    .line 15
    if-eq v2, v4, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 22
    .line 23
    aget v0, v0, v2

    .line 24
    .line 25
    aget-object p1, p1, v0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 29
    .line 30
    aget v2, v5, v2

    .line 31
    .line 32
    if-ne v2, v4, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getVariableValue(I)F
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    if-ne v2, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 11
    .line 12
    aget p1, p1, v1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 16
    .line 17
    aget v1, v3, v1

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public indexOf(Landroidx/constraintlayout/core/SolverVariable;)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 10
    .line 11
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHashSize:I

    .line 12
    .line 13
    rem-int v0, p1, v0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mKeys:[I

    .line 16
    .line 17
    aget v0, v2, v0

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 23
    .line 24
    aget v2, v2, v0

    .line 25
    .line 26
    if-ne v2, p1, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNextKeys:[I

    .line 30
    .line 31
    aget v0, v2, v0

    .line 32
    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 36
    .line 37
    aget v2, v2, v0

    .line 38
    .line 39
    if-eq v2, p1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    return v1

    .line 45
    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 46
    .line 47
    aget v2, v2, v0

    .line 48
    .line 49
    if-ne v2, p1, :cond_5

    .line 50
    .line 51
    return v0

    .line 52
    :cond_5
    :goto_1
    return v1
.end method

.method public invert()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 9
    .line 10
    aget v4, v3, v1

    .line 11
    .line 12
    const/high16 v5, -0x40800000    # -1.0f

    .line 13
    .line 14
    mul-float v4, v4, v5

    .line 15
    .line 16
    aput v4, v3, v1

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 19
    .line 20
    aget v1, v3, v1

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-void
.end method

.method public put(Landroidx/constraintlayout/core/SolverVariable;F)V
    .locals 7

    .line 1
    sget v0, Landroidx/constraintlayout/core/SolverVariableValues;->sEpsilon:F

    .line 2
    .line 3
    neg-float v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    cmpl-float v1, p2, v1

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    cmpg-float v0, p2, v0

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, v1, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/core/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 26
    .line 27
    .line 28
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v3, -0x1

    .line 36
    if-eq v0, v3, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 39
    .line 40
    aput p2, p1, v0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 44
    .line 45
    add-int/2addr v0, v2

    .line 46
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mSize:I

    .line 47
    .line 48
    if-lt v0, v2, :cond_3

    .line 49
    .line 50
    invoke-direct {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->increaseSize()V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 54
    .line 55
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 56
    .line 57
    const/4 v4, -0x1

    .line 58
    :goto_0
    if-ge v1, v0, :cond_7

    .line 59
    .line 60
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 61
    .line 62
    aget v5, v5, v2

    .line 63
    .line 64
    iget v6, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 65
    .line 66
    if-ne v5, v6, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 69
    .line 70
    aput p2, p1, v2

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    if-ge v5, v6, :cond_5

    .line 74
    .line 75
    move v4, v2

    .line 76
    :cond_5
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 77
    .line 78
    aget v2, v5, v2

    .line 79
    .line 80
    if-ne v2, v3, :cond_6

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_7
    :goto_1
    invoke-direct {p0, v4, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->insertVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void
.end method

.method public remove(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->removeFromHashMap(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 14
    .line 15
    aget v2, v2, v0

    .line 16
    .line 17
    iget v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 18
    .line 19
    if-ne v3, v0, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 22
    .line 23
    aget v3, v3, v0

    .line 24
    .line 25
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mHead:I

    .line 26
    .line 27
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 28
    .line 29
    aput v1, v3, v0

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 32
    .line 33
    aget v4, v3, v0

    .line 34
    .line 35
    if-eq v4, v1, :cond_2

    .line 36
    .line 37
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 38
    .line 39
    aget v6, v5, v0

    .line 40
    .line 41
    aput v6, v5, v4

    .line 42
    .line 43
    :cond_2
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 44
    .line 45
    aget v4, v4, v0

    .line 46
    .line 47
    if-eq v4, v1, :cond_3

    .line 48
    .line 49
    aget v0, v3, v0

    .line 50
    .line 51
    aput v0, v3, v4

    .line 52
    .line 53
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 54
    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 58
    .line 59
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 60
    .line 61
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    iput v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    return v2
.end method

.method public sizeInBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " { "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " = "

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariableValue(I)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " "

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const-string v4, "[p: "

    .line 72
    .line 73
    invoke-static {v0, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 78
    .line 79
    aget v4, v4, v3

    .line 80
    .line 81
    const-string v5, "none"

    .line 82
    .line 83
    const/4 v6, -0x1

    .line 84
    if-eq v4, v6, :cond_1

    .line 85
    .line 86
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 91
    .line 92
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 93
    .line 94
    iget-object v7, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 95
    .line 96
    iget-object v8, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mPrevious:[I

    .line 97
    .line 98
    aget v8, v8, v3

    .line 99
    .line 100
    aget v7, v7, v8

    .line 101
    .line 102
    aget-object v4, v4, v7

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-static {v0, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_1
    const-string v4, ", n: "

    .line 117
    .line 118
    invoke-static {v0, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 123
    .line 124
    aget v4, v4, v3

    .line 125
    .line 126
    if-eq v4, v6, :cond_2

    .line 127
    .line 128
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 133
    .line 134
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 135
    .line 136
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 137
    .line 138
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mNext:[I

    .line 139
    .line 140
    aget v3, v6, v3

    .line 141
    .line 142
    aget v3, v5, v3

    .line 143
    .line 144
    aget-object v3, v4, v3

    .line 145
    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto :goto_2

    .line 154
    :cond_2
    invoke-static {v0, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :goto_2
    const-string v3, "]"

    .line 159
    .line 160
    invoke-static {v0, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_3
    const-string v1, " }"

    .line 169
    .line 170
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0
.end method

.method public use(Landroidx/constraintlayout/core/ArrayRow;Z)F
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/SolverVariableValues;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    .line 9
    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 13
    .line 14
    check-cast p1, Landroidx/constraintlayout/core/SolverVariableValues;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/constraintlayout/core/SolverVariableValues;->getCurrentSize()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    iget-object v4, p1, Landroidx/constraintlayout/core/SolverVariableValues;->mVariables:[I

    .line 25
    .line 26
    aget v4, v4, v3

    .line 27
    .line 28
    const/4 v5, -0x1

    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    iget-object v5, p1, Landroidx/constraintlayout/core/SolverVariableValues;->mValues:[F

    .line 32
    .line 33
    aget v5, v5, v3

    .line 34
    .line 35
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 36
    .line 37
    iget-object v6, v6, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 38
    .line 39
    aget-object v4, v6, v4

    .line 40
    .line 41
    mul-float v5, v5, v0

    .line 42
    .line 43
    invoke-virtual {p0, v4, v5, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return v0
.end method
