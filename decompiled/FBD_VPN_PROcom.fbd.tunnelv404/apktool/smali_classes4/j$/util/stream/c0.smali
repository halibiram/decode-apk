.class public final synthetic Lj$/util/stream/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongBinaryOperator;
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/util/stream/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final accept$j$$util$stream$Node$$ExternalSyntheticLambda0(Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method private final accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0(Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method private final accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1(Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lj$/util/stream/c0;->a:I

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lj$/util/stream/c0;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/util/stream/c0;->a:I

    packed-switch v0, :pswitch_data_0

    .line 568
    :pswitch_0
    new-array p1, p1, [Ljava/lang/Double;

    return-object p1

    .line 240
    :pswitch_1
    new-array p1, p1, [Ljava/lang/Double;

    return-object p1

    .line 493
    :pswitch_2
    new-array p1, p1, [Ljava/lang/Long;

    return-object p1

    .line 183
    :pswitch_3
    new-array p1, p1, [Ljava/lang/Long;

    return-object p1

    .line 418
    :pswitch_4
    new-array p1, p1, [Ljava/lang/Integer;

    return-object p1

    .line 126
    :pswitch_5
    new-array p1, p1, [Ljava/lang/Integer;

    return-object p1

    .line 476
    :pswitch_6
    new-array p1, p1, [Ljava/lang/Double;

    return-object p1

    .line 367
    :pswitch_7
    new-array p1, p1, [Ljava/lang/Long;

    return-object p1

    .line 258
    :pswitch_8
    new-array p1, p1, [Ljava/lang/Integer;

    return-object p1

    .line 523
    :pswitch_9
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 77
    :pswitch_a
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public applyAsLong(JJ)J
    .locals 1

    iget v0, p0, Lj$/util/stream/c0;->a:I

    packed-switch v0, :pswitch_data_0

    add-long/2addr p1, p3

    return-wide p1

    .line 0
    :pswitch_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
