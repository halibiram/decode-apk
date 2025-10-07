.class public Lnet/openvpn/openvpn/ProxyList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openvpn/openvpn/ProxyList$InternalError;,
        Lnet/openvpn/openvpn/ProxyList$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProxyList"


# instance fields
.field private backing_file:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dirty:Z

.field private enabled_name:Ljava/lang/String;

.field private list:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lnet/openvpn/openvpn/ProxyList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private none_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->backing_file:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->context:Landroid/content/Context;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lnet/openvpn/openvpn/ProxyList;->dirty:Z

    .line 11
    .line 12
    iput-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/util/TreeMap;

    .line 15
    .line 16
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 22
    .line 23
    iput-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->none_name:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iput-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->none_name:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/ProxyList;->set_enabled(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p1, Lnet/openvpn/openvpn/ProxyList$InternalError;

    .line 34
    .line 35
    invoke-direct {p1}, Lnet/openvpn/openvpn/ProxyList$InternalError;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method private forget_creds(Lnet/openvpn/openvpn/ProxyList$Item;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    const-string v0, ""

    iput-object v0, p1, Lnet/openvpn/openvpn/ProxyList$Item;->username:Ljava/lang/String;

    .line 5
    iput-object v0, p1, Lnet/openvpn/openvpn/ProxyList$Item;->password:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lnet/openvpn/openvpn/ProxyList;->dirty:Z

    :cond_0
    return-void
.end method

.method private persist()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lnet/openvpn/openvpn/ProxyList;->get_enabled(Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v2, "enabled_name"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 19
    .line 20
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lnet/openvpn/openvpn/ProxyList$Item;

    .line 44
    .line 45
    invoke-static {v3}, Lnet/openvpn/openvpn/ProxyList$Item;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lnet/openvpn/openvpn/ProxyList$Item;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string v2, "list"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :catch_0
    const/4 v0, 0x0

    .line 62
    return-object v0
.end method

.method public static readAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    invoke-static {p0, v0, v1, p1}, Lnet/openvpn/openvpn/ProxyList;->readStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static readFileAppPrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    invoke-static {p0, v0, v1, p1}, Lnet/openvpn/openvpn/ProxyList;->readStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static readStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x1000

    .line 17
    .line 18
    new-array v3, v2, [C

    .line 19
    .line 20
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v0, v3, v4, v2}, Ljava/io/Reader;->read([CII)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-gtz v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long v6, p1, v4

    .line 43
    .line 44
    if-lez v6, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    int-to-long v4, v4

    .line 51
    cmp-long v6, v4, p1

    .line 52
    .line 53
    if-gtz v6, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Lapp/tunnel/vpncommons/utils/FileUtils$FileTooLarge;

    .line 57
    .line 58
    invoke-direct {v0, p3, p1, p2}, Lapp/tunnel/vpncommons/utils/FileUtils$FileTooLarge;-><init>(Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method private static unpersist(Lorg/json/JSONObject;Ljava/lang/String;)Lnet/openvpn/openvpn/ProxyList;
    .locals 4

    .line 1
    const-string v0, "enabled_name"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lnet/openvpn/openvpn/ProxyList;

    .line 5
    .line 6
    invoke-direct {v2, p1}, Lnet/openvpn/openvpn/ProxyList;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v2, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    const-string p1, "list"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-ge v0, p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Lnet/openvpn/openvpn/ProxyList$Item;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lorg/json/JSONObject;)Lnet/openvpn/openvpn/ProxyList$Item;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lnet/openvpn/openvpn/ProxyList;->put(Lnet/openvpn/openvpn/ProxyList$Item;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2, v1}, Lnet/openvpn/openvpn/ProxyList;->set_enabled(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :catch_0
    return-object v1
.end method

.method public static writeFileAppPrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method


# virtual methods
.method public forget_creds()V
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/openvpn/openvpn/ProxyList$Item;

    .line 3
    invoke-direct {p0, v1}, Lnet/openvpn/openvpn/ProxyList;->forget_creds(Lnet/openvpn/openvpn/ProxyList$Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forget_creds(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->get(Ljava/lang/String;)Lnet/openvpn/openvpn/ProxyList$Item;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->forget_creds(Lnet/openvpn/openvpn/ProxyList$Item;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Lnet/openvpn/openvpn/ProxyList$Item;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->is_none(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lnet/openvpn/openvpn/ProxyList$Item;

    .line 16
    .line 17
    return-object p1
.end method

.method public get_enabled(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->is_none(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 15
    .line 16
    return-object p1
.end method

.method public get_enabled_item()Lnet/openvpn/openvpn/ProxyList$Item;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/ProxyList;->get(Ljava/lang/String;)Lnet/openvpn/openvpn/ProxyList$Item;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public get_name_list(Z)[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    add-int v2, p1, v0

    .line 14
    .line 15
    new-array v2, v2, [Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, [Ljava/lang/String;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->none_name:Ljava/lang/String;

    .line 26
    .line 27
    aput-object p1, v1, v0

    .line 28
    .line 29
    :cond_0
    return-object v1
.end method

.method public has_saved_creds(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->get(Ljava/lang/String;)Lnet/openvpn/openvpn/ProxyList$Item;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Lnet/openvpn/openvpn/ProxyList$Item;->username:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public is_none(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->none_name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public load()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->backing_file:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONTokener;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/openvpn/openvpn/ProxyList;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/openvpn/openvpn/ProxyList;->backing_file:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v2}, Lnet/openvpn/openvpn/ProxyList;->readFileAppPrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/json/JSONObject;

    .line 23
    .line 24
    iget-object v1, p0, Lnet/openvpn/openvpn/ProxyList;->none_name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lnet/openvpn/openvpn/ProxyList;->unpersist(Lorg/json/JSONObject;Ljava/lang/String;)Lnet/openvpn/openvpn/ProxyList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 31
    .line 32
    iput-object v1, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 33
    .line 34
    iget-object v0, v0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lnet/openvpn/openvpn/ProxyList;->dirty:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    :catch_0
    :cond_0
    return-void
.end method

.method public put(Lnet/openvpn/openvpn/ProxyList$Item;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ProxyList$Item;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/ProxyList;->is_none(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lnet/openvpn/openvpn/ProxyList;->dirty:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->is_none(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->set_enabled(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lnet/openvpn/openvpn/ProxyList;->dirty:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public save()V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnet/openvpn/openvpn/ProxyList;->dirty:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->backing_file:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lnet/openvpn/openvpn/ProxyList;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {p0}, Lnet/openvpn/openvpn/ProxyList;->persist()Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v0, v2}, Lnet/openvpn/openvpn/ProxyList;->writeFileAppPrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lnet/openvpn/openvpn/ProxyList;->dirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    :catch_0
    :cond_0
    return-void
.end method

.method public set_backing_file(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/openvpn/openvpn/ProxyList;->backing_file:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public set_enabled(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object p1, v0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->is_none(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->none_name:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ProxyList;->get(Ljava/lang/String;)Lnet/openvpn/openvpn/ProxyList$Item;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iput-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->none_name:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 29
    .line 30
    :goto_0
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lnet/openvpn/openvpn/ProxyList;->enabled_name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_4

    .line 39
    .line 40
    :cond_3
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lnet/openvpn/openvpn/ProxyList;->dirty:Z

    .line 42
    .line 43
    :cond_4
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList;->list:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
