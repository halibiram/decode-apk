.class final Lj$/time/chrono/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/k;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final transient a:Lj$/time/chrono/g;

.field private final transient b:Lj$/time/A;

.field private final transient c:Lj$/time/z;


# direct methods
.method private constructor <init>(Lj$/time/z;Lj$/time/A;Lj$/time/chrono/g;)V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-string v0, "dateTime"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lj$/time/chrono/g;

    iput-object p3, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    .line 220
    const-string p3, "offset"

    invoke-static {p2, p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/A;

    iput-object p2, p0, Lj$/time/chrono/m;->b:Lj$/time/A;

    .line 221
    const-string p2, "zone"

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/z;

    iput-object p1, p0, Lj$/time/chrono/m;->c:Lj$/time/z;

    return-void
.end method

.method static C(Lj$/time/z;Lj$/time/A;Lj$/time/chrono/g;)Lj$/time/chrono/k;
    .locals 6

    .line 136
    const-string v0, "localDateTime"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string v0, "zone"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    instance-of v0, p0, Lj$/time/A;

    if-eqz v0, :cond_0

    .line 139
    new-instance p1, Lj$/time/chrono/m;

    move-object v0, p0

    check-cast v0, Lj$/time/A;

    invoke-direct {p1, p0, v0, p2}, Lj$/time/chrono/m;-><init>(Lj$/time/z;Lj$/time/A;Lj$/time/chrono/g;)V

    return-object p1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lj$/time/z;->C()Lj$/time/zone/f;

    move-result-object v0

    .line 142
    invoke-static {p2}, Lj$/time/j;->D(Lj$/time/temporal/n;)Lj$/time/j;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lj$/time/zone/f;->g(Lj$/time/j;)Ljava/util/List;

    move-result-object v2

    .line 145
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 146
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/A;

    goto :goto_0

    .line 147
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 148
    invoke-virtual {v0, v1}, Lj$/time/zone/f;->f(Lj$/time/j;)Lj$/time/zone/b;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lj$/time/zone/b;->m()Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lj$/time/chrono/g;->F(J)Lj$/time/chrono/g;

    move-result-object p2

    .line 150
    invoke-virtual {p1}, Lj$/time/zone/b;->n()Lj$/time/A;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 152
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 155
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/A;

    .line 158
    :goto_0
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    new-instance v0, Lj$/time/chrono/m;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/chrono/m;-><init>(Lj$/time/z;Lj$/time/A;Lj$/time/chrono/g;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 347
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static w(Lj$/time/chrono/n;Lj$/time/temporal/l;)Lj$/time/chrono/m;
    .locals 3

    .line 202
    check-cast p1, Lj$/time/chrono/m;

    .line 203
    invoke-virtual {p1}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-virtual {p1}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chronology mismatch, required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", actual: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 337
    new-instance v0, Lj$/time/chrono/G;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/G;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic B()J
    .locals 2

    invoke-static {p0}, Lj$/time/chrono/i;->o(Lj$/time/chrono/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final D(JLj$/time/temporal/t;)Lj$/time/chrono/k;
    .locals 1

    .line 302
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/chrono/g;->E(JLj$/time/temporal/t;)Lj$/time/chrono/g;

    move-result-object p1

    .line 420
    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object p2

    .line 190
    invoke-virtual {p1, p0}, Lj$/time/chrono/g;->w(Lj$/time/temporal/l;)Lj$/time/temporal/l;

    move-result-object p1

    .line 420
    invoke-static {p2, p1}, Lj$/time/chrono/m;->w(Lj$/time/chrono/n;Lj$/time/temporal/l;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/t;->j(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/m;->w(Lj$/time/chrono/n;Lj$/time/temporal/l;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lj$/time/chrono/n;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lj$/time/chrono/m;->c()Lj$/time/chrono/b;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lj$/time/l;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lj$/time/chrono/m;->y()Lj$/time/chrono/e;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/g;

    invoke-virtual {v0}, Lj$/time/chrono/g;->b()Lj$/time/l;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lj$/time/chrono/b;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lj$/time/chrono/m;->y()Lj$/time/chrono/e;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/g;

    invoke-virtual {v0}, Lj$/time/chrono/g;->c()Lj$/time/chrono/b;

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
    .locals 5

    .line 285
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 286
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 287
    sget-object v1, Lj$/time/chrono/l;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lj$/time/chrono/m;->c:Lj$/time/z;

    iget-object v4, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    if-eq v1, v2, :cond_0

    .line 294
    invoke-virtual {v4, p1, p2, p3}, Lj$/time/chrono/g;->H(JLj$/time/temporal/q;)Lj$/time/chrono/g;

    move-result-object p1

    iget-object p2, p0, Lj$/time/chrono/m;->b:Lj$/time/A;

    invoke-static {v3, p2, p1}, Lj$/time/chrono/m;->C(Lj$/time/z;Lj$/time/A;Lj$/time/chrono/g;)Lj$/time/chrono/k;

    move-result-object p1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->w(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/A;->L(I)Lj$/time/A;

    move-result-object p1

    .line 453
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {v4, p1}, Lj$/time/chrono/i;->n(Lj$/time/chrono/e;Lj$/time/A;)J

    move-result-wide p1

    .line 453
    invoke-virtual {v4}, Lj$/time/chrono/g;->b()Lj$/time/l;

    move-result-object p3

    invoke-virtual {p3}, Lj$/time/l;->H()I

    move-result p3

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p1

    .line 188
    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object p2

    .line 171
    invoke-virtual {v3}, Lj$/time/z;->C()Lj$/time/zone/f;

    move-result-object p3

    .line 172
    invoke-virtual {p3, p1}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/A;

    move-result-object p3

    .line 173
    const-string v0, "offset"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lj$/time/Instant;->getNano()I

    move-result p1

    invoke-static {v0, v1, p1, p3}, Lj$/time/j;->L(JILj$/time/A;)Lj$/time/j;

    move-result-object p1

    .line 175
    invoke-interface {p2, p1}, Lj$/time/chrono/n;->o(Lj$/time/j;)Lj$/time/chrono/e;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/g;

    .line 176
    new-instance p2, Lj$/time/chrono/m;

    invoke-direct {p2, v3, p3, p1}, Lj$/time/chrono/m;-><init>(Lj$/time/z;Lj$/time/A;Lj$/time/chrono/g;)V

    move-object p1, p2

    goto :goto_0

    .line 0
    :cond_1
    invoke-static {p0}, Lj$/time/chrono/i;->o(Lj$/time/chrono/k;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 288
    sget-object p3, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/m;->D(JLj$/time/temporal/t;)Lj$/time/chrono/k;

    move-result-object p1

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/q;->n(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/m;->w(Lj$/time/chrono/n;Lj$/time/temporal/l;)Lj$/time/chrono/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic e(JLj$/time/temporal/t;)Lj$/time/temporal/l;
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/m;->D(JLj$/time/temporal/t;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 370
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 371
    check-cast p1, Lj$/time/chrono/k;

    .line 0
    invoke-static {p0, p1}, Lj$/time/chrono/i;->d(Lj$/time/chrono/k;Lj$/time/chrono/k;)I

    move-result p1

    if-nez p1, :cond_1

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

    .line 279
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

    .line 227
    iget-object v0, p0, Lj$/time/chrono/m;->b:Lj$/time/A;

    return-object v0
.end method

.method public final h(Lj$/time/z;)Lj$/time/chrono/k;
    .locals 2

    .line 267
    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    iget-object v1, p0, Lj$/time/chrono/m;->b:Lj$/time/A;

    invoke-static {p1, v1, v0}, Lj$/time/chrono/m;->C(Lj$/time/z;Lj$/time/A;Lj$/time/chrono/g;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    .line 378
    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-virtual {v0}, Lj$/time/chrono/g;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/m;->b:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/chrono/m;->c:Lj$/time/z;

    invoke-virtual {v1}, Lj$/time/z;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/l;
    .locals 1

    .line 466
    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/m;->b(Lj$/time/temporal/l;JLj$/time/temporal/t;)Lj$/time/temporal/l;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/m;->w(Lj$/time/chrono/n;Lj$/time/temporal/l;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k(Lj$/time/temporal/q;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->e(Lj$/time/chrono/k;Lj$/time/temporal/q;)I

    move-result p1

    return p1
.end method

.method public final m(Lj$/time/h;)Lj$/time/temporal/l;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    .line 190
    invoke-virtual {p1, p0}, Lj$/time/h;->w(Lj$/time/temporal/l;)Lj$/time/temporal/l;

    move-result-object p1

    .line 420
    invoke-static {v0, p1}, Lj$/time/chrono/m;->w(Lj$/time/chrono/n;Lj$/time/temporal/l;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lj$/time/temporal/q;)Lj$/time/temporal/v;
    .locals 1

    .line 187
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 188
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/m;->y()Lj$/time/chrono/e;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/g;

    invoke-virtual {v0, p1}, Lj$/time/chrono/g;->n(Lj$/time/temporal/q;)Lj$/time/temporal/v;

    move-result-object p1

    goto :goto_1

    .line 189
    :cond_1
    :goto_0
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->j()Lj$/time/temporal/v;

    move-result-object p1

    goto :goto_1

    .line 193
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->s(Lj$/time/temporal/n;)Lj$/time/temporal/v;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final q()Lj$/time/z;
    .locals 1

    .line 262
    iget-object v0, p0, Lj$/time/chrono/m;->c:Lj$/time/z;

    return-object v0
.end method

.method public final s(Lj$/time/temporal/q;)J
    .locals 2

    .line 212
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 213
    sget-object v0, Lj$/time/chrono/j;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lj$/time/chrono/m;->y()Lj$/time/chrono/e;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/g;

    invoke-virtual {v0, p1}, Lj$/time/chrono/g;->s(Lj$/time/temporal/q;)J

    move-result-wide v0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/m;->g()Lj$/time/A;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/A;->I()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0}, Lj$/time/chrono/m;->B()J

    move-result-wide v0

    goto :goto_0

    .line 219
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->k(Lj$/time/temporal/n;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 383
    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-virtual {v0}, Lj$/time/chrono/g;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/chrono/m;->b:Lj$/time/A;

    invoke-virtual {v1}, Lj$/time/A;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v2, p0, Lj$/time/chrono/m;->c:Lj$/time/z;

    if-eq v1, v2, :cond_0

    .line 385
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

.method public final synthetic v(Lj$/time/temporal/s;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->l(Lj$/time/chrono/k;Lj$/time/temporal/s;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lj$/time/chrono/m;->b:Lj$/time/A;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lj$/time/chrono/m;->c:Lj$/time/z;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final y()Lj$/time/chrono/e;
    .locals 1

    .line 257
    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    return-object v0
.end method
