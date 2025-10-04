.class final Lcom/google/android/gms/internal/ads/zzbmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 17
    .line 18
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/String;

    .line 23
    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    instance-of v3, v2, Ljava/lang/Integer;

    .line 62
    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    check-cast v2, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    instance-of v3, v2, Ljava/lang/Long;

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    check-cast v2, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    instance-of v3, v2, Ljava/lang/Double;

    .line 92
    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    check-cast v2, Ljava/lang/Double;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    instance-of v3, v2, Ljava/lang/Float;

    .line 106
    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    check-cast v2, Ljava/lang/Float;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 120
    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    check-cast v2, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v3, :cond_0

    .line 136
    .line 137
    check-cast v2, Ljava/lang/String;

    .line 138
    .line 139
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_6
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :goto_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    const/4 v0, 0x7

    .line 150
    new-array v0, v0, [J

    .line 151
    .line 152
    fill-array-data v0, :array_1

    .line 153
    .line 154
    .line 155
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :array_0
    .array-data 8
        0x46657bec690dec3bL    # 1.361715097285053E31
        -0x642e6a9dcc2cafbdL    # -1.110832513641004E-174
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
    :array_1
    .array-data 8
        -0x7062e8f5ded8e04cL    # -1.8298145199951357E-233
        -0x531f268194b40942L    # -1.615550563623531E-92
        0x5774312545ba9727L    # 1.9423933675121585E113
        -0x2bcfbf369b6da075L    # -3.471635324568433E97
        -0x21a0bab5ff365b0L
        -0x38f311d040aeaf3eL    # -1.877691355727796E34
        0x343a9e243375a17L
    .end array-data
.end method
