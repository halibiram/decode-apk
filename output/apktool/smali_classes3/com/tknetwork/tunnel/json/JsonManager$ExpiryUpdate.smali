.class public Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/json/JsonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpiryUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;
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


# instance fields
.field private listener:Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/ActivityUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

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
        -0x51b39d7eb52f7f87L    # -1.141502478267063E-85
        0x1618e9af6c2a6635L    # 3.178381608297147E-202
    .end array-data
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;

    invoke-interface {v0, p1}, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;

    invoke-interface {v0, p1}, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_3

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_4

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_5

    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;->onExpireDate(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x6

    new-array v3, v3, [J

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;->onDeviceNotMatch(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_7

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_8

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_9

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;->onAuthFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_b

    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;->onError(Ljava/lang/String;)V

    .line 17
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 8
        0x9b7c71db381b561L
        0x5bfc74ac51d3d86L
    .end array-data

    :array_1
    .array-data 8
        -0x2df0cfb5092e0846L    # -1.938854663086511E87
        0x16d2e44958ee26e9L    # 9.87222231380208E-199
    .end array-data

    :array_2
    .array-data 8
        -0x3476ef4ed96206f1L    # -7.682462398604252E55
        0x72ad2dc64b9beae8L    # 2.4904282392249052E244
    .end array-data

    :array_3
    .array-data 8
        0x4e5cb04f152d7de8L    # 3.093784011040587E69
        0x6a8502a73501e9edL    # 1.3174697081494062E205
        0x53e3e3750d161653L    # 1.3275496385759123E96
    .end array-data

    :array_4
    .array-data 8
        -0x23ed484bb171995eL    # -3.40116822052778E135
        -0x5a40a0e16893e5a8L    # -7.24132369161193E-127
        0x2198afa6e30980d1L    # 7.722453759801417E-147
    .end array-data

    :array_5
    .array-data 8
        0x552d25f7bdf8adfdL    # 2.0401492941318372E102
        0x57448d357e37e011L    # 2.4712346545653543E112
    .end array-data

    :array_6
    .array-data 8
        0x258634696a507541L    # 6.406744678389943E-128
        0x6f974533d4f15b91L    # 3.5280855602521437E229
        0x506cc97d49ca4757L    # 2.6666517970992743E79
        -0x209e17561c833df7L    # -2.9311318082805815E151
        -0x5a4eb8d919d7c435L    # -3.988170641817225E-127
        -0x34bb8e1d9fd1b985L    # -3.9164571878243884E54
    .end array-data

    :array_7
    .array-data 8
        -0x24bdf2a9e9bac60bL    # -4.00419970077034E131
        -0xfcc65caffd6a70eL    # -3.0433035979501697E232
        0x7f7d3788e38a9347L    # 1.2823017331802785E306
    .end array-data

    :array_8
    .array-data 8
        0x2016c92829fb48f5L    # 4.248600744976016E-154
        -0x4f39bfeee0f7a228L    # -9.838438734958903E-74
    .end array-data

    :array_9
    .array-data 8
        0x4e182af87583cf8aL    # 1.6289101159584726E68
        0x785bd0ed9d6a3067L    # 5.878042837186363E271
    .end array-data

    :array_a
    .array-data 8
        -0x1353a6f4ff45ef64L
        0x15681f6be3134c9fL
        0x3d13c12a69da94f9L    # 1.754556804602538E-14
        0x284e3366bc4fc9afL    # 1.532956785002394E-114
    .end array-data

    :array_b
    .array-data 8
        -0x32cb37d81387072fL    # -8.54916100071548E63
        -0x270063712267551cL    # -5.101808370739641E120
        -0x2568238670ff8cdL    # -2.083906261005262E297
    .end array-data
.end method

.method public setExpireDateListener(Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->listener:Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;->url:Ljava/lang/String;

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
