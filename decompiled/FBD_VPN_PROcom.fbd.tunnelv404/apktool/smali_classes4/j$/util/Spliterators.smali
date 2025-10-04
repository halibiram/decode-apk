.class public final Lj$/util/Spliterators;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lj$/util/Spliterator;

.field private static final b:Lj$/util/W;

.field private static final c:Lj$/util/Z;

.field private static final d:Lj$/util/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lj$/util/n0;

    .line 838
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    sput-object v0, Lj$/util/Spliterators;->a:Lj$/util/Spliterator;

    .line 79
    new-instance v0, Lj$/util/l0;

    .line 838
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 79
    sput-object v0, Lj$/util/Spliterators;->b:Lj$/util/W;

    .line 95
    new-instance v0, Lj$/util/m0;

    .line 838
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 95
    sput-object v0, Lj$/util/Spliterators;->c:Lj$/util/Z;

    .line 111
    new-instance v0, Lj$/util/k0;

    .line 838
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 111
    sput-object v0, Lj$/util/Spliterators;->d:Lj$/util/T;

    return-void
.end method

.method private static a(III)V
    .locals 2

    if-gt p1, p2, :cond_2

    if-ltz p1, :cond_1

    if-gt p2, p0, :cond_0

    return-void

    .line 394
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 391
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 387
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "origin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > fence("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lj$/util/T;
    .locals 1

    .line 108
    sget-object v0, Lj$/util/Spliterators;->d:Lj$/util/T;

    return-object v0
.end method

.method public static c()Lj$/util/W;
    .locals 1

    .line 76
    sget-object v0, Lj$/util/Spliterators;->b:Lj$/util/W;

    return-object v0
.end method

.method public static d()Lj$/util/Z;
    .locals 1

    .line 92
    sget-object v0, Lj$/util/Spliterators;->c:Lj$/util/Z;

    return-object v0
.end method

.method public static e()Lj$/util/Spliterator;
    .locals 1

    .line 60
    sget-object v0, Lj$/util/Spliterators;->a:Lj$/util/Spliterator;

    return-object v0
.end method

.method public static f(Lj$/util/T;)Lj$/util/PrimitiveIterator$OfDouble;
    .locals 1

    .line 802
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    new-instance v0, Lj$/util/h0;

    invoke-direct {v0, p0}, Lj$/util/h0;-><init>(Lj$/util/T;)V

    return-object v0
.end method

.method public static g(Lj$/util/W;)Lj$/util/PrimitiveIterator$OfInt;
    .locals 1

    .line 712
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v0, Lj$/util/f0;

    invoke-direct {v0, p0}, Lj$/util/f0;-><init>(Lj$/util/W;)V

    return-object v0
.end method

.method public static h(Lj$/util/Z;)Lj$/util/PrimitiveIterator$OfLong;
    .locals 1

    .line 757
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    new-instance v0, Lj$/util/g0;

    invoke-direct {v0, p0}, Lj$/util/g0;-><init>(Lj$/util/Z;)V

    return-object v0
.end method

.method public static i(Lj$/util/Spliterator;)Ljava/util/Iterator;
    .locals 1

    .line 667
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v0, Lj$/util/e0;

    invoke-direct {v0, p0}, Lj$/util/e0;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public static j([DII)Lj$/util/T;
    .locals 2

    .line 371
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    .line 372
    new-instance v0, Lj$/util/j0;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/j0;-><init>([DIII)V

    return-object v0
.end method

.method public static k([III)Lj$/util/W;
    .locals 2

    .line 239
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    .line 240
    new-instance v0, Lj$/util/o0;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/o0;-><init>([IIII)V

    return-object v0
.end method

.method public static l([JII)Lj$/util/Z;
    .locals 2

    .line 305
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    .line 306
    new-instance v0, Lj$/util/q0;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/q0;-><init>([JIII)V

    return-object v0
.end method

.method public static m([Ljava/lang/Object;II)Lj$/util/Spliterator;
    .locals 2

    .line 177
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    .line 178
    new-instance v0, Lj$/util/i0;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/i0;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;I)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 420
    new-instance v0, Lj$/util/p0;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0, p1}, Lj$/util/p0;-><init>(Ljava/util/Collection;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;I)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 478
    new-instance v0, Lj$/util/p0;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0, p1}, Lj$/util/p0;-><init>(Ljava/util/Iterator;I)V

    return-object v0
.end method
