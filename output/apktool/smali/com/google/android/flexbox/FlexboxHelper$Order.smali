.class Lcom/google/android/flexbox/FlexboxHelper$Order;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/flexbox/FlexboxHelper$Order;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field order:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/flexbox/FlexboxHelper$Order;)I
    .locals 2
    .param p1    # Lcom/google/android/flexbox/FlexboxHelper$Order;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    iget v1, p1, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    iget p1, p1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/android/flexbox/FlexboxHelper$Order;

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxHelper$Order;->compareTo(Lcom/google/android/flexbox/FlexboxHelper$Order;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 48
    .line 49
    const/16 v2, 0x7d

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x25f2c1b6d00f9fcdL    # -6.18606746270141E125
        0x3866d7f71b43632fL    # 5.370507911441962E-37
        0x19c94a057806b3caL
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x1b553c1dcb2081b2L    # -8.473395632015421E176
        0x592ec98f775e7044L    # 3.975030941644516E121
    .end array-data
.end method
