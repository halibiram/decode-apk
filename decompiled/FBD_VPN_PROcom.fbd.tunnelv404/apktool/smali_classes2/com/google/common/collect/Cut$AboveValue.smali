.class final Lcom/google/common/collect/Cut$AboveValue;
.super Lcom/google/common/collect/Cut;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AboveValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/Cut<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Comparable;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$AboveValue;->leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/Cut;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x5d

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 2
    .line 3
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    not-int v0, v0

    .line 8
    return v0
.end method

.method public isLessThan(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/2addr v2, v1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v4, v1, [J

    .line 21
    .line 22
    fill-array-data v4, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v1, v1, [J

    .line 41
    .line 42
    fill-array-data v1, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :array_0
    .array-data 8
        -0x42984bcaaaf7d825L    # -6.737064604781725E-13
        0x75c77e37445d80fdL    # 2.25759134915617E259
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x85dcd06ee14f2a3L
        -0x28e171c6ea1e005eL    # -4.592705946082949E111
    .end array-data
.end method

.method public typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 2
    .line 3
    return-object v0
.end method

.method public typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    .line 2
    .line 3
    return-object v0
.end method

.method public withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/Cut$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    return-object p1
.end method

.method public withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/Cut$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    return-object p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_2
    return-object p0
.end method
