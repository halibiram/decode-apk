.class public final Lcom/google/android/gms/common/internal/zzd;
.super Lcom/google/android/gms/common/internal/zzac;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/common/internal/BaseGmsClient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzac;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/common/internal/zzd;->zzb:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/gms/common/internal/zzd;->zzb:I

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0x36e20cbbc0958496L    # 2.5293072764738987E-44
        -0x1741798cb646fa66L    # -3.565296565235066E196
        0x692d8cda703341daL    # 4.41781681230227E198
        -0x6520a8669203f116L
        -0x18668c35115a159cL    # -1.134030047937389E191
        0x49fd745436575859L    # 2.6904792755246167E48
        0x60674550ba3eeb11L    # 2.4960793713154433E156
        -0x5cfa865bafd4cb56L    # -5.63544873359838E-140
        0x5db5e79e9f888f30L    # 2.6711392860469325E143
        0x487644e859f3dd1aL    # 1.2124489621280842E41
    .end array-data
.end method

.method public final zzb(ILandroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/Exception;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    new-array v1, v1, [J

    .line 26
    .line 27
    fill-array-data v1, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        -0x26183a8abbe5bfd4L    # -1.2571338688340162E125
        0x549b5f236d72bf71L    # 3.741789189343804E99
        -0x751cc87b5373ef89L    # -3.199604581809843E-256
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 8
        -0x4f82fda24d4bdca7L    # -4.008459287334799E-75
        0x43bfb0817c519ab8L    # 2.28346738202186342E18
        0x336c9b674690c3e8L    # 5.563189864706321E-61
        0x39609922880f414cL    # 2.557355037407529E-32
        0x7805971cd52e4468L
        -0x3a8e60a700da850cL    # -3.408677904470352E26
        0x2eac943412728715L    # 7.355581713113587E-84
        -0x6cb5db97bf9b8a3dL    # -9.479283502708572E-216
        -0x6520667cd572be77L
        0x8dca5c031ddb314L
    .end array-data
.end method

.method public final zzc(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzk;)V
    .locals 3
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/internal/zzk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/zzk;)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzk;->zza:Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzd;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x6fe00ceaca4a0291L    # 7.787070573580386E230
        -0x1a05d695e09a3184L    # -1.7369391194737611E183
        -0x7c273ce5de8bcab6L    # -3.970196189220913E-290
        0x6cb1b3df585b38dL
        -0x452a18da400da354L    # -2.830886029505023E-25
        0x2af0b71310dd32bcL    # 7.462964130419319E-102
        -0x2d23e00a6419d2dfL    # -1.4322828463364076E91
        -0x119599446ed2b733L    # -7.634702177087531E223
        0x3ac1610f9d344e34L    # 1.123100890216031E-25
        0x42c7bca34d5f136bL    # 5.2197922094630836E13
        -0x3b363fade4c6248aL    # -2.4321370664008717E23
        0x1a4e39bfcae8ea7dL    # 5.690721278058983E-182
    .end array-data
.end method
