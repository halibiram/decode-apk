.class public final Lcoil3/ExtrasKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u0002\u001a#\u0010\u0003\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\u00020\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0006\u00a2\u0006\u0002\u0010\u0007\u001a\u000c\u0010\u0008\u001a\u00020\u0001*\u0004\u0018\u00010\u0001\u001a#\u0010\t\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\u00020\n2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0006\u00a2\u0006\u0002\u0010\u000b\u001a#\u0010\t\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\u00020\u000c2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0006\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "plus",
        "Lcoil3/Extras;",
        "other",
        "getOrDefault",
        "T",
        "key",
        "Lcoil3/Extras$Key;",
        "(Lcoil3/Extras;Lcoil3/Extras$Key;)Ljava/lang/Object;",
        "orEmpty",
        "getExtra",
        "Lcoil3/request/ImageRequest;",
        "(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;",
        "Lcoil3/request/Options;",
        "(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;",
        "coil-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/Extras$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/request/ImageRequest;",
            "Lcoil3/Extras$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest;->getExtras()Lcoil3/Extras;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcoil3/Extras;->get(Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcoil3/request/ImageRequest;->getDefaults()Lcoil3/request/ImageRequest$Defaults;

    move-result-object p0

    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Defaults;->getExtras()Lcoil3/Extras;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcoil3/Extras;->get(Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcoil3/Extras$Key;->getDefault()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/Extras$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/request/Options;",
            "Lcoil3/Extras$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcoil3/request/Options;->getExtras()Lcoil3/Extras;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcoil3/Extras;->get(Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcoil3/Extras$Key;->getDefault()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final getOrDefault(Lcoil3/Extras;Lcoil3/Extras$Key;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lcoil3/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/Extras$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/Extras;",
            "Lcoil3/Extras$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcoil3/Extras;->get(Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcoil3/Extras$Key;->getDefault()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    return-object p0
.end method

.method public static final orEmpty(Lcoil3/Extras;)Lcoil3/Extras;
    .locals 0
    .param p0    # Lcoil3/Extras;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcoil3/Extras;->EMPTY:Lcoil3/Extras;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public static final plus(Lcoil3/Extras;Lcoil3/Extras;)Lcoil3/Extras;
    .locals 1
    .param p0    # Lcoil3/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil3/Extras$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil3/Extras;->asMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Lcoil3/Extras;->asMap()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Lcoil3/Extras$Builder;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcoil3/Extras$Builder;->build()Lcoil3/Extras;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
