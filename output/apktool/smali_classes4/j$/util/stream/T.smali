.class public final synthetic Lj$/util/stream/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lj$/util/stream/m2;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/m2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/T;->a:Lj$/util/stream/m2;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/T;->a:Lj$/util/stream/m2;

    invoke-interface {v0, p1}, Lj$/util/stream/m2;->accept(I)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method
