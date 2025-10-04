.class public final Lcom/google/android/gms/ads/internal/client/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/ads/internal/client/zzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzp;->zza:Lcom/google/android/gms/ads/internal/client/zzp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/internal/client/zzl;
    .locals 29

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzj()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v14

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzo()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v7, v1

    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object/from16 v1, p1

    .line 32
    .line 33
    move-object v7, v3

    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzq(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zze(Ljava/lang/Class;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzk()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzh()Lcom/google/android/gms/ads/search/SearchAdRequest;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzfh;

    .line 55
    .line 56
    invoke-direct {v4, v2}, Lcom/google/android/gms/ads/internal/client/zzfh;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    .line 57
    .line 58
    .line 59
    move-object v12, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v12, v3

    .line 62
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzq([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object/from16 v19, v1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move-object/from16 v19, v3

    .line 91
    .line 92
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzp()Z

    .line 93
    .line 94
    .line 95
    move-result v20

    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzej;->zzf()Lcom/google/android/gms/ads/internal/client/zzej;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzc()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzb()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getMaxAdContentRating()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzo;->zza:Lcom/google/android/gms/ads/internal/client/zzo;

    .line 129
    .line 130
    invoke-static {v1, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    move-object/from16 v23, v1

    .line 135
    .line 136
    check-cast v23, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzm()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v24

    .line 142
    new-instance v28, Lcom/google/android/gms/ads/internal/client/zzl;

    .line 143
    .line 144
    move-object/from16 v1, v28

    .line 145
    .line 146
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzf()Landroid/os/Bundle;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzd()Landroid/os/Bundle;

    .line 151
    .line 152
    .line 153
    move-result-object v16

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzn()Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v17

    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzl()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v18

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    .line 172
    .line 173
    .line 174
    move-result v22

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zza()I

    .line 176
    .line 177
    .line 178
    move-result v25

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzdx;->zzi()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v26

    .line 183
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getPublisherPrivacyPersonalizationState()Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    .line 188
    .line 189
    .line 190
    move-result v27

    .line 191
    const/16 v2, 0x8

    .line 192
    .line 193
    const-wide/16 v3, -0x1

    .line 194
    .line 195
    const/4 v6, -0x1

    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v13, 0x0

    .line 198
    const/16 v21, 0x0

    .line 199
    .line 200
    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/ads/internal/client/zzl;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfh;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    return-object v28
.end method
