.class public final Lcom/google/android/gms/internal/ads/zzegk;
.super Lcom/google/android/gms/internal/ads/zzegl;
.source "SourceFile"


# static fields
.field private static final zzb:Landroid/util/SparseArray;


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdab;

.field private final zze:Landroid/telephony/TelephonyManager;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzegc;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegk;->zzb:Landroid/util/SparseArray;

    .line 7
    .line 8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbec;->zzc:Lcom/google/android/gms/internal/ads/zzbec;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbec;->zzb:Lcom/google/android/gms/internal/ads/zzbec;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbec;->zzd:Lcom/google/android/gms/internal/ads/zzbec;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbec;->zze:Lcom/google/android/gms/internal/ads/zzbec;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbec;->zzf:Lcom/google/android/gms/internal/ads/zzbec;

    .line 113
    .line 114
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdab;Lcom/google/android/gms/internal/ads/zzegc;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p5}, Lcom/google/android/gms/internal/ads/zzegl;-><init>(Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/ads/internal/util/zzg;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzc:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzd:Lcom/google/android/gms/internal/ads/zzdab;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzf:Lcom/google/android/gms/internal/ads/zzegc;

    .line 9
    .line 10
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 p3, 0x2

    .line 13
    new-array p3, p3, [J

    .line 14
    .line 15
    fill-array-data p3, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegk;->zze:Landroid/telephony/TelephonyManager;

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x9b27936d2cb9996L    # -7.26370712887256E261
        -0x6ce89132857b6c16L
    .end array-data
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzegk;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbdt;
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v1, [J

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdt;->zza()Lcom/google/android/gms/internal/ads/zzbdm;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v4, -0x2

    .line 35
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v2, -0x1

    .line 45
    if-ne v0, v2, :cond_0

    .line 46
    .line 47
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzg:I

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    const/4 v2, 0x1

    .line 51
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzg:I

    .line 52
    .line 53
    const/4 p0, 0x3

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    if-eq v0, v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdm;->zzb(I)Lcom/google/android/gms/internal/ads/zzbdm;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzb(I)Lcom/google/android/gms/internal/ads/zzbdm;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzb(I)Lcom/google/android/gms/internal/ads/zzbdm;

    .line 67
    .line 68
    .line 69
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :pswitch_0
    const/4 v1, 0x5

    .line 75
    goto :goto_1

    .line 76
    :pswitch_1
    const/4 v1, 0x3

    .line 77
    :goto_1
    :pswitch_2
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(I)Lcom/google/android/gms/internal/ads/zzbdm;

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdt;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x3e490140a3017d90L    # -3.857938849941778E8
        -0x2963a77dd435051fL    # -1.6642792157466399E109
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
    :array_1
    .array-data 8
        -0x2c299a352adca66L
        0x45a25463f99bc43dL    # 2.836376032188541E27
    .end array-data
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzegk;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbec;
    .locals 2

    .line 1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfhv;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfhv;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_2

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, -0x1

    .line 54
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegk;->zzb:Landroid/util/SparseArray;

    .line 59
    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbec;->zza:Lcom/google/android/gms/internal/ads/zzbec;

    .line 61
    .line 62
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbec;

    .line 67
    .line 68
    return-object p0

    .line 69
    :array_0
    .array-data 8
        0x36e22daa3758a73dL    # 2.5473333936273355E-44
        -0x76c190b00e84ad33L
    .end array-data

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
    .line 81
    :array_1
    .array-data 8
        -0x3c9c3653c01888aaL    # -4.4558129609554608E16
        -0x2dd3cf5ba807dd2aL    # -7.009772928106775E87
    .end array-data

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
    :array_2
    .array-data 8
        0x5f9a0dd1fc6d45beL    # 3.411394842003214E152
        -0x78a6b06c3e420a7fL    # -2.924224068581482E-273
        0x3f0443d3f44a630aL    # 3.865233023709308E-5
        -0x65dfed5589130102L
    .end array-data
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzegk;)Lcom/google/android/gms/internal/ads/zzegc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzf:Lcom/google/android/gms/internal/ads/zzegc;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzegk;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/internal/ads/zzbec;)[B
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdy;->zzg()Lcom/google/android/gms/internal/ads/zzbdx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzc:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {p2, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p2, 0x0

    .line 40
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzegk;->zzg(Z)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zzi(I)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzab;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzc:Landroid/content/Context;

    .line 52
    .line 53
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzegk;->zze:Landroid/telephony/TelephonyManager;

    .line 54
    .line 55
    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzab;->zzi(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zzj(I)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzf:Lcom/google/android/gms/internal/ads/zzegc;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzegc;->zze()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbdx;->zzf(J)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzf:Lcom/google/android/gms/internal/ads/zzegc;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzegc;->zzb()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbdx;->zze(J)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzf:Lcom/google/android/gms/internal/ads/zzegc;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzegc;->zza()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zzb(I)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbdx;->zzc(Lcom/google/android/gms/internal/ads/zzbec;)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbdx;->zzd(Lcom/google/android/gms/internal/ads/zzbdt;)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 93
    .line 94
    .line 95
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzg:I

    .line 96
    .line 97
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zzk(I)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegk;->zzg(Z)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zzl(I)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzf:Lcom/google/android/gms/internal/ads/zzegc;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegc;->zzd()J

    .line 110
    .line 111
    .line 112
    move-result-wide p1

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zzh(J)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide p1

    .line 124
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zzg(J)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzc:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    const/4 p2, 0x2

    .line 136
    new-array p2, p2, [J

    .line 137
    .line 138
    fill-array-data p2, :array_1

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-eqz p0, :cond_1

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegk;->zzg(Z)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzm(I)Lcom/google/android/gms/internal/ads/zzbdx;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdy;

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxt;->zzax()[B

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :array_0
    .array-data 8
        -0x72105caf89c0007dL
        -0x2f754806a3adb599L    # -9.900186091389772E79
        0x654155d05a307a0fL    # 5.619744192812169E179
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
    :array_1
    .array-data 8
        0x4755b9c3b6dcf897L    # 4.512239435640265E35
        -0x42a16269c15f0069L    # -4.350734713132839E-13
    .end array-data
.end method

.method private static final zzg(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zzd(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzd:Lcom/google/android/gms/internal/ads/zzdab;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdab;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzegj;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzegj;-><init>(Lcom/google/android/gms/internal/ads/zzegk;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgej;Ljava/util/concurrent/Executor;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
