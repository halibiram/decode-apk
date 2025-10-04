.class final Lcom/google/common/reflect/ClassPath$LocationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationInfo"
.end annotation


# instance fields
.field private final classloader:Ljava/lang/ClassLoader;

.field final home:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/io/File;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->home:Ljava/io/File;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/ClassLoader;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->classloader:Ljava/lang/ClassLoader;

    .line 19
    .line 20
    return-void
.end method

.method private scan(Ljava/io/File;Ljava/util/Set;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1, p3}, Lcom/google/common/reflect/ClassPath$LocationInfo;->scanDirectory(Ljava/io/File;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/reflect/ClassPath$LocationInfo;->scanJar(Ljava/io/File;Ljava/util/Set;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception p2

    .line 23
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->access$000()Ljava/util/logging/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x10

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, v0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    new-array v2, v2, [J

    .line 55
    .line 56
    fill-array-data v2, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_1

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :array_0
    .array-data 8
        0x424294d0c01ac4ccL    # 1.5961223992553748E11
        -0x1c7c57c46b378a61L    # -2.373932158742422E171
        0x41d1c2516d6bc0c1L    # 1.1917900056836398E9
    .end array-data

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
        -0x749a7efe5b1c5f56L    # -9.16582431280334E-254
        0x1bea838ad13993efL    # 3.3500022611138736E-174
    .end array-data
.end method

.method private scanDirectory(Ljava/io/File;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide v3, -0x68899a653025aa1eL

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/google/common/reflect/ClassPath$LocationInfo;->scanDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Lcom/google/common/collect/ImmutableSet$Builder;)V

    return-void
.end method

.method private scanDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->access$000()Ljava/util/logging/Logger;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x16

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    array-length p1, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_4

    aget-object v4, v2, v3

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    .line 10
    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11
    invoke-static {v0, p2}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    move-result v6

    invoke-static {v6, v5}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    move-result v6

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x2

    new-array v6, v6, [J

    fill-array-data v6, :array_1

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    invoke-static {v5, v7}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/common/reflect/ClassPath$LocationInfo;->scanDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 15
    invoke-interface {p3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_2

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 18
    iget-object v6, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->classloader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5, v6}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->of(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;

    move-result-object v4

    invoke-virtual {p4, v4}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    :cond_3
    :goto_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_4
    return-void

    :array_0
    .array-data 8
        0x71d244ff35432593L    # 1.9034596481239982E240
        0x26ab427b77b6556eL    # 2.061829690180872E-122
        -0x16e211644488b4fL    # -4.787166678396731E301
        0x64c818e395d3b9c5L    # 3.0515075884644193E177
    .end array-data

    :array_1
    .array-data 8
        0x51f34b31de4d8963L    # 5.997012554590423E86
        0x7c1bd369bafaa1d5L    # 6.7792867781982786E289
    .end array-data

    :array_2
    .array-data 8
        -0x2f36e87f9300217cL    # -1.4875813556026558E81
        0x55c7d5313b30cce4L
        -0x40188826156d32e7L    # -0.733380277777914
        0x7c782290f6b757ffL    # 3.7632542742921683E291
    .end array-data
.end method

.method private scanJar(Ljava/io/File;Ljava/util/Set;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    .line 5
    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p1, v1}, Lcom/google/common/reflect/ClassPath;->getClassPathFromManifest(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/ImmutableSet;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/reflect/ClassPath$LocationInfo;->scan(Ljava/io/File;Ljava/util/Set;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/common/reflect/ClassPath$LocationInfo;->scanJarFile(Ljava/util/jar/JarFile;Lcom/google/common/collect/ImmutableSet$Builder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    return-void

    .line 53
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 54
    .line 55
    .line 56
    :catch_1
    throw p1

    .line 57
    :catch_2
    return-void
.end method

.method private scanJarFile(Ljava/util/jar/JarFile;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/jar/JarEntry;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    new-array v4, v4, [J

    .line 31
    .line 32
    fill-array-data v4, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v3, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->classloader:Ljava/lang/ClassLoader;

    .line 63
    .line 64
    invoke-static {v2, v1, v3}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->of(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void

    .line 73
    :array_0
    .array-data 8
        -0x1bd2c67831fcacdeL    # -3.614081912201113E174
        0x181770e5aed62879L    # 1.284455330400706E-192
        -0x510c8506c69ad85dL    # -1.6044208408299138E-82
        -0x567e637d2527f7L
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/reflect/ClassPath$LocationInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/common/reflect/ClassPath$LocationInfo;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->home:Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/common/reflect/ClassPath$LocationInfo;->home:Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->classloader:Ljava/lang/ClassLoader;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/common/reflect/ClassPath$LocationInfo;->classloader:Ljava/lang/ClassLoader;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
.end method

.method public final file()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->home:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->home:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public scanResources()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/ClassPath$LocationInfo;->scanResources(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public scanResources(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->home:Ljava/io/File;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->home:Ljava/io/File;

    invoke-direct {p0, v1, p1, v0}, Lcom/google/common/reflect/ClassPath$LocationInfo;->scan(Ljava/io/File;Ljava/util/Set;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$LocationInfo;->home:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
