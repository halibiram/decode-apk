.class public final Lcom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$Dummy;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final UNSET_INT:I = -0x1


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field useCustomMap:Z

.field valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public concurrencyLevel(I)Lcom/google/common/collect/MapMaker;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v4, 0x6

    .line 14
    new-array v4, v4, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v4, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 27
    .line 28
    invoke-static {v0, v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    if-lez p1, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 38
    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x4be184e482ca1db6L    # -1.2139714109059856E-57
        0x20df1161df0b5399L
        -0x74fed2e1ee9029feL
        0x2d0ee1c4cefd13dL    # 4.14194451857145E-295
        0x51c282b8bd3b9ab9L    # 7.192005557826526E85
        0x2bda8e0fd5c3c9dL
    .end array-data
.end method

.method public getConcurrencyLevel()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    :cond_0
    return v0
.end method

.method public getInitialCapacity()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    :cond_0
    return v0
.end method

.method public getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/common/base/Equivalence;

    .line 16
    .line 17
    return-object v0
.end method

.method public getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 10
    .line 11
    return-object v0
.end method

.method public getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 10
    .line 11
    return-object v0
.end method

.method public initialCapacity(I)Lcom/google/common/collect/MapMaker;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v4, 0x6

    .line 14
    new-array v4, v4, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v4, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 27
    .line 28
    invoke-static {v0, v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    if-ltz p1, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 38
    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x6d18aa63e978666eL    # 3.401170023900759E217
        -0x38ff2c97defddba1L    # -1.092057351342802E34
        0x6ae6e00e7b1ac4c5L    # 9.180204088666598E206
        0x5ab8c6dbe60cf115L    # 1.0734041055465248E129
        0x2410ee4eed5966d5L    # 5.823469246589464E-135
        0x36683d597fcc4e1eL    # 1.326835155318914E-46
    .end array-data
.end method

.method public keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 25
    .line 26
    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/common/base/Equivalence;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 38
    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x4fbdaf792804514L
        -0x53904836fdea16ecL    # -1.1879439475057454E-94
        -0x10d8dd6e6cfbb1f9L    # -2.740292245542152E227
        -0x1c77cc45f92ddcb1L    # -2.9228049542662416E171
        0x4b1d65ecdfc83bc0L    # 7.039457365277393E53
        -0x43fc0426916cd06aL    # -1.3541540459765963E-19
    .end array-data
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/high16 v2, 0x3f400000    # 0.75f

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->create(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMakerInternalMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 25
    .line 26
    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 36
    .line 37
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 42
    .line 43
    :cond_1
    return-object p0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x3c0ec4dded02d507L    # -1.986597739556658E19
        0x1a8ca5a3aae9a5b3L    # 8.629630418380481E-181
        0x9c5086c84eff620L
        -0x6f0aa6d7c21a33c0L
        -0x42fa1aa705479286L    # -9.723728030559143E-15
        -0x59d5c27097d73344L    # -7.752886191776679E-125
    .end array-data
.end method

.method public setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 25
    .line 26
    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 36
    .line 37
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 42
    .line 43
    :cond_1
    return-object p0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x25cc5465f49fb248L    # -3.328814584090731E126
        -0x6948b23b38cb43e0L    # -3.04445334085829E-199
        0x29dc93d036c7040eL
        -0x491449adbfce228fL    # -3.8833052859199443E-44
        -0x2e84b83e4632cda5L    # -3.312286858472973E84
        -0x643044f7c44c6ae7L
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 7
    .line 8
    const/4 v3, -0x1

    .line 9
    if-eq v2, v3, :cond_0

    .line 10
    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v4, v0, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v4, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 26
    .line 27
    invoke-virtual {v1, v2, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v2, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 31
    .line 32
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v3, v0, [J

    .line 37
    .line 38
    fill-array-data v3, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget v3, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v3, v0, [J

    .line 60
    .line 61
    fill-array-data v3, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 85
    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v3, v0, [J

    .line 91
    .line 92
    fill-array-data v3, :array_3

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 116
    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v0, [J

    .line 122
    .line 123
    fill-array-data v0, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :array_0
    .array-data 8
        0x147aface395b6d8cL
        0x3d8bc354eb571c24L
        0x6b3d379c9dbde5e8L    # 3.752114721667529E208
    .end array-data

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
    :array_1
    .array-data 8
        0x78ba553fd98df372L    # 3.561365198103912E273
        -0x494c3a6815e88defL    # -3.463282754132211E-45
        -0x74ba1fce86409ef1L    # -2.33107755186935E-254
    .end array-data

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
    :array_2
    .array-data 8
        0x4140720bcb4a6173L    # 2155543.5882074176
        0x57dc1a800b6adf69L    # 1.7302108181424016E115
        0x53438faa0040af78L    # 1.275098982570463E93
    .end array-data

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
    :array_3
    .array-data 8
        0x77f391d86565cc61L    # 6.461606133665327E269
        -0x7480eca7c295911eL
        0x6e89709a60cbf2eeL    # 2.942669102571795E224
    .end array-data

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
    :array_4
    .array-data 8
        0x5cebecc28592ce17L    # 4.156796392124848E139
        0xb71cfd5de59b2aL
        -0x2317d8deaa7d90bdL    # -3.595310779786041E139
    .end array-data
.end method

.method public weakKeys()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public weakValues()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
