.class public Lcom/google/android/gms/common/PackageVerificationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z

.field private final zzc:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/PackageVerificationResult;->zza:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/common/PackageVerificationResult;->zzb:Z

    iput-object p4, p0, Lcom/google/android/gms/common/PackageVerificationResult;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/PackageVerificationResult;->zzd:Ljava/lang/Throwable;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lcom/google/android/gms/common/PackageVerificationResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/PackageVerificationResult;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static zzd(Ljava/lang/String;I)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lcom/google/android/gms/common/PackageVerificationResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/PackageVerificationResult;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method


# virtual methods
.method public final zzb()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/PackageVerificationResult;->zzb:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/PackageVerificationResult;->zzc:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/PackageVerificationResult;->zzd:Ljava/lang/Throwable;

    .line 8
    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    new-instance v2, Ljava/lang/SecurityException;

    .line 35
    .line 36
    invoke-direct {v2, v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v2

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    return-void

    .line 47
    :array_0
    .array-data 8
        0xa2a88041c386f23L
        0x413478a315f77ea7L    # 1341603.08580772
        0x456ca3d60df16c58L    # 2.7698893835081968E26
        0x69b7d75947a3ef98L    # 1.8249263505575145E201
        0x2cc5a1598ae5adaeL    # 5.184815902466765E-93
    .end array-data
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/PackageVerificationResult;->zzb:Z

    return v0
.end method
