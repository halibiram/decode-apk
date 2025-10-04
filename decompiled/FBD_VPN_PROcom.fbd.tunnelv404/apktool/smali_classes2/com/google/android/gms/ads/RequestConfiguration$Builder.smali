.class public Lcom/google/android/gms/ads/RequestConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/RequestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Ljava/util/List;

.field private zze:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zza:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzb:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzc:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzd:Ljava/util/List;

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->DEFAULT:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zze:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v7, Lcom/google/android/gms/ads/RequestConfiguration;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zza:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzb:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzc:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzd:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zze:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v7

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/RequestConfiguration;-><init>(IILjava/lang/String;Ljava/util/List;Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;Lcom/google/android/gms/ads/zzh;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    const-wide v3, 0x1f5486b781500d50L    # 9.343974224674034E-158

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-wide v3, v2, v5

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
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v2, v0, [J

    .line 34
    .line 35
    fill-array-data v2, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v2, v0, [J

    .line 54
    .line 55
    fill-array-data v2, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v2, v0, [J

    .line 74
    .line 75
    fill-array-data v2, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v0, v0, [J

    .line 94
    .line 95
    fill-array-data v0, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    const/4 v1, 0x7

    .line 115
    new-array v1, v1, [J

    .line 116
    .line 117
    fill-array-data v1, :array_4

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzc:Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzc:Ljava/lang/String;

    .line 132
    .line 133
    :goto_2
    return-object p0

    .line 134
    nop

    .line 135
    :array_0
    .array-data 8
        -0x36dc07aeeb87888eL    # -2.2267279788246858E44
        0x568566376191b02fL    # 6.282140788383028E108
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_1
    .array-data 8
        -0x11ec0c908ca23a12L    # -1.8029335916473015E222
        -0x15df8ee92d6f92f8L    # -1.6109247337678723E203
    .end array-data

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
    :array_2
    .array-data 8
        -0x55890ee94a0df6b7L
        0x571c1435bfa5b6e1L    # 4.220454293635551E111
    .end array-data

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
    :array_3
    .array-data 8
        0x7e81425d88bf8f6dL    # 2.311677988944888E301
        -0x6be18227310920d0L    # -9.057391189354224E-212
    .end array-data

    .line 172
    .line 173
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
    :array_4
    .array-data 8
        0x54ba817acdbc71edL    # 1.4493696675515014E100
        -0x2a39ddfef256e792L    # -1.586300365630218E105
        0x783a3b23bcf64f21L    # 1.3857701279661116E271
        -0x7a0f72201b060dadL    # -4.559867007285156E-280
        0x497c746e42ad50e5L    # 1.015301456666014E46
        -0x7e6b9ede8ea8afe4L    # -4.754842007104466E-301
        -0x1fab72781b0e50faL    # -1.1022749200328594E156
    .end array-data
.end method

.method public setPublisherPrivacyPersonalizationState(Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zze:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    return-object p0
.end method

.method public setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v2, 0x9

    .line 18
    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zza:I

    .line 46
    .line 47
    :goto_1
    return-object p0

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x8f321e713425737L
        -0x1c6d873c3f4c1c35L    # -4.4615450348732525E171
        0x1ddfc078f2dd20d0L
        0x1c4cc6fa00cc2dddL
        0x206387cfa218b53bL    # 1.165321704075143E-152
        0x680bc76dde2b5621L    # 1.5842516259966062E193
        -0x476f305721adce97L    # -3.161829748402871E-36
        -0x2feeffed116dba2cL    # -4.921247417101695E77
        0x2e73674cdb1305a7L    # 6.242544906090551E-85
    .end array-data
.end method

.method public setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzb:I

    .line 46
    .line 47
    :goto_1
    return-object p0

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x7a4cb9b8007a7561L    # 1.3035659947745784E281
        0x71076c2576583867L    # 2.9789202151506196E236
        -0x496c484a063e68f0L    # -8.634459779747202E-46
        -0x382aea5db14422bbL    # -1.1210447253522451E38
        -0x2feefea04860aa99L    # -4.922717369173299E77
        -0x4930b77d2ab31d9cL
        0x18ed19234c0a09abL
        -0x1636612a4183f099L    # -3.922237184352498E201
    .end array-data
.end method

.method public setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/ads/RequestConfiguration$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzd:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->zzd:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object p0
.end method
