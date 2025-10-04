.class public final Lkotlinx/serialization/SerializersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\ub575\ub545\ub510\ub540\ub540\ub540\ub500\ub42b\ub505\ub4a4\ub571\ub54d\ub4bb\ub4dc\ub538\ub569\ub3e4\ub3b8\ub488\ub418\ub51e\ub3f3\ub3bb\ub564\ub4dc\ub498\ub544\ub4dc\ub490\ub3ac\ub490\ub56c\ub3db\ub4fc\ub429\ub579\ub56d\ub567\ub4fd\ub54d\ub4e0\ub3a1\ub3e4\ub56c\ub3f8\ub4dc\ub450\ub465\ub460\ub54d\ub560\ub3f8\ub3f0\ub4a4\ub489\ub3f3\ub41c\ub51c\ub429\ub49d\ub460\ub3f8\ub454\ub4dc\ub50c\ub4a8\ub541\ub488\ub428\ub561\ub4bb\ub563\ub56b\ub3dd\ub4b5\ub56f\ub480\ub575\ub561\ub450\ub420\ub49d\ub55c\ub4bc\ub4fb\ub540\ub568\ub56b\ub567\ub420\ub3f8\ub41c\ub539\ub410\ub572\ub55d\ub42b\ub458\ub573\ub541\ub550\ub458\ub4bc\ub501\ub50e\ub4b7\ub480\ub3a8\ub498\ub545\ub561\ub539\ub4dc\ub55d\ub528\ub56d\ub4dc\ub51d\ub461\ub4fc\ub3b9\ub545\ub451\ub41c\ub501\ub4b7\ub571\ub544\ub567\ub572",
        "\ub575\ub530\ub49b\ub46c\ub4dd\ub573\ub3a0\ub554\ub540\ub54d\ub4dc\ub4b9\ub504\ub49b\ub573\ub51c\ub500\ub451\ub4d0\ub458\ub3e4\ub500\ub510\ub504\ub3f5\ub3f3\ub4b7\ub56d\ub4df\ub3dd\ub4b7\ub4a8\ub3db\ub569\ub454\ub458\ub410\ub505\ub49d\ub50e\ub49b\ub55c\ub528\ub504\ub51f\ub56b\ub4ac\ub564\ub56e\ub54d\ub550\ub49d\ub3b9\ub451\ub4f0\ub573\ub500\ub3a1\ub3f7\ub4f0\ub4a8\ub510\ub3ac\ub564\ub4fb\ub56e\ub4b7\ub56d\ub3db\ub554\ub505\ub538\ub4f8\ub510\ub4df\ub510\ub571\ub3ac\ub3a0\ub451\ub461\ub55c\ub514\ub541\ub41c\ub458\ub50e\ub4dc\ub4ac\ub51c\ub4d0\ub488\ub54d\ub504\ub461\ub568\ub524\ub565\ub571\ub3a1\ub56c\ub3fc\ub3f5\ub554\ub568\ub46c\ub3b8\ub57b\ub545\ub505\ub4e0\ub3bb\ub451\ub418\ub49d\ub3f0\ub4b5\ub490\ub560\ub50c\ub51c\ub4dc\ub3f0\ub504\ub434\ub3f8\ub4dc\ub49d\ub575\ub570"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final moduleThenPolymorphic(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 2
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/serialization/modules/SerializersModule;->getContextual$default(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-direct {p0, p1}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    :cond_0
    return-object p0
.end method

.method public static final moduleThenPolymorphic(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lkotlin/reflect/KClass<",
            "*>;[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argSerializers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModule;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-direct {p0, p1}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    :cond_0
    return-object p0
.end method

.method public static final noCompiledSerializer(Ljava/lang/String;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "forClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlinx/serialization/SerializationException;

    invoke-static {p0}, Lkotlinx/serialization/internal/Platform_commonKt;->notRegisteredMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final noCompiledSerializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 2
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 4
    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/serialization/modules/SerializersModule;->getContextual$default(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/internal/Platform_commonKt;->serializerNotRegistered(Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final noCompiledSerializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lkotlin/reflect/KClass<",
            "*>;[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    const-string v0, "module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argSerializers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModule;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/internal/Platform_commonKt;->serializerNotRegistered(Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;
    .locals 4
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlin/reflect/KClassifier;",
            ">;)",
            "Lkotlinx/serialization/KSerializer<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializers"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "elementClassifierIfArray"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_b

    .line 28
    .line 29
    const-class v0, Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_b

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_b

    .line 50
    .line 51
    const-class v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_0
    const-class v0, Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    new-instance p2, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 78
    .line 79
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 84
    .line 85
    invoke-direct {p2, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_1
    const-class v0, Ljava/util/Set;

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_a

    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_a

    .line 111
    .line 112
    const-class v0, Ljava/util/LinkedHashSet;

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_2
    const-class v0, Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    const/4 v2, 0x1

    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    new-instance p2, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 140
    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 146
    .line 147
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 152
    .line 153
    invoke-direct {p2, v0, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_3
    const-class v0, Ljava/util/Map;

    .line 159
    .line 160
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_9

    .line 169
    .line 170
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_9

    .line 179
    .line 180
    const-class v0, Ljava/util/LinkedHashMap;

    .line 181
    .line 182
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_4

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_4
    const-class v0, Ljava/util/Map$Entry;

    .line 195
    .line 196
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_5

    .line 205
    .line 206
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 211
    .line 212
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 217
    .line 218
    invoke-static {p2, v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapEntrySerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    goto/16 :goto_3

    .line 223
    .line 224
    :cond_5
    const-class v0, Lkotlin/Pair;

    .line 225
    .line 226
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_6

    .line 235
    .line 236
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 241
    .line 242
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 247
    .line 248
    invoke-static {p2, v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->PairSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    goto :goto_3

    .line 253
    :cond_6
    const-class v0, Lkotlin/Triple;

    .line 254
    .line 255
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_7

    .line 264
    .line 265
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 270
    .line 271
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 276
    .line 277
    const/4 v2, 0x2

    .line 278
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 283
    .line 284
    invoke-static {p2, v0, v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->TripleSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    goto :goto_3

    .line 289
    :cond_7
    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->isReferenceArray(Lkotlin/reflect/KClass;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_8

    .line 294
    .line 295
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    const-string v0, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>"

    .line 300
    .line 301
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    check-cast p2, Lkotlin/reflect/KClass;

    .line 305
    .line 306
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 311
    .line 312
    invoke-static {p2, v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ArraySerializer(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    goto :goto_3

    .line 317
    :cond_8
    const/4 p2, 0x0

    .line 318
    goto :goto_3

    .line 319
    :cond_9
    :goto_0
    new-instance p2, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    .line 320
    .line 321
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 326
    .line 327
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 332
    .line 333
    invoke-direct {p2, v0, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_a
    :goto_1
    new-instance p2, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    .line 338
    .line 339
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 344
    .line 345
    invoke-direct {p2, v0}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_b
    :goto_2
    new-instance p2, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 350
    .line 351
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 356
    .line 357
    invoke-direct {p2, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 358
    .line 359
    .line 360
    :goto_3
    if-nez p2, :cond_c

    .line 361
    .line 362
    check-cast p1, Ljava/util/Collection;

    .line 363
    .line 364
    new-array p2, v1, [Lkotlinx/serialization/KSerializer;

    .line 365
    .line 366
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    check-cast p1, [Lkotlinx/serialization/KSerializer;

    .line 371
    .line 372
    array-length p2, p1

    .line 373
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    check-cast p1, [Lkotlinx/serialization/KSerializer;

    .line 378
    .line 379
    invoke-static {p0, p1}, Lkotlinx/serialization/internal/PlatformKt;->constructSerializerForGivenTypeArgs(Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    :cond_c
    return-object p2
.end method

.method public static final synthetic serializer()Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 24
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v0, "kotlinx.serialization.serializer.simple"

    invoke-static {v0}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final serializer(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleBuildersKt;->EmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/InternalSerializationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lkotlinx/serialization/internal/Platform_commonKt;->serializerNotRegistered(Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final serializer(Lkotlin/reflect/KClass;Ljava/util/List;Z)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    const-string v0, "kClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeArgumentsSerializers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleBuildersKt;->EmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;Ljava/util/List;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KType;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleBuildersKt;->EmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic serializer(Lkotlinx/serialization/modules/SerializersModule;)Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 25
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v0, "kotlinx.serialization.serializer.withModule"

    invoke-static {v0}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 10
    invoke-static {p0, p1, v0}, L땵땅딐땀땀땀딀됫딅뒤땱땍뒻드딸땩돤뎸뒈되딞돳뎻땤드뒘땄드뒐뎬뒐땬돛듼됩땹땭땧듽땍든뎡돤땬돸드두둥둠땍땠돸돰뒤뒉돳된딜됩뒝둠돸둔드딌뒨땁뒈됨땡뒻땣땫돝뒵땯뒀땵땡두될뒝땜뒼듻땀땨땫땧될돸된딹됐땲땝됫둘땳땁땐둘뒼딁딎뒷뒀뎨뒘땅땡딹드땝딨땭드딝둡듼뎹땅둑된딁뒷땱땄땧땲;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, L땵땅딐땀땀땀딀됫딅뒤땱땍뒻드딸땩돤뎸뒈되딞돳뎻땤드뒘땄드뒐뎬뒐땬돛듼됩땹땭땧듽땍든뎡돤땬돸드두둥둠땍땠돸돰뒤뒉돳된딜됩뒝둠돸둔드딌뒨땁뒈됨땡뒻땣땫돝뒵땯뒀땵땡두될뒝땜뒼듻땀땨땫땧될돸된딹됐땲땝됫둘땳땁땐둘뒼딁딎뒷뒀뎨뒘땅땡딹드땝딨땭드딝둡듼뎹땅둑된딁뒷땱땄땧땲;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->serializerNotRegistered(Ljava/lang/Class;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;Ljava/util/List;Z)Lkotlinx/serialization/KSerializer;
    .locals 3
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeArgumentsSerializers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p1}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    invoke-static {p0, p1, v1, p2, v1}, Lkotlinx/serialization/modules/SerializersModule;->getContextual$default(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    const/16 v2, 0x1d

    invoke-direct {v0, v2}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    invoke-static {p1, p2, v0}, Lkotlinx/serialization/SerializersKt;->parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModule;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object p2, v0

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 17
    invoke-static {p2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    move-object v1, p0

    goto :goto_1

    .line 18
    :cond_3
    const-string p0, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.SerializersKt__SerializersKt.nullable?>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    return-object v1

    .line 19
    :cond_5
    invoke-static {p1}, Lkotlinx/serialization/internal/PlatformKt;->platformSpecificSerializerNotRegistered(Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 20
    :goto_2
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string p2, "Unable to retrieve a serializer, the number of passed type serializers differs from the actual number of generic parameters"

    invoke-direct {p1, p2, p0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lkotlin/reflect/KType;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 22
    invoke-static {p0, p1, v0}, L땵따뒛둬득땳뎠땔땀땍드뒹딄뒛땳딜딀둑듐둘돤딀딐딄돵돳뒷땭듟돝뒷뒨돛땩둔둘됐딅뒝딎뒛땜딨딄딟땫뒬땤땮땍땐뒝뎹둑듰땳딀뎡돷듰뒨딐뎬땤듻땮뒷땭돛땔딅딸듸딐듟딐땱뎬뎠둑둡땜디땁된둘딎드뒬딜듐뒈땍딄둡땨딤땥땱뎡땬돼돵땔땨둬뎸땻땅딅든뎻둑되뒝돰뒵뒐땠딌딜드돰딄됴돸드뒝땵땰;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/internal/Platform_commonKt;->kclass(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->platformSpecificSerializerNotRegistered(Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final serializerOrNull(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleBuildersKt;->EmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/InternalSerializationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 3
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->compiledSerializerImpl(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/internal/PrimitivesKt;->builtinSerializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final serializerOrNull(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KType;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 5
    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleBuildersKt;->EmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 7
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, L땵땅딐땀땀땀딀됫딅뒤땱땍뒻드딸땩돤뎸뒈되딞돳뎻땤드뒘땄드뒐뎬뒐땬돛듼됩땹땭땧듽땍든뎡돤땬돸드두둥둠땍땠돸돰뒤뒉돳된딜됩뒝둠돸둔드딌뒨땁뒈됨땡뒻땣땫돝뒵땯뒀땵땡두될뒝땜뒼듻땀땨땫땧될돸된딹됐땲땝됫둘땳땁땐둘뒼딁딎뒷뒀뎨뒘땅땡딹드땝딨땭드딝둡듼뎹땅둑된딁뒷땱땄땧땲;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lkotlin/reflect/KType;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 9
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, p1, v0}, L땵따뒛둬득땳뎠땔땀땍드뒹딄뒛땳딜딀둑듐둘돤딀딐딄돵돳뒷땭듟돝뒷뒨돛땩둔둘됐딅뒝딎뒛땜딨딄딟땫뒬땤땮땍땐뒝뎹둑듰땳딀뎡돷듰뒨딐뎬땤듻땮뒷땭돛땔딅딸듸딐듟딐땱뎬뎠둑둡땜디땁된둘딎드뒬딜듐뒈땍딄둡땨딤땥땱뎡땬돼돵땔땨둬뎸땻땅딅든뎻둑되뒝돰뒵뒐땠딌딜드돰딄됴돸드뒝땵땰;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializersForParameters(Lkotlinx/serialization/modules/SerializersModule;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;Z)",
            "Ljava/util/List<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeArguments"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .line 16
    .line 17
    new-instance p2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p1, v0}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lkotlin/reflect/KType;

    .line 41
    .line 42
    invoke-static {p0, v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 51
    .line 52
    new-instance p2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {p1, v0}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lkotlin/reflect/KType;

    .line 76
    .line 77
    invoke-static {p0, v0}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object p0, p2

    .line 90
    :goto_2
    return-object p0
.end method
