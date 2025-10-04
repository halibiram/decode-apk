.class public final Lcom/v2ray/ang/receiver/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J(\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/v2ray/ang/receiver/WidgetProvider;",
        "Landroid/appwidget/AppWidgetProvider;",
        "<init>",
        "()V",
        "onUpdate",
        "",
        "context",
        "Landroid/content/Context;",
        "appWidgetManager",
        "Landroid/appwidget/AppWidgetManager;",
        "appWidgetIds",
        "",
        "updateWidgetBackground",
        "isRunning",
        "",
        "onReceive",
        "intent",
        "Landroid/content/Intent;",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final updateWidgetBackground(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Landroid/widget/RemoteViews;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const v4, 0x7f0d00b7

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Landroid/content/Intent;

    .line 16
    .line 17
    const-class v4, Lcom/v2ray/ang/receiver/WidgetProvider;

    .line 18
    .line 19
    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v5, 0x6

    .line 25
    new-array v5, v5, [J

    .line 26
    .line 27
    fill-array-data v5, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v5, 0x17

    .line 43
    .line 44
    if-lt v4, v5, :cond_0

    .line 45
    .line 46
    const/high16 v4, 0xc000000

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/high16 v4, 0x8000000

    .line 50
    .line 51
    :goto_0
    const v5, 0x7f0a022b

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, v5, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 59
    .line 60
    .line 61
    const p1, 0x7f0a0221

    .line 62
    .line 63
    .line 64
    const v3, 0x7f0a01de

    .line 65
    .line 66
    .line 67
    if-eqz p4, :cond_1

    .line 68
    .line 69
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v1, v1, [J

    .line 72
    .line 73
    fill-array-data v1, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {p4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    const v1, 0x7f08016f

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3, p4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v0, v0, [J

    .line 92
    .line 93
    fill-array-data v0, :array_2

    .line 94
    .line 95
    .line 96
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    const v0, 0x7f080157

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1, p4, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v1, v1, [J

    .line 113
    .line 114
    fill-array-data v1, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {p4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    const v1, 0x7f08014b

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3, p4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v0, v0, [J

    .line 133
    .line 134
    fill-array-data v0, :array_4

    .line 135
    .line 136
    .line 137
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p4

    .line 144
    const v0, 0x7f080158

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p1, p4, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    :goto_1
    array-length p1, p3

    .line 151
    const/4 p4, 0x0

    .line 152
    :goto_2
    if-ge p4, p1, :cond_2

    .line 153
    .line 154
    aget v0, p3, p4

    .line 155
    .line 156
    invoke-virtual {p2, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 157
    .line 158
    .line 159
    add-int/lit8 p4, p4, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    return-void

    .line 163
    :array_0
    .array-data 8
        -0x60b25c59b8397c7aL    # -6.746205754739774E-158
        -0x3dec0cbf9d71231L    # -8.40381675648905E289
        0x467a119502e32b2L
        -0x2554db18235537b0L    # -5.879827963810107E128
        -0x4a324a346bf392ceL    # -1.5881641466428632E-49
        0x7781f8d8f66e2eeeL    # 4.636006504523108E267
    .end array-data

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
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_1
    .array-data 8
        0x7a5cff71de7410fdL    # 2.6318521351033053E281
        0x65f6ba0b5ee0e7ffL    # 1.508879117914478E183
        0x74c0bcacb44ff77eL    # 2.454167698918401E254
    .end array-data

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
        0x535a90b885f73460L    # 3.4633282306741725E93
        -0x601c2f1283b26b28L
        -0x63b674d6907f6842L
        0x759e4019278a935dL    # 3.6336842504926967E258
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
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
    :array_3
    .array-data 8
        -0x75f4c154dd474548L
        0x18c3e4c0e71d973bL    # 2.232468958334939E-189
        -0x6142b9d23d24e1c4L
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_4
    .array-data 8
        0x655f8b013f3a4a35L    # 2.0451268573682117E180
        0x2a655b3ce8b67d85L    # 1.862342361945696E-104
        -0x197ebde2a9ae3498L    # -5.866571299546612E185
        -0xdaa5a37e517b82cL    # -5.773856265089546E242
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v3, v2, [J

    .line 23
    .line 24
    fill-array-data v3, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    new-array v3, v3, [J

    .line 44
    .line 45
    fill-array-data v3, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    sget-object p2, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/v2ray/ang/service/V2RayServiceManager;->isRunning()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-static {p1}, Lcom/v2ray/ang/service/V2RayServiceManager;->stopVService(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_0
    invoke-virtual {p2, p1}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVServiceFromToggle(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v3, 0x5

    .line 86
    new-array v3, v3, [J

    .line 87
    .line 88
    fill-array-data v3, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v2, v2, [J

    .line 117
    .line 118
    fill-array-data v2, :array_4

    .line 119
    .line 120
    .line 121
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const/4 v3, 0x0

    .line 129
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    const/16 v2, 0xb

    .line 134
    .line 135
    const-class v4, Lcom/v2ray/ang/receiver/WidgetProvider;

    .line 136
    .line 137
    if-eq p2, v2, :cond_3

    .line 138
    .line 139
    const/16 v2, 0xc

    .line 140
    .line 141
    if-eq p2, v2, :cond_2

    .line 142
    .line 143
    const/16 v2, 0x1f

    .line 144
    .line 145
    if-eq p2, v2, :cond_3

    .line 146
    .line 147
    const/16 v2, 0x20

    .line 148
    .line 149
    if-eq p2, v2, :cond_2

    .line 150
    .line 151
    const/16 v2, 0x29

    .line 152
    .line 153
    if-eq p2, v2, :cond_2

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    new-instance p2, Landroid/content/ComponentName;

    .line 157
    .line 158
    invoke-direct {p2, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v0, v0, [J

    .line 168
    .line 169
    fill-array-data v0, :array_5

    .line 170
    .line 171
    .line 172
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/v2ray/ang/receiver/WidgetProvider;->updateWidgetBackground(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_3
    new-instance p2, Landroid/content/ComponentName;

    .line 187
    .line 188
    invoke-direct {p2, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v0, v0, [J

    .line 198
    .line 199
    fill-array-data v0, :array_6

    .line 200
    .line 201
    .line 202
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/v2ray/ang/receiver/WidgetProvider;->updateWidgetBackground(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    .line 214
    .line 215
    .line 216
    :cond_4
    :goto_0
    return-void

    .line 217
    :array_0
    .array-data 8
        0x50a181e5713d15e9L    # 2.594840657950275E80
        0x129a0ab802d5692eL    # 4.61078993710032E-219
    .end array-data

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
    :array_1
    .array-data 8
        0x36dba29c36853b56L    # 1.9362578942671575E-44
        -0x1c10a5ab969eedccL    # -2.4232853457131362E173
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_2
    .array-data 8
        0x7f97a2eb5d079e83L    # 4.149511811790847E306
        -0x482654d9f7c20328L    # -1.1786419699908563E-39
        -0x23888035b3b3d2b7L    # -2.7328183087567255E137
        0x1646f4d77a1f9246L
        0x2f4e6d269508b710L    # 8.019020372179787E-81
        0x80ec8527ae2419L
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_3
    .array-data 8
        -0x74446138a9cba3f5L    # -3.767306192107462E-252
        0x7c4777b11415a5f9L    # 4.5739720487581316E290
        -0x25034ba4a5edbb5cL
        0x2afe0e7d670f9797L
        -0x3e9973e9bf024699L    # -1.1821234030972196E7
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_4
    .array-data 8
        0x12dcd4781ecad3c8L    # 8.167086512062107E-218
        -0x39db516cc6849947L    # -8.192958127704626E29
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_5
    .array-data 8
        0xa769fef3be2d997L
        -0x73e6948cf29541deL
        0x47262656f7e54f08L    # 5.750407639734793E34
        -0x1e0fd6c88adaad9cL    # -5.816556554174092E163
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_6
    .array-data 8
        -0x412aef95e0c8ce09L    # -5.022077391680656E-6
        -0x6fcdd3c96c79551eL    # -1.170531142791152E-230
        -0x71c74865b56e1444L    # -3.706830316136411E-240
        0x3c6cf28c3bcdd4e2L    # 1.2553956266492722E-17
    .end array-data
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/appwidget/AppWidgetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v2, v1, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayServiceManager;->isRunning()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/v2ray/ang/receiver/WidgetProvider;->updateWidgetBackground(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 8
        -0x5bef1d697f371a81L    # -5.807721998746159E-135
        -0xd02673453d8f74eL    # -8.083549181818153E245
    .end array-data

    .line 68
    .line 69
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
    :array_1
    .array-data 8
        -0x98a41235c77103L
        0x70b39d48791d9103L    # 7.795632856326395E234
        -0x212a8cb7453723e7L    # -6.856963271552839E148
    .end array-data

    .line 80
    .line 81
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
    .line 94
    .line 95
    :array_2
    .array-data 8
        0x150d9c425b456192L
        -0x2a2521e4d46ede39L    # -3.851300512177823E105
        -0x6701cbc0099990daL
    .end array-data
.end method
