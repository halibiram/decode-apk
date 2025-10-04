.class public Lnet/openvpn/openvpn/ProxyList$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openvpn/openvpn/ProxyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public allow_cleartext_auth:Z

.field public friendly_name:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public remember_creds:Z

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->allow_cleartext_auth:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->friendly_name:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    iput-object v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->host:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->password:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->port:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->remember_creds:Z

    .line 19
    .line 20
    iput-object v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->username:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method private persist()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->friendly_name:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "friendly_name"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string v1, "host"

    .line 16
    .line 17
    iget-object v2, p0, Lnet/openvpn/openvpn/ProxyList$Item;->host:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v1, "port"

    .line 23
    .line 24
    iget-object v2, p0, Lnet/openvpn/openvpn/ProxyList$Item;->port:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    const-string v1, "remember_creds"

    .line 30
    .line 31
    iget-boolean v2, p0, Lnet/openvpn/openvpn/ProxyList$Item;->remember_creds:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string v1, "allow_cleartext_auth"

    .line 37
    .line 38
    iget-boolean v2, p0, Lnet/openvpn/openvpn/ProxyList$Item;->allow_cleartext_auth:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->remember_creds:Z

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    const-string v1, "username"

    .line 49
    .line 50
    iget-object v2, p0, Lnet/openvpn/openvpn/ProxyList$Item;->username:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "password"

    .line 56
    .line 57
    iget-object v2, p0, Lnet/openvpn/openvpn/ProxyList$Item;->password:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catch_0
    const/4 v0, 0x0

    .line 64
    return-object v0
.end method

.method private static unpersist(Lorg/json/JSONObject;)Lnet/openvpn/openvpn/ProxyList$Item;
    .locals 6

    .line 1
    const-string v0, "password"

    .line 2
    .line 3
    const-string v1, "username"

    .line 4
    .line 5
    const-string v2, "friendly_name"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Lnet/openvpn/openvpn/ProxyList$Item;

    .line 9
    .line 10
    invoke-direct {v4}, Lnet/openvpn/openvpn/ProxyList$Item;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    iput-object v3, v4, Lnet/openvpn/openvpn/ProxyList$Item;->friendly_name:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, v4, Lnet/openvpn/openvpn/ProxyList$Item;->friendly_name:Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    const-string v2, "host"

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, v4, Lnet/openvpn/openvpn/ProxyList$Item;->host:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "port"

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, v4, Lnet/openvpn/openvpn/ProxyList$Item;->port:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "remember_creds"

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iput-boolean v2, v4, Lnet/openvpn/openvpn/ProxyList$Item;->remember_creds:Z

    .line 51
    .line 52
    const-string v2, "allow_cleartext_auth"

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput-boolean v2, v4, Lnet/openvpn/openvpn/ProxyList$Item;->allow_cleartext_auth:Z

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, v4, Lnet/openvpn/openvpn/ProxyList$Item;->username:Ljava/lang/String;

    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    return-object v4

    .line 79
    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iput-object p0, v4, Lnet/openvpn/openvpn/ProxyList$Item;->password:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    return-object v4

    .line 86
    :catch_0
    return-object v3
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lnet/openvpn/openvpn/ProxyList$Item;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/openvpn/openvpn/ProxyList$Item;->persist()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lorg/json/JSONObject;)Lnet/openvpn/openvpn/ProxyList$Item;
    .locals 0

    .line 1
    invoke-static {p0}, Lnet/openvpn/openvpn/ProxyList$Item;->unpersist(Lorg/json/JSONObject;)Lnet/openvpn/openvpn/ProxyList$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invalidate_creds()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->remember_creds:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->username:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->password:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->remember_creds:Z

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public is_valid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->host:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->port:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->friendly_name:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/openvpn/openvpn/ProxyList$Item;->host:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lnet/openvpn/openvpn/ProxyList$Item;->port:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, ":"

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
