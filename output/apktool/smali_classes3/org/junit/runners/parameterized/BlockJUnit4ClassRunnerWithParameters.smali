.class public Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunAfterParams;,
        Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;,
        Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/junit/runners/parameterized/TestWithParameters;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/junit/runners/parameterized/TestWithParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Lorg/junit/runners/model/TestClass;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/junit/runners/parameterized/TestWithParameters;->getParameters()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lorg/junit/runners/parameterized/TestWithParameters;->getParameters()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/junit/runners/parameterized/TestWithParameters;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->name:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic access$000(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method private createTestUsingConstructorInjection()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method private createTestUsingFieldInjection()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getAnnotatedFieldsByParameter()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lorg/junit/runners/model/FrameworkField;

    .line 41
    .line 42
    invoke-virtual {v2}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-class v3, Lorg/junit/runners/Parameterized$Parameter;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lorg/junit/runners/Parameterized$Parameter;

    .line 53
    .line 54
    invoke-interface {v3}, Lorg/junit/runners/Parameterized$Parameter;->value()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    :try_start_0
    iget-object v4, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 59
    .line 60
    aget-object v4, v4, v3

    .line 61
    .line 62
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    new-instance v1, Ljava/lang/Exception;

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, ": Trying to set "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v5, " with the value "

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 106
    .line 107
    aget-object v5, v5, v3

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v5, " that is not the right type ("

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v5, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 118
    .line 119
    aget-object v3, v5, v3

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, " instead of "

    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, ")."

    .line 149
    .line 150
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw v1

    .line 161
    :goto_2
    new-instance v1, Ljava/lang/IllegalAccessException;

    .line 162
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v4, "Cannot set parameter \'"

    .line 166
    .line 167
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v4, "\'. Ensure that the field \'"

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v2, "\' is public."

    .line 190
    .line 191
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 202
    .line 203
    .line 204
    throw v1

    .line 205
    :cond_0
    return-object v1

    .line 206
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    .line 207
    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v3, "Wrong number of parameters and @Parameter fields. @Parameter fields counted: "

    .line 211
    .line 212
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v0, ", available parameters: "

    .line 223
    .line 224
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->parameters:[Ljava/lang/Object;

    .line 228
    .line 229
    array-length v0, v0

    .line 230
    const-string v3, "."

    .line 231
    .line 232
    invoke-static {v2, v3, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v1
.end method

.method private fieldsAreAnnotated()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getAnnotatedFieldsByParameter()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method private getAnnotatedFieldsByParameter()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/junit/runners/Parameterized$Parameter;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private getInjectionType()Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->fieldsAreAnnotated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->FIELD:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->CONSTRUCTOR:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    .line 11
    .line 12
    return-object v0
.end method

.method private withAfterParams(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/junit/runners/Parameterized$AfterParam;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunAfterParams;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunAfterParams;-><init>(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;Lorg/junit/runners/model/Statement;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v1

    .line 24
    :goto_0
    return-object p1
.end method

.method private withBeforeParams(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/junit/runners/Parameterized$BeforeParam;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;-><init>(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;Lorg/junit/runners/model/Statement;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v1

    .line 24
    :goto_0
    return-object p1
.end method


# virtual methods
.method public classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->withBeforeParams(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->withAfterParams(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public createTest()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getInjectionType()Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$1;->$SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->createTestUsingFieldInjection()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "The injection type "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " is not supported."

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->createTestUsingConstructorInjection()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRunnerAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 8

    .line 1
    invoke-super {p0}, Lorg/junit/runners/ParentRunner;->getRunnerAnnotations()[Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v5, v0, v3

    .line 16
    .line 17
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    const-class v7, Lorg/junit/runner/RunWith;

    .line 22
    .line 23
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    aput-object v5, v1, v4

    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v1
.end method

.method public testName(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public validateConstructor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateOnlyOneConstructor(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getInjectionType()Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->CONSTRUCTOR:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateZeroArgConstructor(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public validateFields(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateFields(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getInjectionType()Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;->FIELD:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$InjectionType;

    .line 9
    .line 10
    if-ne v0, v1, :cond_5

    .line 11
    .line 12
    invoke-direct {p0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->getAnnotatedFieldsByParameter()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-array v2, v1, [I

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x1

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lorg/junit/runners/model/FrameworkField;

    .line 38
    .line 39
    invoke-virtual {v4}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-class v6, Lorg/junit/runners/Parameterized$Parameter;

    .line 44
    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lorg/junit/runners/Parameterized$Parameter;

    .line 50
    .line 51
    invoke-interface {v4}, Lorg/junit/runners/Parameterized$Parameter;->value()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-ltz v4, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    sub-int/2addr v6, v5

    .line 62
    if-le v4, v6, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    aget v6, v2, v4

    .line 66
    .line 67
    add-int/2addr v6, v5

    .line 68
    aput v6, v2, v4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/Exception;

    .line 72
    .line 73
    const-string v7, "Invalid @Parameter value: "

    .line 74
    .line 75
    const-string v8, ". @Parameter fields counted: "

    .line 76
    .line 77
    invoke-static {v4, v7, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v7, ". Please use an index between 0 and "

    .line 89
    .line 90
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    sub-int/2addr v7, v5

    .line 98
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v5, "."

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-direct {v6, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    .line 118
    :goto_2
    if-ge v0, v1, :cond_5

    .line 119
    .line 120
    aget v3, v2, v0

    .line 121
    .line 122
    const-string v4, "@Parameter("

    .line 123
    .line 124
    if-nez v3, :cond_3

    .line 125
    .line 126
    new-instance v3, Ljava/lang/Exception;

    .line 127
    .line 128
    const-string v6, ") is never used."

    .line 129
    .line 130
    invoke-static {v0, v4, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    if-le v3, v5, :cond_4

    .line 142
    .line 143
    new-instance v6, Ljava/lang/Exception;

    .line 144
    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v4, ") is used more than once ("

    .line 154
    .line 155
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v3, ")."

    .line 162
    .line 163
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-direct {v6, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    return-void
.end method
