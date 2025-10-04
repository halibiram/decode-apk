.class public Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRemote"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;
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
.field private static final URL:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private listener:Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->URL:Ljava/lang/String;

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :array_0
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x73t
        0x3at
        0x2ft
        0x2ft
        0x70t
        0x61t
        0x73t
        0x74t
        0x65t
        0x62t
        0x69t
        0x6et
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x72t
        0x61t
        0x77t
        0x2ft
        0x4ct
        0x44t
        0x45t
        0x6et
        0x70t
        0x7at
        0x55t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 4
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x400

    .line 7
    new-array p1, p1, [C

    .line 8
    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-gtz v3, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {v0, p1, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Message"

    if-eqz v3, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 7
    iget-object v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->listener:Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;->onFinish(ZLjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 10
    iget-object v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->listener:Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;->onFinish(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :catch_0
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public setListener(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->listener:Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    sget-object v0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->URL:Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 8
    .line 9
    .line 10
    return-void
.end method
