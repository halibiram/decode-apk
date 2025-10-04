.class final Lcom/google/android/gms/internal/ads/zzait;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzair;


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzain;Lcom/google/android/gms/internal/ads/zzam;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzain;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 7
    .line 8
    const/16 v0, 0xc

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x3

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
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    .line 41
    .line 42
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    .line 43
    .line 44
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzfy;->zzl(II)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    rem-int v1, v0, p2

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v4, 0x7

    .line 62
    new-array v4, v4, [J

    .line 63
    .line 64
    fill-array-data v4, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    const/4 v4, 0x4

    .line 83
    new-array v4, v4, [J

    .line 84
    .line 85
    fill-array-data v4, :array_2

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v2, v2, [J

    .line 98
    .line 99
    fill-array-data v2, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    move v0, p2

    .line 113
    :cond_1
    if-nez v0, :cond_2

    .line 114
    .line 115
    const/4 v0, -0x1

    .line 116
    :cond_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzait;->zza:I

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzait;->zzb:I

    .line 123
    .line 124
    return-void

    .line 125
    :array_0
    .array-data 8
        0x17c9f77a2ffc08f8L    # 4.446412012271992E-194
        -0x79f4d17bec44d3d0L
        -0xc0bf13d7e3bfc82L
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
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
    :array_1
    .array-data 8
        0x7e113fb1136c1e4aL    # 1.8049055732837832E299
        -0x2dfa2b40e4b3e8dcL    # -1.3571354990052212E87
        0x1e53a8214aa2cd72L
        -0x35da94f8adb64644L    # -1.5651279834969222E49
        -0x3694dbcab5b66563L    # -4.8421943709148983E45
        -0x4176cdfb2cedd9feL    # -1.8772025492758913E-7
        0x2fed3d807bdc10caL    # 7.891364262825785E-78
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_2
    .array-data 8
        0x72dced71c0b0cbdeL    # 1.9751843913674552E245
        0x4df26322ec5080c9L    # 3.098245771345877E67
        0x19ec6e106fe9d1fcL    # 8.363509899873639E-184
        0x376b9804c3aaf291L    # 9.898798431070164E-42
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_3
    .array-data 8
        -0x58af28aaa8fc6a99L    # -2.608755423156143E-119
        0x6598f4d656f5d9e3L    # 2.5889237984096894E181
        -0x4e91f0ee111c698fL    # -1.3610172827076773E-70
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzait;->zza:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzait;->zzb:I

    return v0
.end method

.method public final zzc()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzait;->zza:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzait;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method
