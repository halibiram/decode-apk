.class final Lj$/util/stream/G1;
.super Lj$/util/stream/w0;
.source "SourceFile"


# instance fields
.field final synthetic h:Ljava/util/function/DoubleBinaryOperator;

.field final synthetic i:D


# direct methods
.method constructor <init>(Lj$/util/stream/b3;Ljava/util/function/DoubleBinaryOperator;D)V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p2, p0, Lj$/util/stream/G1;->h:Ljava/util/function/DoubleBinaryOperator;

    iput-wide p3, p0, Lj$/util/stream/G1;->i:D

    return-void
.end method


# virtual methods
.method public final c0()Lj$/util/stream/S1;
    .locals 4

    .line 661
    new-instance v0, Lj$/util/stream/B1;

    iget-wide v1, p0, Lj$/util/stream/G1;->i:D

    iget-object v3, p0, Lj$/util/stream/G1;->h:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/B1;-><init>(DLjava/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method
