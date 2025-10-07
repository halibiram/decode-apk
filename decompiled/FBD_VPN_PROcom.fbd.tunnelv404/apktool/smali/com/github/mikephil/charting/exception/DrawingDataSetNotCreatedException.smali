.class public Lcom/github/mikephil/charting/exception/DrawingDataSetNotCreatedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x6482b673897b5ab7L    # 1.4810303092016307E176
        0x2891b01ebc50e9c2L    # 2.873026336784275E-113
        -0x5df15b3b220bd2faL    # -1.2270218300026333E-144
        -0x4b351c5e3c14c185L    # -2.1932516584619166E-54
        -0x763e3a3cb07de880L    # -1.1288144999994355E-261
        -0x365698f4697e7934L    # -7.251137773785762E46
        -0x9dbc5cc326909b4L
        -0x514174c193c2e1faL    # -1.5722659362429542E-83
        0x7be207cfb1f472e9L    # 5.491031570410609E288
        0x2c5acfdfed645431L    # 5.021006243712832E-95
        -0x7a2f76200a88c9d1L
        0x5a4da370113eb37eL    # 1.0031442042292087E127
        0x4466c9e9fc2cbaf6L    # 3.3630224556948214E21
    .end array-data
.end method
