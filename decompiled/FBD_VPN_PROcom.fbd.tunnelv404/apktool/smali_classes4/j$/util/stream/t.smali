.class final Lj$/util/stream/t;
.super Lj$/util/stream/d2;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/t;->n:I

    iput-object p3, p0, Lj$/util/stream/t;->o:Ljava/lang/Object;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/d2;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/e2;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lj$/util/stream/t;->n:I

    .line 435
    iput-object p2, p0, Lj$/util/stream/t;->o:Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/d2;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method


# virtual methods
.method final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 1

    iget p1, p0, Lj$/util/stream/t;->n:I

    packed-switch p1, :pswitch_data_0

    .line 260
    new-instance p1, Lj$/util/stream/m;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/m;-><init>(Lj$/util/stream/t;Lj$/util/stream/m2;)V

    return-object p1

    .line 192
    :pswitch_0
    new-instance p1, Lj$/util/stream/n;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/n;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    .line 168
    :pswitch_1
    new-instance p1, Lj$/util/stream/n;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/n;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    .line 438
    :pswitch_2
    new-instance p1, Lj$/util/stream/n;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/n;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    .line 174
    :pswitch_3
    new-instance p1, Lj$/util/stream/d0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/d0;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    .line 177
    :pswitch_4
    new-instance p1, Lj$/util/stream/U;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/U;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    .line 173
    :pswitch_5
    new-instance p1, Lj$/util/stream/s;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/s;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
