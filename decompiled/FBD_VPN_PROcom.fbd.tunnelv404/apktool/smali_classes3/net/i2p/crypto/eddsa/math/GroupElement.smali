.class public Lnet/i2p/crypto/eddsa/math/GroupElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8830a11ed1f53L


# instance fields
.field final T:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field final X:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field final Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field final Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field final curve:Lnet/i2p/crypto/eddsa/math/Curve;

.field final dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

.field final precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

.field final repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 4
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 5
    iput-object p3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 6
    iput-object p4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 7
    iput-object p5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 8
    iput-object p6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    if-eqz p7, :cond_0

    .line 10
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomputeDouble()[Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;[BZ)V

    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;[BZ)V
    .locals 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/i2p/crypto/eddsa/math/Field;->fromByteArray([B)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtractOne()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getD()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->addOne()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 20
    invoke-virtual {v3, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->isNonZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->isNonZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getI()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not a valid GroupElement"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->isNegative()Z

    move-result v1

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v2

    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Lnet/i2p/crypto/eddsa/Utils;->bit([BI)I

    move-result p2

    if-eq v1, p2, :cond_2

    .line 29
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->negate()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 30
    :cond_2
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 31
    sget-object p2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 32
    iput-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 33
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 34
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object p1

    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 35
    invoke-virtual {v3, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    if-eqz p3, :cond_3

    .line 36
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomputeSingle()[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 37
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomputeDouble()[Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 39
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    :goto_1
    return-void
.end method

.method public static cached(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8

    .line 1
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    move-object v0, v7

    .line 6
    move-object v1, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V

    .line 12
    .line 13
    .line 14
    return-object v7
.end method

.method private madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 8
    .line 9
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 14
    .line 15
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 22
    .line 23
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 42
    .line 43
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 50
    .line 51
    invoke-virtual {v2, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v2, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v3, v4, v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method private msub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 8
    .line 9
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 14
    .line 15
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 22
    .line 23
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 42
    .line 43
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 50
    .line 51
    invoke-virtual {v2, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v2, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v3, v4, v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public static p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8

    .line 1
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P1P1:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    move-object v0, v7

    .line 6
    move-object v1, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V

    .line 12
    .line 13
    .line 14
    return-object v7
.end method

.method public static p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8

    .line 1
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, v7

    .line 7
    move-object v1, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V

    .line 12
    .line 13
    .line 14
    return-object v7
.end method

.method public static p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p0

    return-object p0
.end method

.method public static p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 9

    .line 2
    new-instance v8, Lnet/i2p/crypto/eddsa/math/GroupElement;

    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)V

    return-object v8
.end method

.method public static precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8

    .line 1
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, v7

    .line 7
    move-object v1, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V

    .line 12
    .line 13
    .line 14
    return-object v7
.end method

.method private precomputeDouble()[Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 9

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v3, p0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    iget-object v4, v3, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 10
    .line 11
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v5, v3, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 16
    .line 17
    invoke-virtual {v5, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, v3, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 22
    .line 23
    invoke-virtual {v6, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v5, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 42
    .line 43
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/Curve;->get2D()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v6, v7, v8, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    aput-object v4, v1, v2

    .line 56
    .line 57
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p0, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p0, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-object v1
.end method

.method private precomputeSingle()[[Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    aput v3, v0, v1

    .line 13
    .line 14
    const-class v4, Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 15
    .line 16
    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 21
    .line 22
    move-object v5, p0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v3, :cond_2

    .line 25
    .line 26
    move-object v7, v5

    .line 27
    const/4 v6, 0x0

    .line 28
    :goto_1
    if-ge v6, v2, :cond_0

    .line 29
    .line 30
    iget-object v8, v7, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 31
    .line 32
    invoke-virtual {v8}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    iget-object v9, v7, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 37
    .line 38
    invoke-virtual {v9, v8}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    iget-object v10, v7, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 43
    .line 44
    invoke-virtual {v10, v8}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    aget-object v10, v0, v4

    .line 49
    .line 50
    iget-object v11, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 51
    .line 52
    invoke-virtual {v8, v9}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    invoke-virtual {v8, v9}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    invoke-virtual {v9, v8}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget-object v9, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 65
    .line 66
    invoke-virtual {v9}, Lnet/i2p/crypto/eddsa/math/Curve;->get2D()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v8, v9}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-static {v11, v12, v13, v8}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    aput-object v8, v10, v6

    .line 79
    .line 80
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v7, v8}, Lnet/i2p/crypto/eddsa/math/GroupElement;->add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_0
    const/4 v6, 0x0

    .line 96
    :goto_2
    if-ge v6, v2, :cond_1

    .line 97
    .line 98
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v5, v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    return-object v0
.end method

.method public static slide([B)[B
    .locals 10

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    const/4 v4, 0x1

    .line 8
    if-ge v3, v0, :cond_0

    .line 9
    .line 10
    shr-int/lit8 v5, v3, 0x3

    .line 11
    .line 12
    aget-byte v5, p0, v5

    .line 13
    .line 14
    and-int/lit8 v6, v3, 0x7

    .line 15
    .line 16
    shr-int/2addr v5, v6

    .line 17
    and-int/2addr v4, v5

    .line 18
    int-to-byte v4, v4

    .line 19
    aput-byte v4, v1, v3

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_1
    if-ge p0, v0, :cond_5

    .line 26
    .line 27
    aget-byte v3, v1, p0

    .line 28
    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    :goto_2
    const/4 v5, 0x6

    .line 33
    if-gt v3, v5, :cond_4

    .line 34
    .line 35
    add-int v5, p0, v3

    .line 36
    .line 37
    if-ge v5, v0, :cond_4

    .line 38
    .line 39
    aget-byte v6, v1, v5

    .line 40
    .line 41
    if-eqz v6, :cond_3

    .line 42
    .line 43
    aget-byte v7, v1, p0

    .line 44
    .line 45
    shl-int v8, v6, v3

    .line 46
    .line 47
    add-int/2addr v8, v7

    .line 48
    const/16 v9, 0xf

    .line 49
    .line 50
    if-gt v8, v9, :cond_1

    .line 51
    .line 52
    shl-int/2addr v6, v3

    .line 53
    add-int/2addr v7, v6

    .line 54
    int-to-byte v6, v7

    .line 55
    aput-byte v6, v1, p0

    .line 56
    .line 57
    aput-byte v2, v1, v5

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_1
    shl-int v8, v6, v3

    .line 61
    .line 62
    sub-int v8, v7, v8

    .line 63
    .line 64
    const/16 v9, -0xf

    .line 65
    .line 66
    if-lt v8, v9, :cond_4

    .line 67
    .line 68
    shl-int/2addr v6, v3

    .line 69
    sub-int/2addr v7, v6

    .line 70
    int-to-byte v6, v7

    .line 71
    aput-byte v6, v1, p0

    .line 72
    .line 73
    :goto_3
    if-ge v5, v0, :cond_3

    .line 74
    .line 75
    aget-byte v6, v1, v5

    .line 76
    .line 77
    if-nez v6, :cond_2

    .line 78
    .line 79
    aput-byte v4, v1, v5

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_2
    aput-byte v2, v1, v5

    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    add-int/lit8 p0, p0, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    return-object v1
.end method

.method public static toRadix16([B)[B
    .locals 5

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const/16 v3, 0x20

    .line 8
    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    mul-int/lit8 v3, v2, 0x2

    .line 12
    .line 13
    aget-byte v4, p0, v2

    .line 14
    .line 15
    and-int/lit8 v4, v4, 0xf

    .line 16
    .line 17
    int-to-byte v4, v4

    .line 18
    aput-byte v4, v0, v3

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    aget-byte v4, p0, v2

    .line 23
    .line 24
    shr-int/lit8 v4, v4, 0x4

    .line 25
    .line 26
    and-int/lit8 v4, v4, 0xf

    .line 27
    .line 28
    int-to-byte v4, v4

    .line 29
    aput-byte v4, v0, v3

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_1
    const/16 v2, 0x3f

    .line 36
    .line 37
    if-ge v1, v2, :cond_1

    .line 38
    .line 39
    aget-byte v2, v0, v1

    .line 40
    .line 41
    add-int/2addr v2, p0

    .line 42
    int-to-byte p0, v2

    .line 43
    aput-byte p0, v0, v1

    .line 44
    .line 45
    add-int/lit8 v2, p0, 0x8

    .line 46
    .line 47
    shr-int/lit8 v2, v2, 0x4

    .line 48
    .line 49
    shl-int/lit8 v3, v2, 0x4

    .line 50
    .line 51
    sub-int/2addr p0, v3

    .line 52
    int-to-byte p0, p0

    .line 53
    aput-byte p0, v0, v1

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    move p0, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    aget-byte v1, v0, v2

    .line 60
    .line 61
    add-int/2addr v1, p0

    .line 62
    int-to-byte p0, v1

    .line 63
    aput-byte p0, v0, v2

    .line 64
    .line 65
    return-object v0
.end method

.method private toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 6

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v1, v0, v1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_d

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq v1, v4, :cond_9

    .line 17
    .line 18
    if-eq v1, v3, :cond_7

    .line 19
    .line 20
    const/4 v3, 0x5

    .line 21
    if-eq v1, v3, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    aget p1, v0, p1

    .line 31
    .line 32
    if-ne p1, v2, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 35
    .line 36
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 37
    .line 38
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 39
    .line 40
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 41
    .line 42
    invoke-static {p1, v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    aget p1, v0, p1

    .line 64
    .line 65
    if-eq p1, v2, :cond_6

    .line 66
    .line 67
    if-eq p1, v4, :cond_5

    .line 68
    .line 69
    const/4 v0, 0x4

    .line 70
    if-eq p1, v0, :cond_4

    .line 71
    .line 72
    if-ne p1, v3, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 75
    .line 76
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 77
    .line 78
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 79
    .line 80
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 81
    .line 82
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 83
    .line 84
    invoke-static {p1, v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_4
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 96
    .line 97
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 98
    .line 99
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 106
    .line 107
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 114
    .line 115
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 116
    .line 117
    invoke-virtual {p1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 122
    .line 123
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    const/4 v5, 0x1

    .line 130
    invoke-static/range {v0 .. v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :cond_5
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 136
    .line 137
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 138
    .line 139
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 146
    .line 147
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 154
    .line 155
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 156
    .line 157
    invoke-virtual {p1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 162
    .line 163
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 164
    .line 165
    invoke-virtual {p1, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const/4 v5, 0x0

    .line 170
    invoke-static/range {v0 .. v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1

    .line 175
    :cond_6
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 176
    .line 177
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 178
    .line 179
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 186
    .line 187
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 194
    .line 195
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {p1, v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    return-object p1

    .line 206
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    aget p1, v0, p1

    .line 211
    .line 212
    if-ne p1, v3, :cond_8

    .line 213
    .line 214
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 215
    .line 216
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 217
    .line 218
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 219
    .line 220
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 221
    .line 222
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 223
    .line 224
    invoke-static {p1, v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cached(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    return-object p1

    .line 229
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    aget p1, v0, p1

    .line 240
    .line 241
    if-eq p1, v2, :cond_c

    .line 242
    .line 243
    if-eq p1, v4, :cond_b

    .line 244
    .line 245
    if-ne p1, v3, :cond_a

    .line 246
    .line 247
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 248
    .line 249
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 250
    .line 251
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 258
    .line 259
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 266
    .line 267
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 268
    .line 269
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 270
    .line 271
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/Curve;->get2D()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-static {p1, v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cached(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    return-object p1

    .line 284
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 285
    .line 286
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :cond_b
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 291
    .line 292
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 293
    .line 294
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 295
    .line 296
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 297
    .line 298
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 299
    .line 300
    invoke-static {p1, v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    return-object p1

    .line 305
    :cond_c
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 306
    .line 307
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 308
    .line 309
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 310
    .line 311
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 312
    .line 313
    invoke-static {p1, v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    return-object p1

    .line 318
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    aget p1, v0, p1

    .line 323
    .line 324
    if-ne p1, v2, :cond_e

    .line 325
    .line 326
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 327
    .line 328
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 329
    .line 330
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 331
    .line 332
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 333
    .line 334
    invoke-static {p1, v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    return-object p1

    .line 339
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 340
    .line 341
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 342
    .line 343
    .line 344
    throw p1
.end method


# virtual methods
.method public add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 8
    .line 9
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 14
    .line 15
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 22
    .line 23
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 42
    .line 43
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 50
    .line 51
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 52
    .line 53
    invoke-virtual {v3, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v3, v4, v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 4
    .line 5
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 6
    .line 7
    invoke-virtual {v1, v2, p2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 12
    .line 13
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 14
    .line 15
    invoke-virtual {v2, v3, p2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 20
    .line 21
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 22
    .line 23
    invoke-virtual {v3, p1, p2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, v1, v2, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 5

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 25
    .line 26
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 31
    .line 32
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 37
    .line 38
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 43
    .line 44
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v1, v3, v4, v0, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public doubleScalarMultiplyVariableTime(Lnet/i2p/crypto/eddsa/math/GroupElement;[B[B)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 4

    .line 1
    invoke-static {p2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->slide([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->slide([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 10
    .line 11
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0xff

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-byte v2, p2, v1

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    aget-byte v2, p3, v1

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    if-ltz v1, :cond_6

    .line 34
    .line 35
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    aget-byte v2, p2, v1

    .line 40
    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 48
    .line 49
    aget-byte v3, p2, v1

    .line 50
    .line 51
    div-int/lit8 v3, v3, 0x2

    .line 52
    .line 53
    aget-object v2, v2, v3

    .line 54
    .line 55
    invoke-direct {v0, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    if-gez v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 67
    .line 68
    aget-byte v3, p2, v1

    .line 69
    .line 70
    neg-int v3, v3

    .line 71
    div-int/lit8 v3, v3, 0x2

    .line 72
    .line 73
    aget-object v2, v2, v3

    .line 74
    .line 75
    invoke-direct {v0, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->msub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_3
    :goto_2
    aget-byte v2, p3, v1

    .line 80
    .line 81
    if-lez v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 88
    .line 89
    aget-byte v3, p3, v1

    .line 90
    .line 91
    div-int/lit8 v3, v3, 0x2

    .line 92
    .line 93
    aget-object v2, v2, v3

    .line 94
    .line 95
    invoke-direct {v0, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    if-gez v2, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 107
    .line 108
    aget-byte v3, p3, v1

    .line 109
    .line 110
    neg-int v3, v3

    .line 111
    div-int/lit8 v3, v3, 0x2

    .line 112
    .line 113
    aget-object v2, v2, v3

    .line 114
    .line 115
    invoke-direct {v0, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->msub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    add-int/lit8 v1, v1, -0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 24
    .line 25
    invoke-direct {p1, v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    return v2

    .line 31
    :cond_2
    :goto_0
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    .line 32
    .line 33
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    aget v1, v1, v3

    .line 40
    .line 41
    if-eq v1, v0, :cond_a

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-eq v1, v3, :cond_a

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    if-eq v1, v3, :cond_6

    .line 48
    .line 49
    const/4 v3, 0x5

    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    const/4 v3, 0x6

    .line 53
    if-eq v1, v3, :cond_3

    .line 54
    .line 55
    return v2

    .line 56
    :cond_3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 57
    .line 58
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 67
    .line 68
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 77
    .line 78
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v0, 0x0

    .line 88
    :goto_1
    return v0

    .line 89
    :cond_5
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    return p1

    .line 98
    :cond_6
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 99
    .line 100
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 109
    .line 110
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_7

    .line 117
    .line 118
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 119
    .line 120
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 129
    .line 130
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    const/4 v0, 0x0

    .line 140
    :goto_2
    return v0

    .line 141
    :cond_8
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 142
    .line 143
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 150
    .line 151
    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 158
    .line 159
    iget-object v5, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    iget-object v5, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 166
    .line 167
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    iget-object v6, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 174
    .line 175
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 176
    .line 177
    invoke-virtual {v6, v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 182
    .line 183
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 184
    .line 185
    invoke-virtual {p1, v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_9

    .line 194
    .line 195
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_9

    .line 200
    .line 201
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_9

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    const/4 v0, 0x0

    .line 209
    :goto_3
    return v0

    .line 210
    :cond_a
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 211
    .line 212
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 213
    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_c

    .line 219
    .line 220
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 221
    .line 222
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 223
    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_b

    .line 229
    .line 230
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 231
    .line 232
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 233
    .line 234
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-eqz p1, :cond_b

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_b
    const/4 v0, 0x0

    .line 242
    :goto_4
    return v0

    .line 243
    :cond_c
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 244
    .line 245
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 252
    .line 253
    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 254
    .line 255
    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 260
    .line 261
    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 262
    .line 263
    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 268
    .line 269
    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 270
    .line 271
    invoke-virtual {p1, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_d

    .line 280
    .line 281
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_d

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_d
    const/4 v0, 0x0

    .line 289
    :goto_5
    return v0
.end method

.method public getCurve()Lnet/i2p/crypto/eddsa/math/Curve;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRepresentation()Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    return-object v0
.end method

.method public getT()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getX()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getY()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getZ()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isOnCurve()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->isOnCurve(Lnet/i2p/crypto/eddsa/math/Curve;)Z

    move-result v0

    return v0
.end method

.method public isOnCurve(Lnet/i2p/crypto/eddsa/math/Curve;)Z
    .locals 3

    .line 2
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->isOnCurve(Lnet/i2p/crypto/eddsa/math/Curve;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v2, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 7
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getD()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object p1

    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public negate()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->sub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3PrecomputeDouble()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 5

    .line 1
    invoke-static {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRadix16([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 6
    .line 7
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_0
    const/16 v2, 0x40

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    div-int/lit8 v2, v1, 0x2

    .line 19
    .line 20
    aget-byte v3, p1, v1

    .line 21
    .line 22
    invoke-virtual {p0, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->select(II)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_1
    if-ge v1, v2, :cond_1

    .line 71
    .line 72
    div-int/lit8 v3, v1, 0x2

    .line 73
    .line 74
    aget-byte v4, p1, v1

    .line 75
    .line 76
    invoke-virtual {p0, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->select(II)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-direct {v0, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    add-int/lit8 v1, v1, 0x2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    return-object v0
.end method

.method public select(II)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 5

    .line 1
    invoke-static {p2}, Lnet/i2p/crypto/eddsa/Utils;->negative(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    neg-int v1, v0

    .line 6
    and-int/2addr v1, p2

    .line 7
    const/4 v2, 0x1

    .line 8
    shl-int/2addr v1, v2

    .line 9
    sub-int/2addr p2, v1

    .line 10
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 11
    .line 12
    sget-object v3, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/Curve;->getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 19
    .line 20
    aget-object v3, v3, p1

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aget-object v3, v3, v4

    .line 24
    .line 25
    invoke-static {p2, v2}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v1, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 34
    .line 35
    aget-object v3, v3, p1

    .line 36
    .line 37
    aget-object v2, v3, v2

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-static {p2, v3}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v1, v2, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 49
    .line 50
    aget-object v2, v2, p1

    .line 51
    .line 52
    aget-object v2, v2, v3

    .line 53
    .line 54
    const/4 v3, 0x3

    .line 55
    invoke-static {p2, v3}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {v1, v2, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 64
    .line 65
    aget-object v2, v2, p1

    .line 66
    .line 67
    aget-object v2, v2, v3

    .line 68
    .line 69
    const/4 v3, 0x4

    .line 70
    invoke-static {p2, v3}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v1, v2, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 79
    .line 80
    aget-object v2, v2, p1

    .line 81
    .line 82
    aget-object v2, v2, v3

    .line 83
    .line 84
    const/4 v3, 0x5

    .line 85
    invoke-static {p2, v3}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v1, v2, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 94
    .line 95
    aget-object v2, v2, p1

    .line 96
    .line 97
    aget-object v2, v2, v3

    .line 98
    .line 99
    const/4 v3, 0x6

    .line 100
    invoke-static {p2, v3}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v1, v2, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 109
    .line 110
    aget-object v2, v2, p1

    .line 111
    .line 112
    aget-object v2, v2, v3

    .line 113
    .line 114
    const/4 v3, 0x7

    .line 115
    invoke-static {p2, v3}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-virtual {v1, v2, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 124
    .line 125
    aget-object p1, v2, p1

    .line 126
    .line 127
    aget-object p1, p1, v3

    .line 128
    .line 129
    const/16 v2, 0x8

    .line 130
    .line 131
    invoke-static {p2, v2}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    invoke-virtual {v1, p1, p2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 140
    .line 141
    iget-object v1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 142
    .line 143
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 144
    .line 145
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 146
    .line 147
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->negate()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {p2, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p1, p2, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    return-object p1
.end method

.method public sub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 8
    .line 9
    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 14
    .line 15
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 22
    .line 23
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 42
    .line 43
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 50
    .line 51
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 52
    .line 53
    invoke-virtual {v3, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v3, v4, v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public toByteArray()[B
    .locals 4

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 27
    .line 28
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->toByteArray()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    array-length v3, v0

    .line 49
    sub-int/2addr v3, v1

    .line 50
    aget-byte v1, v0, v3

    .line 51
    .line 52
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->isNegative()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    const/16 v2, -0x80

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    :goto_0
    or-int/2addr v1, v2

    .line 63
    int-to-byte v1, v1

    .line 64
    aput-byte v1, v0, v3

    .line 65
    .line 66
    return-object v0
.end method

.method public toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toP3PrecomputeDouble()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[GroupElement\nX="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\nY="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\nZ="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\nT="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\n]"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
