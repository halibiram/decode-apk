.class final Lj$/time/chrono/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x54b386e71d87ec81L


# instance fields
.field private a:B

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte p1, p0, Lj$/time/chrono/G;->a:B

    .line 128
    iput-object p2, p0, Lj$/time/chrono/G;->b:Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 253
    iget-object v0, p0, Lj$/time/chrono/G;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    .line 223
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lj$/time/chrono/G;->a:B

    packed-switch v0, :pswitch_data_0

    .line 243
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :pswitch_0
    sget v0, Lj$/time/chrono/h;->e:I

    .line 391
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lj$/time/chrono/a;->j(Ljava/lang/String;)Lj$/time/chrono/n;

    move-result-object v0

    .line 392
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 393
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 394
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    .line 395
    new-instance v3, Lj$/time/chrono/h;

    invoke-direct {v3, v0, v1, v2, p1}, Lj$/time/chrono/h;-><init>(Lj$/time/chrono/n;III)V

    goto/16 :goto_0

    .line 513
    :pswitch_1
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 514
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 515
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 516
    sget-object v2, Lj$/time/chrono/I;->d:Lj$/time/chrono/I;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    new-instance v3, Lj$/time/chrono/K;

    add-int/lit16 v0, v0, -0x21f

    invoke-static {v0, v1, p1}, Lj$/time/h;->N(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/K;-><init>(Lj$/time/h;)V

    goto/16 :goto_0

    .line 513
    :pswitch_2
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 514
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 515
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 516
    sget-object v2, Lj$/time/chrono/C;->d:Lj$/time/chrono/C;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    new-instance v3, Lj$/time/chrono/E;

    add-int/lit16 v0, v0, 0x777

    invoke-static {v0, v1, p1}, Lj$/time/h;->N(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/E;-><init>(Lj$/time/h;)V

    goto/16 :goto_0

    .line 691
    :pswitch_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/q;

    .line 692
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 693
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 694
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 695
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    invoke-static {v0, v1, v2, p1}, Lj$/time/chrono/s;->K(Lj$/time/chrono/q;III)Lj$/time/chrono/s;

    move-result-object v3

    goto :goto_0

    .line 238
    :pswitch_4
    sget-object v0, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    .line 512
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 513
    invoke-static {p1}, Lj$/time/chrono/A;->A(I)Lj$/time/chrono/A;

    move-result-object v3

    goto :goto_0

    .line 237
    :pswitch_5
    sget-object v0, Lj$/time/chrono/z;->d:Lj$/time/h;

    .line 802
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 803
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 804
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 805
    sget-object v2, Lj$/time/chrono/x;->d:Lj$/time/chrono/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    new-instance v3, Lj$/time/chrono/z;

    invoke-static {v0, v1, p1}, Lj$/time/h;->N(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/z;-><init>(Lj$/time/h;)V

    goto :goto_0

    .line 357
    :pswitch_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/e;

    .line 358
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/A;

    .line 359
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/z;

    .line 360
    invoke-interface {v0, v1}, Lj$/time/chrono/e;->p(Lj$/time/A;)Lj$/time/chrono/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/k;->h(Lj$/time/z;)Lj$/time/chrono/k;

    move-result-object v3

    goto :goto_0

    .line 432
    :pswitch_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/b;

    .line 433
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/l;

    .line 434
    invoke-interface {v0, p1}, Lj$/time/chrono/b;->u(Lj$/time/l;)Lj$/time/chrono/e;

    move-result-object v3

    goto :goto_0

    .line 234
    :pswitch_8
    sget v0, Lj$/time/chrono/a;->c:I

    .line 765
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-static {p1}, Lj$/time/chrono/a;->j(Ljava/lang/String;)Lj$/time/chrono/n;

    move-result-object v3

    .line 224
    :goto_0
    iput-object v3, p0, Lj$/time/chrono/G;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    .line 157
    iget-byte v0, p0, Lj$/time/chrono/G;->a:B

    iget-object v1, p0, Lj$/time/chrono/G;->b:Ljava/lang/Object;

    .line 161
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :pswitch_0
    check-cast v1, Lj$/time/chrono/h;

    invoke-virtual {v1, p1}, Lj$/time/chrono/h;->writeExternal(Ljava/io/ObjectOutput;)V

    goto/16 :goto_0

    .line 185
    :pswitch_1
    check-cast v1, Lj$/time/chrono/K;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 507
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 508
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 508
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 509
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 509
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 182
    :pswitch_2
    check-cast v1, Lj$/time/chrono/E;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 507
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 508
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 508
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 509
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 509
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 179
    :pswitch_3
    check-cast v1, Lj$/time/chrono/s;

    invoke-virtual {v1, p1}, Lj$/time/chrono/s;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 176
    :pswitch_4
    check-cast v1, Lj$/time/chrono/A;

    invoke-virtual {v1, p1}, Lj$/time/chrono/A;->E(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 173
    :pswitch_5
    check-cast v1, Lj$/time/chrono/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 796
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 797
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 797
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 798
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/m;->a(Lj$/time/temporal/n;Lj$/time/temporal/q;)I

    move-result v0

    .line 798
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 170
    :pswitch_6
    check-cast v1, Lj$/time/chrono/m;

    invoke-virtual {v1, p1}, Lj$/time/chrono/m;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 167
    :pswitch_7
    check-cast v1, Lj$/time/chrono/g;

    invoke-virtual {v1, p1}, Lj$/time/chrono/g;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 164
    :pswitch_8
    check-cast v1, Lj$/time/chrono/a;

    .line 761
    invoke-interface {v1}, Lj$/time/chrono/n;->i()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
