.class public final Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/util/Date;",
        ">",
        "Lcom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field private static final SIMPLE_NAME:Ljava/lang/String;


# instance fields
.field private final dateFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final dateType:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    sput-object v0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->SIMPLE_NAME:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$1;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$1;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->DEFAULT_STYLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        -0x592b341229c4007fL
        0x3e6bfe1a824e26aeL    # 5.2140265694475574E-8
        -0x69bf0cf293088ea3L    # -1.729927264474627E-201
        -0x47010a706d7dea4fL    # -3.726580792770042E-34
    .end array-data
.end method

.method private constructor <init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
            "TT;>;II)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 11
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateType:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 12
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2, p3, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 14
    invoke-static {p2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    invoke-static {p2, p3}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getUsDateTimeFormat(II)Ljava/text/DateFormat;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;IILcom/google/gson/internal/bind/DefaultDateTypeAdapter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;-><init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;II)V

    return-void
.end method

.method private constructor <init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateType:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 6
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;Ljava/lang/String;Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;-><init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;Ljava/lang/String;)V

    return-void
.end method

.method private deserializeToDate(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/text/DateFormat;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 27
    .line 28
    .line 29
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 35
    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-object p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :catch_0
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    new-instance v1, Ljava/text/ParsePosition;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 61
    return-object p1

    .line 62
    :catch_1
    move-exception v1

    .line 63
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v5, 0x3

    .line 73
    new-array v5, v5, [J

    .line 74
    .line 75
    fill-array-data v5, :array_0

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 v4, 0x4

    .line 94
    new-array v4, v4, [J

    .line 95
    .line 96
    fill-array-data v4, :array_1

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {v2, p1, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v2

    .line 124
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    throw p1

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        0x7ca47d5ad3f74f37L    # 2.5558814798230266E292
        0x587dfd80051bb3a5L    # 1.890680660275074E118
        0x5e51b166850ef58aL    # 2.2093202100294146E146
    .end array-data

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
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        -0x6ada3c1b62d41b49L    # -8.474143067833654E-207
        -0x639eee9b9ab35f73L    # -5.520692341955396E-172
        -0x53ad733dbf256519L    # -3.473773718420678E-95
        0x7c395945cd05bf74L    # 2.4703124911651208E290
    .end array-data
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->deserializeToDate(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateType:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->deserialize(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/text/DateFormat;

    .line 10
    .line 11
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const/16 v3, 0x29

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v0, v0, [J

    .line 25
    .line 26
    fill-array-data v0, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    fill-array-data v0, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :array_0
    .array-data 8
        0x24f6aa6c2dd7b404L    # 1.277295197528317E-130
        0x43a38f6294e0015eL    # 7.0472679997156122E17
        -0x6ad1faf4f2f21cc9L    # -1.168797660255105E-206
        -0x7903042418675956L
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x73a1fc31d0f64f52L    # -4.192180671392071E-249
        0x2fd64c29a7dd0086L    # 3.008829063076753E-78
        -0x1c43c3f9add2a62cL    # -2.727829359111584E172
        0xdfcfd6bf42a96c9L    # 2.717256462333285E-241
    .end array-data
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V
    .locals 2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 4
    iget-object v1, p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
