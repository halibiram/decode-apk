.class public final Lj$/time/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/l;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final a:Lj$/time/l;

.field private final b:Lj$/time/A;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    sget-object v0, Lj$/time/l;->e:Lj$/time/l;

    sget-object v1, Lj$/time/A;->g:Lj$/time/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1462
    invoke-static {v0, v1}, Lj$/time/s;->C(Lj$/time/l;Lj$/time/A;)Lj$/time/s;

    .line 136
    sget-object v0, Lj$/time/l;->f:Lj$/time/l;

    sget-object v1, Lj$/time/A;->f:Lj$/time/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1462
    invoke-static {v0, v1}, Lj$/time/s;->C(Lj$/time/l;Lj$/time/A;)Lj$/time/s;

    return-void
.end method

.method private constructor <init>(Lj$/time/l;Lj$/time/A;)V
    .locals 1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/l;

    iput-object p1, p0, Lj$/time/s;->a:Lj$/time/l;

    .line 339
    const-string p1, "offset"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/A;

    iput-object p1, p0, Lj$/time/s;->b:Lj$/time/A;

    return-void
.end method

.method public static C(Lj$/time/l;Lj$/time/A;)Lj$/time/s;
    .locals 1

    .line 213
    new-instance v0, Lj$/time/s;

    invoke-direct {v0, p0, p1}, Lj$/time/s;-><init>(Lj$/time/l;Lj$/time/A;)V

    return-object v0
.end method

.method static E(Ljava/io/ObjectInput;)Lj$/time/s;
    .locals 2

    .line 1433
    invoke-static {p0}, Lj$/time/l;->R(Ljava/io/ObjectInput;)Lj$/time/l;

    move-result-object v0

    .line 1434
    invoke-static {p0}, Lj$/time/A;->N(Ljava/io/ObjectInput;)Lj$/time/A;

    move-result-object p0

    .line 213
    new-instance v1, Lj$/time/s;

    invoke-direct {v1, v0, p0}, Lj$/time/s;-><init>(Lj$/time/l;Lj$/time/A;)V

    return-object v1
.end method

.method private F(Lj$/time/l;Lj$/time/A;)Lj$/time/s;
    .locals 1

    .line 349
    iget-object v0, p0, Lj$/time/s;->a:Lj$/time/l;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/s;->b:Lj$/time/A;

    invoke-virtual {v0, p2}, Lj$/time/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 352
    :cond_0
    new-instance v0, Lj$/time/s;

    invoke-direct {v0, p1, p2}, Lj$/time/s;-><init>(Lj$/time/l;Lj$/time/A;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1424
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1414
    new-instance v0, Lj$/time/u;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lj$/time/u;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final D(JLj$/time/temporal/t;)Lj$/time/s;
    .locals 1

    .line 879
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lj$/time/s;->a:Lj$/time/l;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/l;->M(JLj$/time/temporal/t;)Lj$/time/l;

    move-result-object p1

    iget-object p2, p0, Lj$/time/s;->b:Lj$/time/A;

    invoke-direct {p0, p1, p2}, Lj$/time/s;->F(Lj$/time/l;Lj$/time/A;)Lj$/time/s;

    move-result-object p1

    return-object p1

    .line 882
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/t;->j(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    check-cast p1, Lj$/time/s;

    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 10

    .line 118
    check-cast p1, Lj$/time/s;

    .line 1286
    iget-object v0, p1, Lj$/time/s;->b:Lj$/time/A;

    iget-object v1, p0, Lj$/time/s;->b:Lj$/time/A;

    invoke-virtual {v1, v0}, Lj$/time/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p1, Lj$/time/s;->a:Lj$/time/l;

    iget-object v3, p0, Lj$/time/s;->a:Lj$/time/l;

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {v3, v2}, Lj$/time/l;->C(Lj$/time/l;)I

    move-result p1

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {v3}, Lj$/time/l;->S()J

    move-result-wide v4

    .line 1231
    invoke-virtual {v1}, Lj$/time/A;->I()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v6, 0x3b9aca00

    mul-long v0, v0, v6

    sub-long/2addr v4, v0

    .line 1230
    invoke-virtual {v2}, Lj$/time/l;->S()J

    move-result-wide v0

    .line 1231
    iget-object p1, p1, Lj$/time/s;->b:Lj$/time/A;

    invoke-virtual {p1}, Lj$/time/A;->I()I

    move-result p1

    int-to-long v8, p1

    mul-long v8, v8, v6

    sub-long/2addr v0, v8

    .line 1289
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    if-nez p1, :cond_1

    .line 1291
    invoke-virtual {v3, v2}, Lj$/time/l;->C(Lj$/time/l;)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final d(JLj$/time/temporal/q;)Lj$/time/temporal/l;
    .locals 2

    .line 728
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 729
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/s;->a:Lj$/time/l;

    if-ne p3, v0, :cond_0

    .line 730
    check-cast p3, Lj$/time/temporal/a;

    .line 731
    invoke-virtual {p3, p1, p2}, Lj$/time/temporal/a;->w(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/A;->L(I)Lj$/time/A;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lj$/time/s;->F(Lj$/time/l;Lj$/time/A;)Lj$/time/s;

    move-result-object p1

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lj$/time/l;->U(JLj$/time/temporal/q;)Lj$/time/l;

    move-result-object p1

    iget-object p2, p0, Lj$/time/s;->b:Lj$/time/A;

    invoke-direct {p0, p1, p2}, Lj$/time/s;->F(Lj$/time/l;Lj$/time/A;)Lj$/time/s;

    move-result-object p1

    goto :goto_0

    .line 735
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/q;->n(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    check-cast p1, Lj$/time/s;

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic e(JLj$/time/temporal/t;)Lj$/time/temporal/l;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/s;->D(JLj$/time/temporal/t;)Lj$/time/s;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1361
    :cond_0
    instance-of v1, p1, Lj$/time/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1362
    check-cast p1, Lj$/time/s;

    .line 1363
    iget-object v1, p1, Lj$/time/s;->a:Lj$/time/l;

    iget-object v3, p0, Lj$/time/s;->a:Lj$/time/l;

    invoke-virtual {v3, v1}, Lj$/time/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/s;->b:Lj$/time/A;

    iget-object p1, p1, Lj$/time/s;->b:Lj$/time/A;

    invoke-virtual {v1, p1}, Lj$/time/A;->equals(Ljava/lang/Object;)Z

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
    .locals 3

    .line 396
    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 397
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->D()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 399
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->m(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1375
    iget-object v0, p0, Lj$/time/s;->a:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/s;->b:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->hashCode()I

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

    .line 993
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/s;->D(JLj$/time/temporal/t;)Lj$/time/s;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/s;->D(JLj$/time/temporal/t;)Lj$/time/s;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/s;->D(JLj$/time/temporal/t;)Lj$/time/s;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final k(Lj$/time/temporal/q;)I
    .locals 0

    .line 502
    invoke-static {p0, p1}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result p1

    return p1
.end method

.method public final m(Lj$/time/h;)Lj$/time/temporal/l;
    .locals 0

    .line 1592
    invoke-static {p1, p0}, Lj$/time/chrono/i;->a(Lj$/time/chrono/b;Lj$/time/temporal/l;)Lj$/time/temporal/l;

    move-result-object p1

    .line 688
    check-cast p1, Lj$/time/s;

    return-object p1
.end method

.method public final n(Lj$/time/temporal/q;)Lj$/time/temporal/v;
    .locals 1

    .line 464
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 465
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    .line 466
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->j()Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 468
    :cond_0
    iget-object v0, p0, Lj$/time/s;->a:Lj$/time/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    invoke-static {v0, p1}, Lj$/time/temporal/m;->d(Lj$/time/temporal/n;Lj$/time/temporal/q;)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 470
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->s(Lj$/time/temporal/n;)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lj$/time/temporal/q;)J
    .locals 2

    .line 530
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    .line 532
    iget-object p1, p0, Lj$/time/s;->b:Lj$/time/A;

    invoke-virtual {p1}, Lj$/time/A;->I()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 534
    :cond_0
    iget-object v0, p0, Lj$/time/s;->a:Lj$/time/l;

    invoke-virtual {v0, p1}, Lj$/time/l;->s(Lj$/time/temporal/q;)J

    move-result-wide v0

    return-wide v0

    .line 536
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->k(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1397
    iget-object v0, p0, Lj$/time/s;->a:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/s;->b:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lj$/time/temporal/s;)Ljava/lang/Object;
    .locals 4

    .line 1079
    invoke-static {}, Lj$/time/temporal/m;->h()Lj$/time/temporal/s;

    move-result-object v0

    if-eq p1, v0, :cond_7

    invoke-static {}, Lj$/time/temporal/m;->j()Lj$/time/temporal/s;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1081
    :cond_0
    invoke-static {}, Lj$/time/temporal/m;->k()Lj$/time/temporal/s;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lj$/time/temporal/m;->e()Lj$/time/temporal/s;

    move-result-object v3

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    or-int/2addr v0, v1

    if-nez v0, :cond_6

    invoke-static {}, Lj$/time/temporal/m;->f()Lj$/time/temporal/s;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 1083
    :cond_3
    invoke-static {}, Lj$/time/temporal/m;->g()Lj$/time/temporal/s;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 1084
    iget-object p1, p0, Lj$/time/s;->a:Lj$/time/l;

    return-object p1

    .line 1085
    :cond_4
    invoke-static {}, Lj$/time/temporal/m;->i()Lj$/time/temporal/s;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 1086
    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    .line 1090
    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->a(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1080
    :cond_7
    :goto_2
    iget-object p1, p0, Lj$/time/s;->b:Lj$/time/A;

    return-object p1
.end method

.method public final w(Lj$/time/temporal/l;)Lj$/time/temporal/l;
    .locals 3

    .line 1121
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/s;->a:Lj$/time/l;

    .line 1122
    invoke-virtual {v1}, Lj$/time/l;->S()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/q;)Lj$/time/temporal/l;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/s;->b:Lj$/time/A;

    .line 1123
    invoke-virtual {v1}, Lj$/time/A;->I()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/q;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .line 1428
    iget-object v0, p0, Lj$/time/s;->a:Lj$/time/l;

    invoke-virtual {v0, p1}, Lj$/time/l;->W(Ljava/io/DataOutput;)V

    .line 1429
    iget-object v0, p0, Lj$/time/s;->b:Lj$/time/A;

    invoke-virtual {v0, p1}, Lj$/time/A;->O(Ljava/io/DataOutput;)V

    return-void
.end method
