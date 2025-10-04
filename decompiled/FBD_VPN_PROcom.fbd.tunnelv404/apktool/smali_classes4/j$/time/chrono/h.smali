.class final Lj$/time/chrono/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic e:I = 0x0

.field private static final serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field private final a:Lj$/time/chrono/n;

.field final b:I

.field final c:I

.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 0
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->g([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lj$/time/chrono/n;III)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "chrono"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Lj$/time/chrono/h;->a:Lj$/time/chrono/n;

    .line 131
    iput p2, p0, Lj$/time/chrono/h;->b:I

    .line 132
    iput p3, p0, Lj$/time/chrono/h;->c:I

    .line 133
    iput p4, p0, Lj$/time/chrono/h;->d:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 380
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 321
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 322
    check-cast p1, Lj$/time/chrono/h;

    .line 323
    iget v1, p1, Lj$/time/chrono/h;->b:I

    iget v3, p0, Lj$/time/chrono/h;->b:I

    if-ne v3, v1, :cond_1

    iget v1, p0, Lj$/time/chrono/h;->c:I

    iget v3, p1, Lj$/time/chrono/h;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/chrono/h;->d:I

    iget v3, p1, Lj$/time/chrono/h;->d:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj$/time/chrono/h;->a:Lj$/time/chrono/n;

    iget-object p1, p1, Lj$/time/chrono/h;->a:Lj$/time/chrono/n;

    .line 324
    invoke-interface {v1, p1}, Lj$/time/chrono/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 331
    iget v0, p0, Lj$/time/chrono/h;->c:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget v1, p0, Lj$/time/chrono/h;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lj$/time/chrono/h;->d:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lj$/time/chrono/h;->a:Lj$/time/chrono/n;

    invoke-interface {v0}, Lj$/time/chrono/n;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 163
    iget-object v0, p0, Lj$/time/chrono/h;->a:Lj$/time/chrono/n;

    iget v1, p0, Lj$/time/chrono/h;->d:I

    iget v2, p0, Lj$/time/chrono/h;->c:I

    iget v3, p0, Lj$/time/chrono/h;->b:I

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 338
    invoke-interface {v0}, Lj$/time/chrono/n;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " P0D"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    invoke-interface {v0}, Lj$/time/chrono/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " P"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x4d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lj$/time/chrono/h;->a:Lj$/time/chrono/n;

    invoke-interface {v0}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 385
    iget v0, p0, Lj$/time/chrono/h;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 386
    iget v0, p0, Lj$/time/chrono/h;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 387
    iget v0, p0, Lj$/time/chrono/h;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .line 370
    new-instance v0, Lj$/time/chrono/G;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/G;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
