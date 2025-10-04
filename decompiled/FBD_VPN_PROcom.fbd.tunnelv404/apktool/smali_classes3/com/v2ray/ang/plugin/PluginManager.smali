.class public final Lcom/v2ray/ang/plugin/PluginManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/plugin/PluginManager$InitResult;,
        Lcom/v2ray/ang/plugin/PluginManager$PluginNotFoundException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\u0007J \u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\rJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\"\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\nH\u0002J\"\u0010\u001a\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\nH\u0003J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\r*\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\rR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/v2ray/ang/plugin/PluginManager;",
        "",
        "<init>",
        "()V",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "cachedPlugins",
        "Lcom/v2ray/ang/plugin/PluginList;",
        "fetchPlugins",
        "buildUri",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
        "id",
        "",
        "authority",
        "init",
        "Lcom/v2ray/ang/plugin/PluginManager$InitResult;",
        "pluginId",
        "initNative",
        "initNativeFaster",
        "provider",
        "Landroid/content/pm/ProviderInfo;",
        "initNativeFast",
        "cr",
        "Landroid/content/ContentResolver;",
        "uri",
        "initNativeSlow",
        "loadString",
        "Landroid/content/pm/ComponentInfo;",
        "key",
        "PluginNotFoundException",
        "InitResult",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPluginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginManager.kt\ncom/v2ray/ang/plugin/PluginManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n774#2:235\n865#2,2:236\n774#2:238\n865#2,2:239\n774#2:241\n865#2,2:242\n774#2:244\n865#2,2:245\n774#2:247\n865#2,2:248\n1#3:250\n*S KotlinDebug\n*F\n+ 1 PluginManager.kt\ncom/v2ray/ang/plugin/PluginManager\n*L\n94#1:235\n94#1:236,2\n99#1:238\n99#1:239,2\n105#1:241\n105#1:242,2\n111#1:244\n111#1:245,2\n116#1:247\n116#1:248,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/plugin/PluginManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static cachedPlugins:Lcom/v2ray/ang/plugin/PluginList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static receiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/plugin/PluginManager;

    invoke-direct {v0}, Lcom/v2ray/ang/plugin/PluginManager;-><init>()V

    sput-object v0, Lcom/v2ray/ang/plugin/PluginManager;->INSTANCE:Lcom/v2ray/ang/plugin/PluginManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "/"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x6ae57f39ddd29091L
        0x6ccce73f8cdefbd9L    # 1.2454736425248095E216
    .end array-data
.end method

.method private static final fetchPlugins$lambda$2$lambda$1()Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/v2ray/ang/plugin/PluginManager;->INSTANCE:Lcom/v2ray/ang/plugin/PluginManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/v2ray/ang/plugin/PluginManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    sput-object v1, Lcom/v2ray/ang/plugin/PluginManager;->cachedPlugins:Lcom/v2ray/ang/plugin/PluginList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

.method private final initNative(Ljava/lang/String;)Lcom/v2ray/ang/plugin/PluginManager$InitResult;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x6

    .line 4
    const/16 v3, 0x8

    .line 5
    .line 6
    const/4 v4, 0x5

    .line 7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v6, 0x18

    .line 10
    .line 11
    const/16 v7, 0x80

    .line 12
    .line 13
    if-lt v5, v6, :cond_0

    .line 14
    .line 15
    const v5, 0xc0080

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v5, 0x80

    .line 20
    .line 21
    :goto_0
    sget-object v6, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 22
    .line 23
    invoke-virtual {v6}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v8, Landroid/content/Intent;

    .line 32
    .line 33
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v10, v3, [J

    .line 36
    .line 37
    fill-array-data v10, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v11, v2, [J

    .line 50
    .line 51
    fill-array-data v11, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-direct {p0, p1, v10}, Lcom/v2ray/ang/plugin/PluginManager;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v8, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v9, v4, [J

    .line 75
    .line 76
    fill-array-data v9, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    check-cast v6, Ljava/lang/Iterable;

    .line 90
    .line 91
    new-instance v8, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_2

    .line 105
    .line 106
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    move-object v10, v9

    .line 111
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 112
    .line 113
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 114
    .line 115
    iget-boolean v10, v10, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 116
    .line 117
    if-eqz v10, :cond_1

    .line 118
    .line 119
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    sget-object v6, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 130
    .line 131
    invoke-virtual {v6}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    new-instance v8, Landroid/content/Intent;

    .line 140
    .line 141
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v10, v3, [J

    .line 144
    .line 145
    fill-array-data v10, :array_3

    .line 146
    .line 147
    .line 148
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v11, v4, [J

    .line 158
    .line 159
    fill-array-data v11, :array_4

    .line 160
    .line 161
    .line 162
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-direct {p0, p1, v10}, Lcom/v2ray/ang/plugin/PluginManager;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v8, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v9, v4, [J

    .line 183
    .line 184
    fill-array-data v9, :array_5

    .line 185
    .line 186
    .line 187
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    check-cast v6, Ljava/lang/Iterable;

    .line 198
    .line 199
    new-instance v8, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v9, :cond_4

    .line 213
    .line 214
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    move-object v10, v9

    .line 219
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 220
    .line 221
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 222
    .line 223
    iget-boolean v10, v10, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 224
    .line 225
    if-eqz v10, :cond_3

    .line 226
    .line 227
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_6

    .line 236
    .line 237
    sget-object v6, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 238
    .line 239
    invoke-virtual {v6}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    new-instance v8, Landroid/content/Intent;

    .line 248
    .line 249
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array v10, v3, [J

    .line 252
    .line 253
    fill-array-data v10, :array_6

    .line 254
    .line 255
    .line 256
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    const/4 v11, 0x3

    .line 266
    new-array v11, v11, [J

    .line 267
    .line 268
    fill-array-data v11, :array_7

    .line 269
    .line 270
    .line 271
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-direct {p0, p1, v10}, Lcom/v2ray/ang/plugin/PluginManager;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v8, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 290
    .line 291
    new-array v9, v4, [J

    .line 292
    .line 293
    fill-array-data v9, :array_8

    .line 294
    .line 295
    .line 296
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    check-cast v6, Ljava/lang/Iterable;

    .line 307
    .line 308
    new-instance v8, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    if-eqz v9, :cond_6

    .line 322
    .line 323
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    move-object v10, v9

    .line 328
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 329
    .line 330
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 331
    .line 332
    iget-boolean v10, v10, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 333
    .line 334
    if-eqz v10, :cond_5

    .line 335
    .line 336
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-eqz v6, :cond_8

    .line 345
    .line 346
    sget-object v6, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 347
    .line 348
    invoke-virtual {v6}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    new-instance v8, Landroid/content/Intent;

    .line 357
    .line 358
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 359
    .line 360
    new-array v10, v3, [J

    .line 361
    .line 362
    fill-array-data v10, :array_9

    .line 363
    .line 364
    .line 365
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 373
    .line 374
    new-array v11, v1, [J

    .line 375
    .line 376
    fill-array-data v11, :array_a

    .line 377
    .line 378
    .line 379
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    invoke-direct {p0, p1, v10}, Lcom/v2ray/ang/plugin/PluginManager;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v8, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 398
    .line 399
    new-array v8, v4, [J

    .line 400
    .line 401
    fill-array-data v8, :array_b

    .line 402
    .line 403
    .line 404
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    check-cast v5, Ljava/lang/Iterable;

    .line 415
    .line 416
    new-instance v8, Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v6

    .line 429
    if-eqz v6, :cond_8

    .line 430
    .line 431
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    move-object v9, v6

    .line 436
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 437
    .line 438
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 439
    .line 440
    iget-boolean v9, v9, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 441
    .line 442
    if-eqz v9, :cond_7

    .line 443
    .line 444
    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    const/4 v6, 0x1

    .line 453
    if-eqz v5, :cond_b

    .line 454
    .line 455
    sget-object v5, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 456
    .line 457
    invoke-virtual {v5}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    new-instance v8, Landroid/content/Intent;

    .line 466
    .line 467
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 468
    .line 469
    new-array v3, v3, [J

    .line 470
    .line 471
    fill-array-data v3, :array_c

    .line 472
    .line 473
    .line 474
    invoke-direct {v9, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v5, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 489
    .line 490
    new-array v4, v4, [J

    .line 491
    .line 492
    fill-array-data v4, :array_d

    .line 493
    .line 494
    .line 495
    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    check-cast v3, Ljava/lang/Iterable;

    .line 506
    .line 507
    new-instance v8, Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .line 511
    .line 512
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    if-eqz v4, :cond_a

    .line 521
    .line 522
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    move-object v5, v4

    .line 527
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 528
    .line 529
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 530
    .line 531
    iget-boolean v9, v7, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 532
    .line 533
    if-eqz v9, :cond_9

    .line 534
    .line 535
    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 536
    .line 537
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 538
    .line 539
    new-array v10, v2, [J

    .line 540
    .line 541
    fill-array-data v10, :array_e

    .line 542
    .line 543
    .line 544
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v9

    .line 551
    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 552
    .line 553
    .line 554
    move-result v7

    .line 555
    if-eqz v7, :cond_9

    .line 556
    .line 557
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 558
    .line 559
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 560
    .line 561
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 562
    .line 563
    new-array v9, v2, [J

    .line 564
    .line 565
    fill-array-data v9, :array_f

    .line 566
    .line 567
    .line 568
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v7

    .line 575
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v5

    .line 583
    if-eqz v5, :cond_9

    .line 584
    .line 585
    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    goto :goto_5

    .line 589
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-le v2, v6, :cond_b

    .line 594
    .line 595
    const/4 v2, 0x0

    .line 596
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-static {v2}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    :cond_b
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    const/4 v3, 0x0

    .line 609
    if-eqz v2, :cond_c

    .line 610
    .line 611
    return-object v3

    .line 612
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-gt v2, v6, :cond_11

    .line 617
    .line 618
    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 623
    .line 624
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 625
    .line 626
    :try_start_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    invoke-direct {p0, v2}, Lcom/v2ray/ang/plugin/PluginManager;->initNativeFaster(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    if-eqz v4, :cond_d

    .line 634
    .line 635
    new-instance v5, Lcom/v2ray/ang/plugin/PluginManager$InitResult;

    .line 636
    .line 637
    invoke-direct {v5, v4}, Lcom/v2ray/ang/plugin/PluginManager$InitResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    .line 639
    .line 640
    return-object v5

    .line 641
    :catchall_0
    move-exception v4

    .line 642
    goto :goto_6

    .line 643
    :cond_d
    move-object v4, v3

    .line 644
    :goto_6
    new-instance v5, Landroid/net/Uri$Builder;

    .line 645
    .line 646
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 647
    .line 648
    .line 649
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 650
    .line 651
    new-array v1, v1, [J

    .line 652
    .line 653
    fill-array-data v1, :array_10

    .line 654
    .line 655
    .line 656
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 664
    .line 665
    .line 666
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 667
    .line 668
    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    :try_start_1
    sget-object v2, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 676
    .line 677
    invoke-virtual {v2}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 686
    .line 687
    new-array v6, v0, [J

    .line 688
    .line 689
    fill-array-data v6, :array_11

    .line 690
    .line 691
    .line 692
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    invoke-direct {p0, v2, p1, v1}, Lcom/v2ray/ang/plugin/PluginManager;->initNativeFast(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    if-eqz v2, :cond_e

    .line 710
    .line 711
    new-instance v5, Lcom/v2ray/ang/plugin/PluginManager$InitResult;

    .line 712
    .line 713
    invoke-direct {v5, v2}, Lcom/v2ray/ang/plugin/PluginManager$InitResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 714
    .line 715
    .line 716
    move-object v3, v5

    .line 717
    goto :goto_7

    .line 718
    :catchall_1
    move-exception v2

    .line 719
    goto :goto_8

    .line 720
    :cond_e
    :goto_7
    return-object v3

    .line 721
    :goto_8
    if-eqz v4, :cond_f

    .line 722
    .line 723
    invoke-static {v2, v4}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 724
    .line 725
    .line 726
    :cond_f
    :try_start_2
    sget-object v4, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 727
    .line 728
    invoke-virtual {v4}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 737
    .line 738
    new-array v0, v0, [J

    .line 739
    .line 740
    fill-array-data v0, :array_12

    .line 741
    .line 742
    .line 743
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    invoke-direct {p0, v4, p1, v1}, Lcom/v2ray/ang/plugin/PluginManager;->initNativeSlow(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object p1

    .line 760
    if-eqz p1, :cond_10

    .line 761
    .line 762
    new-instance v3, Lcom/v2ray/ang/plugin/PluginManager$InitResult;

    .line 763
    .line 764
    invoke-direct {v3, p1}, Lcom/v2ray/ang/plugin/PluginManager$InitResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 765
    .line 766
    .line 767
    goto :goto_9

    .line 768
    :catchall_2
    move-exception p1

    .line 769
    goto :goto_a

    .line 770
    :cond_10
    :goto_9
    return-object v3

    .line 771
    :goto_a
    invoke-static {p1, v2}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 772
    .line 773
    .line 774
    throw p1

    .line 775
    :cond_11
    move-object v3, v8

    .line 776
    check-cast v3, Ljava/lang/Iterable;

    .line 777
    .line 778
    new-instance v9, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;

    .line 779
    .line 780
    const/16 p1, 0xb

    .line 781
    .line 782
    invoke-direct {v9, p1}, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;-><init>(I)V

    .line 783
    .line 784
    .line 785
    const/16 v10, 0x1f

    .line 786
    .line 787
    const/4 v11, 0x0

    .line 788
    const/4 v4, 0x0

    .line 789
    const/4 v5, 0x0

    .line 790
    const/4 v6, 0x0

    .line 791
    const/4 v7, 0x0

    .line 792
    const/4 v8, 0x0

    .line 793
    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    const-string v0, "Conflicting plugins found from: "

    .line 798
    .line 799
    invoke-static {v0, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    sget-object v0, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 804
    .line 805
    invoke-virtual {v0}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-static {v0, p1}, Lcom/v2ray/ang/extension/_ExtKt;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 810
    .line 811
    .line 812
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 813
    .line 814
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    throw v0

    .line 818
    nop

    .line 819
    :array_0
    .array-data 8
        -0x259b549d3d91b089L    # -2.798321722051956E127
        -0x148e631d941f82b7L    # -3.6189796472874495E209
        -0x2317c5b450097735L    # -3.6064549285305976E139
        0x21a20b823ed75059L
        -0x156991face793cb5L    # -2.8129487353259692E205
        -0x1fd232c5d4b8454dL    # -1.9978752589565857E155
        -0x4c20b46d68896352L    # -7.790021693226438E-59
        -0x30b69c04f0d1379aL    # -8.972243610667007E73
    .end array-data

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    :array_1
    .array-data 8
        0xbc4554f7af63834L
        0x25ff42270cbd8a21L
        0x1743a7bdd918a29L
        -0x44ad25d9d8ae8d68L
        0x5cca0b3a1c25f677L    # 9.691997522921898E138
        -0x740c8bcd6c4a89b9L
    .end array-data

    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :array_2
    .array-data 8
        -0xf1293bb407b496aL    # -9.355186556649145E235
        -0x27343509c0d4ffcfL    # -5.606875458495271E119
        0x32ee7b27bc55786L
        0x1e4fab099126352bL
        -0x3dcd6afabf13bb3bL    # -7.980956081226863E10
    .end array-data

    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    :array_3
    .array-data 8
        -0x1ea256c4ca760aebL    # -1.0425199272565292E161
        -0x373f98bddf0950f4L    # -2.8578671178111666E42
        -0x2c2116c510ce34cbL    # -1.0316502164166286E96
        -0x37d11285c476333eL    # -5.262066355212857E39
        -0x6c6b2fe118f72f9fL    # -2.415000284032186E-214
        0xedffdbe5665e6b2L
        -0x1a4e9f6f32328ce7L    # -7.210700149845138E181
        0x5eca0242843db0efL    # 4.1570825945964936E148
    .end array-data

    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    :array_4
    .array-data 8
        0x5b6345dd626222f4L    # 1.7099971696523537E132
        -0x7857ecec1ab95b5dL    # -8.90044258651956E-272
        -0x2e020020ca6f511fL    # -9.324655161219961E86
        0x5ea3048544e28e48L    # 7.599148535069579E147
        -0x667204bcaf1a3ba5L
    .end array-data

    :array_5
    .array-data 8
        -0x7c7f008a8ceafb3cL    # -8.516656270817013E-292
        -0xa10a05268ed0f69L
        -0x2073d68eaa3dd120L
        -0x1541ca07cff41614L    # -1.51551256104194E206
        -0x52423a806c3712a0L
    .end array-data

    :array_6
    .array-data 8
        0x7bf9174126031a3eL    # 1.5282380845660228E289
        0xfde5a01ee2366feL
        -0x4c24a3f7ea727106L    # -6.810343050303604E-59
        -0x7ac39b4501af7188L
        -0x588b42e9d970fdd0L
        -0x4bf5cf14c87e3b05L    # -5.215601528379171E-58
        -0x57f1b5d19e223057L    # -9.609209391082843E-116
        -0xa0633395f5df1faL
    .end array-data

    :array_7
    .array-data 8
        0x57356aae00f8d5a0L    # 1.287630674863574E112
        0x64345d4d026e6a30L    # 5.036749157821392E174
        0x4d80462d1eae96e4L    # 2.14233187657E65
    .end array-data

    :array_8
    .array-data 8
        0xb991bceb4896e7bL
        0x155044bcc53cda12L
        -0xbe448b48a965e52L
        0xb3b6e3b401ec65bL
        0x47a5efd905191200L    # 1.4579574273728374E37
    .end array-data

    :array_9
    .array-data 8
        0x4b957f54f26da0c4L    # 1.3177861688175806E56
        -0x30dc5ec8d343a5c1L    # -1.7341381450456922E73
        0x38812409353166feL    # 1.6119098410886613E-36
        -0x6fd0a24bb0c21df2L    # -1.0101664100005583E-230
        -0x21b63195be65ea1cL    # -1.611216144319065E146
        -0x6368556e87e035dfL    # -6.123962322377826E-171
        -0x36690f5c019333aaL    # -3.2741065421179373E46
        0x74a943809dadc7e6L    # 9.26110899987984E253
    .end array-data

    :array_a
    .array-data 8
        -0x477613ea927883cL    # -1.171537949887627E287
        0x2b487c7e164180a8L
    .end array-data

    :array_b
    .array-data 8
        -0x66b4c755172413e4L    # -7.820283305015391E-187
        0x33e6f828b3220f8L
        -0x51743330398f5d23L    # -1.788779183404104E-84
        -0x2406a01884adde6cL    # -1.152703794040954E135
        0x3fff9091104650e1L    # 1.9727945934037552
    .end array-data

    :array_c
    .array-data 8
        0x6d4fb4e3b2105ba8L    # 3.4976515301453743E218
        0xe1f2ad208f4ba48L
        0x74d8d79df310d8b4L    # 7.285298397556668E254
        -0x6d150347bb7e5bacL
        0x768bbdb169997ff5L    # 1.091913315172921E263
        -0x404d6cc1b374ffafL    # -0.07255925530171338
        0x705c3865ea0612dfL    # 1.7525013686874615E233
        -0x11e68970352e8227L    # -2.301063649882334E222
    .end array-data

    :array_d
    .array-data 8
        -0x710114974fc87b9bL
        -0x610b2a5c4f308a74L    # -1.4819242099981057E-159
        0xded06a7424aa572L
        -0x5ae649d03ed58595L    # -5.795782813399973E-130
        -0x5fb737d2980b7e78L
    .end array-data

    :array_e
    .array-data 8
        -0x5f9e850092d34fb2L
        -0x5f7e8c16a7fb2a19L
        0x664588fafea9a5e4L    # 4.575239640268181E184
        -0x374a7eb416a14c3aL    # -1.8733553337254078E42
        0x43fde48ad2a17984L    # 3.4463986544748806E19
        0x26333cdd30b30d7dL    # 1.136779105806816E-124
    .end array-data

    :array_f
    .array-data 8
        -0x3ab572cd1a83194bL    # -6.419772771522852E25
        -0x1a2b40ab1c0243d1L    # -3.443664559647451E182
        0x43e15b555b0f16a4L    # 1.0005497368871772E19
        -0x219aac26de016e04L    # -5.326335351605644E146
        0x3eb442aa9898c599L    # 1.207614874220884E-6
        0x26f3699e8e6cac11L    # 4.698561463921842E-121
    .end array-data

    :array_10
    .array-data 8
        -0x4af4f3ddc199ce11L    # -3.529850077453139E-53
        -0x62a9510ecea8c2d8L    # -2.404196465753224E-167
    .end array-data

    :array_11
    .array-data 8
        -0x1e3250d97d868765L    # -1.3354657300414185E163
        -0x115926dc0f74609aL
        0x69a3441b3908bf97L    # 7.373600290107491E200
        -0x57e34f000d40ca53L
    .end array-data

    :array_12
    .array-data 8
        0x2a011acdbab7b81fL
        0x6cacd0b7863c877fL    # 3.1042026687483672E215
        0x354578d864544b14L    # 4.483573633921763E-52
        -0x6be4c9f8f90e9900L
    .end array-data
.end method

.method private static final initNative$lambda$8(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x41e66cf5f7b2e086L    # -1.4886243637118239E-9
        0x473f1c945480e587L    # 1.6154086200410126E35
        0xe10cd6f26cc3d88L
    .end array-data
.end method

.method private final initNativeFast(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {}, Landroidx/core/os/BundleKt;->bundleOf()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 p3, 0x7

    .line 30
    new-array p3, p3, [J

    .line 31
    .line 32
    fill-array-data p3, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    new-instance p2, Ljava/io/File;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/io/File;->canExecute()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    move-object v1, p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 p3, 0x3

    .line 66
    new-array p3, p3, [J

    .line 67
    .line 68
    fill-array-data p3, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_1
    :goto_0
    return-object v1

    .line 83
    :array_0
    .array-data 8
        0x3175eb87ab5638f2L    # 1.9850083766467792E-70
        0x1ea54f5551b01356L    # 4.736675693117176E-161
        -0x46823eae35bb52dcL    # -9.169014816749481E-32
        0x1b9fb6bdacd80bceL
    .end array-data

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
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_1
    .array-data 8
        -0x3257d374e7cd4bc9L    # -1.2729095332288785E66
        -0x6c06f50658cb6ec4L    # -1.859718459914807E-212
        0x43e6b96fbaf955eeL    # 1.3099702306909155E19
        0x2da5019a04cdde69L    # 8.249734077909085E-89
        0x7811a4d16048a51bL    # 2.3302833805880556E270
        0x2ac8996b82235447L
        -0x56e408da86ca57a5L
    .end array-data

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
    :array_2
    .array-data 8
        -0x55ccb25e0df0ea6aL
        0x3bd5fcd54dab717L
        0x672a6f3d88adceffL    # 9.201506471253682E188
    .end array-data
.end method

.method private final initNativeFaster(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

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
    invoke-virtual {p0, p1, v0}, Lcom/v2ray/ang/plugin/PluginManager;->loadString(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v1, Ljava/io/File;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    fill-array-data v1, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_1
    const/4 p1, 0x0

    .line 68
    :goto_0
    return-object p1

    .line 69
    :array_0
    .array-data 8
        -0x14f08cf6ef46da10L    # -5.0484586253501E207
        -0x7108f6641135dd4aL
        -0x367dfb49b5f41995L    # -1.2858364561046984E46
        -0x27964516bb5c00aeL    # -8.110547376882508E117
        0x4072347746e686a8L    # 291.2791203503534
        -0x3de47184ac4e89acL    # -2.9588641004365555E10
        -0x6a0427052eae790fL    # -8.881991379366052E-203
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
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        0x1841e095debcdb29L    # 7.836720884310396E-192
        0x6e638b8ffb9bc8b8L    # 5.652052061614428E223
        0x17394b702f20fecL
    .end array-data
.end method

.method private final initNativeSlow(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    sget-object v3, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    new-array v6, v5, [J

    .line 20
    .line 21
    fill-array-data v6, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v4, v5, [J

    .line 37
    .line 38
    fill-array-data v4, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v6, v5, [J

    .line 51
    .line 52
    fill-array-data v6, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    move-object/from16 v6, p1

    .line 70
    .line 71
    move-object/from16 v7, p3

    .line 72
    .line 73
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/4 v4, 0x0

    .line 78
    if-nez v3, :cond_0

    .line 79
    .line 80
    return-object v4

    .line 81
    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_8

    .line 86
    .line 87
    invoke-static {v2}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->deleteRecursively(Ljava/io/File;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v6, "/"

    .line 109
    .line 110
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    :cond_1
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    new-instance v10, Ljava/io/File;

    .line 124
    .line 125
    invoke-direct {v10, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    const/4 v13, 0x4

    .line 135
    new-array v13, v13, [J

    .line 136
    .line 137
    fill-array-data v13, :array_3

    .line 138
    .line 139
    .line 140
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v11, v6, v7, v5, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-eqz v11, :cond_6

    .line 155
    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    invoke-virtual {v11, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    move-object/from16 v12, p1

    .line 169
    .line 170
    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    .line 177
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    .line 178
    .line 179
    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    .line 181
    .line 182
    :try_start_2
    invoke-static {v11, v13, v7, v5, v4}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    .line 184
    .line 185
    :try_start_3
    invoke-static {v13, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    .line 188
    :try_start_4
    invoke-static {v11, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    const/4 v11, 0x1

    .line 196
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getType(I)I

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    if-eq v13, v11, :cond_3

    .line 201
    .line 202
    if-ne v13, v1, :cond_2

    .line 203
    .line 204
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v15, v1, [J

    .line 211
    .line 212
    fill-array-data v15, :array_4

    .line 213
    .line 214
    .line 215
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/16 v14, 0x8

    .line 226
    .line 227
    invoke-static {v14}, Lkotlin/text/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;->checkRadix(I)I

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    move-object v1, v0

    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 241
    .line 242
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 243
    .line 244
    const/4 v2, 0x5

    .line 245
    new-array v2, v2, [J

    .line 246
    .line 247
    fill-array-data v2, :array_5

    .line 248
    .line 249
    .line 250
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v0

    .line 261
    :cond_3
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 262
    .line 263
    .line 264
    move-result v13

    .line 265
    :goto_0
    invoke-static {v10, v13}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    if-eqz v9, :cond_4

    .line 273
    .line 274
    const/4 v8, 0x1

    .line 275
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 276
    .line 277
    .line 278
    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    if-nez v9, :cond_1

    .line 280
    .line 281
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    if-eqz v8, :cond_5

    .line 285
    .line 286
    new-instance v1, Ljava/io/File;

    .line 287
    .line 288
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    return-object v0

    .line 296
    :cond_5
    invoke-static {}, Lcom/v2ray/ang/plugin/PluginManager;->initNativeSlow$entryNotFound()Ljava/lang/Void;

    .line 297
    .line 298
    .line 299
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 300
    .line 301
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 302
    .line 303
    .line 304
    throw v0

    .line 305
    :catchall_1
    move-exception v0

    .line 306
    move-object v1, v0

    .line 307
    goto :goto_1

    .line 308
    :catchall_2
    move-exception v0

    .line 309
    move-object v1, v0

    .line 310
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 311
    :catchall_3
    move-exception v0

    .line 312
    move-object v2, v0

    .line 313
    :try_start_6
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 314
    .line 315
    .line 316
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 317
    :goto_1
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 318
    :catchall_4
    move-exception v0

    .line 319
    move-object v2, v0

    .line 320
    :try_start_8
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    throw v2

    .line 324
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 325
    .line 326
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 327
    .line 328
    new-array v1, v1, [J

    .line 329
    .line 330
    fill-array-data v1, :array_6

    .line 331
    .line 332
    .line 333
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :cond_7
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 345
    .line 346
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    const/4 v2, 0x6

    .line 349
    new-array v2, v2, [J

    .line 350
    .line 351
    fill-array-data v2, :array_7

    .line 352
    .line 353
    .line 354
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v0

    .line 365
    :cond_8
    invoke-static {}, Lcom/v2ray/ang/plugin/PluginManager;->initNativeSlow$entryNotFound()Ljava/lang/Void;

    .line 366
    .line 367
    .line 368
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 369
    .line 370
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 371
    .line 372
    .line 373
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 374
    :goto_2
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 375
    :catchall_5
    move-exception v0

    .line 376
    move-object v2, v0

    .line 377
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 378
    .line 379
    .line 380
    throw v2

    .line 381
    :array_0
    .array-data 8
        0x2ea4e3bd4d4ab2faL    # 5.376522821691282E-84
        -0x341daa9256f914dcL    # -3.5963290168415086E57
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :array_1
    .array-data 8
        -0x3de6c1e30dc40e6bL    # -2.710406670298592E10
        0x63ec7fbdc0a3dd26L
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_2
    .array-data 8
        0x5fe245f6176fe7c3L    # 7.656397283777382E153
        0x3878f0b250483d57L    # 1.1726835486806843E-36
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    :array_3
    .array-data 8
        0x47c985f6473d26f1L    # 6.785254098739146E37
        0x3634ba48e7b6a25cL    # 1.4182450716827538E-47
        -0x7c3ad4b71fde9477L    # -1.697056073346404E-290
        0x1a5d71d82ff17da0L
    .end array-data

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_4
    .array-data 8
        0x665546395691eeefL    # 9.039676474008656E184
        -0x24038b32e7039014L    # -1.2926942343027365E135
        0x654ef7623b85e6f5L    # 1.0038696951216066E180
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_5
    .array-data 8
        -0x4af65ca005290fa7L    # -3.345939038971745E-53
        -0x262fbe422f1b0ee7L    # -4.298662560096835E124
        0x7cc5d90855c346a8L    # 1.0901171711979192E293
        -0x2c88142f9f288ee9L    # -1.2474429384924499E94
        -0x280b29ef05320ae1L    # -5.1311746696137865E115
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_6
    .array-data 8
        0x6a2c307039cbdf70L
        -0x57b8aa2b8dbb2de4L
        0x7ce96ecb57d8cbe4L    # 5.0759788005328605E293
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :array_7
    .array-data 8
        0x6516401f20297c3bL    # 9.016473845343885E178
        -0x41cd44816d3bb22cL    # -4.361476773723402E-9
        -0x200cdb131ca9ec62L    # -1.6042642990642834E154
        0x897284f81fdd3efL
        -0x2f86cf17528119c7L    # -4.667078965771595E79
        0x7f317f4a2d3b20c7L    # 4.799597524066952E304
    .end array-data
.end method

.method private static final initNativeSlow$entryNotFound()Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x8dd19aab5b718a2L    # -7.61766717060661E265
        -0x26cb667a8a5ed132L    # -5.319355391211827E121
        0x768d20c41396cb0L
        -0x4333cdd3d312c3dfL    # -7.825958371498651E-16
        -0x58f66578a6b0b346L    # -1.239405023167674E-120
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/plugin/PluginManager;->initNative$lambda$8(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/plugin/PluginManager;->fetchPlugins$lambda$2$lambda$1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final fetchPlugins()Lcom/v2ray/ang/plugin/PluginList;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/v2ray/ang/plugin/PluginManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/v2ray/ang/AngApplication;->Companion:Lcom/v2ray/ang/AngApplication$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/v2ray/ang/AngApplication$Companion;->getApplication()Lcom/v2ray/ang/AngApplication;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 13
    .line 14
    const/16 v2, 0x16

    .line 15
    .line 16
    invoke-direct {v1, v2}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v0, v4, v1, v2, v3}, Lcom/v2ray/ang/extension/_ExtKt;->listenForPackageChanges$default(Landroid/content/Context;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/v2ray/ang/plugin/PluginManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    sget-object v0, Lcom/v2ray/ang/plugin/PluginManager;->cachedPlugins:Lcom/v2ray/ang/plugin/PluginList;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/v2ray/ang/plugin/PluginList;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/v2ray/ang/plugin/PluginList;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/v2ray/ang/plugin/PluginManager;->cachedPlugins:Lcom/v2ray/ang/plugin/PluginList;

    .line 41
    .line 42
    :cond_1
    sget-object v0, Lcom/v2ray/ang/plugin/PluginManager;->cachedPlugins:Lcom/v2ray/ang/plugin/PluginList;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-object v0

    .line 49
    :goto_1
    monitor-exit p0

    .line 50
    throw v0
.end method

.method public final init(Ljava/lang/String;)Lcom/v2ray/ang/plugin/PluginManager$InitResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/plugin/PluginManager;->initNative(Ljava/lang/String;)Lcom/v2ray/ang/plugin/PluginManager$InitResult;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    :cond_1
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance v1, Lcom/v2ray/ang/plugin/PluginManager$PluginNotFoundException;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lcom/v2ray/ang/plugin/PluginManager$PluginNotFoundException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    throw v1

    .line 43
    :array_0
    .array-data 8
        0x189889dd6edf4804L    # 3.442162594271373E-190
        0x6ccb25178c5375e0L
    .end array-data
.end method

.method public final loadString(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/pm/ComponentInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    :cond_0
    return-object p1

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x44a577456e8c0a96L    # -8.779396179294492E-23
        -0x2cb9afca542b0a0aL    # -1.454497070990771E93
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 8
        0x3ec94f3e4955a390L    # 3.017132778883017E-6
        0x2e1ef9ff8c964bacL    # 1.5571641013838746E-86
    .end array-data
.end method
