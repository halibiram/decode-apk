.class final Lcom/google/common/reflect/TypeToken$InterfaceSet;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InterfaceSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken<",
        "TT;>.TypeSet;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient allTypes:Lcom/google/common/reflect/TypeToken$TypeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation
.end field

.field private transient interfaces:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$TypeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lcom/google/common/reflect/TypeToken;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->allTypes:Lcom/google/common/reflect/TypeToken$TypeSet;

    .line 7
    .line 8
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lcom/google/common/reflect/TypeToken;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x35281129d23562acL    # 1.2563583383039874E-52
        -0x68293c4383504563L    # -7.796195591260032E-194
        -0x382e3c945dfa023dL    # -9.444622748160793E37
        0x6498c8e3035a5beeL    # 3.923208480259428E176
        0x4d8567cefcaf6092L    # 2.817828103447142E65
        -0x643eeac788813509L    # -5.39602490071083E-175
    .end array-data
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->allTypes:Lcom/google/common/reflect/TypeToken$TypeSet;

    .line 5
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/TypeToken$TypeFilter;->INTERFACE_ONLY:Lcom/google/common/reflect/TypeToken$TypeFilter;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    return-object p0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lcom/google/common/reflect/TypeToken;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->access$300(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, L됫딁뒹둠땦땸땤뎹땡됩뒹뎨땭땧뒨딌땍땠딞돴땸땻딀딨뒻뒈딅땃딨땧듔듟땲땋딸땟땍땹돶딹딜딝따듸된땦땫득드뒤땻드드돝딟뒝땭땱뒬땭뎸뒼딨뎰돷딨됴딽뎹뒷뒾땥땭딄딄뎡땥땄딤딜땳뒨뒷딌둠뒝뒀딝딀뒻땅딎딄돶둘들따땫땄뒝듨땠뎠딌땁뎬디뒛땲둬됴땹듟뒀딜돸둡돷땯뒙돳뒷되돵땝됫땜듌땮뎸;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, v2}, L됫딁뒹둠땦땸땤뎹땡됩뒹뎨땭땧뒨딌땍땠딞돴땸땻딀딨뒻뒈딅땃딨땧듔듟땲땋딸땟땍땹돶딹딜딝따듸된땦땫득드뒤땻드드돝딟뒝땭땱뒬땭뎸뒼딨뎰돷딨됴딽뎹뒷뒾땥땭딄딄뎡땥땄딤딜땳뒨뒷딌둠뒝뒀딝딀뒻땅딎딄돶둘들따땫땄뒝듨땠뎠딌땁뎬디뒛땲둬됴땹듟뒀딜돸둡돷땯뒙돳뒷되돵땝됫땜듌땮뎸;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
