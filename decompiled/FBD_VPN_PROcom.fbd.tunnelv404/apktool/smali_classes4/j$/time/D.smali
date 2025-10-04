.class public final Lj$/time/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/l;
.implements Lj$/time/chrono/k;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final a:Lj$/time/j;

.field private final b:Lj$/time/A;

.field private final c:Lj$/time/z;


# direct methods
.method private constructor <init>(Lj$/time/j;Lj$/time/z;Lj$/time/A;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lj$/time/D;->a:Lj$/time/j;

    .line 611
    iput-object p3, p0, Lj$/time/D;->b:Lj$/time/A;

    .line 612
    iput-object p2, p0, Lj$/time/D;->c:Lj$/time/z;

    return-void
.end method

.method public static C(Lj$/time/j;Lj$/time/z;Lj$/time/A;)Lj$/time/D;
    .locals 5

    .line 367
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    instance-of v0, p1, Lj$/time/A;

    if-eqz v0, :cond_0

    .line 370
    new-instance p2, Lj$/time/D;

    move-object v0, p1

    check-cast v0, Lj$/time/A;

    invoke-direct {p2, p0, p1, v0}, Lj$/time/D;-><init>(Lj$/time/j;Lj$/time/z;Lj$/time/A;)V

    return-object p2

    .line 372
    :cond_0
    invoke-virtual {p1}, Lj$/time/z;->C()Lj$/time/zone/f;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p0}, Lj$/time/zone/f;->g(Lj$/time/j;)Ljava/util/List;

    move-result-object v1

    .line 375
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 376
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/A;

    goto :goto_0

    .line 377
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 378
    invoke-virtual {v0, p0}, Lj$/time/zone/f;->f(Lj$/time/j;)Lj$/time/zone/b;

    move-result-object p2

    .line 379
    invoke-virtual {p2}, Lj$/time/zone/b;->m()Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/j;->N(J)Lj$/time/j;

    move-result-object p0

    .line 380
    invoke-virtual {p2}, Lj$/time/zone/b;->n()Lj$/time/A;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 382
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 385
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/A;

    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/A;

    .line 388
    :goto_0
    new-instance v0, Lj$/time/D;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/D;-><init>(Lj$/time/j;Lj$/time/z;Lj$/time/A;)V

    return-object v0
.end method

.method static E(Ljava/io/ObjectInput;)Lj$/time/D;
    .locals 3

    .line 2259
    sget-object v0, Lj$/time/j;->c:Lj$/time/j;

    .line 2008
    sget-object v0, Lj$/time/h;->d:Lj$/time/h;

    .line 2224
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2225
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 2226
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 2227
    invoke-static {v0, v1, v2}, Lj$/time/h;->N(III)Lj$/time/h;

    move-result-object v0

    .line 2009
    invoke-static {p0}, Lj$/time/l;->R(Ljava/io/ObjectInput;)Lj$/time/l;

    move-result-object v1

    .line 2010
    invoke-static {v0, v1}, Lj$/time/j;->K(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v0

    .line 2260
    invoke-static {p0}, Lj$/time/A;->N(Ljava/io/ObjectInput;)Lj$/time/A;

    move-result-object v1

    .line 2261
    invoke-static {p0}, Lj$/time/u;->a(Ljava/io/ObjectInput;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lj$/time/z;

    .line 517
    const-string v2, "localDateTime"

    invoke-static {v0, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 518
    const-string v2, "offset"

    invoke-static {v1, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    const-string v2, "zone"

    invoke-static {p0, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 520
    instance-of v2, p0, Lj$/time/A;

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lj$/time/A;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ZoneId must match ZoneOffset"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 523
    :cond_1
    :goto_0
    new-instance v2, Lj$/time/D;

    invoke-direct {v2, v0, p0, v1}, Lj$/time/D;-><init>(Lj$/time/j;Lj$/time/z;Lj$/time/A;)V

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 2249
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static w(JILj$/time/z;)Lj$/time/D;
    .locals 3

    .line 453
    invoke-virtual {p3}, Lj$/time/z;->C()Lj$/time/zone/f;

    move-result-object v0

    int-to-long v1, p2

    .line 454
    invoke-static {p0, p1, v1, v2}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/A;

    move-result-object v0

    .line 456
    invoke-static {p0, p1, p2, v0}, Lj$/time/j;->L(JILj$/time/A;)Lj$/time/j;

    move-result-object p0

    .line 457
    new-instance p1, Lj$/time/D;

    invoke-direct {p1, p0, p3, v0}, Lj$/time/D;-><init>(Lj$/time/j;Lj$/time/z;Lj$/time/A;)V

    return-object p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 2239
    new-instance v0, Lj$/time/u;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lj$/time/u;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic B()J
    .locals 2

    invoke-static {p0}, Lj$/time/chrono/i;->o(Lj$/time/chrono/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final D(JLj$/time/temporal/t;)Lj$/time/D;
    .locals 5

    .line 1601
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_2

    .line 1602
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    .line 241
    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    .line 241
    iget-object v2, p0, Lj$/time/D;->b:Lj$/time/A;

    iget-object v3, p0, Lj$/time/D;->c:Lj$/time/z;

    iget-object v4, p0, Lj$/time/D;->a:Lj$/time/j;

    if-ltz v1, :cond_0

    sget-object v1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-eq v0, v1, :cond_0

    .line 1603
    invoke-virtual {v4, p1, p2, p3}, Lj$/time/j;->M(JLj$/time/temporal/t;)Lj$/time/j;

    move-result-object p1

    .line 622
    invoke-static {p1, v3, v2}, Lj$/time/D;->C(Lj$/time/j;Lj$/time/z;Lj$/time/A;)Lj$/time/D;

    move-result-object p1

    return-object p1

    .line 1605
    :cond_0
    invoke-virtual {v4, p1, p2, p3}, Lj$/time/j;->M(JLj$/time/temporal/t;)Lj$/time/j;

    move-result-object p1

    .line 433
    const-string p2, "localDateTime"

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    const-string p2, "offset"

    invoke-static {v2, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    const-string p2, "zone"

    invoke-static {v3, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    invoke-virtual {v3}, Lj$/time/z;->C()Lj$/time/zone/f;

    move-result-object p2

    .line 952
    invoke-virtual {p2, p1}, Lj$/time/zone/f;->g(Lj$/time/j;)Ljava/util/List;

    move-result-object p2

    .line 952
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 437
    new-instance p2, Lj$/time/D;

    invoke-direct {p2, p1, v3, v2}, Lj$/time/D;-><init>(Lj$/time/j;Lj$/time/z;Lj$/time/A;)V

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {p1, v2}, Lj$/time/chrono/i;->n(Lj$/time/chrono/e;Lj$/time/A;)J

    move-result-wide p2

    .line 439
    invoke-virtual {p1}, Lj$/time/j;->E()I

    move-result p1

    invoke-static {p2, p3, p1, v3}, Lj$/time/D;->w(JILj$/time/z;)Lj$/time/D;

    move-result-object p2

    :goto_0
    return-object p2

    .line 1608
    :cond_2
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/t;->j(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    check-cast p1, Lj$/time/D;

    return-object p1
.end method

.method public final F()Lj$/time/j;
    .locals 1

    .line 1028
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    return-object v0
.end method

.method final G(Ljava/io/DataOutput;)V
    .locals 1

    .line 2253
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->T(Ljava/io/DataOutput;)V

    .line 2254
    iget-object v0, p0, Lj$/time/D;->b:Lj$/time/A;

    invoke-virtual {v0, p1}, Lj$/time/A;->O(Ljava/io/DataOutput;)V

    .line 2255
    iget-object v0, p0, Lj$/time/D;->c:Lj$/time/z;

    check-cast p1, Ljava/io/ObjectOutput;

    invoke-virtual {v0, p1}, Lj$/time/z;->G(Ljava/io/ObjectOutput;)V

    return-void
.end method

.method public final a()Lj$/time/chrono/n;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lj$/time/D;->c()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->a()Lj$/time/chrono/n;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lj$/time/l;
    .locals 1

    .line 1138
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0}, Lj$/time/j;->b()Lj$/time/l;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lj$/time/chrono/b;
    .locals 1

    .line 1042
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0}, Lj$/time/j;->P()Lj$/time/h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 122
    check-cast p1, Lj$/time/chrono/k;

    .line 0
    invoke-static {p0, p1}, Lj$/time/chrono/i;->d(Lj$/time/chrono/k;Lj$/time/chrono/k;)I

    move-result p1

    return p1
.end method

.method public final d(JLj$/time/temporal/q;)Lj$/time/temporal/l;
    .locals 6

    .line 1303
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_3

    .line 1304
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 1305
    sget-object v1, Lj$/time/C;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lj$/time/D;->a:Lj$/time/j;

    iget-object v4, p0, Lj$/time/D;->c:Lj$/time/z;

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    iget-object v5, p0, Lj$/time/D;->b:Lj$/time/A;

    if-eq v1, v2, :cond_0

    .line 1312
    invoke-virtual {v3, p1, p2, p3}, Lj$/time/j;->Q(JLj$/time/temporal/q;)Lj$/time/j;

    move-result-object p1

    .line 622
    invoke-static {p1, v4, v5}, Lj$/time/D;->C(Lj$/time/j;Lj$/time/z;Lj$/time/A;)Lj$/time/D;

    move-result-object p1

    goto :goto_0

    .line 1309
    :cond_0
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->w(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/A;->L(I)Lj$/time/A;

    move-result-object p1

    .line 644
    invoke-virtual {p1, v5}, Lj$/time/A;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v4}, Lj$/time/z;->C()Lj$/time/zone/f;

    move-result-object p2

    .line 952
    invoke-virtual {p2, v3}, Lj$/time/zone/f;->g(Lj$/time/j;)Ljava/util/List;

    move-result-object p2

    .line 952
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 645
    new-instance p2, Lj$/time/D;

    invoke-direct {p2, v3, v4, p1}, Lj$/time/D;-><init>(Lj$/time/j;Lj$/time/z;Lj$/time/A;)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, p0

    goto :goto_0

    .line 1174
    :cond_2
    invoke-virtual {v3}, Lj$/time/j;->E()I

    move-result p3

    .line 1307
    invoke-static {p1, p2, p3, v4}, Lj$/time/D;->w(JILj$/time/z;)Lj$/time/D;

    move-result-object p1

    goto :goto_0

    .line 1314
    :cond_3
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/q;->n(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    check-cast p1, Lj$/time/D;

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic e(JLj$/time/temporal/t;)Lj$/time/temporal/l;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/D;->D(JLj$/time/temporal/t;)Lj$/time/D;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2185
    :cond_0
    instance-of v1, p1, Lj$/time/D;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2186
    check-cast p1, Lj$/time/D;

    .line 2187
    iget-object v1, p1, Lj$/time/D;->a:Lj$/time/j;

    iget-object v3, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v3, v1}, Lj$/time/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/D;->b:Lj$/time/A;

    iget-object v3, p1, Lj$/time/D;->b:Lj$/time/A;

    .line 2188
    invoke-virtual {v1, v3}, Lj$/time/A;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/D;->c:Lj$/time/z;

    iget-object p1, p1, Lj$/time/D;->c:Lj$/time/z;

    .line 2189
    invoke-virtual {v1, p1}, Lj$/time/z;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f(Lj$/time/temporal/q;)Z
    .locals 1

    .line 705
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/q;->m(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final g()Lj$/time/A;
    .locals 1

    .line 871
    iget-object v0, p0, Lj$/time/D;->b:Lj$/time/A;

    return-object v0
.end method

.method public final h(Lj$/time/z;)Lj$/time/chrono/k;
    .locals 2

    .line 968
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lj$/time/D;->c:Lj$/time/z;

    invoke-virtual {v0, p1}, Lj$/time/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    iget-object v1, p0, Lj$/time/D;->b:Lj$/time/A;

    invoke-static {v0, p1, v1}, Lj$/time/D;->C(Lj$/time/j;Lj$/time/z;Lj$/time/A;)Lj$/time/D;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    .line 2201
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0}, Lj$/time/j;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/D;->b:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/D;->c:Lj$/time/z;

    invoke-virtual {v1}, Lj$/time/z;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/l;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1854
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/D;->D(JLj$/time/temporal/t;)Lj$/time/D;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/D;->D(JLj$/time/temporal/t;)Lj$/time/D;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/D;->D(JLj$/time/temporal/t;)Lj$/time/D;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final k(Lj$/time/temporal/q;)I
    .locals 2

    .line 814
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 815
    sget-object v0, Lj$/time/C;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->k(Lj$/time/temporal/q;)I

    move-result p1

    return p1

    .line 819
    :cond_0
    iget-object p1, p0, Lj$/time/D;->b:Lj$/time/A;

    invoke-virtual {p1}, Lj$/time/A;->I()I

    move-result p1

    return p1

    .line 817
    :cond_1
    new-instance p1, Lj$/time/temporal/u;

    .line 88
    const-string v0, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 817
    throw p1

    .line 823
    :cond_2
    invoke-static {p0, p1}, Lj$/time/chrono/i;->e(Lj$/time/chrono/k;Lj$/time/temporal/q;)I

    move-result p1

    return p1
.end method

.method public final m(Lj$/time/h;)Lj$/time/temporal/l;
    .locals 2

    .line 1232
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0}, Lj$/time/j;->b()Lj$/time/l;

    move-result-object v0

    invoke-static {p1, v0}, Lj$/time/j;->K(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object p1

    .line 622
    iget-object v0, p0, Lj$/time/D;->c:Lj$/time/z;

    iget-object v1, p0, Lj$/time/D;->b:Lj$/time/A;

    invoke-static {p1, v0, v1}, Lj$/time/D;->C(Lj$/time/j;Lj$/time/z;Lj$/time/A;)Lj$/time/D;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lj$/time/temporal/q;)Lj$/time/temporal/v;
    .locals 1

    .line 775
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 776
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->n(Lj$/time/temporal/q;)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 777
    :cond_1
    :goto_0
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->j()Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 781
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->s(Lj$/time/temporal/n;)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lj$/time/z;
    .locals 1

    .line 946
    iget-object v0, p0, Lj$/time/D;->c:Lj$/time/z;

    return-object v0
.end method

.method public final s(Lj$/time/temporal/q;)J
    .locals 2

    .line 851
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 852
    sget-object v0, Lj$/time/C;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 856
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->s(Lj$/time/temporal/q;)J

    move-result-wide v0

    return-wide v0

    .line 854
    :cond_0
    iget-object p1, p0, Lj$/time/D;->b:Lj$/time/A;

    invoke-virtual {p1}, Lj$/time/A;->I()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 0
    :cond_1
    invoke-static {p0}, Lj$/time/chrono/i;->o(Lj$/time/chrono/k;)J

    move-result-wide v0

    return-wide v0

    .line 858
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->k(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 2217
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {v0}, Lj$/time/j;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/D;->b:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2218
    iget-object v2, p0, Lj$/time/D;->c:Lj$/time/z;

    if-eq v1, v2, :cond_0

    .line 2219
    invoke-virtual {v2}, Lj$/time/z;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final v(Lj$/time/temporal/s;)Ljava/lang/Object;
    .locals 1

    .line 2056
    invoke-static {}, Lj$/time/temporal/m;->f()Lj$/time/temporal/s;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1042
    iget-object p1, p0, Lj$/time/D;->a:Lj$/time/j;

    invoke-virtual {p1}, Lj$/time/j;->P()Lj$/time/h;

    move-result-object p1

    return-object p1

    .line 2059
    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/i;->l(Lj$/time/chrono/k;Lj$/time/temporal/s;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final y()Lj$/time/chrono/e;
    .locals 1

    .line 164
    iget-object v0, p0, Lj$/time/D;->a:Lj$/time/j;

    return-object v0
.end method
