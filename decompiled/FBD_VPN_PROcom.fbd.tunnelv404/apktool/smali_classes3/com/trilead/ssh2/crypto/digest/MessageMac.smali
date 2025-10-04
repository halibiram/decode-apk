.class public final Lcom/trilead/ssh2/crypto/digest/MessageMac;
.super Lcom/trilead/ssh2/crypto/digest/MAC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    }
.end annotation


# instance fields
.field private final messageMac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getAlgorithm()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 17
    .line 18
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 19
    .line 20
    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    new-array v1, v1, [J

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p2

    .line 49
    :array_0
    .array-data 8
        0x5ae59903fadb92c7L    # 7.485416916113297E129
        0x2aa17413b378e78L
        0x3282141d9881a282L    # 2.1458293600557745E-65
        0x4bbe9cbc99c0efcdL    # 7.50610255001095E56
    .end array-data
.end method

.method public static checkMacs([Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-static {v2}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static getKeyLength(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getMacs()[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->values()[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_0

    .line 14
    .line 15
    aget-object v5, v1, v4

    .line 16
    .line 17
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-array v1, v1, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, [Ljava/lang/String;

    .line 38
    .line 39
    return-object v0
.end method


# virtual methods
.method public final getMac([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    sub-int/2addr v1, p2

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final initMac(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 7
    .line 8
    shr-int/lit8 v1, p1, 0x18

    .line 9
    .line 10
    int-to-byte v1, v1

    .line 11
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x10

    .line 17
    .line 18
    int-to-byte v1, v1

    .line 19
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 23
    .line 24
    shr-int/lit8 v1, p1, 0x8

    .line 25
    .line 26
    int-to-byte v1, v1

    .line 27
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 31
    .line 32
    int-to-byte p1, p1

    .line 33
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final update([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
