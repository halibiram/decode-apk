.class public final Lcom/google/android/gms/internal/ads/zzckm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzckn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzckl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzckl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckm;->zzb:Lcom/google/android/gms/internal/ads/zzckl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckm;->zza:Lcom/google/android/gms/internal/ads/zzckn;

    return-void
.end method


# virtual methods
.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [J

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v0, v2, [J

    .line 31
    .line 32
    const-wide v2, -0x3598373b41b4134L    # -2.804968410185778E292

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    aput-wide v2, v0, v1

    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzckm;->zza:Lcom/google/android/gms/internal/ads/zzckn;

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzckt;->zzI()Lcom/google/android/gms/internal/ads/zzavi;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v0, v0, [J

    .line 58
    .line 59
    fill-array-data v0, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v0, v2, [J

    .line 75
    .line 76
    const-wide v2, -0x4fcc3f2e79fb7544L    # -1.7059193944164642E-76

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    aput-wide v2, v0, v1

    .line 82
    .line 83
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzavi;->zzc()Lcom/google/android/gms/internal/ads/zzave;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzckn;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v0, v0, [J

    .line 104
    .line 105
    fill-array-data v0, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v0, v2, [J

    .line 121
    .line 122
    const-wide v2, 0x73baac802b109f11L    # 2.9840206028207985E249

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    aput-wide v2, v0, v1

    .line 128
    .line 129
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckm;->zza:Lcom/google/android/gms/internal/ads/zzckn;

    .line 138
    .line 139
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzckn;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzckn;->zzi()Landroid/app/Activity;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v0, Landroid/view/View;

    .line 148
    .line 149
    invoke-interface {v4, v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzave;->zzf(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1

    .line 154
    nop

    .line 155
    :array_0
    .array-data 8
        -0x28d63a61ea980512L    # -7.747392838397043E111
        -0x7a37570f1427dfc6L    # -8.490745549302347E-281
        0x3a9afabae2ea0a68L    # 2.1793797198353368E-26
        -0x11a1c419970de332L
        0x58dd7201ec31042L
        0x6448b09fc78fa6e2L    # 1.221314457666254E175
    .end array-data

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
        -0xfb3f833feac2441L    # -8.703558208251533E232
        0x75dd43effa5ec19bL    # 5.624584621667113E259
        -0x79f2f0d3369a130cL    # -1.600880238696328E-279
        -0x28c1f95b4f6f003cL    # -1.8052409153710524E112
        -0x2531c447d741d09aL
    .end array-data

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
    .line 206
    .line 207
    :array_2
    .array-data 8
        0x411be6397bfe7644L    # 457102.3710878829
        -0x4485edad31947571L    # -3.450544356160376E-22
        -0x26f8b4edc187af1eL    # -7.518623070761471E120
        0x46e71a78a8a76e12L    # 3.7487415616059295E33
        -0x35da3e367f2db1eeL    # -1.5898931637219268E49
    .end array-data
.end method

.method public getViewSignals()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x5

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzckm;->zza:Lcom/google/android/gms/internal/ads/zzckn;

    .line 5
    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzckt;->zzI()Lcom/google/android/gms/internal/ads/zzavi;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    const-wide v3, 0x229ee9bafeb04b35L    # 6.337578380503532E-142

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    aput-wide v3, v1, v0

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzavi;->zzc()Lcom/google/android/gms/internal/ads/zzave;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzckn;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v2, v2, [J

    .line 61
    .line 62
    fill-array-data v2, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v1, v1, [J

    .line 78
    .line 79
    const-wide v3, 0x1870400d48ac5216L    # 5.698775390749655E-191

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    aput-wide v3, v1, v0

    .line 85
    .line 86
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckm;->zza:Lcom/google/android/gms/internal/ads/zzckn;

    .line 95
    .line 96
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzckn;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzckn;->zzi()Landroid/app/Activity;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v0, Landroid/view/View;

    .line 105
    .line 106
    invoke-interface {v4, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzave;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    return-object v0

    .line 111
    :array_0
    .array-data 8
        0xd172551e18ac878L
        -0xb9eedac3380870L
        -0x45b226793b09d5c9L    # -7.535126833765785E-28
        -0x216a1c874bd4f84eL    # -4.373157257299643E147
        -0x32562fff42d20af7L    # -1.3591873580968634E66
    .end array-data

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
    :array_1
    .array-data 8
        -0x4328e10336a42718L    # -1.283475809896862E-15
        -0x26903457a834fc1cL    # -6.5683218182666504E122
        0xc5b6a982515eb96L
        0x472811f85ce31a79L    # 6.248980144978678E34
        0x3cb842a8cc49e920L
    .end array-data
.end method

.method public notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzckk;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzckk;-><init>(Lcom/google/android/gms/internal/ads/zzckm;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        0x3f924758fa15bfb8L    # 0.01785029436490479
        0x41ef3852cb7dbd83L    # 4.1902792599293838E9
        0x7433049eb6309428L    # 5.446560135338346E251
        0x461916ca55111d29L    # 4.969393344512718E29
        -0x41d91247c3fca2caL    # -2.669239468435926E-9
    .end array-data
.end method

.method public final synthetic zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckm;->zzb:Lcom/google/android/gms/internal/ads/zzckl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzckl;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/zzckf;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckf;->zzaL()Lcom/google/android/gms/internal/ads/zzcjs;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcky;->zzj(Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        0xdea47b0dc87849dL
        0x599b2b7f10df043L
        0x751a3c28429627b2L    # 1.2309976489164873E256
        0x454f45c75932cc98L    # 7.56124420497335E25
        0x21a8b035d25fc7d4L    # 1.54462720728994E-146
        -0x372e316043b42637L    # -6.204877413468849E42
        0x433779de7fbc0a35L    # 6.607920997075509E15
        0x2100d4decfc29e6L
    .end array-data
.end method
