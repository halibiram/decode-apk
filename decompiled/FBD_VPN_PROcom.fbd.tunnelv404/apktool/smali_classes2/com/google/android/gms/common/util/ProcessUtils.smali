.class public Lcom/google/android/gms/common/util/ProcessUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zza:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static zzb:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMyProcessName()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/google/android/gms/common/util/ProcessUtils;->zza:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_3

    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {}, L딨딽땅딌딄딤땩들딟땲돝됐딞듌돸딝듻땥됴땨땫돛땅돵딄뒀뎡딝될뒐됐땬딌땅뎸땲땹뎻땠돴듨듼딞돴땲땄뎨돛듰딝뎡될딃땵도돨두땯뒋뒾뎻딤땀뒈돷듔듰둥땩뎨땣땪될땥돰뒛땝뎸땄땨땹땫된됴둠땋뒘딤되딄뒤땱듼땻땬둡땮득땦둘뒋딐땰뒷딃땃땤뒋뎽된돳든뎨땩됨땔땥디뒉땥되딜둬딞뒹땰든뎸땀돰;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zza:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    sget v1, Lcom/google/android/gms/common/util/ProcessUtils;->zzb:I

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sput v1, Lcom/google/android/gms/common/util/ProcessUtils;->zzb:I

    .line 28
    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    if-gtz v1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v5, v0, [J

    .line 41
    .line 42
    fill-array-data v5, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 80
    .line 81
    .line 82
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 83
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 84
    .line 85
    new-instance v4, Ljava/io/FileReader;

    .line 86
    .line 87
    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    .line 93
    :try_start_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 94
    .line 95
    .line 96
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :catch_0
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object v2, v3

    .line 113
    goto :goto_1

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    :try_start_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 116
    .line 117
    .line 118
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 119
    :catchall_2
    move-exception v0

    .line 120
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :catch_1
    move-object v3, v2

    .line 125
    goto :goto_0

    .line 126
    :goto_2
    sput-object v2, Lcom/google/android/gms/common/util/ProcessUtils;->zza:Ljava/lang/String;

    .line 127
    .line 128
    :cond_3
    :goto_3
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zza:Ljava/lang/String;

    .line 129
    .line 130
    return-object v0

    .line 131
    :array_0
    .array-data 8
        0x400f4b377fa81e66L    # 3.91172694904144
        -0x2ba805c6447ba499L    # -2.0486203326576027E98
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        0x6b5c96723d44adb9L    # 1.4685066928632321E209
        0x76ce8b5415526584L    # 1.9236041500564644E264
    .end array-data
.end method
