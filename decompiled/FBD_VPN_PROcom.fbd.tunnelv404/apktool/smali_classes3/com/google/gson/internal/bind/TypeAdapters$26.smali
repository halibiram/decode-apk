.class Lcom/google/gson/internal/bind/TypeAdapters$26;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String;

.field private static final HOUR_OF_DAY:Ljava/lang/String;

.field private static final MINUTE:Ljava/lang/String;

.field private static final MONTH:Ljava/lang/String;

.field private static final SECOND:Ljava/lang/String;

.field private static final YEAR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters$26;->YEAR:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters$26;->MONTH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters$26;->DAY_OF_MONTH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters$26;->HOUR_OF_DAY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters$26;->MINUTE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters$26;->SECOND:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x2bb6962437927dfeL    # 4.130571748880831E-98
        0x79b810323de49b36L    # 2.132802268855713E278
    .end array-data

    :array_1
    .array-data 8
        -0x5e5509720b91ce23L
        0x2c451dd49215ad28L    # 1.97721469891807E-95
    .end array-data

    :array_2
    .array-data 8
        -0x740c3484d57a789eL
        0x232f74830cf883b5L    # 3.301744226738513E-139
        -0x7bc6514b2da6e6d8L
    .end array-data

    :array_3
    .array-data 8
        -0x75d1c48e77003467L
        -0x29924fd221dffdc1L    # -2.1788750511335513E108
        0x45cce93d8879b71L
    .end array-data

    :array_4
    .array-data 8
        0x5b1871e84b71b33cL    # 6.777777421829462E130
        -0x1d069c418399ffaL
    .end array-data

    :array_5
    .array-data 8
        -0x36bb5a8dbb5ec6f0L    # -9.208546291276055E44
        0xd987340082efecaL
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$26;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;
    .locals 16

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v10, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v3, v10, :cond_8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v10

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x1

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v0, [J

    fill-array-data v15, :array_0

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto/16 :goto_2

    :sswitch_1
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v1, [J

    fill-array-data v15, :array_1

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v1, [J

    fill-array-data v15, :array_2

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_3
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v1, [J

    fill-array-data v15, :array_3

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_4
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v1, [J

    fill-array-data v15, :array_4

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_5
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v0, [J

    fill-array-data v15, :array_5

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_7

    if-eq v3, v14, :cond_6

    if-eq v3, v1, :cond_5

    if-eq v3, v0, :cond_4

    if-eq v3, v12, :cond_3

    if-eq v3, v13, :cond_2

    goto/16 :goto_0

    :cond_2
    move v9, v10

    goto/16 :goto_0

    :cond_3
    move v8, v10

    goto/16 :goto_0

    :cond_4
    move v7, v10

    goto/16 :goto_0

    :cond_5
    move v6, v10

    goto/16 :goto_0

    :cond_6
    move v5, v10

    goto/16 :goto_0

    :cond_7
    move v4, v10

    goto/16 :goto_0

    .line 9
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 10
    new-instance v0, Ljava/util/GregorianCalendar;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4667c053 -> :sswitch_5
        -0x400459ec -> :sswitch_4
        -0x3604bb8c -> :sswitch_3
        0x38883d -> :sswitch_2
        0x6342280 -> :sswitch_1
        0x3ab9c2c1 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 8
        0x5281c31c1e545bf8L    # 2.826729226051794E89
        -0x59079de7360123adL    # -5.901634209988581E-121
        -0x6cee8f1c2de5597aL    # -7.905219290641468E-217
    .end array-data

    :array_1
    .array-data 8
        -0x6b1daf639c5f393aL    # -4.456739315255145E-208
        -0x649e99f119093d60L    # -8.58713869181732E-177
    .end array-data

    :array_2
    .array-data 8
        -0x3775726c6a05b1ecL    # -2.8913692790075243E41
        0x79cd918e0889e114L    # 5.241509528691435E278
    .end array-data

    :array_3
    .array-data 8
        0x7e7de004a7c45758L    # 2.0007122346336763E301
        0x24b31c0ab671f1d9L    # 6.730574036396057E-132
    .end array-data

    :array_4
    .array-data 8
        -0x7d26e2c9cd2b0695L    # -6.144152972822984E-295
        0x1f17a8383a0cebc5L    # 6.730757592116568E-159
    .end array-data

    :array_5
    .array-data 8
        0x3856242c7d7f6bfdL    # 2.602697761545944E-37
        0x3d25daa421efa45eL
        0x1e1ccba2cf0a3eadL
    .end array-data
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$26;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/4 v2, 0x5

    .line 9
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0xb

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0xc

    .line 13
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0xd

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 16
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void

    nop

    :array_0
    .array-data 8
        0x320913e87c6113e8L    # 1.1627325580542202E-67
        -0x4265925c9f11fb59L    # -6.0090938427677E-12
    .end array-data

    :array_1
    .array-data 8
        -0x6f61bab19c4f52a6L
        -0x603d6b0556842a0bL
    .end array-data

    :array_2
    .array-data 8
        -0x7f73f9104442f4e9L
        -0xe3dc52cd5cab555L    # -9.496598980970281E239
        -0x2214f6300f268bc7L    # -2.6377145282898305E144
    .end array-data

    :array_3
    .array-data 8
        0x4dc1efbf87671189L    # 3.777871261535668E66
        0x25047930500d64adL    # 2.3075000475598536E-130
        0xad3d0f6ca68ee44L    # 1.64970207348121E-256
    .end array-data

    :array_4
    .array-data 8
        0x598da1d307c0176dL    # 2.4485617461794423E123
        -0x2cfa9e2c7ab85f95L    # -8.711235159703782E91
    .end array-data

    :array_5
    .array-data 8
        -0x66fef9eb863e8e35L    # -3.056665744039402E-188
        0xf7e81de4b1ce17eL
    .end array-data
.end method
