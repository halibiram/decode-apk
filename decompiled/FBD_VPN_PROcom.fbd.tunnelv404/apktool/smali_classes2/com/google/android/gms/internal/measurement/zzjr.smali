.class final Lcom/google/android/gms/internal/measurement/zzjr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzjp;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzjp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzjq;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    :catch_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjr;->zzb:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x2a1f8cbeaa0ef278L    # -4.716068365810953E105
        0x11a445afc3ef27e9L
        0x51988e712b46accbL    # 1.1926245552289612E85
        0x2267f30f530c8d3L
        0x3baf530f25f6f7cL
        0x32b606db6763cf6fL    # 2.091568323918496E-64
    .end array-data
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzjp;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjr;->zzb:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        0x7e971398683546f1L    # 6.181678959647967E301
        0x1f14daaba7718c66L    # 5.933288308625901E-159
        0x60b1c44811a50b82L    # 6.098248502123533E157
        0x4ea14bd6c2d7fa77L    # 5.968715043996393E70
        0x88870ab7ac77496L
        -0x158028dd079d87c9L    # -9.982866766278789E204
        0xd63d18d705d9e07L
    .end array-data
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzjp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjp;

    return-object v0
.end method
