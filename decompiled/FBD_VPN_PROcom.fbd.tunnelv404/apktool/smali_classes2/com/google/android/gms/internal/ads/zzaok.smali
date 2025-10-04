.class public final Lcom/google/android/gms/internal/ads/zzaok;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v2, -0x80000000

    .line 7
    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    new-array v4, v4, [J

    .line 18
    .line 19
    fill-array-data v4, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-static {v3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v3, v1, [J

    .line 33
    .line 34
    const-wide v4, -0x7fe324e7ea0b27bbL    # -4.012897934309081E-308

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    aput-wide v4, v3, v0

    .line 40
    .line 41
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaok;->zza:Ljava/lang/String;

    .line 49
    .line 50
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzb:I

    .line 51
    .line 52
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzc:I

    .line 53
    .line 54
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzd:I

    .line 55
    .line 56
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array p2, v1, [J

    .line 59
    .line 60
    const-wide v1, -0x7de992b38735cf11L

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    aput-wide v1, p2, v0

    .line 66
    .line 67
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaok;->zze:Ljava/lang/String;

    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 8
        0x113eb50ae23f3361L
        -0x4897f955fd62de33L    # -8.618916161247606E-42
    .end array-data
.end method

.method private final zzd()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzd:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

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
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x19a9da6df8c04c19L    # 4.753436122278957E-185
        -0x4b6d8395f31eec31L    # -1.8847927190436084E-55
        -0x302d0771713a5d5dL    # -3.4323172974683726E76
        0x566047dc2a2e4872L    # 1.1948726480454079E108
        -0x5ff15d7b195c0263L
        0x61efe35716673209L    # 5.738463089143587E163
        -0x4c746a72091741c7L    # -2.1457110274676213E-60
        -0x6deff6e343c1fe35L
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaok;->zzd()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzd:I

    .line 5
    .line 6
    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaok;->zzd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaok;->zze:Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzd:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzb:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzc:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaok;->zzd:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaok;->zza:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaok;->zze:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method
