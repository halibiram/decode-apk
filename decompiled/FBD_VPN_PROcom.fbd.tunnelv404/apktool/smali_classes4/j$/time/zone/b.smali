.class public final Lj$/time/zone/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final a:J

.field private final b:Lj$/time/j;

.field private final c:Lj$/time/A;

.field private final d:Lj$/time/A;


# direct methods
.method constructor <init>(JLj$/time/A;Lj$/time/A;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-wide p1, p0, Lj$/time/zone/b;->a:J

    const/4 v0, 0x0

    .line 175
    invoke-static {p1, p2, v0, p3}, Lj$/time/j;->L(JILj$/time/A;)Lj$/time/j;

    move-result-object p1

    iput-object p1, p0, Lj$/time/zone/b;->b:Lj$/time/j;

    .line 176
    iput-object p3, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    .line 177
    iput-object p4, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    return-void
.end method

.method constructor <init>(Lj$/time/j;Lj$/time/A;Lj$/time/A;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {p1, p2}, Lj$/time/chrono/i;->n(Lj$/time/chrono/e;Lj$/time/A;)J

    move-result-wide v0

    .line 160
    iput-wide v0, p0, Lj$/time/zone/b;->a:J

    .line 161
    iput-object p1, p0, Lj$/time/zone/b;->b:Lj$/time/j;

    .line 162
    iput-object p2, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    .line 163
    iput-object p3, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 188
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 209
    new-instance v0, Lj$/time/zone/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/zone/a;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public final B()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lj$/time/zone/b;->a:J

    return-wide v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 99
    check-cast p1, Lj$/time/zone/b;

    .line 407
    iget-wide v0, p0, Lj$/time/zone/b;->a:J

    iget-wide v2, p1, Lj$/time/zone/b;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 424
    :cond_0
    instance-of v1, p1, Lj$/time/zone/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 425
    check-cast p1, Lj$/time/zone/b;

    .line 426
    iget-wide v3, p1, Lj$/time/zone/b;->a:J

    iget-wide v5, p0, Lj$/time/zone/b;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    iget-object v3, p1, Lj$/time/zone/b;->c:Lj$/time/A;

    .line 427
    invoke-virtual {v1, v3}, Lj$/time/A;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    iget-object p1, p1, Lj$/time/zone/b;->d:Lj$/time/A;

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

.method public final hashCode()I
    .locals 3

    .line 439
    iget-object v0, p0, Lj$/time/zone/b;->b:Lj$/time/j;

    invoke-virtual {v0}, Lj$/time/j;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j()Lj$/time/j;
    .locals 3

    .line 338
    iget-object v0, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    invoke-virtual {v0}, Lj$/time/A;->I()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->I()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 294
    iget-object v2, p0, Lj$/time/zone/b;->b:Lj$/time/j;

    invoke-virtual {v2, v0, v1}, Lj$/time/j;->N(J)Lj$/time/j;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lj$/time/j;
    .locals 1

    .line 280
    iget-object v0, p0, Lj$/time/zone/b;->b:Lj$/time/j;

    return-object v0
.end method

.method public final m()Lj$/time/Duration;
    .locals 2

    .line 338
    iget-object v0, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    invoke-virtual {v0}, Lj$/time/A;->I()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->I()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 329
    invoke-static {v0, v1}, Lj$/time/Duration;->m(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lj$/time/A;
    .locals 1

    .line 316
    iget-object v0, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    return-object v0
.end method

.method public final s()Lj$/time/A;
    .locals 1

    .line 305
    iget-object v0, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transition["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lj$/time/zone/b;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gap"

    goto :goto_0

    :cond_0
    const-string v1, "Overlap"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/b;->b:Lj$/time/j;

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final v()Ljava/util/List;
    .locals 4

    .line 389
    invoke-virtual {p0}, Lj$/time/zone/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 0
    :cond_0
    iget-object v0, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    iget-object v1, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/com/android/tools/r8/a;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final w()Z
    .locals 2

    .line 351
    iget-object v0, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    invoke-virtual {v0}, Lj$/time/A;->I()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->I()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    .line 219
    iget-wide v0, p0, Lj$/time/zone/b;->a:J

    invoke-static {v0, v1, p1}, Lj$/time/zone/a;->c(JLjava/io/ObjectOutput;)V

    .line 220
    iget-object v0, p0, Lj$/time/zone/b;->c:Lj$/time/A;

    invoke-static {v0, p1}, Lj$/time/zone/a;->d(Lj$/time/A;Ljava/io/ObjectOutput;)V

    .line 221
    iget-object v0, p0, Lj$/time/zone/b;->d:Lj$/time/A;

    invoke-static {v0, p1}, Lj$/time/zone/a;->d(Lj$/time/A;Ljava/io/ObjectOutput;)V

    return-void
.end method
