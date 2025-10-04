.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field private final reflectionFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/ReflectionAccessFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ConstructorConstructor;",
            "Lcom/google/gson/FieldNamingStrategy;",
            "Lcom/google/gson/internal/Excluder;",
            "Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;",
            "Ljava/util/List<",
            "Lcom/google/gson/ReflectionAccessFilter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->checkAccessible(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static checkAccessible(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/reflect/AccessibleObject;",
            ":",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Object;",
            "TM;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/reflect/Member;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    invoke-static {p1, p0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->canAccess(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 p0, 0x1

    .line 23
    invoke-static {p1, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 28
    .line 29
    invoke-static {p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/16 v1, 0x1d

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :array_0
    .array-data 8
        -0x3f83e1a0eaf10415L    # -449.8982134423556
        0x3df50e3a23b13a73L    # 3.063989372049746E-10
        0x94ddc702ae220a4L
        0x7bc139661b2e13a3L    # 1.3113701298988054E288
        -0xe469e2aa457e2efL    # -6.611274275587461E239
        0x6677dd60199c54dbL    # 4.0561517280339856E185
        0x527d6c58e818611eL    # 2.3412570829796153E89
        -0x6d900b02d23edadbL    # -7.072598761035768E-220
        0x7ee5e2257bd10938L
        -0x77d1030d680a1ef6L    # -2.932840949336363E-269
        -0x199617dbd599f0baL    # -2.2016138770387642E185
        0x6d26c90cd05ac1d3L    # 6.283803853992809E217
        -0x3aa4c4820070676bL    # -1.3168776404079471E26
        0x6f673f74c1434786L    # 4.405852904486818E228
        0x319c5401d24fe5c6L    # 1.0261226424070252E-69
        0x7134e47e132b5b2cL    # 2.1257296234844623E237
        -0x4eac5271c7ae52f4L    # -4.454930309973796E-71
        -0x73cc1ffbffbd6164L    # -6.939881884881049E-250
        -0x5f9b90556c97f693L
        -0x40279edf4f484252L    # -0.380928204132
        -0xa6d2a5809c910beL
        -0x54b65fa6c2dbe16fL    # -3.66132603508765E-100
        0x5fef05bf84cc0beaL    # 1.2998221853260718E154
        -0x9e0d6eeeba65647L    # -9.582074019303915E260
        0x2d9fa0ce3c18a22L    # 6.355200054406985E-295
        0xf834c12673575e6L    # 6.06913336923081E-234
        0x7534905297992cceL    # 3.8595694047610676E256
        -0x40ae75bdf417366fL    # -0.0010705609307818146
        -0x77f1b82ee24ad310L    # -7.164690533171538E-270
    .end array-data
.end method

.method private createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    move-object v6, p1

    .line 3
    invoke-virtual/range {p5 .. p5}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v9, 0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v11, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v11, 0x0

    .line 32
    :goto_0
    const-class v0, Lcom/google/gson/annotations/JsonAdapter;

    .line 33
    .line 34
    move-object/from16 v12, p2

    .line 35
    .line 36
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v4, v0

    .line 41
    check-cast v4, Lcom/google/gson/annotations/JsonAdapter;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    iget-object v0, v10, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 46
    .line 47
    iget-object v1, v10, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    move-object v2, p1

    .line 51
    move-object/from16 v3, p5

    .line 52
    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;Z)Lcom/google/gson/TypeAdapter;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_1
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const/4 v7, 0x1

    .line 62
    :cond_2
    move-object/from16 v1, p5

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_3
    move-object v9, v0

    .line 71
    if-eqz p6, :cond_5

    .line 72
    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    move-object v0, v9

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 78
    .line 79
    invoke-virtual/range {p5 .. p5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, p1, v9, v1}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    move-object v6, v0

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    move-object v6, v9

    .line 89
    :goto_3
    new-instance v13, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;

    .line 90
    .line 91
    move-object v0, v13

    .line 92
    move-object v1, p0

    .line 93
    move-object/from16 v2, p4

    .line 94
    .line 95
    move-object/from16 v3, p2

    .line 96
    .line 97
    move/from16 v4, p7

    .line 98
    .line 99
    move-object/from16 v5, p3

    .line 100
    .line 101
    move-object v7, v9

    .line 102
    move v9, v11

    .line 103
    invoke-direct/range {v0 .. v9}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Lcom/google/gson/TypeAdapter;Lcom/google/gson/TypeAdapter;ZZ)V

    .line 104
    .line 105
    .line 106
    return-object v13
.end method

.method private static createDuplicateFieldException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/IllegalArgumentException;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [J

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v2, 0x6

    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    fill-array-data v2, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 p1, 0x5

    .line 57
    new-array p1, p1, [J

    .line 58
    .line 59
    fill-array-data p1, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array p1, v3, [J

    .line 82
    .line 83
    fill-array-data p1, :array_3

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {p3}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array p1, v3, [J

    .line 106
    .line 107
    fill-array-data p1, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 p1, 0x3

    .line 123
    new-array p1, p1, [J

    .line 124
    .line 125
    fill-array-data p1, :array_5

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p0}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        -0x7e61df3cbbe6a02aL
        -0x9f8fe6d6a7e4de5L
    .end array-data

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
    .line 162
    .line 163
    :array_1
    .array-data 8
        -0x2fc0aa9d2296e813L    # -3.6281760376179847E78
        0x6d1c186c5ec9b5acL    # 3.874111911092397E217
        -0x3a21c67428b4b9c5L    # -3.7416477787094273E28
        0x60c68b643c54f9d6L    # 1.547634186635923E158
        0x4510afb3f5e9383bL    # 5.043136733820371E24
        0x36b96e0fa9e248b9L    # 4.454364620392807E-45
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_2
    .array-data 8
        0x66c19f657b503907L    # 9.584696142114639E186
        -0x3265b24ce857fbc8L    # -6.925208341284836E65
        0x7104696192b75b06L    # 2.5959996053505824E236
        -0x6d081cca9eedd8cL
        0x1d0762dffc967728L    # 7.745913854213271E-169
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_3
    .array-data 8
        -0x4188d4e43b2c3877L    # -8.630898769618498E-8
        0x270dba384ceb5c5L    # 6.44420581044321E-297
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_4
    .array-data 8
        -0x61c8fbd83973ebfdL
        -0x53d3a3a2675a325dL    # -6.6388050790920215E-96
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_5
    .array-data 8
        0x7f585da565f1fe34L    # 2.6734765882401477E305
        0xd590c2630d45e14L
        0x4ce7e29b1c3f166dL    # 3.0705602643653267E62
    .end array-data
.end method

.method private getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    const/4 v10, 0x4

    .line 6
    const/4 v11, 0x1

    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;->EMPTY:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    move-object/from16 v14, p2

    .line 27
    .line 28
    move/from16 v0, p4

    .line 29
    .line 30
    move-object v15, v9

    .line 31
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 32
    .line 33
    if-eq v15, v1, :cond_f

    .line 34
    .line 35
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v6, 0x0

    .line 40
    if-eq v15, v9, :cond_2

    .line 41
    .line 42
    array-length v1, v7

    .line 43
    if-lez v1, :cond_2

    .line 44
    .line 45
    iget-object v0, v8, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {v0, v15}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->getFilterResult(Ljava/util/List;Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 52
    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_INACCESSIBLE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 56
    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    :cond_2
    :goto_1
    move/from16 v16, v0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/16 v3, 0x9

    .line 75
    .line 76
    new-array v3, v3, [J

    .line 77
    .line 78
    fill-array-data v3, :array_0

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v3, 0x3

    .line 97
    new-array v3, v3, [J

    .line 98
    .line 99
    fill-array-data v3, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/16 v3, 0xa

    .line 118
    .line 119
    new-array v3, v3, [J

    .line 120
    .line 121
    fill-array-data v3, :array_2

    .line 122
    .line 123
    .line 124
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :goto_2
    array-length v5, v7

    .line 136
    const/4 v4, 0x0

    .line 137
    :goto_3
    if-ge v4, v5, :cond_e

    .line 138
    .line 139
    aget-object v3, v7, v4

    .line 140
    .line 141
    invoke-direct {v8, v3, v11}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    .line 142
    .line 143
    .line 144
    move-result v17

    .line 145
    invoke-direct {v8, v3, v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v17, :cond_4

    .line 150
    .line 151
    if-nez v0, :cond_4

    .line 152
    .line 153
    move/from16 v19, v4

    .line 154
    .line 155
    move/from16 v22, v5

    .line 156
    .line 157
    move-object/from16 v23, v7

    .line 158
    .line 159
    const/16 v20, 0x0

    .line 160
    .line 161
    goto/16 :goto_7

    .line 162
    .line 163
    :cond_4
    const/4 v1, 0x0

    .line 164
    if-eqz p5, :cond_8

    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_5

    .line 175
    .line 176
    move-object/from16 v19, v1

    .line 177
    .line 178
    const/16 v18, 0x0

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_5
    invoke-static {v15, v3}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v16, :cond_6

    .line 186
    .line 187
    invoke-static {v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    const-class v2, Lcom/google/gson/annotations/SerializedName;

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 193
    .line 194
    .line 195
    move-result-object v18

    .line 196
    if-eqz v18, :cond_8

    .line 197
    .line 198
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-eqz v2, :cond_7

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_7
    invoke-static {v1, v6}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v1, Lcom/google/gson/JsonIOException;

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    new-array v4, v10, [J

    .line 219
    .line 220
    fill-array-data v4, :array_3

    .line 221
    .line 222
    .line 223
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v3, v10, [J

    .line 239
    .line 240
    fill-array-data v3, :array_4

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v1

    .line 254
    :cond_8
    :goto_4
    move/from16 v18, v0

    .line 255
    .line 256
    move-object/from16 v19, v1

    .line 257
    .line 258
    :goto_5
    if-nez v16, :cond_9

    .line 259
    .line 260
    if-nez v19, :cond_9

    .line 261
    .line 262
    invoke-static {v3}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 263
    .line 264
    .line 265
    :cond_9
    invoke-virtual {v14}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v0, v15, v1}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-direct {v8, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 288
    .line 289
    .line 290
    move-result-object v20

    .line 291
    move-object/from16 v0, p0

    .line 292
    .line 293
    move-object/from16 p2, v1

    .line 294
    .line 295
    move-object/from16 v1, p1

    .line 296
    .line 297
    move-object/from16 v21, v2

    .line 298
    .line 299
    move-object v2, v3

    .line 300
    move-object v10, v3

    .line 301
    move-object/from16 v3, v19

    .line 302
    .line 303
    move/from16 v19, v4

    .line 304
    .line 305
    move-object/from16 v4, p2

    .line 306
    .line 307
    move/from16 v22, v5

    .line 308
    .line 309
    move-object/from16 v5, v20

    .line 310
    .line 311
    const/16 v20, 0x0

    .line 312
    .line 313
    move/from16 v6, v17

    .line 314
    .line 315
    move-object/from16 v23, v7

    .line 316
    .line 317
    move/from16 v7, v16

    .line 318
    .line 319
    invoke-direct/range {v0 .. v7}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-eqz v18, :cond_b

    .line 324
    .line 325
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_b

    .line 334
    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    check-cast v2, Ljava/lang/String;

    .line 340
    .line 341
    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    check-cast v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 346
    .line 347
    if-nez v3, :cond_a

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_a
    iget-object v0, v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->field:Ljava/lang/reflect/Field;

    .line 351
    .line 352
    invoke-static {v9, v2, v0, v10}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createDuplicateFieldException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    throw v0

    .line 357
    :cond_b
    if-eqz v17, :cond_d

    .line 358
    .line 359
    move-object/from16 v1, p2

    .line 360
    .line 361
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 366
    .line 367
    if-nez v0, :cond_c

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_c
    iget-object v0, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->field:Ljava/lang/reflect/Field;

    .line 371
    .line 372
    invoke-static {v9, v1, v0, v10}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createDuplicateFieldException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    throw v0

    .line 377
    :cond_d
    :goto_7
    add-int/lit8 v4, v19, 0x1

    .line 378
    .line 379
    move/from16 v5, v22

    .line 380
    .line 381
    move-object/from16 v7, v23

    .line 382
    .line 383
    const/4 v6, 0x0

    .line 384
    const/4 v10, 0x4

    .line 385
    goto/16 :goto_3

    .line 386
    .line 387
    :cond_e
    invoke-virtual {v14}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v15}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v0, v15, v1}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 400
    .line 401
    .line 402
    move-result-object v14

    .line 403
    invoke-virtual {v14}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    move-result-object v15

    .line 407
    move/from16 v0, v16

    .line 408
    .line 409
    const/4 v10, 0x4

    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :cond_f
    new-instance v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    .line 413
    .line 414
    new-instance v1, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 421
    .line 422
    .line 423
    invoke-direct {v0, v12, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 424
    .line 425
    .line 426
    return-object v0

    .line 427
    :array_0
    .array-data 8
        -0x4138a22b004fecdeL    # -2.785507601912172E-6
        -0x6877c3567715f42fL
        0xdc79b8ef04562e2L
        0x1c35e9c1e5711c26L    # 8.8598549719619E-173
        0x7d1d6ed40018b632L    # 4.699473031322078E294
        -0x2a3c702ddd0d9c9fL    # -1.4020300511285824E105
        -0x5884a58e1284f3caL
        -0x12230e0642841716L    # -1.6348339359342612E221
        0x16aa83b124282334L
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    :array_1
    .array-data 8
        0x52b9159042a62bc4L    # 3.1935927510778126E90
        -0x19347ce4850c599cL    # -1.4963447593335875E187
        0x3e128e2fafda0f63L    # 1.0800673128495603E-9
    .end array-data

    :array_2
    .array-data 8
        -0xc4d5cd2c57a7135L    # -2.084980321518979E249
        0x49a30688f2ee79e9L    # 5.430827952652645E46
        0x77370b0ecda58656L    # 1.8575429844983069E266
        0x4f9a4fdd845d85f9L    # 2.975310958946794E75
        0x1f873e98ddae485cL    # 8.465114778306549E-157
        -0x22b66e9a31cd15ffL    # -2.4358136309712735E141
        -0x728d61a9d48b96f7L    # -6.81692105657935E-244
        0x4148ea25b5dd734eL    # 3265611.42082063
        -0x58c2d7f342775453L
        -0x5875972a79e54a3aL
    .end array-data

    :array_3
    .array-data 8
        0x4e55a79938772137L    # 2.3352362560178E69
        -0x7ea866f301e9e524L
        -0x4943720999dd360bL    # -5.00167930657952E-45
        0x4c6fd9d86263e2cdL    # 1.5994536305344936E60
    .end array-data

    :array_4
    .array-data 8
        -0x64b4e946e8214318L    # -3.342425353207416E-177
        0x14dcdf0e25c1ee1eL
        -0x97b51f742b26b1dL    # -8.139786319323295E262
        -0x37b2c112943da0c1L    # -1.9903667072837843E40
    .end array-data
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/gson/annotations/SerializedName;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/gson/annotations/SerializedName;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    array-length v1, v0

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    array-length v2, v0

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method private includeField(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    const-class v0, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-static {v6}, Lcom/google/gson/internal/reflect/ReflectionHelper;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v0, v6}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->getFilterResult(Ljava/util/List;Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 34
    .line 35
    if-eq v0, v1, :cond_4

    .line 36
    .line 37
    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_INACCESSIBLE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    const/4 v7, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    :goto_0
    invoke-static {v6}, Lcom/google/gson/internal/reflect/ReflectionHelper;->isRecord(Ljava/lang/Class;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    new-instance v8, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    move-object v0, p0

    .line 56
    move-object v1, p1

    .line 57
    move-object v2, p2

    .line 58
    move-object v3, v6

    .line 59
    move v4, v7

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v8, v6, p1, v7}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;Z)V

    .line 65
    .line 66
    .line 67
    return-object v8

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    new-instance v9, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    move-object v0, p0

    .line 78
    move-object v1, p1

    .line 79
    move-object v2, p2

    .line 80
    move-object v3, v6

    .line 81
    move v4, v7

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v9, v8, p1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;)V

    .line 87
    .line 88
    .line 89
    return-object v9

    .line 90
    :cond_4
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    const/16 v1, 0x9

    .line 100
    .line 101
    new-array v1, v1, [J

    .line 102
    .line 103
    fill-array-data v1, :array_0

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/16 v1, 0xa

    .line 122
    .line 123
    new-array v1, v1, [J

    .line 124
    .line 125
    fill-array-data v1, :array_1

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-static {v0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-direct {p1, p2}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :array_0
    .array-data 8
        0x1be529ce211d773dL    # 2.673966358400502E-174
        0x30603b42e7c8debdL    # 1.1214230438318317E-75
        -0x2b9c60e668fed0edL    # -3.35289887360761E98
        0xbc8a16d3b62f1bfL
        -0x728381f6d62b6620L
        -0x3497dfe2aeafa7aaL    # -1.8486070243834703E55
        0x1c877a2aa15f7fc3L
        -0x6c10aa4bd40919f4L
        0x4a7786dc201166dfL    # 5.501512220697524E50
    .end array-data

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
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x459052456d845824L    # 1.2628049844671886E27
        0x63cf5ebd29acd0dcL    # 6.061541383383514E172
        -0xe28193985505279L    # -2.4902393844961443E240
        0x5e5a629120c795eL
        -0x54faf785a9cad309L    # -1.878170874971632E-101
        -0x1c40134e9e003531L    # -3.0843435920240148E172
        0x1fbb837069db3f0L
        -0x62e4591c68e097d2L
        -0x26fdefd69477c6b1L    # -5.830440056988446E120
        0x3b78037bad530d9L
    .end array-data
.end method
