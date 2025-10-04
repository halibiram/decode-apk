.class final Lj$/util/stream/V;
.super Lj$/util/stream/Z;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field final synthetic o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/a0;Ljava/util/function/IntConsumer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/V;->n:I

    .line 380
    iput-object p2, p0, Lj$/util/stream/V;->o:Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/Z;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/b;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/V;->n:I

    iput-object p3, p0, Lj$/util/stream/V;->o:Ljava/lang/Object;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Z;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method


# virtual methods
.method final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 1

    iget p1, p0, Lj$/util/stream/V;->n:I

    packed-switch p1, :pswitch_data_0

    .line 305
    new-instance p1, Lj$/util/stream/a2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/a2;-><init>(Lj$/util/stream/V;Lj$/util/stream/m2;)V

    return-object p1

    .line 209
    :pswitch_0
    new-instance p1, Lj$/util/stream/n;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/n;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    .line 300
    :pswitch_1
    new-instance p1, Lj$/util/stream/X;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/X;-><init>(Lj$/util/stream/V;Lj$/util/stream/m2;)V

    return-object p1

    .line 383
    :pswitch_2
    new-instance p1, Lj$/util/stream/U;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/U;-><init>(Lj$/util/stream/b;Lj$/util/stream/m2;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
