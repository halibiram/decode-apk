.class public final Lcom/google/android/gms/common/api/internal/zact;
.super Lcom/google/android/gms/signin/internal/zac;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zab:Landroid/content/Context;

.field private final zac:Landroid/os/Handler;

.field private final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final zae:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zaf:Lcom/google/android/gms/common/internal/ClientSettings;

.field private zag:Lcom/google/android/gms/signin/zae;

.field private zah:Lcom/google/android/gms/common/api/internal/zacs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 p2, 0x5

    .line 13
    new-array p2, p2, [J

    .line 14
    .line 15
    fill-array-data p2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x7a424cd5a85d4dc0L    # -5.11303224352388E-281
        0x43fc01182a25453bL    # 3.228673083730688E19
        -0x28f6f7b58ad8e7bL
        -0x6b3aa5aceeed4fddL    # -1.298997920770032E-208
        0x3782ac1cb644de1eL    # 2.6793455295158693E-41
    .end array-data
.end method

.method public static bridge synthetic zac(Lcom/google/android/gms/common/api/internal/zact;)Lcom/google/android/gms/common/api/internal/zacs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    return-object p0
.end method

.method public static bridge synthetic zad(Lcom/google/android/gms/common/api/internal/zact;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zav;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v1, Ljava/lang/Exception;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    new-array v3, v3, [J

    .line 44
    .line 45
    fill-array-data v3, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v4, 0x7

    .line 58
    new-array v4, v4, [J

    .line 59
    .line 60
    fill-array-data v4, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    .line 78
    .line 79
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zacs;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 83
    .line 84
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    .line 95
    .line 96
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zacs;->zaf(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    .line 101
    .line 102
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zacs;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 106
    .line 107
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :array_0
    .array-data 8
        0x577f0d7699bf512bL    # 2.987144485038786E113
        0x55e7539dc23365bfL    # 6.687448042982055E105
        0x5f9dd0e5864b3931L    # 3.9039768714626954E152
        -0x1bdc79d582ed44d8L    # -2.4144499926328234E174
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 8
        0x560317efde56f495L    # 2.1895462330700497E106
        -0xd8f9e3104c73492L
        0x434b4176711f62b9L    # 1.5343602662032754E16
        0x726c88009c971918L    # 1.5219747921923863E243
        -0x7fa8cd8ad15438aeL    # -5.161526204950645E-307
        0x574ec3632b06a3c5L    # 3.6991365213339414E112
        -0x342abd2ba7b8d5b8L    # -2.085277973889188E57
    .end array-data
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/signin/zae;->zad(Lcom/google/android/gms/signin/internal/zae;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zacs;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/common/api/internal/zacr;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zacr;-><init>(Lcom/google/android/gms/common/api/internal/zact;Lcom/google/android/gms/signin/internal/zak;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zae(Lcom/google/android/gms/common/api/internal/zacs;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ClientSettings;->zae(Ljava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zact;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/ClientSettings;->zaa()Lcom/google/android/gms/signin/SignInOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    move-object v7, p0

    .line 38
    move-object v8, p0

    .line 39
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 59
    .line 60
    invoke-interface {p1}, Lcom/google/android/gms/signin/zae;->zab()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    .line 65
    .line 66
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacq;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zacq;-><init>(Lcom/google/android/gms/common/api/internal/zact;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final zaf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
