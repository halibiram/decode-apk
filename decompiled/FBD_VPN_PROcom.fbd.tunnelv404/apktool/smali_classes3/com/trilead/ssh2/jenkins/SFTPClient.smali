.class public Lcom/trilead/ssh2/jenkins/SFTPClient;
.super Lcom/trilead/ssh2/SFTPv3Client;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;,
        Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;-><init>(Lcom/trilead/ssh2/Connection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public _stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Lcom/trilead/ssh2/SFTPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lcom/trilead/ssh2/SFTPException;->getServerErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    throw p1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public chmod(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->setstat(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient;->_stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public mkdirs(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient;->_stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/16 v0, 0x2f

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0, p2}, Lcom/trilead/ssh2/jenkins/SFTPClient;->mkdirs(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/SFTPv3Client;->mkdir(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p2

    .line 35
    new-instance v0, Ljava/io/IOException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    new-array v3, v3, [J

    .line 46
    .line 47
    fill-array-data v3, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :array_0
    .array-data 8
        -0x5264cbc92d6b139L    # -5.9713598010019E283
        0x3c4b6d0d9f55b1d0L    # 2.9735316977088002E-18
        -0x12fb4a4fb59c1f25L    # -1.4278452596909804E217
    .end array-data
.end method

.method public read(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->openFileRO(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPInputStream;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPInputStream;-><init>(Lcom/trilead/ssh2/jenkins/SFTPClient;Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public writeToFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->createFile(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;-><init>(Lcom/trilead/ssh2/jenkins/SFTPClient;Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
