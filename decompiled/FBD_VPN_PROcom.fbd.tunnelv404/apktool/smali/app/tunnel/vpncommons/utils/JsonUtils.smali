.class public Lapp/tunnel/vpncommons/utils/JsonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getComparator(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Comparator;
    .locals 1

    .line 1
    new-instance v0, L딃뒻뒛땥땝됩딨돷뎠돷뎨딄딻돴둘땨뒛돰땮두둣딜땩뒹땪둠든땹딟뒉뒨둬딟땳따땐듸도따뎻땐되돸득땱딁뒹뒋뎹돝땝됩듐듟들땦뒙둥돷득돰땋듻둡땣땤땡됴둡됨뎠땍돷됨딐뎸딠됐듽듻둥땯둣딤딎돶땸뒐땸땪둘도뒻뒨됩둔뎹돠둥됨돳땬딐뒼뒷딁딻뒨땥두땧땯뎡듸딌듐둥땵됨돼됩됫들땩돠둣땭딝듰됩;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, L딃뒻뒛땥땝됩딨돷뎠돷뎨딄딻돴둘땨뒛돰땮두둣딜땩뒹땪둠든땹딟뒉뒨둬딟땳따땐듸도따뎻땐되돸득땱딁뒹뒋뎹돝땝됩듐듟들땦뒙둥돷득돰땋듻둡땣땤땡됴둡됨뎠땍돷됨딐뎸딠됐듽듻둥땯둣딤딎돶땸뒐땸땪둘도뒻뒨됩둔뎹돠둥됨돳땬딐뒼뒷딁딻뒨땥두땧땯뎡듸딌듐둥땵됨돼됩됫들땩돠둣땭딝듰됩;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static sort(Lorg/json/JSONArray;Ljava/util/Comparator;)Lorg/json/JSONArray;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lorg/json/JSONArray;

    .line 31
    .line 32
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-object p0
.end method
