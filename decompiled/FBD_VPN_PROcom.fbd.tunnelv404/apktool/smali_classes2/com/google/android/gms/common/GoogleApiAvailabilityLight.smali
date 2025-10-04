.class public Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field static final TRACKING_SOURCE_DIALOG:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field static final TRACKING_SOURCE_NOTIFICATION:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static final zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    new-array v2, v1, [J

    .line 38
    .line 39
    fill-array-data v2, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->TRACKING_SOURCE_DIALOG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v1, v1, [J

    .line 54
    .line 55
    fill-array-data v1, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->TRACKING_SOURCE_NOTIFICATION:Ljava/lang/String;

    .line 66
    .line 67
    sget v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 68
    .line 69
    sput v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;-><init>()V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 8
        0x1f70bdb5228aeee5L    # 3.04835007136387E-157
        0x7c539f1daa9b863fL    # 7.648725251600207E290
        -0x1b9c3fd8392a5987L    # -3.907940435884585E175
        -0x528ce53b5c82bd6aL    # -9.3786085220523E-90
    .end array-data

    .line 80
    :array_1
    .array-data 8
        -0x20cf1c3f58377422L    # -3.455403081379767E150
        -0x42bb3b8a74b73f1cL
        0x20d62a7fd1b87ac6L
        0x58aaa9bc33a3a818L    # 1.3447382959280965E119
    .end array-data

    :array_2
    .array-data 8
        -0x1408695f6d532a33L    # -1.2407812473093245E212
        -0x5f0882c8b098c71dL    # -7.175778276976083E-150
    .end array-data

    :array_3
    .array-data 8
        -0x2039b3ac5fb206f7L    # -2.3356978614214795E153
        0x494e54fe6faae493L    # 1.352852736254037E45
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-object v0
.end method


# virtual methods
.method public cancelAvailabilityErrorNotifications(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->cancelAvailabilityErrorNotifications(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getApkVersion(Landroid/content/Context;)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getApkVersion(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getClientVersion(Landroid/content/Context;)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getClientVersion(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getErrorResolutionIntent(I)Landroid/content/Intent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    const/4 p1, 0x0

    if-eq p2, v2, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p2

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0x9

    new-array p3, p3, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_4

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    .line 9
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_5

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 12
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_6

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_7

    invoke-direct {p3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_8

    invoke-direct {p3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    .line 19
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p3

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p3, p1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 21
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_6
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance p2, Landroid/content/Intent;

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_9

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v2, [J

    fill-array-data v0, :array_a

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 25
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_b

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_c

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {p3, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p3, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    :cond_7
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_e

    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x80000

    .line 32
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p2

    nop

    :array_0
    .array-data 8
        0x1ff6eef23abcdcf2L
        -0x5709aff9a79abd90L
    .end array-data

    :array_1
    .array-data 8
        0x63859dac25b83101L    # 2.6104839874575506E171
        0x343f135d29ffdd87L    # 4.95063512282428E-57
        0x1bcd461f558cbf84L    # 9.246840033889834E-175
        -0x33156313d9097ad8L    # -3.421232596522194E62
    .end array-data

    :array_2
    .array-data 8
        -0x55d0b97a44493c27L
        -0x699169a0082bcebfL
        0x54233086ece8acdcL    # 2.0494324409430587E97
        0x5efd78cd8f0c002dL    # 3.768476434431969E149
        -0x458aa30c65fc2704L    # -4.314242085199355E-27
        0x3e930448cb71cf20L    # 2.83371444926465E-7
        0x2fb77a39502d8772L    # 7.920121227822381E-79
    .end array-data

    :array_3
    .array-data 8
        0x433578d60744d013L    # 6.043835151208467E15
        0x39e522dcbaa71ceeL    # 8.336753264330614E-30
        0x61c14c8f6dd926bdL    # 7.782699565712737E162
        0x1233ce41ddc51916L
        -0x26d41a17e85d7fd1L    # -3.601989741138266E121
        -0x58eb876460790af1L
        0x8b29fd345fa1bb4L
        -0x418c454793d07a1dL    # -7.349765511435995E-8
        0x6082eef046eb9e68L    # 8.123352694727369E156
    .end array-data

    :array_4
    .array-data 8
        -0x1abf6e6d93ce1df9L    # -5.371236846542563E179
        -0x737f2752c823525dL    # -1.88235059812063E-248
        -0x3f22eb86fed2fbdfL    # -29777.890696767838
        -0x777e095ae54a3bebL
        0x6b527aba66ba7e4aL    # 9.49259677015029E208
    .end array-data

    :array_5
    .array-data 8
        0x7645b1dcc23456a0L    # 5.337051516139165E261
        -0x418e1a8dfe30cc4fL    # -6.66688042126623E-8
    .end array-data

    :array_6
    .array-data 8
        0x16428d7530098355L
        -0x2cf04fc422e724ebL    # -1.2910087644887215E92
    .end array-data

    :array_7
    .array-data 8
        -0x2c32aded100cd94bL    # -4.892845672239112E95
        0x60bb88e7362f2891L    # 9.451033982730303E157
    .end array-data

    :array_8
    .array-data 8
        -0x53fa12f3c506b4b0L    # -1.2831285666680267E-96
        0x4289311a98c7d49bL    # 3.4623362890185757E12
    .end array-data

    :array_9
    .array-data 8
        0x7f03fa4fd968a6e6L    # 6.850036540783853E303
        -0x257a99ff7bd95590L    # -1.158805097609307E128
        0x6d347ec60a35d20dL    # 1.130444478275233E218
        -0x960f95a9e0dc055L
        -0x6fdc31f35cc3a16fL    # -6.378309030116496E-231
    .end array-data

    :array_a
    .array-data 8
        -0x1f1576e65397ac28L    # -7.286446711733394E158
        0xb4902f9e3fe42f8L
        -0x72d337cdd69237d0L    # -3.293174499975477E-245
    .end array-data

    :array_b
    .array-data 8
        0x65d4cd3125069ce3L    # 3.4526510924773066E182
        -0xee5f427615346f6L    # -6.625249163162104E236
    .end array-data

    :array_c
    .array-data 8
        -0x2e9e2e4835967859L    # -1.0817758205831937E84
        -0x5d677446e88c78e9L
        0x2cec8d308e5761ceL    # 2.737540836732705E-92
        -0xdd7f9d4d57a2920L    # -8.009650997417732E241
    .end array-data

    :array_d
    .array-data 8
        0x2415f7ec04f10cd7L    # 7.556162180286702E-135
        0x24250e67b652602eL    # 1.448482952177899E-134
        0x5fe4f06e9dcbbebaL    # 8.773394037467528E153
    .end array-data

    :array_e
    .array-data 8
        -0x4d4b109c2624fca7L    # -1.9879082511285434E-64
        0x415fc0c9fc6d53edL    # 8323879.9441728415
        0x7af6f72099eb5416L    # 2.1343656676011166E284
        0x510d567914491b76L    # 2.7828907387789834E82
    .end array-data
.end method

.method public getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorResolutionPendingIntent(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget p4, Lcom/google/android/gms/internal/common/zzd;->zza:I

    const/high16 v0, 0x8000000

    or-int/2addr p4, v0

    .line 3
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorString(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getErrorString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/HideFirstParty;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    return p1

    :cond_0
    return p2
.end method

.method public isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isPlayStorePossiblyUpdating(Landroid/content/Context;I)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isPlayStorePossiblyUpdating(Landroid/content/Context;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isUninstalledAppPossiblyUpdating(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isUserResolvableError(I)Z
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isUserRecoverableError(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public verifyGooglePlayServicesIsAvailable(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->ensurePlayServicesAvailable(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
