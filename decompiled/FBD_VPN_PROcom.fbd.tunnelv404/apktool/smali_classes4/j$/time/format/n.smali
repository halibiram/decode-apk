.class final Lj$/time/format/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/g;


# instance fields
.field private final a:Lj$/time/temporal/a;

.field private final b:Lj$/time/format/w;

.field private final c:Lj$/time/format/c;

.field private volatile d:Lj$/time/format/j;


# direct methods
.method constructor <init>(Lj$/time/temporal/a;Lj$/time/format/w;Lj$/time/format/c;)V
    .locals 0

    .line 3309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3311
    iput-object p1, p0, Lj$/time/format/n;->a:Lj$/time/temporal/a;

    .line 3312
    iput-object p2, p0, Lj$/time/format/n;->b:Lj$/time/format/w;

    .line 3313
    iput-object p3, p0, Lj$/time/format/n;->c:Lj$/time/format/c;

    return-void
.end method


# virtual methods
.method public final j(Lj$/time/format/q;Ljava/lang/StringBuilder;)Z
    .locals 5

    .line 3318
    iget-object v0, p0, Lj$/time/format/n;->a:Lj$/time/temporal/a;

    invoke-virtual {p1, v0}, Lj$/time/format/q;->e(Lj$/time/temporal/q;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3323
    :cond_0
    invoke-virtual {p1}, Lj$/time/format/q;->d()Lj$/time/temporal/n;

    move-result-object v1

    invoke-static {}, Lj$/time/temporal/m;->e()Lj$/time/temporal/s;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/temporal/n;->v(Lj$/time/temporal/s;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/n;

    if-eqz v1, :cond_2

    .line 3324
    sget-object v2, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 3327
    :cond_1
    iget-object v1, p0, Lj$/time/format/n;->c:Lj$/time/format/c;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lj$/time/format/n;->b:Lj$/time/format/w;

    invoke-virtual {p1}, Lj$/time/format/q;->c()Ljava/util/Locale;

    .line 808
    iget-object v1, v1, Lj$/time/format/c;->a:Lj$/time/format/s;

    invoke-virtual {v1, v2, v3, v0}, Lj$/time/format/s;->a(JLj$/time/format/w;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3325
    :cond_2
    :goto_0
    iget-object v1, p0, Lj$/time/format/n;->c:Lj$/time/format/c;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lj$/time/format/n;->b:Lj$/time/format/w;

    invoke-virtual {p1}, Lj$/time/format/q;->c()Ljava/util/Locale;

    .line 812
    iget-object v1, v1, Lj$/time/format/c;->a:Lj$/time/format/s;

    invoke-virtual {v1, v2, v3, v0}, Lj$/time/format/s;->a(JLj$/time/format/w;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 3380
    iget-object v0, p0, Lj$/time/format/n;->d:Lj$/time/format/j;

    if-nez v0, :cond_3

    .line 3381
    new-instance v0, Lj$/time/format/j;

    iget-object v2, p0, Lj$/time/format/n;->a:Lj$/time/temporal/a;

    const/16 v3, 0x13

    sget-object v4, Lj$/time/format/v;->NORMAL:Lj$/time/format/v;

    invoke-direct {v0, v2, v1, v3, v4}, Lj$/time/format/j;-><init>(Lj$/time/temporal/q;IILj$/time/format/v;)V

    iput-object v0, p0, Lj$/time/format/n;->d:Lj$/time/format/j;

    .line 3383
    :cond_3
    iget-object v0, p0, Lj$/time/format/n;->d:Lj$/time/format/j;

    .line 3330
    invoke-virtual {v0, p1, p2}, Lj$/time/format/j;->j(Lj$/time/format/q;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    .line 3332
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 3388
    sget-object v0, Lj$/time/format/w;->FULL:Lj$/time/format/w;

    const-string v1, ")"

    const-string v2, "Text("

    iget-object v3, p0, Lj$/time/format/n;->a:Lj$/time/temporal/a;

    iget-object v4, p0, Lj$/time/format/n;->b:Lj$/time/format/w;

    if-ne v4, v0, :cond_0

    .line 3389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
