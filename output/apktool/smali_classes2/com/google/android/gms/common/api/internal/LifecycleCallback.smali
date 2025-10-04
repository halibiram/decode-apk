.class public Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field protected final mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/LifecycleFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    return-void
.end method

.method private static getChimeraLifecycleFragmentImpl(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x9103976dc053a98L
        -0x94c1a63bcb2922aL    # -6.26530153464534E263
        -0x2796ded0e60c0f8L    # -4.612845199758854E296
        -0x7f7756b53782e77fL    # -4.38985664410797E-306
        0x1e0f9d0a3306bb36L
    .end array-data
.end method

.method public static getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getFragment(Landroid/content/ContextWrapper;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .locals 0
    .param p0    # Landroid/content/ContextWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .locals 2
    .param p0    # Lcom/google/android/gms/common/api/internal/LifecycleActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzb()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zzd;->zzc(Landroidx/fragment/app/FragmentActivity;)Lcom/google/android/gms/common/api/internal/zzd;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zzb;->zzc(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zzb;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 8
        -0xe11548fbf8980b5L    # -6.390808731406623E240
        -0x683d4ff8d8894f6fL    # -3.199974724663957E-194
        0x6887b93825ee7712L    # 3.463587818174292E195
        0x4351dc3b830611eaL    # 2.0108891053901736E16
        0x5e0826a76f41d4bL
        0x2b91bd6baa9fd946L    # 8.110603832213559E-99
        0x6ba22e09c3842b4dL    # 2.98838783022974E210
    .end array-data
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getLifecycleActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method
