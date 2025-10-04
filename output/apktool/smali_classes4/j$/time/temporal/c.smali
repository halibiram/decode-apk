.class final enum Lj$/time/temporal/c;
.super Lj$/time/temporal/g;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 290
    const-string v0, "DAY_OF_QUARTER"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final j()Lj$/time/temporal/v;
    .locals 4

    const-wide/16 v0, 0x5a

    const-wide/16 v2, 0x5c

    .line 147
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/v;->k(JJ)Lj$/time/temporal/v;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lj$/time/temporal/n;)J
    .locals 5

    .line 327
    invoke-virtual {p0, p1}, Lj$/time/temporal/c;->m(Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->k(Lj$/time/temporal/q;)I

    move-result v0

    .line 331
    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/n;->k(Lj$/time/temporal/q;)I

    move-result v1

    .line 332
    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/n;->s(Lj$/time/temporal/q;)J

    move-result-wide v2

    .line 333
    invoke-static {}, Lj$/time/temporal/g;->w()[I

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    sget-object v4, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lj$/time/chrono/u;->m(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    aget p1, p1, v1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 328
    :cond_1
    new-instance p1, Lj$/time/temporal/u;

    .line 88
    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 328
    throw p1
.end method

.method public final m(Lj$/time/temporal/n;)Z
    .locals 1

    .line 306
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 307
    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/i;->a:Lj$/time/temporal/q;

    .line 736
    invoke-static {p1}, Lj$/time/chrono/i;->p(Lj$/time/temporal/n;)Lj$/time/chrono/n;

    move-result-object p1

    sget-object v0, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    invoke-interface {p1, v0}, Lj$/time/chrono/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final n(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 5

    .line 339
    invoke-virtual {p0, p1}, Lj$/time/temporal/c;->k(Lj$/time/temporal/n;)J

    move-result-wide v0

    .line 340
    invoke-virtual {p0}, Lj$/time/temporal/c;->j()Lj$/time/temporal/v;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lj$/time/temporal/v;->b(JLj$/time/temporal/q;)V

    .line 341
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/n;->s(Lj$/time/temporal/q;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    add-long/2addr p2, v3

    invoke-interface {p1, p2, p3, v2}, Lj$/time/temporal/l;->d(JLj$/time/temporal/q;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lj$/time/temporal/n;)Lj$/time/temporal/v;
    .locals 8

    .line 311
    invoke-virtual {p0, p1}, Lj$/time/temporal/c;->m(Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    sget-object v0, Lj$/time/temporal/g;->QUARTER_OF_YEAR:Lj$/time/temporal/g;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->s(Lj$/time/temporal/q;)J

    move-result-wide v0

    const-wide/16 v2, 0x5b

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 316
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->s(Lj$/time/temporal/q;)J

    move-result-wide v0

    .line 317
    sget-object p1, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lj$/time/chrono/u;->m(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v4, v5, v2, v3}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x5a

    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-wide/16 v6, 0x2

    cmp-long p1, v0, v6

    if-nez p1, :cond_2

    .line 319
    invoke-static {v4, v5, v2, v3}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x4

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {p0}, Lj$/time/temporal/c;->j()Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const-wide/16 v0, 0x5c

    .line 321
    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 312
    :cond_5
    new-instance p1, Lj$/time/temporal/u;

    .line 88
    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 312
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 377
    const-string v0, "DayOfQuarter"

    return-object v0
.end method
