.class public final Lcom/google/android/gms/internal/ads/zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzd;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzn;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzc;

.field private static final zzg:Ljava/lang/String;

.field private static final zzh:Ljava/lang/String;

.field private static final zzi:Ljava/lang/String;

.field private static final zzj:Ljava/lang/String;


# instance fields
.field public final zzc:I

.field public final zzd:J

.field public final zze:I

.field private final zzk:[Lcom/google/android/gms/internal/ads/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzd;

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    new-array v2, v9, [Lcom/google/android/gms/internal/ads/zzc;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    move-object v0, v8

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzd;-><init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzc;JJI)V

    .line 17
    .line 18
    .line 19
    sput-object v8, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzc;

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzc;-><init>(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzc;->zzb(I)Lcom/google/android/gms/internal/ads/zzc;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->zzf:Lcom/google/android/gms/internal/ads/zzc;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    const/16 v1, 0x24

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->zzg:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->zzh:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v0, 0x3

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->zzi:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->zzj:Ljava/lang/String;

    .line 63
    .line 64
    sget-object v0, Lcom/google/android/gms/internal/ads/zza;->zza:Lcom/google/android/gms/internal/ads/zza;

    .line 65
    .line 66
    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->zzb:Lcom/google/android/gms/internal/ads/zzn;

    .line 67
    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzc;JJI)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzd;->zzd:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzd;->zzc:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzd;->zzk:[Lcom/google/android/gms/internal/ads/zzc;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzd;->zze:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/gms/internal/ads/zzd;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzd;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzd;->zzk:[Lcom/google/android/gms/internal/ads/zzc;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzd;->zzk:[Lcom/google/android/gms/internal/ads/zzc;

    .line 29
    .line 30
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    long-to-int v1, v0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzd;->zzk:[Lcom/google/android/gms/internal/ads/zzc;

    .line 8
    .line 9
    mul-int/lit16 v1, v1, 0x3c1

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v2, 0x6

    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    new-array v2, v2, [J

    .line 50
    .line 51
    fill-array-data v2, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0xfde7caf0c754333L    # 3.068306234827088E-232
        0x4ab1d5c44a7f74a9L    # 6.672875597964756E51
        -0x7e0932a92be406e3L
        -0x55c79f26a7bf4617L    # -2.6573284421824E-105
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x79a36a80ffd58a37L    # -5.039025420539467E-278
        0xbb0f333e34142c8L
        -0x3b22ea94bf4117dL
        -0x1cfe6eff8ae69132L    # -8.286872933455457E168
        0xb2eb16d6633e0fbL
        -0x2ce834ab4ce778d2L    # -1.9387906407913928E92
    .end array-data

    :array_2
    .array-data 8
        -0xdfb403c3cadd526L    # -1.7294396327019873E241
        -0x78ed7f2306f67aaeL    # -1.336087306681559E-274
    .end array-data
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zzc;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzd;->zzf:Lcom/google/android/gms/internal/ads/zzc;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzd;->zzk:[Lcom/google/android/gms/internal/ads/zzc;

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    :goto_0
    return-object p1
.end method

.method public final zzb(I)Z
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzd;->zza(I)Lcom/google/android/gms/internal/ads/zzc;

    .line 3
    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzc;->zzb:Lcom/google/android/gms/internal/ads/zzn;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1
.end method
