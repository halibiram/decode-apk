.class final Lcom/google/android/gms/common/images/zab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/images/ImageManager;

.field private final zab:Lcom/google/android/gms/common/images/zag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zag(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zag(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zac(Lcom/google/android/gms/common/images/zag;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/google/android/gms/common/images/zag;->zaa:Lcom/google/android/gms/common/images/zad;

    .line 55
    .line 56
    iget-object v2, v1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    if-eqz v2, :cond_6

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Long;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    sub-long/2addr v4, v6

    .line 84
    const-wide/32 v6, 0x36ee80

    .line 85
    .line 86
    .line 87
    cmp-long v0, v4, v6

    .line 88
    .line 89
    if-gez v0, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/common/images/zag;->zab(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v2, v1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 114
    .line 115
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-virtual {v0, v2, v4, v3, v4}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zah(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v2, v1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 132
    .line 133
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    .line 138
    .line 139
    if-nez v0, :cond_3

    .line 140
    .line 141
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 144
    .line 145
    iget-object v3, v1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 146
    .line 147
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 151
    .line 152
    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zah(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v3, v1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 157
    .line 158
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zab(Lcom/google/android/gms/common/images/zag;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 167
    .line 168
    instance-of v3, v2, Lcom/google/android/gms/common/images/zaf;

    .line 169
    .line 170
    if-nez v3, :cond_4

    .line 171
    .line 172
    iget-object v3, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 173
    .line 174
    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zag(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zad()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    monitor-enter v2

    .line 186
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zae()Ljava/util/HashSet;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    iget-object v4, v1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_5

    .line 197
    .line 198
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zae()Ljava/util/HashSet;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    iget-object v1, v1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 203
    .line 204
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zad()V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    goto :goto_1

    .line 213
    :cond_5
    :goto_0
    monitor-exit v2

    .line 214
    return-void

    .line 215
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    throw v0

    .line 217
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 218
    .line 219
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/common/images/zag;->zab(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :array_0
    .array-data 8
        -0x60f56b101d488c18L
        -0x4d38b5468256efc7L    # -4.42339493270651E-64
        -0x1df7b92bbb0b55a9L    # -1.7474987947467793E164
        -0x1571748c8114c56aL    # -1.9153289381791156E205
        -0x780bab701c71fae6L
        -0x7b26fc9f0732fbdbL    # -2.628290392247588E-285
        -0x414f7e0063eb9265L    # -9.839419450933827E-7
        -0x7e9632db9f8034aL    # -2.986526052101314E270
    .end array-data
.end method
