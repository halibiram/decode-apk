.class public final Lj$/time/chrono/x;
.super Lj$/time/chrono/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/chrono/x;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lj$/time/chrono/x;

    invoke-direct {v0}, Lj$/time/chrono/x;-><init>()V

    sput-object v0, Lj$/time/chrono/x;->d:Lj$/time/chrono/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lj$/time/chrono/a;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 547
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A(I)Lj$/time/chrono/o;
    .locals 0

    .line 382
    invoke-static {p1}, Lj$/time/chrono/A;->A(I)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "Japanese"

    return-object v0
.end method

.method public final l(Lj$/time/temporal/n;)Lj$/time/chrono/b;
    .locals 1

    .line 301
    instance-of v0, p1, Lj$/time/chrono/z;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Lj$/time/chrono/z;

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Lj$/time/chrono/z;

    invoke-static {p1}, Lj$/time/h;->E(Lj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/z;-><init>(Lj$/time/h;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final m(Lj$/time/temporal/a;)Lj$/time/temporal/v;
    .locals 4

    .line 400
    sget-object v0, Lj$/time/chrono/w;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 431
    invoke-virtual {p1}, Lj$/time/temporal/a;->j()Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 429
    :pswitch_0
    sget-object p1, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    invoke-virtual {p1}, Lj$/time/chrono/A;->getValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {}, Lj$/time/chrono/A;->l()Lj$/time/chrono/A;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/chrono/A;->getValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 425
    :pswitch_1
    sget-object p1, Lj$/time/chrono/z;->d:Lj$/time/h;

    invoke-virtual {p1}, Lj$/time/h;->J()I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 422
    :pswitch_2
    invoke-static {}, Lj$/time/chrono/A;->C()J

    move-result-wide v0

    sget-object p1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->j()Lj$/time/temporal/v;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/v;->d()J

    move-result-wide v2

    .line 147
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/v;->k(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 413
    :pswitch_3
    invoke-static {}, Lj$/time/chrono/A;->l()Lj$/time/chrono/A;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/chrono/A;->o()Lj$/time/h;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/h;->J()I

    move-result p1

    .line 414
    invoke-static {}, Lj$/time/chrono/A;->D()J

    move-result-wide v0

    const v2, 0x3b9ac9ff

    sub-int/2addr v2, p1

    int-to-long v2, v2

    .line 147
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/v;->k(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 405
    :pswitch_4
    new-instance v0, Lj$/time/temporal/u;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 405
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, "japanese"

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 747
    new-instance v0, Lj$/time/chrono/G;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/G;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
