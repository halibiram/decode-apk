.class public final Lkotlinx/serialization/internal/CachingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a;\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\u0008\u0000\u0010\u00002\u001e\u0010\u0004\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0002\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00030\u0001H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001aI\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\"\u0004\u0008\u0000\u0010\u00002,\u0010\u0004\u001a(\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00030\u0008H\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "T",
        "Lkotlin/Function1;",
        "Lkotlin/reflect/KClass;",
        "Lkotlinx/serialization/KSerializer;",
        "factory",
        "Lkotlinx/serialization/internal/SerializerCache;",
        "createCache",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/internal/SerializerCache;",
        "Lkotlin/Function2;",
        "",
        "",
        "Lkotlin/reflect/KType;",
        "Lkotlinx/serialization/internal/ParametrizedSerializerCache;",
        "createParametrizedCache",
        "(Lkotlin/jvm/functions/Function2;)Lkotlinx/serialization/internal/ParametrizedSerializerCache;",
        "kotlinx-serialization-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "java.lang.ClassValue"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sput-boolean v0, Lkotlinx/serialization/internal/CachingKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

    .line 10
    .line 11
    return-void
.end method

.method public static final createCache(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/internal/SerializerCache;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/KClass<",
            "*>;+",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;)",
            "Lkotlinx/serialization/internal/SerializerCache<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "factory"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lkotlinx/serialization/internal/CachingKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, L됫딄둔딝땵딠듨땠뒨둠딝돷딟땠딎돳땧땃됩땩딤땭땩돸땳땁돨땄돝둡땟땮땣땤듬둘듸뒾땭됐둥도돨둑딐뒝땱딄둔뒋돷뒈뎸됫돷디땬땁둬딌딁땄딝둠딁땝뎸땄든둠딄땝둘땐뒼둔뎽땀됫듐땻둑듔디돶땅땍땤됩땬땠땵뎠뎡땵뎨돝땦듟땫디땝됨딞뒝땠뒨뒻도된둑뒬뒙돝땰됩딁딎뒛땡뎠뒋될딐땸뒋딜돳뎸땄;

    .line 11
    .line 12
    invoke-direct {v0, p0}, L됫딄둔딝땵딠듨땠뒨둠딝돷딟땠딎돳땧땃됩땩딤땭땩돸땳땁돨땄돝둡땟땮땣땤듬둘듸뒾땭됐둥도돨둑딐뒝땱딄둔뒋돷뒈뎸됫돷디땬땁둬딌딁땄딝둠딁땝뎸땄든둠딄땝둘땐뒼둔뎽땀됫듐땻둑듔디돶땅땍땤됩땬땠땵뎠뎡땵뎨돝땦듟땫디땝됨딞뒝땠뒨뒻도된둑뒬뒙돝땰됩딁딎뒛땡뎠뒋될딐땸뒋딜돳뎸땄;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, L됫땥뎹뎻될돝뎬뒈든땁땟되돼딟뒉될듻돰뒉든뎬돰돳딌듻듼땻딸듔되딟돵뒾딄돷딻땲땅둡딠딌둠뎡돛듨땤됨뒐땻뒐둡되듔뎹두돴돼뒤둑뒋돼딜돸듟딞듐돵땬들뒬듐땦땫땲뒤뒬땡땀딤땥땲땩뎠딽딠돝땡됫뒐든둬땦딝됨땍딟둑듟땦땋땤땔뎻뒾돤돷뒵돼돵뒋둠뎠듟득땁듸딠딟듬뒝땪됐딜땜땐땨디뎽든땲;

    .line 17
    .line 18
    invoke-direct {v0, p0}, L됫땥뎹뎻될돝뎬뒈든땁땟되돼딟뒉될듻돰뒉든뎬돰돳딌듻듼땻딸듔되딟돵뒾딄돷딻땲땅둡딠딌둠뎡돛듨땤됨뒐땻뒐둡되듔뎹두돴돼뒤둑뒋돼딜돸듟딞듐돵땬들뒬듐땦땫땲뒤뒬땡땀딤땥땲땩뎠딽딠돝땡됫뒐든둬땦딝됨땍딟둑듟땦땋땤땔뎻뒾돤돷뒵돼돵뒋둠뎠듟득땁듸딠딟듬뒝땪됐딜땜땐땨디뎽든땲;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-object v0
.end method

.method public static final createParametrizedCache(Lkotlin/jvm/functions/Function2;)Lkotlinx/serialization/internal/ParametrizedSerializerCache;
    .locals 2
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;-",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;+",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;)",
            "Lkotlinx/serialization/internal/ParametrizedSerializerCache<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "factory"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lkotlinx/serialization/internal/CachingKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, L됫땥뎹뎻될돝뎬뒈든땁땟되돼딟뒉될듻돰뒉든뎬돰돳딌듻듼땻딸듔되딟돵뒾딄돷딻땲땅둡딠딌둠뎡돛듨땤됨뒐땻뒐둡되듔뎹두돴돼뒤둑뒋돼딜돸듟딞듐돵땬들뒬듐땦땫땲뒤뒬땡땀딤땥땲땩뎠딽딠돝땡됫뒐든둬땦딝됨땍딟둑듟땦땋땤땔뎻뒾돤돷뒵돼돵뒋둠뎠듟득땁듸딠딟듬뒝땪됐딜땜땐땨디뎽든땲;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, L됫땥뎹뎻될돝뎬뒈든땁땟되돼딟뒉될듻돰뒉든뎬돰돳딌듻듼땻딸듔되딟돵뒾딄돷딻땲땅둡딠딌둠뎡돛듨땤됨뒐땻뒐둡되듔뎹두돴돼뒤둑뒋돼딜돸듟딞듐돵땬들뒬듐땦땫땲뒤뒬땡땀딤땥땲땩뎠딽딠돝땡됫뒐든둬땦딝됨땍딟둑듟땦땋땤땔뎻뒾돤돷뒵돼돵뒋둠뎠듟득땁듸딠딟듬뒝땪됐딜땜땐땨디뎽든땲;-><init>(Lkotlin/jvm/functions/Function2;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, L됫땥뎹뎻될돝뎬뒈든땁땟되돼딟뒉될듻돰뒉든뎬돰돳딌듻듼땻딸듔되딟돵뒾딄돷딻땲땅둡딠딌둠뎡돛듨땤됨뒐땻뒐둡되듔뎹두돴돼뒤둑뒋돼딜돸듟딞듐돵땬들뒬듐땦땫땲뒤뒬땡땀딤땥땲땩뎠딽딠돝땡됫뒐든둬땦딝됨땍딟둑듟땦땋땤땔뎻뒾돤돷뒵돼돵뒋둠뎠듟득땁듸딠딟듬뒝땪됐딜땜땐땨디뎽든땲;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, p0, v1}, L됫땥뎹뎻될돝뎬뒈든땁땟되돼딟뒉될듻돰뒉든뎬돰돳딌듻듼땻딸듔되딟돵뒾딄돷딻땲땅둡딠딌둠뎡돛듨땤됨뒐땻뒐둡되듔뎹두돴돼뒤둑뒋돼딜돸듟딞듐돵땬들뒬듐땦땫땲뒤뒬땡땀딤땥땲땩뎠딽딠돝땡됫뒐든둬땦딝됨땍딟둑듟땦땋땤땔뎻뒾돤돷뒵돼돵뒋둠뎠듟득땁듸딠딟듬뒝땪됐딜땜땐땨디뎽든땲;-><init>(Lkotlin/jvm/functions/Function2;I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-object v0
.end method
