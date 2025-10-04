.class Lcom/airbnb/lottie/parser/KeyframesParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframesParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        -0x2d032b10ae014707L    # -5.8731366476683676E91
        0x1040f43afdef8183L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 p2, 0x6

    .line 17
    new-array p2, p2, [J

    .line 18
    .line 19
    fill-array-data p2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    sget-object v1, Lcom/airbnb/lottie/parser/KeyframesParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 59
    .line 60
    if-ne v1, v2, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 70
    .line 71
    if-ne v1, v2, :cond_2

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v3, p0

    .line 75
    move-object v4, p1

    .line 76
    move v5, p2

    .line 77
    move-object v6, p3

    .line 78
    move v8, p4

    .line 79
    invoke-static/range {v3 .. v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    move-object v2, p0

    .line 95
    move-object v3, p1

    .line 96
    move v4, p2

    .line 97
    move-object v5, p3

    .line 98
    move v7, p4

    .line 99
    invoke-static/range {v2 .. v7}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const/4 v6, 0x0

    .line 112
    move-object v2, p0

    .line 113
    move-object v3, p1

    .line 114
    move v4, p2

    .line 115
    move-object v5, p3

    .line 116
    move v7, p4

    .line 117
    invoke-static/range {v2 .. v7}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lcom/airbnb/lottie/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        -0x4e8022dbf343a1d7L    # -2.8854863070577276E-70
        0x61c38df22ddf88b0L
        -0x5cf6b0c312fa3da3L    # -6.641650100635236E-140
        -0x30d7efb333bf5e0aL    # -2.1258413981236205E73
        0xcf254160b811130L
        0x3a599f14e4779b1fL    # 1.293550764294213E-27
    .end array-data
.end method

.method public static setEndFrames(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 7
    add-int/lit8 v3, v0, -0x1

    .line 8
    .line 9
    if-ge v1, v3, :cond_1

    .line 10
    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/airbnb/lottie/value/Keyframe;

    .line 24
    .line 25
    iget v4, v3, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iput-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 32
    .line 33
    iget-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    iget-object v3, v3, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iput-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 42
    .line 43
    instance-of v3, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->createPath()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, v0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-le v1, v2, :cond_3

    .line 72
    .line 73
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method
