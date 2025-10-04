.class public Lcom/google/android/gms/internal/ads/zzhgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;
.implements Lcom/google/android/gms/internal/ads/zzarn;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzarm;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhgv;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/ads/zzarj;

.field protected zzd:Lcom/google/android/gms/internal/ads/zzhgp;

.field zze:Lcom/google/android/gms/internal/ads/zzarm;

.field zzf:J

.field zzg:J

.field private final zzh:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgn;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgn;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgo;->zza:Lcom/google/android/gms/internal/ads/zzarm;

    .line 22
    .line 23
    const-class v0, Lcom/google/android/gms/internal/ads/zzhgo;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhgv;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgo;->zzb:Lcom/google/android/gms/internal/ads/zzhgv;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x6578acd0bdcbd35L    # -1.083885882570582E278
        0x3865855e3f89d963L    # 5.059555582169842E-37
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zze:Lcom/google/android/gms/internal/ads/zzarm;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzf:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzg:J

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzh:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zze:Lcom/google/android/gms/internal/ads/zzarm;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgo;->zza:Lcom/google/android/gms/internal/ads/zzarm;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgo;->zzd()Lcom/google/android/gms/internal/ads/zzarm;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zze:Lcom/google/android/gms/internal/ads/zzarm;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return v1

    .line 20
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgo;->zza:Lcom/google/android/gms/internal/ads/zzarm;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zze:Lcom/google/android/gms/internal/ads/zzarm;

    .line 23
    .line 24
    return v2
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgo;->zzd()Lcom/google/android/gms/internal/ads/zzarm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v3, v2, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzh:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge v1, v3, :cond_1

    .line 43
    .line 44
    if-lez v1, :cond_0

    .line 45
    .line 46
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v4, v2, [J

    .line 49
    .line 50
    fill-array-data v4, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzh:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/google/android/gms/internal/ads/zzarm;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v2, v2, [J

    .line 84
    .line 85
    fill-array-data v2, :array_2

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        -0x2987686637f50e27L    # -3.6097378780345525E108
        -0x1ac794cce661975fL    # -3.958045975414075E179
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 8
        0x7c5dffcfc936a6ddL    # 1.169409003348863E291
        -0xc97fb523991afeL    # -6.17220291390446E304
    .end array-data

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
    :array_2
    .array-data 8
        0x1347779e1832493cL    # 8.509331249136279E-216
        -0x401965009f2f751fL    # -0.7064206019316225
    .end array-data
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzarm;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zze:Lcom/google/android/gms/internal/ads/zzarm;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgo;->zza:Lcom/google/android/gms/internal/ads/zzarm;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zze:Lcom/google/android/gms/internal/ads/zzarm;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzhgp;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzf:J

    .line 19
    .line 20
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzg:J

    .line 21
    .line 22
    cmp-long v5, v1, v3

    .line 23
    .line 24
    if-gez v5, :cond_2

    .line 25
    .line 26
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzhgp;

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzf:J

    .line 30
    .line 31
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhgp;->zze(J)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzc:Lcom/google/android/gms/internal/ads/zzarj;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzhgp;

    .line 37
    .line 38
    invoke-interface {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzarj;->zzb(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzarn;)Lcom/google/android/gms/internal/ads/zzarm;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzhgp;

    .line 43
    .line 44
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzf:J

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :catch_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgo;->zza:Lcom/google/android/gms/internal/ads/zzarm;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zze:Lcom/google/android/gms/internal/ads/zzarm;

    .line 70
    .line 71
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public final zze()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzhgp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zze:Lcom/google/android/gms/internal/ads/zzarm;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgo;->zza:Lcom/google/android/gms/internal/ads/zzarm;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzh:Ljava/util/List;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhgu;

    .line 14
    .line 15
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzhgu;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzh:Ljava/util/List;

    .line 20
    .line 21
    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhgp;JLcom/google/android/gms/internal/ads/zzarj;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzhgp;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzf:J

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    add-long/2addr v0, p2

    .line 14
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhgp;->zze(J)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzg:J

    .line 22
    .line 23
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzc:Lcom/google/android/gms/internal/ads/zzarj;

    .line 24
    .line 25
    return-void
.end method
