.class public final Lcom/google/android/gms/internal/ads/zzgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbx;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzgc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:[B

.field public final zzc:I

.field public final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/internal/ads/zzgb;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzc:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzd:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgc;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzd:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

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
    const-class v3, Lcom/google/android/gms/internal/ads/zzgc;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgc;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zza:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgc;->zza:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 30
    .line 31
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzc:I

    .line 40
    .line 41
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzgc;->zzc:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzd:I

    .line 46
    .line 47
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgc;->zzd:I

    .line 48
    .line 49
    if-ne v2, p1, :cond_2

    .line 50
    .line 51
    return v0

    .line 52
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x20f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzc:I

    .line 21
    .line 22
    add-int/2addr v1, v0

    .line 23
    mul-int/lit8 v1, v1, 0x1f

    .line 24
    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzd:I

    .line 26
    .line 27
    add-int/2addr v1, v0

    .line 28
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzd:I

    .line 5
    .line 6
    if-eq v3, v2, :cond_5

    .line 7
    .line 8
    const/16 v4, 0x17

    .line 9
    .line 10
    const/4 v5, 0x4

    .line 11
    const/16 v6, 0x10

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-eq v3, v4, :cond_3

    .line 15
    .line 16
    const/16 v4, 0x43

    .line 17
    .line 18
    if-eq v3, v4, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    array-length v8, v3

    .line 25
    add-int/2addr v8, v8

    .line 26
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    array-length v8, v3

    .line 30
    if-ge v7, v8, :cond_0

    .line 31
    .line 32
    aget-byte v8, v3, v7

    .line 33
    .line 34
    shr-int/2addr v8, v5

    .line 35
    and-int/lit8 v8, v8, 0xf

    .line 36
    .line 37
    invoke-static {v8, v6}, Ljava/lang/Character;->forDigit(II)C

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    aget-byte v8, v3, v7

    .line 45
    .line 46
    and-int/lit8 v8, v8, 0xf

    .line 47
    .line 48
    invoke-static {v8, v6}, Ljava/lang/Character;->forDigit(II)C

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    add-int/2addr v7, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 63
    .line 64
    sget v4, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 65
    .line 66
    array-length v4, v3

    .line 67
    if-ne v4, v5, :cond_2

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v4, 0x0

    .line 72
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 73
    .line 74
    .line 75
    aget-byte v4, v3, v7

    .line 76
    .line 77
    shl-int/lit8 v4, v4, 0x18

    .line 78
    .line 79
    aget-byte v2, v3, v2

    .line 80
    .line 81
    shl-int/2addr v2, v6

    .line 82
    aget-byte v5, v3, v0

    .line 83
    .line 84
    shl-int/lit8 v5, v5, 0x8

    .line 85
    .line 86
    or-int/2addr v2, v4

    .line 87
    or-int/2addr v2, v5

    .line 88
    aget-byte v3, v3, v1

    .line 89
    .line 90
    or-int/2addr v2, v3

    .line 91
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 97
    .line 98
    sget v4, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 99
    .line 100
    array-length v4, v3

    .line 101
    if-ne v4, v5, :cond_4

    .line 102
    .line 103
    const/4 v4, 0x1

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    const/4 v4, 0x0

    .line 106
    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 107
    .line 108
    .line 109
    aget-byte v4, v3, v7

    .line 110
    .line 111
    shl-int/lit8 v4, v4, 0x18

    .line 112
    .line 113
    aget-byte v2, v3, v2

    .line 114
    .line 115
    and-int/lit16 v2, v2, 0xff

    .line 116
    .line 117
    aget-byte v5, v3, v0

    .line 118
    .line 119
    and-int/lit16 v5, v5, 0xff

    .line 120
    .line 121
    aget-byte v3, v3, v1

    .line 122
    .line 123
    and-int/lit16 v3, v3, 0xff

    .line 124
    .line 125
    shl-int/2addr v2, v6

    .line 126
    or-int/2addr v2, v4

    .line 127
    shl-int/lit8 v4, v5, 0x8

    .line 128
    .line 129
    or-int/2addr v2, v4

    .line 130
    or-int/2addr v2, v3

    .line 131
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 141
    .line 142
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzz([B)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgc;->zza:Ljava/lang/String;

    .line 147
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    new-array v1, v1, [J

    .line 156
    .line 157
    fill-array-data v1, :array_0

    .line 158
    .line 159
    .line 160
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v0, v0, [J

    .line 176
    .line 177
    fill-array-data v0, :array_1

    .line 178
    .line 179
    .line 180
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-static {v1, v4, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0

    .line 188
    nop

    .line 189
    :array_0
    .array-data 8
        -0x37e70fa942579a9aL    # -2.1215604773344662E39
        -0x2020f5cf3a024315L    # -6.5027463550849466E153
        0x2d9235816e6227afL    # 3.5755885364222986E-89
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_1
    .array-data 8
        -0x1960927eb093f2e6L    # -2.1366367198215424E186
        0x79ec7e48ca6163cdL    # 2.0203598115537403E279
    .end array-data
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzc:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzd:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbt;)V
    .locals 0

    return-void
.end method
