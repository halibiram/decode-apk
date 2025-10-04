.class public abstract Lcom/google/android/gms/internal/measurement/zzjj;
.super Lcom/google/android/gms/internal/measurement/zzir;
.source "SourceFile"


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzjk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzjj;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzb:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmv;->zzx()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzc:Z

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzir;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzji;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzir;-><init>()V

    return-void
.end method

.method public static zzA(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzB(J)I
    .locals 7

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    cmp-long v0, p0, v3

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v5, -0x200000

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v5, -0x4000

    and-long/2addr p0, v5

    cmp-long v1, p0, v3

    if-eqz v1, :cond_4

    add-int/2addr v0, v2

    :cond_4
    return v0
.end method

.method public static zzC([B)Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjg;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzjg;-><init>([BII)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method

.method public static bridge synthetic zzF()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzc:Z

    return v0
.end method

.method public static zzt(Lcom/google/android/gms/internal/measurement/zzjb;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr v0, p0

    .line 10
    return v0
.end method

.method public static zzu(ILcom/google/android/gms/internal/measurement/zzlj;Lcom/google/android/gms/internal/measurement/zzlu;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/2addr p0, p0

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzil;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzil;->zzbu()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/zzlu;->zza(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzil;->zzbx(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/2addr p0, v0

    .line 25
    return p0
.end method

.method public static zzv(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzw(Lcom/google/android/gms/internal/measurement/zzkp;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr v0, p0

    .line 10
    return v0
.end method

.method public static zzx(Lcom/google/android/gms/internal/measurement/zzlj;Lcom/google/android/gms/internal/measurement/zzlu;)I
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzil;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzil;->zzbu()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzlu;->zza(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzil;->zzbx(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, v0

    .line 22
    return p0
.end method

.method public static zzy(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzna;->zzc(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmz; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static zzz(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zzD()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :array_0
    .array-data 8
        -0x69cf73da40563c97L    # -8.444501506705717E-202
        0x3c6d4e0c41adb738L    # 1.270896344769375E-17
        0x780c50d56a53b8bfL    # 1.8698824103256818E270
        0xfd6aca5272effd2L    # 2.282017995088796E-232
        0x50e8dcc8864cf762L    # 5.895932446117646E81
        0x71d1032577123822L    # 1.7724718448881333E240
    .end array-data
.end method

.method public final zzE(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzmz;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzb:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 4
    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    new-array v3, v3, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x5

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/16 v5, 0xc

    .line 38
    .line 39
    new-array v5, v5, [J

    .line 40
    .line 41
    fill-array-data v5, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    move-object v5, p2

    .line 52
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :try_start_0
    array-length p2, p1

    .line 62
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjj;->zzq(I)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzjj;->zzl([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p2

    .line 77
    :array_0
    .array-data 8
        0x5e5362b771c9ba7dL    # 2.4206802014527463E146
        0x5f698d3ab572c97aL    # 4.182030987653922E151
        -0x678fbc59ab2dafbbL    # -5.70370400506154E-191
        -0x7da70f9390d456c1L    # -2.383340097693922E-297
        0x1c454bd39dea058dL
        -0x2a50913ad66e7da0L    # -5.632097240552065E104
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 8
        -0x7bfe764d7d973da2L
        -0x60f9235491ee8f7dL    # -3.252268167126845E-159
        -0x28c76ce24a9e1e25L    # -1.4774953934072366E112
        -0x3d25ba7805d362bcL    # -1.1554374554072506E14
        -0x7ccd1fabf158b2d6L
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
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
    :array_2
    .array-data 8
        -0x7f28a203e987f040L
        0x60a8d0b6b8208001L    # 4.258798287720526E157
        -0x1b3191d18c9b058bL    # -3.8534974103026096E177
        0x497d82cae6490e6bL    # 1.0529844017094465E46
        0x76abc41137e0f8b6L    # 4.371573519680552E263
        0x6c3ec677a62c610L
        -0x452ae0cb5d277285L    # -2.729941191736134E-25
        0x200eb03caf87be16L    # 2.861059219198275E-154
        -0x799a3bc489bebc97L    # -7.674379242364355E-278
        -0x702a9aece36559abL
        -0x397532b9801e5aebL    # -6.795078019502649E31
        0x2f57af85a45355a6L
    .end array-data
.end method

.method public abstract zza()I
.end method

.method public abstract zzb(B)V
.end method

.method public abstract zzd(IZ)V
.end method

.method public abstract zze(ILcom/google/android/gms/internal/measurement/zzjb;)V
.end method

.method public abstract zzf(II)V
.end method

.method public abstract zzg(I)V
.end method

.method public abstract zzh(IJ)V
.end method

.method public abstract zzi(J)V
.end method

.method public abstract zzj(II)V
.end method

.method public abstract zzk(I)V
.end method

.method public abstract zzl([BII)V
.end method

.method public abstract zzm(ILjava/lang/String;)V
.end method

.method public abstract zzo(II)V
.end method

.method public abstract zzp(II)V
.end method

.method public abstract zzq(I)V
.end method

.method public abstract zzr(IJ)V
.end method

.method public abstract zzs(J)V
.end method
