.class final Lcom/google/android/gms/internal/ads/zzfwm;
.super Lcom/google/android/gms/internal/ads/zzfwl;
.source "SourceFile"


# instance fields
.field private final zza:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwl;-><init>()V

    iput-char p1, p0, Lcom/google/android/gms/internal/ads/zzfwm;->zza:C

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/16 v1, 0x5c

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-char v1, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/16 v3, 0x75

    .line 11
    .line 12
    aput-char v3, v0, v1

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    aput-char v2, v0, v3

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    aput-char v2, v0, v4

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    aput-char v2, v0, v5

    .line 22
    .line 23
    const/4 v6, 0x5

    .line 24
    aput-char v2, v0, v6

    .line 25
    .line 26
    iget-char v7, p0, Lcom/google/android/gms/internal/ads/zzfwm;->zza:C

    .line 27
    .line 28
    :goto_0
    if-ge v2, v5, :cond_0

    .line 29
    .line 30
    rsub-int/lit8 v8, v2, 0x5

    .line 31
    .line 32
    and-int/lit8 v9, v7, 0xf

    .line 33
    .line 34
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v11, v4, [J

    .line 37
    .line 38
    fill-array-data v11, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    aput-char v9, v0, v8

    .line 53
    .line 54
    shr-int/2addr v7, v5

    .line 55
    add-int/2addr v2, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v4, v4, [J

    .line 69
    .line 70
    fill-array-data v4, :array_1

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v2, v3, [J

    .line 89
    .line 90
    fill-array-data v2, :array_2

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0

    .line 101
    :array_0
    .array-data 8
        0x18843e4cd5082d37L
        0x4af91720d786df86L    # 1.501986001710461E53
        -0x1e50f7fbad4d2824L    # -3.4901803863741386E162
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
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
    :array_1
    .array-data 8
        -0x74f328ba5fe2291aL
        -0x252096c31400969dL    # -5.443285361176063E129
        -0x49eacef8ddb7cd28L    # -3.624955758447326E-48
    .end array-data

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
    .line 130
    .line 131
    .line 132
    .line 133
    :array_2
    .array-data 8
        0x57079f99fa81e8d9L    # 1.7753811995438238E111
        -0x50fcdc6bc58c0c24L    # -3.1526081442187997E-82
    .end array-data
.end method

.method public final zzb(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/internal/ads/zzfwm;->zza:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
