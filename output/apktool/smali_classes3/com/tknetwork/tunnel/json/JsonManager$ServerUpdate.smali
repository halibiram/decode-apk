.class public Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/json/JsonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private listener:Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private versionCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    array-length v3, p1

    .line 42
    if-ge v2, v3, :cond_0

    .line 43
    .line 44
    array-length v3, p2

    .line 45
    if-ge v2, v3, :cond_0

    .line 46
    .line 47
    aget-object v3, p1, v2

    .line 48
    .line 49
    aget-object v4, p2, v2

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    add-int/2addr v2, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    array-length v3, p1

    .line 60
    if-ge v2, v3, :cond_2

    .line 61
    .line 62
    array-length v3, p2

    .line 63
    if-ge v2, v3, :cond_2

    .line 64
    .line 65
    aget-object p1, p1, v2

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    aget-object p2, p2, v2

    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-lez p1, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 89
    :goto_1
    return v0

    .line 90
    :cond_2
    array-length p1, p1

    .line 91
    array-length p2, p2

    .line 92
    sub-int/2addr p1, p2

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-lez p1, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/4 v0, 0x0

    .line 101
    :goto_2
    return v0

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x5e1d5bb957a0446dL    # 2.2912305156946752E145
        -0x5c3d58d463697354L
    .end array-data

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
    :array_1
    .array-data 8
        0x38ee09dff5b1e955L    # 1.8078808872384133E-34
        0x2deea9eb11073aadL    # 1.9267991139522548E-87
    .end array-data
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    aget-object p1, p1, v0

    .line 3
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 8
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 8
        -0x26daa507991c58fL    # -7.494277608456948E296
        -0x1ac3b6ca6567b54aL    # -4.584886337598044E179
    .end array-data
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 7

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;

    invoke-interface {v0, p1}, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;->onUpdateError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_2

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_3

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->context:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/tknetwork/tunnel/utils/c_12;->readFile(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 11
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_5

    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_0
    invoke-direct {p0, v4, v1}, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->versionCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_2

    .line 14
    invoke-static {v0}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 17
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 18
    iget-object v0, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;

    invoke-interface {v0, v4, v3}, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;->onShowUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;

    invoke-interface {v0, v1}, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;->onNoUpdateAvailable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 20
    :goto_2
    iget-object v1, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;->onUpdateError(Ljava/lang/String;)V

    .line 21
    :goto_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x2bbcab5b2393ed76L    # 5.242994613386812E-98
        0x6378b9871082db9dL    # 1.4929624570629036E171
    .end array-data

    :array_1
    .array-data 8
        0x28ebfa6a48813da8L    # 1.454223449057083E-111
        0x312d5db06d4c1ae1L    # 8.310275942073184E-72
        0x273cd2ef5b55fd10L
    .end array-data

    :array_2
    .array-data 8
        0x6c6aa4b18283ab80L
        0x6dc9d88a118cd696L    # 7.298906026207911E220
    .end array-data

    :array_3
    .array-data 8
        -0x62d0c737d2b4b091L    # -4.136475266977842E-168
        -0x773d159eaab949feL
    .end array-data

    :array_4
    .array-data 8
        0x7c830bf5d4414218L    # 5.93972049228621E291
        0x61a8f0e5170dc8e4L    # 2.80518473300234E162
    .end array-data

    :array_5
    .array-data 8
        -0x7f190702b1193b42L
        -0x6b177be18cb2a91dL    # -5.965738399480412E-208
    .end array-data
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateListener(Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;->url:Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method
