.class public final Lcom/google/zxing/client/result/AddressBookParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SourceFile"


# instance fields
.field private final addressTypes:[Ljava/lang/String;

.field private final addresses:[Ljava/lang/String;

.field private final birthday:Ljava/lang/String;

.field private final emailTypes:[Ljava/lang/String;

.field private final emails:[Ljava/lang/String;

.field private final geo:[Ljava/lang/String;

.field private final instantMessenger:Ljava/lang/String;

.field private final names:[Ljava/lang/String;

.field private final nicknames:[Ljava/lang/String;

.field private final note:Ljava/lang/String;

.field private final org:Ljava/lang/String;

.field private final phoneNumbers:[Ljava/lang/String;

.field private final phoneTypes:[Ljava/lang/String;

.field private final pronunciation:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    const/4 v7, 0x6

    .line 2
    sget-object v8, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v8}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 3
    array-length v8, v1

    array-length v9, v2

    if-ne v8, v9, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v7, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 5
    array-length v8, v3

    array-length v9, v4

    if-ne v8, v9, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 7
    array-length v8, v5

    array-length v9, v6

    if-ne v8, v9, :cond_5

    :cond_4
    move-object v7, p1

    goto :goto_2

    .line 8
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v7, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :goto_2
    iput-object v7, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    move-object v7, p2

    .line 10
    iput-object v7, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    move-object v7, p3

    .line 11
    iput-object v7, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    .line 13
    iput-object v2, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    .line 14
    iput-object v3, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    .line 15
    iput-object v4, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    move-object/from16 v1, p8

    .line 16
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 17
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    .line 18
    iput-object v5, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    .line 19
    iput-object v6, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    move-object/from16 v1, p12

    .line 20
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x197e2250f42737cdL    # 6.925643949760058E-186
        0x1bea76f8b6c15ba7L    # 3.34379796407054E-174
        -0x33c22cab5a81c80bL    # -1.8721776279206435E59
        0x4e2062654fdf0e62L    # 2.2086071429812653E68
        0x2753e68cd9f695fL
        -0x6fc2fc73b8adbbb5L
    .end array-data

    :array_1
    .array-data 8
        -0x7dd4575260197c25L    # -3.304069689057733E-298
        -0x6eb52c058d695711L
        0x1d9ceddbc98ad212L    # 4.905890487496807E-166
        0x21980124944fbe4L
        0x6e541ae539c5bd4cL    # 2.90698089794445E223
    .end array-data

    :array_2
    .array-data 8
        0x208e276975c0c9deL
        0x12d5b4ca119a260bL    # 6.149037120054216E-218
        -0x7c4fec95459440a8L    # -6.443740901070042E-291
        0x4ee57c78cf98b4fbL    # 1.1863394363566416E72
        -0x17f905d8a7eb4f48L    # -1.3103992628963497E193
        -0x5a386ba0056675d5L
    .end array-data
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1
    invoke-direct/range {v0 .. v16}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddressTypes()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAddresses()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method

.method public getEmailTypes()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGeo()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInstantMessenger()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNicknames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhoneNumbers()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhoneTypes()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getURLs()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
