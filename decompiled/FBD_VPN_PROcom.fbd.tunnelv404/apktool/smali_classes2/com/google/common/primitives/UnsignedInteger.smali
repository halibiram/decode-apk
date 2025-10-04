.class public final Lcom/google/common/primitives/UnsignedInteger;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/primitives/UnsignedInteger;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ONE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ZERO:Lcom/google/common/primitives/UnsignedInteger;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ZERO:Lcom/google/common/primitives/UnsignedInteger;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ONE:Lcom/google/common/primitives/UnsignedInteger;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/primitives/UnsignedInteger;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedInteger;
    .locals 3

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x9

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    long-to-int p1, p0

    .line 2
    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        0x23e4c85db82a05a1L    # 8.935390062184335E-136
        0x40f37b02f5ab3c51L    # 79792.18497775613
        0x1f84e73e32b239e1L    # 7.612494151886227E-157
        -0x58a743cf6df27c2bL    # -3.831560429097613E-119
        -0x6d8577da790273b0L    # -1.174384360753473E-219
        0x641b0db80bcb561aL
        -0x3b41cd5b2275cf3cL    # -1.4260521149310896E23
        -0x5c630eb20adc1a0eL
        0x2aef8e72350ad1ceL
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1

    const/16 v0, 0xa

    .line 7
    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 3

    .line 3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x9

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        -0x151e7262f4926bb4L    # -7.044380147942988E206
        -0x320fd6880aa2ab93L    # -2.7232893667441425E67
        0x5e78160c0911b610L    # 1.203053020325885E147
        0x68572650901f4358L    # 4.224759202518411E194
        -0x9f337e88764f269L    # -4.425285785132448E260
        0x156f2b7c9684e788L
        0x1ab000878184b0f2L    # 3.856370072792014E-180
        0x6d81db23f65f3485L    # 3.151602665364555E219
        -0x2776779d8f613f3fL    # -3.2193332973797795E118
    .end array-data
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public compareTo(Lcom/google/common/primitives/UnsignedInteger;)I
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedInteger;->compareTo(Lcom/google/common/primitives/UnsignedInteger;)I

    move-result p1

    return p1
.end method

.method public dividedBy(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 8
    .line 9
    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->divide(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-double v0, v0

    .line 6
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 7
    .line 8
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 9
    .line 10
    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 11
    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-float v0, v0

    .line 6
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public minus(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 8
    .line 9
    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 10
    .line 11
    sub-int/2addr v0, p1

    .line 12
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public mod(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 8
    .line 9
    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->remainder(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public plus(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 8
    .line 9
    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 10
    .line 11
    add-int/2addr v0, p1

    .line 12
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public times(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 8
    .line 9
    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 10
    .line 11
    mul-int v0, v0, p1

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
