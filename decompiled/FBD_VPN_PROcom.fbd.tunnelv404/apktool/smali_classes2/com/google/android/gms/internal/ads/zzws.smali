.class public final Lcom/google/android/gms/internal/ads/zzws;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzws;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzn;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzd:Ljava/lang/String;


# instance fields
.field public final zzc:I

.field private final zze:Lcom/google/android/gms/internal/ads/zzgaa;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzws;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzcz;

    .line 5
    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzws;-><init>([Lcom/google/android/gms/internal/ads/zzcz;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzws;->zza:Lcom/google/android/gms/internal/ads/zzws;

    .line 10
    .line 11
    const/16 v0, 0x24

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzws;->zzd:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/zzws;->zzb:Lcom/google/android/gms/internal/ads/zzn;

    .line 22
    .line 23
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzcz;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzk([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 10
    .line 11
    array-length p1, p1

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzws;->zzc:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_2

    .line 23
    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    move v3, v2

    .line 27
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ge v3, v4, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 36
    .line 37
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcz;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 44
    .line 45
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcz;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/16 v6, 0x9

    .line 60
    .line 61
    new-array v6, v6, [J

    .line 62
    .line 63
    fill-array-data v6, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 v6, 0x3

    .line 79
    new-array v6, v6, [J

    .line 80
    .line 81
    fill-array-data v6, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v7, v0, [J

    .line 94
    .line 95
    const-wide v8, 0x51efe0bb4475fa52L    # 4.9542497652652826E86

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    aput-wide v8, v7, p1

    .line 101
    .line 102
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    add-int/2addr v3, v0

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    move v1, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    return-void

    .line 117
    :array_0
    .array-data 8
        0x6b81c4047697abe6L    # 7.300778133694059E209
        -0x2e2705db1b35c55bL    # -1.9408913854177302E86
        -0x34fd0ad9f32bc041L    # -2.2697230955886726E53
        0x2138131aa555d6eeL
        0x60c1ffaf78c66987L    # 1.2355792267188367E158
        0xaf312062a71430fL
        -0x6ba4816f8632c776L    # -1.3067339200055398E-210
        -0x190ba5311893da78L    # -8.856506298391705E187
        0x681c819372703395L    # 3.2514411125609664E193
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
    :array_1
    .array-data 8
        -0x6eaf9094606b7e00L    # -2.775103565495003E-225
        0x578a6393000b1d0fL    # 5.077041192121331E113
        -0x6ccbae1fa2fbe84aL
    .end array-data
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
    const-class v3, Lcom/google/android/gms/internal/ads/zzws;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzws;

    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzws;->zzc:I

    .line 20
    .line 21
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzws;->zzc:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zzf:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgaa;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zzf:I

    .line 12
    .line 13
    :cond_0
    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcz;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgaa;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzcz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcz;

    .line 8
    .line 9
    return-object p1
.end method
