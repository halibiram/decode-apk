.class public abstract Lcom/google/android/gms/internal/measurement/zzik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzli;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzil<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzik<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzli;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzik;->zzau()Lcom/google/android/gms/internal/measurement/zzik;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic zzaA([BLcom/google/android/gms/internal/measurement/zzjo;)Lcom/google/android/gms/internal/measurement/zzli;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzik;->zzax([BIILcom/google/android/gms/internal/measurement/zzjo;)Lcom/google/android/gms/internal/measurement/zzik;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public abstract zzau()Lcom/google/android/gms/internal/measurement/zzik;
.end method

.method public abstract zzav(Lcom/google/android/gms/internal/measurement/zzil;)Lcom/google/android/gms/internal/measurement/zzik;
.end method

.method public zzaw([BII)Lcom/google/android/gms/internal/measurement/zzik;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzax([BIILcom/google/android/gms/internal/measurement/zzjo;)Lcom/google/android/gms/internal/measurement/zzik;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic zzay(Lcom/google/android/gms/internal/measurement/zzlj;)Lcom/google/android/gms/internal/measurement/zzli;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzbR()Lcom/google/android/gms/internal/measurement/zzlj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzil;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->zzav(Lcom/google/android/gms/internal/measurement/zzil;)Lcom/google/android/gms/internal/measurement/zzik;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    new-array v1, v1, [J

    .line 29
    .line 30
    fill-array-data v1, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x690d13098f0adb92L    # 1.086669307951816E198
        -0x1d5eba5472c22f3cL    # -1.2731336137881648E167
        0x7c5f41f7b1aaad89L    # 1.218463852029177E291
        0x678c3f6a31858fe7L    # 6.292896402199592E190
        0x3f1db4e7068f44c4L    # 1.1332187717917873E-4
        0x3e911617e24e8427L    # 2.5460573943077235E-7
        -0x790d0e3aeb992d98L    # -3.419834860944587E-275
        -0x466e8940fedb0afbL    # -2.152585952333804E-31
        0x2a45d9c089b9c412L    # 4.763594360652302E-105
    .end array-data
.end method

.method public final synthetic zzaz([B)Lcom/google/android/gms/internal/measurement/zzli;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzik;->zzaw([BII)Lcom/google/android/gms/internal/measurement/zzik;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
