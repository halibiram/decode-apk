.class public final Lcom/google/android/gms/common/internal/service/zao;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/TelemetryLoggingClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;",
        ">;",
        "Lcom/google/android/gms/common/internal/TelemetryLoggingClient;"
    }
.end annotation


# static fields
.field public static final synthetic zab:I

.field private static final zac:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/common/internal/service/zap;",
            ">;"
        }
    .end annotation
.end field

.field private static final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/common/internal/service/zap;",
            "Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zae:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/common/internal/service/zao;->zac:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/common/internal/service/zan;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/common/internal/service/zan;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/android/gms/common/internal/service/zao;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    .line 16
    .line 17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    new-array v4, v4, [J

    .line 21
    .line 22
    fill-array-data v4, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/google/android/gms/common/internal/service/zao;->zae:Lcom/google/android/gms/common/api/Api;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x246e2f6f805f5f74L    # 3.322365098963524E-133
        -0x1da4904c78a9fdc4L    # -6.3198053188994515E165
        -0x2f651e9af0dc4424L    # -1.9920276909725286E80
        0x35b993a368e8a356L    # 6.83605337300318E-50
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/service/zao;->zae:Lcom/google/android/gms/common/api/Api;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/TelemetryData;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/base/zad;->zaa:Lcom/google/android/gms/common/Feature;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/common/internal/service/zam;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/service/zam;-><init>(Lcom/google/android/gms/common/internal/TelemetryData;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doBestEffortWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
