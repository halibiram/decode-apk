.class final Lj$/util/stream/v;
.super Lj$/util/stream/Z;
.source "SourceFile"


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/v;->n:I

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Z;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method


# virtual methods
.method final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 1

    iget p1, p0, Lj$/util/stream/v;->n:I

    packed-switch p1, :pswitch_data_0

    .line 248
    new-instance p1, Lj$/util/stream/d0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/d0;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    .line 360
    :pswitch_0
    new-instance p1, Lj$/util/stream/U;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/U;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    :pswitch_1
    return-object p2

    .line 243
    :pswitch_2
    new-instance p1, Lj$/util/stream/U;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/U;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    .line 232
    :pswitch_3
    new-instance p1, Lj$/util/stream/s;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/s;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
