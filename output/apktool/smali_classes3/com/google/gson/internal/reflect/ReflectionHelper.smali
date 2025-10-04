.class public Lcom/google/gson/internal/reflect/ReflectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;,
        Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;,
        Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;
    }
.end annotation


# static fields
.field private static final RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;

    .line 3
    .line 4
    invoke-direct {v1, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;-><init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    new-instance v1, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;-><init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    sput-object v1, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 14
    .line 15
    return-void
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

.method public static synthetic access$300(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->createExceptionForRecordReflectionException(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/reflect/Method;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    :goto_1
    array-length v1, p0

    .line 25
    if-ge v0, v1, :cond_2

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_1
    aget-object v1, p0, v0

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/16 p0, 0x29

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :array_0
    .array-data 8
        0x561d3f56d10e2d6fL    # 6.70789137742715E106
        -0x213398338605a333L    # -4.540145432607032E148
    .end array-data
.end method

.method public static constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static createExceptionForRecordReflectionException(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0x24

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :array_0
    .array-data 8
        0x3ed01f496b8f91c9L    # 3.843835366422159E-6
        0x7a247976f3dc6473L    # 2.3228366888794806E280
        0x20371dc7afc25090L
        0x4f5d7cfa2c766f94L    # 2.0840450437881792E74
        0x429c4bf2aa61f502L    # 7.778129844349252E12
        0x5b3b1e616c6c55e2L    # 3.0076450289977804E131
        0x7932c512f4de7c6eL    # 6.498545514851346E275
        0xdbee52b029959b9L
        0x65fe63cbb2decafL
        -0x4567acfd118df533L    # -1.964898355988037E-26
        -0x67e1fa2638d26b3fL
        -0x565fe0535c1c97ceL
        -0x74da3d11a726e617L    # -5.797242919006057E-255
        0x50445968536f14bfL    # 4.7125639124093145E78
        -0x56c11c60d74855a7L    # -5.137685499977796E-110
        -0x5826a6b84a57dd19L
        0x5d1ae726dc00d612L    # 3.203743119572826E140
        -0x6c9bfa96324732cdL    # -2.903902527542064E-215
        -0x2af5697f66e73949L    # -4.6523522399405197E101
        -0x3eb349355a73e2bdL    # -3763605.293338449
        0x175d82891fe96238L
        0x5eda3965968ee229L    # 8.383014726932327E148
        0x7169086cbc59b2b0L
        -0x4c4f8613ffbc95bL    # -4.019371919872767E285
        0x7a537e47fb577a6bL    # 1.769216654565984E281
        0x3bf016077db15adfL    # 5.450166347486924E-20
        -0x24bce7fb0486a32cL    # -4.2352698209645205E131
        0x1982192707d28df3L    # 8.318965255396723E-186
        -0x50d101ce048da567L    # -2.0420863469769715E-81
        -0x33d6e31bfa96ce90L    # -7.881797073644714E58
        0x23edff5c6065af27L
        0x366ae0ab32e7914eL    # 1.4712326883828195E-46
        0x38c06a858208c241L    # 2.470020150289516E-35
        -0x18e1093059ee8369L    # -5.389095106344223E188
        -0x48218ecbea053a71L    # -1.3978373172740822E-39
        -0x5651d02be600112bL
    .end array-data
.end method

.method public static createExceptionForUnexpectedIllegalAccess(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :array_0
    .array-data 8
        0x73325c87c5543d29L    # 8.023860287405918E246
        0x1953981402d45b45L
        0x783c56e49264547cL    # 1.4971563364296343E271
        0x50b5623369b34dc3L    # 6.338691511967974E80
        0x5167380eacddec37L    # 1.4095868236509943E84
        0x59c60210b23183f8L    # 2.909712844987452E124
        0xe92c48e2a338529L
        -0x500001e9b3e7ef75L    # -1.726830387315287E-77
        -0x1bef38a7177477a7L    # -1.0374706755554378E174
        0x7cd5cc902dee37aaL    # 2.175373630107676E293
        0x3a84e53a4be0b026L    # 8.439593243340951E-27
        0x4eef3bd4a031a7b9L    # 1.7245373256774253E72
        0x678c0bcf3fa7c369L    # 6.247988660124015E190
        -0x39bd762b5c43b95eL    # -2.93752687418971E30
        -0x408611e04e667705L    # -0.006330608180720394
        -0x6b82655ef09329bcL    # -5.627995291097912E-210
        -0x3b64a58ab451d6fdL    # -3.2293138511182785E22
        -0x3857bc74f2dfd60dL    # -1.6126088041607534E37
        0xd394d431dd12e8fL
        0x5ee64a5bf2be7176L    # 1.425105478003743E149
        0x33d6b26422c49482L    # 5.649711395488249E-59
        0x2427514d8ccb176L
        -0x2664c46bf8d48532L    # -4.500589261465198E123
        -0x2e6b8c7bcbf33cc3L    # -9.932495002296242E84
        -0x4c4f393279417460L
        -0xf81bb0c766cf164L
        0x1382236b733819daL
        -0x3b770ed2db1cf167L    # -1.4723214235639774E22
    .end array-data
.end method

.method public static fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :array_0
    .array-data 8
        -0x2180076e557c85b8L    # -1.5968854022460936E147
        0x64d6e1ea70f543cdL    # 5.795362652690263E177
    .end array-data
.end method

.method public static getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    instance-of v1, p0, Ljava/lang/reflect/Field;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v3, v0, [J

    .line 14
    .line 15
    fill-array-data v3, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    check-cast p0, Ljava/lang/reflect/Field;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/Method;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    check-cast p0, Ljava/lang/reflect/Method;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v4, v0, [J

    .line 83
    .line 84
    fill-array-data v4, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v3, v0, [J

    .line 111
    .line 112
    fill-array-data v3, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v0, v0, [J

    .line 131
    .line 132
    fill-array-data v0, :array_4

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    .line 144
    .line 145
    if-eqz v1, :cond_2

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    const/4 v3, 0x3

    .line 155
    new-array v3, v3, [J

    .line 156
    .line 157
    fill-array-data v3, :array_5

    .line 158
    .line 159
    .line 160
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 171
    .line 172
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v0, v0, [J

    .line 182
    .line 183
    fill-array-data v0, :array_6

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-static {p0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    goto :goto_0

    .line 194
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    const/4 v2, 0x5

    .line 202
    new-array v2, v2, [J

    .line 203
    .line 204
    fill-array-data v2, :array_7

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    :goto_0
    if-eqz p1, :cond_3

    .line 229
    .line 230
    const/4 p1, 0x0

    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_3

    .line 240
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const/4 p1, 0x1

    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    :cond_3
    return-object p0

    .line 270
    nop

    .line 271
    :array_0
    .array-data 8
        -0x3522c490db222980L    # -4.3748205089097364E52
        -0x546486f9a1fa8dbeL    # -1.2560404299129681E-98
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_1
    .array-data 8
        0x604f15f7c4efc2dfL    # 8.33585190850625E155
        0x47a6166608cc4981L    # 1.4679657970492295E37
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_2
    .array-data 8
        0x5a1c8bf6972e6506L    # 1.2077431805930872E126
        0x4e1a7ee883d7975aL    # 1.7858090330566282E68
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_3
    .array-data 8
        -0x4ee45d8d9144e3b2L    # -3.910151471640717E-72
        0x741912742279c10bL    # 1.7950925529079666E251
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_4
    .array-data 8
        -0x61173ba0b03f930aL
        0x23470562619ad2dbL    # 9.665777732905208E-139
    .end array-data

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_5
    .array-data 8
        0x6b7ce126c35d6430L    # 5.933987610198239E209
        0x2057811b90c49897L    # 7.012131137009135E-153
        -0x436204e743817e62L
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_6
    .array-data 8
        0x63fdf380f5382504L    # 4.62989936216677E173
        0xfbb03f33ee4f953L    # 6.797281491466082E-233
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_7
    .array-data 8
        -0x1f203aa49295b5b3L    # -4.362019613434619E158
        -0x552f4cea1a330fe1L    # -1.864001795301915E-102
        0x5215c4eb40ca8e36L    # 2.7065840743520847E87
        0x399c2f9969b9b2acL    # 3.474184674952995E-31
        -0x6574b0e0a0110ff6L
    .end array-data
.end method

.method public static getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static getInaccessibleTroubleshootingSuffix(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v1, 0x5

    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v0, 0x6

    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v0, 0x4

    .line 76
    new-array v0, v0, [J

    .line 77
    .line 78
    fill-array-data v0, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/4 v2, 0x2

    .line 96
    new-array v2, v2, [J

    .line 97
    .line 98
    fill-array-data v2, :array_4

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-static {p0}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    new-array v0, v0, [J

    .line 127
    .line 128
    const-wide v1, -0x1eeec6227b66bf7eL    # -3.78410412801619E159

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    aput-wide v1, v0, v3

    .line 135
    .line 136
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    nop

    .line 145
    :array_0
    .array-data 8
        0x3aeac6bbb79bf6daL    # 6.921511798707141E-25
        0x11c997479dc90c20L    # 5.530945783041877E-223
        -0x4a3743f702b445cdL    # -1.3221906248752129E-49
        -0x698efa0d302816c7L    # -1.389968708040207E-200
        -0xd41834f7b436f45L    # -5.204178239951027E244
        0x74d2301321f95d2fL    # 5.333795081382867E254
        0x5789d481ae435339L    # 4.969521039187276E113
    .end array-data

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
    :array_1
    .array-data 8
        0x722c09928cd8db18L    # 9.347686868625733E241
        0x3e73693fe1d4ca95L    # 7.231209804974629E-8
        -0x46efe84e3525e0beL    # -7.748284181852829E-34
        -0x5bd7d2d2681ebb3dL
        -0x6e728945351523fbL
    .end array-data

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
    :array_2
    .array-data 8
        -0x4c179c1bd6ad22adL    # -1.2142447086433718E-58
        0x67cba5054a3c0bb6L    # 9.853664101895506E191
        0x2c7658fb4362ee65L    # 1.6739864875043244E-94
        -0x50cf7d21375f345aL    # -2.1758058029123105E-81
        -0x5e6a075b38a6fc6aL    # -6.873171387779738E-147
        -0x34131b76492b5110L    # -5.667580710065495E57
    .end array-data

    :array_3
    .array-data 8
        -0x79e6e2586e3ecbd5L    # -2.767271104938646E-279
        0x2e470e91bed48f1dL    # 9.272404629727894E-86
        0x63c22802926f0ab0L    # 3.508283053440086E172
        0x5a915003c79c2a7eL    # 1.8750782808813266E128
    .end array-data

    :array_4
    .array-data 8
        0x7c386232be53db3cL
        -0x337238f09c280197L    # -5.981340486363938E60
    .end array-data
.end method

.method public static getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->isStatic(Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public static isRecord(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->isRecord(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isStatic(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    return-void

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/google/gson/JsonIOException;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    new-array v4, v4, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/16 v3, 0xe

    .line 43
    .line 44
    new-array v3, v3, [J

    .line 45
    .line 46
    fill-array-data v3, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getInaccessibleTroubleshootingSuffix(Ljava/lang/Exception;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v1, p0, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0xc35f19b81d8a92eL    # -5.829856302996605E249
        0x45f06dfdb4757106L    # 8.135569854521867E28
        -0x445b3d82aa497529L    # -2.198021376870563E-21
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 8
        0x6a6af474fef56549L    # 4.22556671355641E204
        -0x6b7f3f45c4b2a59cL    # -6.369737201853842E-210
        0x4b012707156c3f32L    # 2.0535981216642146E53
        0x302537493f7b1561L    # 9.161230946385995E-77
        -0x52ae080c8e0e0e17L    # -2.205233318919151E-90
        -0x3b345b706a6a7612L    # -2.6107901481141475E23
        -0x7eef3b274f3972a5L    # -1.528304065384656E-303
        0x45555b2f39ad4813L    # 1.0327219485950837E26
        -0x24c1a21d428a1b5cL    # -3.3678777024190504E131
        0x5dba2f7502fc5ae4L
        -0x392cce0a267a3decL    # -1.5572961969141785E33
        0x44878d6abc1f2f6eL    # 1.3902888884618387E22
        -0x499863dc48c60d4eL
        -0x63278c2ff785616eL
    .end array-data
.end method

.method public static tryMakeAccessible(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x5

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/16 v2, 0x10

    .line 41
    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    fill-array-data v2, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getInaccessibleTroubleshootingSuffix(Ljava/lang/Exception;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        0x52624a47b0716348L    # 7.276895816587381E88
        0x173016ae9a4b6a9aL    # 5.380729320595839E-197
        -0x27207797e00ac162L    # -1.2722760811852594E120
        0x1139c78a7b4c668L
        -0x26a9495080044a7aL    # -2.346089225604882E122
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        -0x641c2ab806c28f6bL    # -2.505900174644746E-174
        -0x2967e41cfd2ec9d3L    # -1.4155213746092544E109
        -0x50552f07b4ac87c4L    # -4.523241972101828E-79
        0x401512ec34a5203L
        0xd1ded81bfaa0849L
        0x76d2a0299bc16b07L    # 2.345996154185622E264
        0x19015dad55a6d086L
        -0x2eb178d9dc2f495bL    # -4.633254034216995E83
        0x67f60d392ed70ca5L    # 6.288085059393026E192
        -0xca3da00127d57c9L    # -4.920290316502067E247
        0x65fee55cfe0ac4c7L    # 2.051251621969549E183
        -0x378071a52eb4b267L    # -1.7180760482652085E41
        0x56ad39b5c5f181bfL    # 3.431858329728819E109
        -0x35c7690ebdd4bb65L    # -3.59377681552923E49
        -0x2cd73360fa076e30L    # -4.041365548024619E92
        0x7c9e8977cdd65aa0L    # 1.9045920070945338E292
    .end array-data
.end method
