.class abstract Lcom/google/common/reflect/TypeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/reflect/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final varargs visit([Ljava/lang/reflect/Type;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_7

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    if-eqz v2, :cond_6

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    :try_start_0
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/WildcardType;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    move-object v3, v2

    .line 37
    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitWildcardType(Ljava/lang/reflect/WildcardType;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    move-object v3, v2

    .line 48
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    instance-of v3, v2, Ljava/lang/Class;

    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    move-object v3, v2

    .line 59
    check-cast v3, Ljava/lang/Class;

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitClass(Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    move-object v3, v2

    .line 70
    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/lit8 v1, v1, 0xe

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/4 v4, 0x3

    .line 96
    new-array v4, v4, [J

    .line 97
    .line 98
    fill-array-data v4, :array_0

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    .line 123
    .line 124
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    return-void

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        -0x416c24f97c44ca51L    # -2.958710216660946E-7
        -0x403e91ec77cf8d94L    # -0.13617176198831105
        0x5775312178c2a8f2L
    .end array-data
.end method

.method public visitClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 0

    return-void
.end method

.method public visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 0

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    return-void
.end method
