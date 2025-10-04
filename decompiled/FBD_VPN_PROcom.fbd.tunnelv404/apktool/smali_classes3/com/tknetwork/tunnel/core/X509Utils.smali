.class public Lcom/tknetwork/tunnel/core/X509Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCertificateFriendlyName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/tknetwork/tunnel/core/X509Utils;->getCertificatesFromFile(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 3
    invoke-static {p1}, Lcom/tknetwork/tunnel/core/X509Utils;->getCertificateFriendlyName(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tknetwork/tunnel/core/X509Utils;->getCertificateValidityString(Ljava/security/cert/X509Certificate;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCertificateFriendlyName(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    .line 7
    :try_start_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x7

    new-array v7, v7, [J

    fill-array-data v7, :array_0

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 8
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_1

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 9
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v8, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 10
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v1, [J

    fill-array-data v9, :array_3

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 11
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v1, [J

    fill-array-data v9, :array_4

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_5

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v5, v8, v2

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 13
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_6

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    const-class v9, Ljava/util/Hashtable;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 14
    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v7, v2

    aput-object v0, v7, v3

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_7

    invoke-direct {p0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 17
    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 18
    aget-object v5, p0, v0

    .line 19
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_8

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_9

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_a

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    const-wide v10, -0x773d2b61109003aeL    # -1.8249747278900077E-266

    aput-wide v10, v9, v2

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tknetwork/tunnel/core/X509Utils;->ia5decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v0

    :cond_2
    add-int/2addr v0, v3

    goto :goto_1

    .line 21
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_b

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0xe830194bc6b3426L    # 9.121120404392974E-239
        0x70128f87f98b8b59L    # 7.203943436370541E231
        -0x5c621cd42ff9f128L    # -4.015595298129538E-137
        -0x1762cf281e7c6689L    # -8.523600932948696E195
        -0x4ba0e9e79893c61dL    # -1.9809339523791737E-56
        -0x511016fe3fa45050L
        0x53c446f9b0251912L    # 3.3837451289631207E95
    .end array-data

    :array_1
    .array-data 8
        0x30c901da8fc05a69L    # 1.1057497620327692E-73
        -0x25eb003779f66ac8L
        0x7ca1450a4a8bfd5cL    # 2.1542212502984167E292
    .end array-data

    :array_2
    .array-data 8
        -0x33a2a64a1de33fddL    # -7.36942579723482E59
        -0x18613b18ba31b3d8L    # -1.3709222432657075E191
        0x66e42f15665a182fL    # 4.391095053298001E187
    .end array-data

    :array_3
    .array-data 8
        -0x5b4503567569d618L    # -9.505082819587879E-132
        -0x9c43890ac1e8d47L
        -0x3af6a4fe3661ee05L    # -3.83161422689002E24
        0x77d93f0d0474306L
    .end array-data

    :array_4
    .array-data 8
        -0x47fe3e776d7ba5ceL    # -6.522520671241451E-39
        0x63a29f510af85c2fL    # 8.995836808075632E171
        -0x2b70cf820b76233bL    # -2.1318464284190994E99
        -0x4d62eeb05119f092L    # -6.9003393760036876E-65
    .end array-data

    :array_5
    .array-data 8
        -0x4ffbaf642e51b462L    # -2.193033840228644E-77
        -0x60ed82238ec33ae9L    # -5.261115592620497E-159
    .end array-data

    :array_6
    .array-data 8
        -0x534a9b596d567724L    # -2.5639905969874243E-93
        0x58ec0d5d4160e62fL    # 2.2636812785095413E120
    .end array-data

    :array_7
    .array-data 8
        0x79de4d1d3082ea39L    # 1.0742768376063031E279
        -0x4c6366a1b6c5a4a0L    # -4.4493151187552737E-60
    .end array-data

    :array_8
    .array-data 8
        0x723a46df6834eb62L    # 1.7521439118689735E242
        -0x6ffca4b7de0a524L    # -7.015252850268591E274
        0x5b6ba390e4a2cdbbL    # 2.452275923205248E132
        0x9a486b771491576L
    .end array-data

    :array_9
    .array-data 8
        0x24955f0bf9e7464L
        0x1976e62bac187025L    # 5.262852225018188E-186
    .end array-data

    :array_a
    .array-data 8
        0x3cd80cf1e3b896b2L    # 1.33507460317019E-15
        -0x3ae3a237eb77f617L    # -8.573198465093652E24
        -0x5184a5ea6b2e255aL    # -8.799714890419693E-85
        0xff4f264bdbe7fecL    # 8.432610943641527E-232
    .end array-data

    :array_b
    .array-data 8
        0x513e76e34f82ebd3L    # 2.311806790076731E83
        -0x7315c4a3ccd0b9caL
    .end array-data
.end method

.method public static getCertificateValidityString(Ljava/security/cert/X509Certificate;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    sub-long/2addr v3, v5

    .line 25
    const-wide v5, 0x1cf7c5800L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    cmp-long v7, v3, v5

    .line 31
    .line 32
    if-lez v7, :cond_0

    .line 33
    .line 34
    invoke-static {v0, p0}, Lcom/tknetwork/tunnel/core/X509Utils;->getMonthsDifference(Ljava/util/Date;Ljava/util/Date;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    int-to-long v3, p0

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-array v0, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p0, v0, v1

    .line 46
    .line 47
    const p0, 0x7f130139

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_0
    const-wide/32 v5, 0xf731400

    .line 56
    .line 57
    .line 58
    cmp-long p0, v3, v5

    .line 59
    .line 60
    if-lez p0, :cond_1

    .line 61
    .line 62
    const-wide/32 v5, 0x5265c00

    .line 63
    .line 64
    .line 65
    div-long/2addr v3, v5

    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-array v0, v2, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p0, v0, v1

    .line 73
    .line 74
    const p0, 0x7f130095

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_1
    const-wide/32 v5, 0x36ee80

    .line 83
    .line 84
    .line 85
    div-long/2addr v3, v5

    .line 86
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-array v0, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object p0, v0, v1

    .line 93
    .line 94
    const p0, 0x7f1300ce

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array p1, v0, [J

    .line 105
    .line 106
    fill-array-data p1, :array_0

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :catch_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array p1, v0, [J

    .line 120
    .line 121
    fill-array-data p1, :array_1

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        0x5166709a7998fa79L    # 1.3622878855211808E84
        0x20679d41dc5b2c28L
        0x66c241e91f188900L    # 9.929966044053875E186
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
    .array-data 8
        -0x651f33180494c110L
        0x36629b627108be7eL    # 1.0185124873439206E-46
        0x6ebb3e53cf539108L
    .end array-data
.end method

.method public static getCertificatesFromFile(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x5

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v4, v4, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v4, Ljava/util/Vector;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/VpnProfile;->isEmbedded(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v6, v2, [J

    .line 37
    .line 38
    fill-array-data v6, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    :cond_0
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 57
    .line 58
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v7, v2, [J

    .line 79
    .line 80
    fill-array-data v7, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    add-int/2addr v5, v0

    .line 91
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-gtz v5, :cond_0

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    new-array p0, p0, [Ljava/security/cert/Certificate;

    .line 102
    .line 103
    invoke-virtual {v4, p0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, [Ljava/security/cert/Certificate;

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    .line 111
    .line 112
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-array v0, v0, [Ljava/security/cert/Certificate;

    .line 120
    .line 121
    aput-object p0, v0, v1

    .line 122
    .line 123
    return-object v0

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        -0x47a17a5ba3bed963L    # -3.5878484643659717E-37
        -0x14a5435776a1c15dL    # -1.3734372367860231E209
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        -0x6cf104cc8d6c89e4L
        -0x34e88990f43d3c57L    # -5.618184188198096E53
        -0x70b2abc47d7628f6L
        0xe2d56043726aea8L
        0x3d2bb10c41fae63aL    # 4.919015113136231E-14
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        0x2cf2de95e712cebeL    # 3.6184381091572555E-92
        0x4613e44ab622db09L    # 3.939969976586532E29
        -0x2cae63afa7409baL
        -0x14ad6bf4d4e29d4L
        -0x57a721f917175febL
    .end array-data
.end method

.method public static getMonthsDifference(Ljava/util/Date;Ljava/util/Date;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0xc

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    add-int/2addr p0, v0

    .line 12
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    mul-int/lit8 v0, v0, 0xc

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    add-int/2addr p1, v0

    .line 23
    sub-int/2addr p1, p0

    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    return p1
.end method

.method private static ia5decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    const-wide v4, -0x25f4d6ba5ca8ce3fL    # -5.745627467303417E125

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    aput-wide v4, v3, v6

    .line 14
    .line 15
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x1

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_3

    .line 28
    .line 29
    add-int/lit8 v4, v3, -0x1

    .line 30
    .line 31
    add-int/lit8 v5, v3, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/16 v5, 0x10

    .line 38
    .line 39
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    int-to-char v5, v5

    .line 44
    invoke-static {v5}, Lcom/tknetwork/tunnel/core/X509Utils;->isPrintableChar(C)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    if-ne v3, v2, :cond_1

    .line 67
    .line 68
    const/16 v6, 0x12

    .line 69
    .line 70
    if-eq v5, v6, :cond_2

    .line 71
    .line 72
    const/16 v6, 0x1b

    .line 73
    .line 74
    if-ne v5, v6, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v6, v0, [J

    .line 84
    .line 85
    fill-array-data v6, :array_0

    .line 86
    .line 87
    .line 88
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-static {v5, v1, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_2
    :goto_1
    add-int/2addr v3, v0

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    return-object v1

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        -0x18c45b83d3c058b9L    # -1.9243981136644442E189
        -0x14d550ca59f4e2bdL    # -1.7134232846823191E208
    .end array-data
.end method

.method public static isPrintableChar(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    .line 14
    .line 15
    if-eq v0, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static readPemObjectFromFile(Ljava/lang/String;)Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/VpnProfile;->isEmbedded(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/StringReader;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/VpnProfile;->getEmbeddedContent(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/io/FileReader;

    .line 18
    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    new-instance p0, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemReader;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemReader;->readPemObject()Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method
