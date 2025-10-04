.class public Lnet/openvpn/openvpn/JellyBeanHack;
.super Lnet/openvpn/openvpn/JellyBeanHackBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "JellyBeanHack"


# instance fields
.field private alias_:Ljava/lang/String;

.field private pk_:Ljava/security/PrivateKey;

.field private rsa_sign_initialized:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnet/openvpn/openvpn/JellyBeanHackBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/openvpn/openvpn/JellyBeanHack;->rsa_sign_initialized:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/openvpn/openvpn/JellyBeanHack;->resetPrivateKey()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lnet/openvpn/openvpn/JellyBeanHack;->rsa_sign_init()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iput-boolean v1, p0, Lnet/openvpn/openvpn/JellyBeanHack;->rsa_sign_initialized:Z

    .line 18
    .line 19
    :cond_0
    iget-boolean v0, p0, Lnet/openvpn/openvpn/JellyBeanHack;->rsa_sign_initialized:Z

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "JellyBeanHack: rsa_sign_initialized="

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private declared-synchronized get_pk(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/openvpn/openvpn/JellyBeanHack;->alias_:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lnet/openvpn/openvpn/JellyBeanHack;->pk_:Ljava/security/PrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 19
    :goto_1
    monitor-exit p0

    .line 20
    return-object p1

    .line 21
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public static newJellyBeanHack()Lnet/openvpn/openvpn/JellyBeanHack;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 12
    .line 13
    const-string v0, "Build.VERSION.SDK_INT=%d"

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method private static openssl_pkey(Ljava/security/PrivateKey;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "getOpenSSLKey"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v4, "getPkeyContext"

    .line 36
    .line 37
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 55
    .line 56
    .line 57
    return p0
.end method

.method private static native pkey_retain(I)V
.end method

.method private static native rsa_sign([BI)[B
.end method

.method private static native rsa_sign_init()I
.end method

.method private declared-synchronized set_pk(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lnet/openvpn/openvpn/JellyBeanHack;->alias_:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lnet/openvpn/openvpn/JellyBeanHack;->pk_:Ljava/security/PrivateKey;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, Lnet/openvpn/openvpn/JellyBeanHack;->openssl_pkey(Ljava/security/PrivateKey;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lnet/openvpn/openvpn/JellyBeanHack;->pkey_retain(I)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iput-object p1, p0, Lnet/openvpn/openvpn/JellyBeanHack;->alias_:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lnet/openvpn/openvpn/JellyBeanHack;->pk_:Ljava/security/PrivateKey;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object p1, p0, Lnet/openvpn/openvpn/JellyBeanHack;->pk_:Ljava/security/PrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object p1

    .line 35
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/openvpn/openvpn/JellyBeanHack;->rsa_sign_initialized:Z

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lnet/openvpn/openvpn/JellyBeanHack;->get_pk(Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p2, p1}, Lnet/openvpn/openvpn/JellyBeanHack;->set_pk(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public declared-synchronized resetPrivateKey()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lnet/openvpn/openvpn/JellyBeanHack;->alias_:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lnet/openvpn/openvpn/JellyBeanHack;->pk_:Ljava/security/PrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public declared-synchronized rsaSign(Ljava/security/PrivateKey;[B)[B
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lnet/openvpn/openvpn/JellyBeanHack;->openssl_pkey(Ljava/security/PrivateKey;)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {p2, p1}, Lnet/openvpn/openvpn/JellyBeanHack;->rsa_sign([BI)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method
