.class public final Lcom/google/android/gms/internal/appset/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/appset/AppSetIdClient;


# instance fields
.field private final zza:Lcom/google/android/gms/appset/AppSetIdClient;

.field private final zzb:Lcom/google/android/gms/appset/AppSetIdClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/appset/zzp;

    .line 9
    .line 10
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/appset/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/appset/zzr;->zza:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/appset/zzl;->zzc(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/appset/zzr;->zzb:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/appset/zzr;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/google/android/gms/common/api/ApiException;

    .line 19
    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const v1, 0xa7f9

    .line 29
    .line 30
    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    .line 33
    const v1, 0xa7fa

    .line 34
    .line 35
    .line 36
    if-eq v0, v1, :cond_4

    .line 37
    .line 38
    const v1, 0xa7fb

    .line 39
    .line 40
    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    const/16 v1, 0x11

    .line 44
    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const p0, 0xa7f8

    .line 49
    .line 50
    .line 51
    if-ne v0, p0, :cond_2

    .line 52
    .line 53
    new-instance p0, Ljava/lang/Exception;

    .line 54
    .line 55
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/16 v0, 0xb

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/16 p0, 0xf

    .line 80
    .line 81
    if-eq v0, p0, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    .line 85
    .line 86
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/16 v0, 0xa

    .line 89
    .line 90
    new-array v0, v0, [J

    .line 91
    .line 92
    fill-array-data v0, :array_1

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/appset/zzr;->zzb:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 111
    .line 112
    invoke-interface {p0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_5
    :goto_1
    return-object p1

    .line 117
    :array_0
    .array-data 8
        0x42333279f2b9e79aL    # 8.24512314179047E10
        -0x2547da32339ae307L    # -1.0461487017041838E129
        0x72b310faaf4938f7L    # 3.254643999991969E244
        0x3083d1d2315d84beL    # 5.477296742780926E-75
        0x4933016ca64b1d5bL    # 4.23838242595506E44
        0x4a580fc5f70b7d7cL    # 1.4066435569981067E50
        0x4e0b2552df4feca6L    # 9.148115081213831E67
        -0x57fd79cffa7f2700L    # -5.876658334846723E-116
        0x228906d80426e1e3L
        -0x389134808844c900L    # -1.2791706714981637E36
        0x15050bb96aeb5018L
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
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        0x53d189f637f80f44L    # 5.8535767690824E95
        0x1dedf741702b2a69L    # 1.626143507386934E-164
        0x2ea8a35dc3efa6dbL    # 6.341314671451481E-84
        0x646f9148424c71a9L    # 6.246083706837601E175
        -0x589a14874bd7fbd6L    # -6.79091848665866E-119
        0x2fc9d3a45e3a7373L    # 1.742530983898332E-78
        -0x16e52322a0afccc8L    # -2.0080183674665453E198
        -0x3a87c358cbb60596L    # -4.6881033654082376E26
        -0x3a06b812492f2629L    # -1.2518530483103077E29
        0x1450eaef5a644abaL    # 8.040531202518502E-211
    .end array-data
.end method


# virtual methods
.method public final getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/appset/AppSetIdInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/appset/zzr;->zza:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/appset/zzq;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/appset/zzq;-><init>(Lcom/google/android/gms/internal/appset/zzr;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
