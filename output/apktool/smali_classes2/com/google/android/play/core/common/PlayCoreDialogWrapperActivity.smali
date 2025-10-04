.class public Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private zza:Landroid/os/ResultReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->zza:Landroid/os/ResultReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->zza:Landroid/os/ResultReceiver;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 p3, -0x1

    .line 11
    if-ne p2, p3, :cond_0

    .line 12
    .line 13
    new-instance p2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-nez p2, :cond_1

    .line 24
    .line 25
    new-instance p2, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 p3, 0x2

    .line 31
    invoke-virtual {p1, p3, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v3, v2, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v5, v2, [J

    .line 47
    .line 48
    fill-array-data v5, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-object v8, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object v8, v1

    .line 64
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v2, v2, [J

    .line 76
    .line 77
    fill-array-data v2, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/os/ResultReceiver;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->zza:Landroid/os/ResultReceiver;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/4 v1, 0x4

    .line 108
    new-array v1, v1, [J

    .line 109
    .line 110
    fill-array-data v1, :array_3

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    move-object v1, v0

    .line 125
    check-cast v1, Landroid/app/PendingIntent;

    .line 126
    .line 127
    :cond_1
    if-eqz p1, :cond_3

    .line 128
    .line 129
    if-nez v1, :cond_2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v11, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v9, 0x0

    .line 140
    move-object v5, p0

    .line 141
    invoke-virtual/range {v5 .. v11}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :catch_0
    invoke-direct {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->zza()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->zza()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v1, v2, [J

    .line 162
    .line 163
    fill-array-data v1, :array_4

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Landroid/os/ResultReceiver;

    .line 178
    .line 179
    iput-object p1, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->zza:Landroid/os/ResultReceiver;

    .line 180
    .line 181
    return-void

    .line 182
    nop

    .line 183
    :array_0
    .array-data 8
        0x2243da48d6626eb7L    # 1.271894490612643E-143
        0x348e9ff3377528cbL    # 1.5612201290225872E-55
        -0x4849339fbc255bf0L    # -2.6171215281879604E-40
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
    :array_1
    .array-data 8
        0x1b6d2f9a855a3000L
        -0x24410b6bb9b6f5e5L    # -8.788896231792714E133
        -0x2148fdfed66674a5L    # -1.8387113137259785E148
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_2
    .array-data 8
        -0x2b8b582c74140dc6L    # -7.059205337428785E98
        -0x7f2349eea1dc1d0eL
        0x7a4c813e04efcad8L
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_3
    .array-data 8
        0xe026e3e1b1d9694L
        -0x2c21cb4115083363L    # -1.0081204054461607E96
        0x764808642b5432f1L    # 5.9122151831215165E261
        -0x58ea2fe06368be69L    # -2.111819477765163E-120
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_4
    .array-data 8
        0x53c809528aef7942L    # 4.011052534067617E95
        0x50a9f38ef3f18ef0L
        -0x19c6f11b376f09b3L    # -2.6618701220276316E184
    .end array-data
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    iget-object v1, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->zza:Landroid/os/ResultReceiver;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x379fae32732344e4L    # -4.442602093020033E40
        0x26aae0db1ee5c978L
        0x365dee020fe51176L    # 8.191497895176266E-47
    .end array-data
.end method
