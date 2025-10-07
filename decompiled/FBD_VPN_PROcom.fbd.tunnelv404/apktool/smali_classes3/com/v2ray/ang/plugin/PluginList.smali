.class public final Lcom/v2ray/ang/plugin/PluginList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/v2ray/ang/plugin/Plugin;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/v2ray/ang/plugin/PluginList;",
        "Ljava/util/ArrayList;",
        "Lcom/v2ray/ang/plugin/Plugin;",
        "Lkotlin/collections/ArrayList;",
        "<init>",
        "()V",
        "lookup",
        "",
        "",
        "getLookup",
        "()Ljava/util/Map;",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPluginList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginList.kt\ncom/v2ray/ang/plugin/PluginList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n774#2:56\n865#2,2:57\n1563#2:59\n1634#2,3:60\n*S KotlinDebug\n*F\n+ 1 PluginList.kt\ncom/v2ray/ang/plugin/PluginList\n*L\n34#1:56\n34#1:57,2\n34#1:59\n34#1:60,3\n*E\n"
    }
.end annotation


# instance fields
.field private final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/v2ray/ang/plugin/Plugin;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x80

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v2, 0x5

    .line 44
    new-array v2, v2, [J

    .line 45
    .line 46
    fill-array-data v2, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Ljava/lang/Iterable;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v3, v2

    .line 81
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 82
    .line 83
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 84
    .line 85
    iget-boolean v3, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 86
    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    const/16 v2, 0xa

    .line 96
    .line 97
    invoke-static {v1, v2}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 119
    .line 120
    new-instance v3, Lcom/v2ray/ang/plugin/NativePlugin;

    .line 121
    .line 122
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v3, v2}, Lcom/v2ray/ang/plugin/NativePlugin;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_3

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lcom/v2ray/ang/plugin/Plugin;

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/v2ray/ang/plugin/Plugin;->getId()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Lcom/v2ray/ang/plugin/Plugin;

    .line 169
    .line 170
    invoke-static {v2, p0, v3}, Lcom/v2ray/ang/plugin/PluginList;->lookup$lambda$2$check(Lcom/v2ray/ang/plugin/Plugin;Lcom/v2ray/ang/plugin/PluginList;Lcom/v2ray/ang/plugin/Plugin;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    iput-object v0, p0, Lcom/v2ray/ang/plugin/PluginList;->lookup:Ljava/util/Map;

    .line 175
    .line 176
    return-void

    .line 177
    :array_0
    .array-data 8
        -0x6d2df41c0e0ba7a2L
        0x1e7fb2089bca6488L    # 8.80641564376038E-162
        -0x7af031f61eeda45dL
        -0x3b46174280240e8aL    # -1.2235246157126707E23
        -0x6c86012e6e394cc4L    # -7.540833696062283E-215
        -0x4de0f809d8d9bacfL    # -2.877518650974454E-67
        -0x31dabb4b0192ddfcL    # -2.866972861980031E68
        0x402aa1b5788e6929L    # 13.31583763826764
    .end array-data

    .line 178
    .line 179
    :array_1
    .array-data 8
        -0x7aa6723c5dc29611L    # -6.873833441551736E-283
        0x3eba3a8687225b0dL    # 1.5633472938752456E-6
        -0x296a0afc81430bd3L    # -1.2891787032745144E109
        -0xbce803e2b0dec7eL
        0x5c696c4f2ba28defL    # 1.478278499857785E137
    .end array-data
.end method

.method private static final lookup$lambda$2$check(Lcom/v2ray/ang/plugin/Plugin;Lcom/v2ray/ang/plugin/PluginList;Lcom/v2ray/ang/plugin/Plugin;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/v2ray/ang/plugin/PluginList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge contains(Lcom/v2ray/ang/plugin/Plugin;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/v2ray/ang/plugin/Plugin;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/v2ray/ang/plugin/Plugin;

    invoke-virtual {p0, p1}, Lcom/v2ray/ang/plugin/PluginList;->contains(Lcom/v2ray/ang/plugin/Plugin;)Z

    move-result p1

    return p1
.end method

.method public final getLookup()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/v2ray/ang/plugin/Plugin;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/plugin/PluginList;->lookup:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge indexOf(Lcom/v2ray/ang/plugin/Plugin;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/v2ray/ang/plugin/Plugin;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/v2ray/ang/plugin/Plugin;

    invoke-virtual {p0, p1}, Lcom/v2ray/ang/plugin/PluginList;->indexOf(Lcom/v2ray/ang/plugin/Plugin;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/v2ray/ang/plugin/Plugin;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/v2ray/ang/plugin/Plugin;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/v2ray/ang/plugin/Plugin;

    invoke-virtual {p0, p1}, Lcom/v2ray/ang/plugin/PluginList;->lastIndexOf(Lcom/v2ray/ang/plugin/Plugin;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lcom/v2ray/ang/plugin/Plugin;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/plugin/PluginList;->removeAt(I)Lcom/v2ray/ang/plugin/Plugin;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Lcom/v2ray/ang/plugin/Plugin;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/v2ray/ang/plugin/Plugin;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/v2ray/ang/plugin/Plugin;

    invoke-virtual {p0, p1}, Lcom/v2ray/ang/plugin/PluginList;->remove(Lcom/v2ray/ang/plugin/Plugin;)Z

    move-result p1

    return p1
.end method

.method public bridge removeAt(I)Lcom/v2ray/ang/plugin/Plugin;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/v2ray/ang/plugin/Plugin;

    .line 6
    .line 7
    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/v2ray/ang/plugin/PluginList;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
