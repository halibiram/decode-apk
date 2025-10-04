.class final Lcom/google/android/gms/common/util/zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzc;->zza:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 8
        0x797414e5175fe23dL    # 1.1124353656545238E277
        0x7c7b3de78f0b7699L    # 4.2476805934801615E291
        -0x93598f4a08bacd4L
        -0x4a75289fcd3d2ca6L    # -8.96756380859615E-51
    .end array-data
.end method

.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_7

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/common/util/zzc;->zza:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_4

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    move v5, v4

    .line 34
    :goto_1
    const/16 v6, 0x5c

    .line 35
    .line 36
    if-ltz v5, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-ne v7, v6, :cond_2

    .line 43
    .line 44
    add-int/lit8 v5, v5, -0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sub-int/2addr v4, v5

    .line 48
    rem-int/2addr v4, v0

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/16 v5, 0x10

    .line 60
    .line 61
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {v2, p0, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    if-ne v4, v6, :cond_3

    .line 73
    .line 74
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v4, v0, [J

    .line 77
    .line 78
    fill-array-data v4, :array_0

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    if-nez v2, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ge v3, v0, :cond_6

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {v2, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    :cond_7
    :goto_3
    return-object p0

    .line 125
    :array_0
    .array-data 8
        0x1d7433f933205cd5L    # 8.56522411690044E-167
        -0x37691e73eca822d3L    # -4.9830500385276994E41
    .end array-data
.end method
