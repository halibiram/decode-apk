.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;,
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;
    }
.end annotation


# static fields
.field public static final LOCAL:I = -0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final NONE:I = 0x0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final NO_SELECTION:I = 0x0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final REMOTE:I = 0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static zzb:Ljava/lang/Boolean; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzc:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzd:Z = false
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zze:I = -0x1
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzf:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static final zzg:Ljava/lang/ThreadLocal;

.field private static final zzh:Ljava/lang/ThreadLocal;

.field private static final zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

.field private static zzk:Lcom/google/android/gms/dynamite/zzq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzl:Lcom/google/android/gms/dynamite/zzr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field


# instance fields
.field private final zzj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/dynamite/zzd;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/dynamite/zzh;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzh;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 49
    .line 50
    new-instance v0, Lcom/google/android/gms/dynamite/zzj;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzj;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/dynamite/zzk;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzk;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 63
    .line 64
    new-instance v0, Lcom/google/android/gms/dynamite/zzl;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzl;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 70
    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v6, 0x7

    .line 21
    new-array v6, v6, [J

    .line 22
    .line 23
    fill-array-data v6, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v6, v1, [J

    .line 42
    .line 43
    fill-array-data v6, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v5, v2, [J

    .line 67
    .line 68
    fill-array-data v5, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v6, v2, [J

    .line 85
    .line 86
    fill-array-data v6, :array_3

    .line 87
    .line 88
    .line 89
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_0

    .line 110
    .line 111
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array p1, v2, [J

    .line 114
    .line 115
    fill-array-data p1, :array_4

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array p1, v1, [J

    .line 134
    .line 135
    fill-array-data p1, :array_5

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    const/4 p1, 0x5

    .line 147
    new-array p1, p1, [J

    .line 148
    .line 149
    fill-array-data p1, :array_6

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    const/4 p1, 0x2

    .line 161
    new-array p1, p1, [J

    .line 162
    .line 163
    fill-array-data p1, :array_7

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    return v3

    .line 173
    :catch_0
    move-exception p0

    .line 174
    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 176
    .line 177
    .line 178
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return p0

    .line 180
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v0, v0, [J

    .line 191
    .line 192
    fill-array-data v0, :array_8

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v1, v2, [J

    .line 205
    .line 206
    fill-array-data v1, :array_9

    .line 207
    .line 208
    .line 209
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :catch_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array p1, v0, [J

    .line 222
    .line 223
    fill-array-data p1, :array_a

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    new-array p1, v2, [J

    .line 235
    .line 236
    fill-array-data p1, :array_b

    .line 237
    .line 238
    .line 239
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array p1, v2, [J

    .line 248
    .line 249
    fill-array-data p1, :array_c

    .line 250
    .line 251
    .line 252
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    :goto_1
    return v3

    .line 259
    :array_0
    .array-data 8
        -0x121ab2070a455462L    # -2.406577260794178E221
        -0x62320353dec64024L    # -4.068229366298039E-165
        -0x6184e5ef7dee2ca3L    # -7.530099383725521E-162
        0x3cf9d56091783017L    # 5.736190359241646E-15
        0x5f486de4cce3c83aL    # 9.995818881110552E150
        -0x2d0cc42304eed87cL    # -3.9180025363781E91
        -0x1e7fb73ddf1a476L
    .end array-data

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
    :array_1
    .array-data 8
        0x17e5e1e57bbc591cL
        0x6eb305f9cdb38508L    # 1.7603685918280566E225
        0x61d0800b3e76a0fdL    # 1.4846569897529828E163
        -0x7e280897ef373784L    # -8.946799495123064E-300
    .end array-data

    .line 292
    .line 293
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
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_2
    .array-data 8
        0x203d53393b49a78dL
        0x3d467e47e43922c5L    # 1.598243988864952E-13
        0x1ba02b54d02279f4L
    .end array-data

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
    .line 326
    .line 327
    :array_3
    .array-data 8
        -0x35c808e58db40f05L    # -3.502524815502151E49
        0x7878c2fb6d029495L    # 2.0930309958508557E272
        -0x407f422701e225bdL    # -0.00817460561277728
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :array_4
    .array-data 8
        0x2d11bd028f3967a9L    # 1.3606105045582353E-91
        0x4aa72a43642f8c15L    # 4.333544722985182E51
        0x7b0108295c67e887L    # 3.165836900738142E284
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_5
    .array-data 8
        -0x6249794815a598b5L    # -1.528027513407953E-165
        -0x4ce7f656b9fdeae7L    # -1.4608126760398469E-62
        -0x3a86e222927a06c3L    # -4.858268598527552E26
        0x5dfb2fdc29a4e373L    # 5.304426977047984E144
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_6
    .array-data 8
        0x424a95978f6b10b0L    # 2.2835777506213037E11
        0x7c6e760deec76b51L    # 2.374827782717581E291
        -0x638f778fedb1e9bcL
        -0x70138a6fcd6df32L
        0x4e9c0669687c4e0cL    # 4.835543954090815E70
    .end array-data

    .line 380
    .line 381
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
    :array_7
    .array-data 8
        -0x43fed820fdc54747L    # -1.1625186079106581E-19
        -0xf681c17d8c9d898L
    .end array-data

    .line 404
    .line 405
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
    :array_8
    .array-data 8
        -0x4a965be57925e34eL    # -2.141638734057714E-51
        -0x7aee07fa1be6569fL    # -3.020954198189536E-284
        -0x2cffa168d55ca249L    # -6.669049686788707E91
        -0x23fe854963cc14b1L    # -1.588083457909805E135
        0x6486b714157befcfL    # 1.797807110417512E176
        -0x5aab3306077d477cL
    .end array-data

    .line 416
    .line 417
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
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_9
    .array-data 8
        0x4cbc2c45e283a307L    # 4.5272171286436556E61
        0x7809f419cbd03f03L    # 1.7138877436991972E270
        0x3e05d2f09ff996fL
    .end array-data

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
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_a
    .array-data 8
        0x2d8d56679f8f2dddL    # 2.880412423401516E-89
        -0x4b35392f6523fea3L    # -2.1840700221006012E-54
        0x3092b8903e04d35fL    # 1.0347346433378066E-74
        0x3a2f3113bcca78eaL    # 1.9684734840462425E-28
        -0x362115942eefdf7L
        0x5f1a53bd7bf543faL    # 1.3465455432724955E150
    .end array-data

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
    :array_b
    .array-data 8
        -0x4386b55d99fc4393L    # -2.193691452827599E-17
        0x3d2ca6e56521e9fdL    # 5.089606565651056E-14
        -0x645f258ff6279d9fL
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_c
    .array-data 8
        -0x4eb5ea8e0f95bd8dL    # -2.9525781085405918E-71
        0x3a387f008335f654L    # 3.091842697520874E-28
        -0x545744c15ab03877L    # -2.2614165233130154E-98
    .end array-data
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 26
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const/4 v7, 0x2

    .line 8
    const/4 v8, 0x4

    .line 9
    const/4 v9, 0x5

    .line 10
    const/4 v10, 0x3

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v11

    .line 15
    const/4 v12, 0x0

    .line 16
    if-eqz v11, :cond_17

    .line 17
    .line 18
    sget-object v13, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v14

    .line 24
    check-cast v14, Lcom/google/android/gms/dynamite/zzn;

    .line 25
    .line 26
    new-instance v15, Lcom/google/android/gms/dynamite/zzn;

    .line 27
    .line 28
    invoke-direct {v15, v12}, Lcom/google/android/gms/dynamite/zzn;-><init>(Lcom/google/android/gms/dynamite/zzm;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v13, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v16

    .line 40
    move-object/from16 v5, v16

    .line 41
    .line 42
    check-cast v5, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v18

    .line 48
    const-wide/16 v20, 0x0

    .line 49
    .line 50
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v22

    .line 54
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    .line 62
    .line 63
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v12, v10, [J

    .line 70
    .line 71
    fill-array-data v12, :array_0

    .line 72
    .line 73
    .line 74
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    iget v6, v4, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    .line 81
    .line 82
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v12, v9, [J

    .line 85
    .line 86
    fill-array-data v12, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v12, v7, [J

    .line 98
    .line 99
    fill-array-data v12, :array_2

    .line 100
    .line 101
    .line 102
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v12, v8, [J

    .line 111
    .line 112
    fill-array-data v12, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v12, v7, [J

    .line 124
    .line 125
    fill-array-data v12, :array_4

    .line 126
    .line 127
    .line 128
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    iget v6, v4, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    .line 135
    .line 136
    if-eqz v6, :cond_14

    .line 137
    .line 138
    const/4 v12, -0x1

    .line 139
    if-ne v6, v12, :cond_0

    .line 140
    .line 141
    iget v6, v4, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    .line 142
    .line 143
    if-eqz v6, :cond_14

    .line 144
    .line 145
    const/4 v6, -0x1

    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    move-object v1, v0

    .line 149
    goto/16 :goto_c

    .line 150
    .line 151
    :cond_0
    :goto_0
    const/4 v8, 0x1

    .line 152
    if-ne v6, v8, :cond_1

    .line 153
    .line 154
    iget v7, v4, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    .line 155
    .line 156
    if-eqz v7, :cond_14

    .line 157
    .line 158
    :cond_1
    if-ne v6, v12, :cond_2

    .line 159
    .line 160
    invoke-static {v11, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 161
    .line 162
    .line 163
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    goto/16 :goto_a

    .line 165
    .line 166
    :cond_2
    if-ne v6, v8, :cond_13

    .line 167
    .line 168
    :try_start_1
    iget v7, v4, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .line 170
    :try_start_2
    const-class v24, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 171
    .line 172
    monitor-enter v24
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    .line 174
    .line 175
    .line 176
    move-result v25

    .line 177
    if-eqz v25, :cond_f

    .line 178
    .line 179
    sget-object v23, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 180
    .line 181
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 182
    if-eqz v23, :cond_e

    .line 183
    .line 184
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    .line 186
    .line 187
    move-result v23

    .line 188
    if-eqz v23, :cond_8

    .line 189
    .line 190
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 191
    .line 192
    new-array v12, v10, [J

    .line 193
    .line 194
    fill-array-data v12, :array_5

    .line 195
    .line 196
    .line 197
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v12, v9, [J

    .line 206
    .line 207
    fill-array-data v12, :array_6

    .line 208
    .line 209
    .line 210
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    new-array v12, v10, [J

    .line 219
    .line 220
    fill-array-data v12, :array_7

    .line 221
    .line 222
    .line 223
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    const-class v8, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 230
    .line 231
    monitor-enter v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 232
    :try_start_5
    sget-object v12, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzr;

    .line 233
    .line 234
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 235
    if-eqz v12, :cond_7

    .line 236
    .line 237
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    check-cast v8, Lcom/google/android/gms/dynamite/zzn;

    .line 242
    .line 243
    if-eqz v8, :cond_6

    .line 244
    .line 245
    iget-object v13, v8, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 246
    .line 247
    if-eqz v13, :cond_6

    .line 248
    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    iget-object v8, v8, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 254
    .line 255
    const/16 v17, 0x0

    .line 256
    .line 257
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 258
    .line 259
    .line 260
    const-class v17, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 261
    .line 262
    monitor-enter v17
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 263
    :try_start_7
    sget v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    .line 264
    .line 265
    const/4 v9, 0x2

    .line 266
    if-lt v6, v9, :cond_3

    .line 267
    .line 268
    const/16 v25, 0x1

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_3
    const/16 v25, 0x0

    .line 272
    .line 273
    :goto_1
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 274
    if-eqz v25, :cond_4

    .line 275
    .line 276
    :try_start_8
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    new-array v9, v10, [J

    .line 279
    .line 280
    fill-array-data v9, :array_8

    .line 281
    .line 282
    .line 283
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 290
    .line 291
    const/16 v9, 0x9

    .line 292
    .line 293
    new-array v9, v9, [J

    .line 294
    .line 295
    fill-array-data v9, :array_9

    .line 296
    .line 297
    .line 298
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    invoke-static {v13}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-static {v8}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    invoke-virtual {v12, v6, v3, v7, v8}, Lcom/google/android/gms/dynamite/zzr;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    goto :goto_2

    .line 317
    :catchall_1
    move-exception v0

    .line 318
    move-object v6, v0

    .line 319
    goto/16 :goto_6

    .line 320
    .line 321
    :catch_0
    move-exception v0

    .line 322
    move-object v6, v0

    .line 323
    goto/16 :goto_7

    .line 324
    .line 325
    :catch_1
    move-exception v0

    .line 326
    move-object v6, v0

    .line 327
    goto/16 :goto_8

    .line 328
    .line 329
    :cond_4
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    new-array v9, v10, [J

    .line 332
    .line 333
    fill-array-data v9, :array_a

    .line 334
    .line 335
    .line 336
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 343
    .line 344
    const/16 v9, 0x8

    .line 345
    .line 346
    new-array v9, v9, [J

    .line 347
    .line 348
    fill-array-data v9, :array_b

    .line 349
    .line 350
    .line 351
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    invoke-static {v13}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-static {v8}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    invoke-virtual {v12, v6, v3, v7, v8}, Lcom/google/android/gms/dynamite/zzr;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    :goto_2
    invoke-static {v6}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    check-cast v6, Landroid/content/Context;

    .line 374
    .line 375
    if-eqz v6, :cond_5

    .line 376
    .line 377
    new-instance v7, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 378
    .line 379
    invoke-direct {v7, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    .line 380
    .line 381
    .line 382
    :goto_3
    move-object v1, v7

    .line 383
    goto/16 :goto_a

    .line 384
    .line 385
    :cond_5
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 386
    .line 387
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 388
    .line 389
    const/4 v8, 0x5

    .line 390
    new-array v9, v8, [J

    .line 391
    .line 392
    fill-array-data v9, :array_c

    .line 393
    .line 394
    .line 395
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    const/4 v8, 0x0

    .line 403
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 404
    .line 405
    .line 406
    throw v6
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 407
    :catchall_2
    move-exception v0

    .line 408
    move-object v6, v0

    .line 409
    :try_start_9
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 410
    :try_start_a
    throw v6

    .line 411
    :cond_6
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 412
    .line 413
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 414
    .line 415
    new-array v8, v10, [J

    .line 416
    .line 417
    fill-array-data v8, :array_d

    .line 418
    .line 419
    .line 420
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    const/4 v8, 0x0

    .line 428
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 429
    .line 430
    .line 431
    throw v6

    .line 432
    :cond_7
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 433
    .line 434
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 435
    .line 436
    const/4 v8, 0x5

    .line 437
    new-array v9, v8, [J

    .line 438
    .line 439
    fill-array-data v9, :array_e

    .line 440
    .line 441
    .line 442
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    const/4 v8, 0x0

    .line 450
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 451
    .line 452
    .line 453
    throw v6
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 454
    :catchall_3
    move-exception v0

    .line 455
    move-object v6, v0

    .line 456
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 457
    :try_start_c
    throw v6

    .line 458
    :cond_8
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 459
    .line 460
    new-array v8, v10, [J

    .line 461
    .line 462
    fill-array-data v8, :array_f

    .line 463
    .line 464
    .line 465
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 472
    .line 473
    const/4 v8, 0x5

    .line 474
    new-array v9, v8, [J

    .line 475
    .line 476
    fill-array-data v9, :array_10

    .line 477
    .line 478
    .line 479
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 486
    .line 487
    new-array v8, v10, [J

    .line 488
    .line 489
    fill-array-data v8, :array_11

    .line 490
    .line 491
    .line 492
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    if-eqz v6, :cond_d

    .line 503
    .line 504
    invoke-virtual {v6}, Lcom/google/android/gms/dynamite/zzq;->zze()I

    .line 505
    .line 506
    .line 507
    move-result v8

    .line 508
    if-lt v8, v10, :cond_a

    .line 509
    .line 510
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    check-cast v8, Lcom/google/android/gms/dynamite/zzn;

    .line 515
    .line 516
    if-eqz v8, :cond_9

    .line 517
    .line 518
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    iget-object v8, v8, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 523
    .line 524
    invoke-static {v8}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    invoke-virtual {v6, v9, v3, v7, v8}, Lcom/google/android/gms/dynamite/zzq;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    goto :goto_4

    .line 533
    :cond_9
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 534
    .line 535
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 536
    .line 537
    const/4 v8, 0x5

    .line 538
    new-array v9, v8, [J

    .line 539
    .line 540
    fill-array-data v9, :array_12

    .line 541
    .line 542
    .line 543
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    const/4 v8, 0x0

    .line 551
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 552
    .line 553
    .line 554
    throw v6

    .line 555
    :cond_a
    const/4 v9, 0x2

    .line 556
    if-ne v8, v9, :cond_b

    .line 557
    .line 558
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 559
    .line 560
    new-array v9, v10, [J

    .line 561
    .line 562
    fill-array-data v9, :array_13

    .line 563
    .line 564
    .line 565
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 572
    .line 573
    const/4 v9, 0x5

    .line 574
    new-array v12, v9, [J

    .line 575
    .line 576
    fill-array-data v12, :array_14

    .line 577
    .line 578
    .line 579
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    invoke-virtual {v6, v8, v3, v7}, Lcom/google/android/gms/dynamite/zzq;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    goto :goto_4

    .line 594
    :cond_b
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 595
    .line 596
    new-array v9, v10, [J

    .line 597
    .line 598
    fill-array-data v9, :array_15

    .line 599
    .line 600
    .line 601
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 608
    .line 609
    const/16 v9, 0x9

    .line 610
    .line 611
    new-array v9, v9, [J

    .line 612
    .line 613
    fill-array-data v9, :array_16

    .line 614
    .line 615
    .line 616
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 623
    .line 624
    .line 625
    move-result-object v8

    .line 626
    invoke-virtual {v6, v8, v3, v7}, Lcom/google/android/gms/dynamite/zzq;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v6

    .line 634
    if-eqz v6, :cond_c

    .line 635
    .line 636
    new-instance v7, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 637
    .line 638
    check-cast v6, Landroid/content/Context;

    .line 639
    .line 640
    invoke-direct {v7, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_3

    .line 644
    .line 645
    :cond_c
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 646
    .line 647
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 648
    .line 649
    const/4 v8, 0x5

    .line 650
    new-array v9, v8, [J

    .line 651
    .line 652
    fill-array-data v9, :array_17

    .line 653
    .line 654
    .line 655
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    const/4 v8, 0x0

    .line 663
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 664
    .line 665
    .line 666
    throw v6

    .line 667
    :cond_d
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 668
    .line 669
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 670
    .line 671
    const/4 v8, 0x6

    .line 672
    new-array v8, v8, [J

    .line 673
    .line 674
    fill-array-data v8, :array_18

    .line 675
    .line 676
    .line 677
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v7

    .line 684
    const/4 v8, 0x0

    .line 685
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 686
    .line 687
    .line 688
    throw v6

    .line 689
    :cond_e
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 690
    .line 691
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 692
    .line 693
    const/4 v8, 0x7

    .line 694
    new-array v9, v8, [J

    .line 695
    .line 696
    fill-array-data v9, :array_19

    .line 697
    .line 698
    .line 699
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v7

    .line 706
    const/4 v8, 0x0

    .line 707
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 708
    .line 709
    .line 710
    throw v6
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 711
    :catchall_4
    move-exception v0

    .line 712
    move-object v6, v0

    .line 713
    goto :goto_5

    .line 714
    :cond_f
    :try_start_d
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 715
    .line 716
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 717
    .line 718
    const/4 v8, 0x4

    .line 719
    new-array v8, v8, [J

    .line 720
    .line 721
    fill-array-data v8, :array_1a

    .line 722
    .line 723
    .line 724
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v7

    .line 731
    const/4 v8, 0x0

    .line 732
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 733
    .line 734
    .line 735
    throw v6

    .line 736
    :goto_5
    monitor-exit v24
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 737
    :try_start_e
    throw v6
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 738
    :goto_6
    :try_start_f
    invoke-static {v1, v6}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 739
    .line 740
    .line 741
    new-instance v7, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 742
    .line 743
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 744
    .line 745
    const/4 v9, 0x5

    .line 746
    new-array v12, v9, [J

    .line 747
    .line 748
    fill-array-data v12, :array_1b

    .line 749
    .line 750
    .line 751
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v8

    .line 758
    const/4 v9, 0x0

    .line 759
    invoke-direct {v7, v8, v6, v9}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    .line 760
    .line 761
    .line 762
    throw v7

    .line 763
    :catch_2
    move-exception v0

    .line 764
    move-object v6, v0

    .line 765
    goto :goto_9

    .line 766
    :goto_7
    throw v6

    .line 767
    :goto_8
    new-instance v7, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 768
    .line 769
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 770
    .line 771
    const/4 v9, 0x5

    .line 772
    new-array v12, v9, [J

    .line 773
    .line 774
    fill-array-data v12, :array_1c

    .line 775
    .line 776
    .line 777
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v8

    .line 784
    const/4 v9, 0x0

    .line 785
    invoke-direct {v7, v8, v6, v9}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    .line 786
    .line 787
    .line 788
    throw v7
    :try_end_f
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 789
    :goto_9
    :try_start_10
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 790
    .line 791
    new-array v8, v10, [J

    .line 792
    .line 793
    fill-array-data v8, :array_1d

    .line 794
    .line 795
    .line 796
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 806
    .line 807
    const/4 v8, 0x5

    .line 808
    new-array v8, v8, [J

    .line 809
    .line 810
    fill-array-data v8, :array_1e

    .line 811
    .line 812
    .line 813
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    iget v4, v4, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    .line 820
    .line 821
    if-eqz v4, :cond_12

    .line 822
    .line 823
    new-instance v7, Lcom/google/android/gms/dynamite/zzo;

    .line 824
    .line 825
    const/4 v8, 0x0

    .line 826
    invoke-direct {v7, v4, v8}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    .line 827
    .line 828
    .line 829
    invoke-interface {v2, v1, v3, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    iget v1, v1, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    .line 834
    .line 835
    const/4 v2, -0x1

    .line 836
    if-ne v1, v2, :cond_12

    .line 837
    .line 838
    invoke-static {v11, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 839
    .line 840
    .line 841
    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 842
    :goto_a
    cmp-long v2, v18, v20

    .line 843
    .line 844
    if-nez v2, :cond_10

    .line 845
    .line 846
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 847
    .line 848
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 849
    .line 850
    .line 851
    goto :goto_b

    .line 852
    :cond_10
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 853
    .line 854
    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 855
    .line 856
    .line 857
    :goto_b
    iget-object v2, v15, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 858
    .line 859
    if-eqz v2, :cond_11

    .line 860
    .line 861
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 862
    .line 863
    .line 864
    :cond_11
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 865
    .line 866
    invoke-virtual {v2, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 867
    .line 868
    .line 869
    return-object v1

    .line 870
    :cond_12
    :try_start_11
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 871
    .line 872
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 873
    .line 874
    const/4 v3, 0x7

    .line 875
    new-array v3, v3, [J

    .line 876
    .line 877
    fill-array-data v3, :array_1f

    .line 878
    .line 879
    .line 880
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    const/4 v3, 0x0

    .line 888
    invoke-direct {v1, v2, v6, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    .line 889
    .line 890
    .line 891
    throw v1

    .line 892
    :cond_13
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 893
    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    .line 895
    .line 896
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    .line 898
    .line 899
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 900
    .line 901
    const/4 v4, 0x6

    .line 902
    new-array v4, v4, [J

    .line 903
    .line 904
    fill-array-data v4, :array_20

    .line 905
    .line 906
    .line 907
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    const/4 v3, 0x0

    .line 925
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 926
    .line 927
    .line 928
    throw v1

    .line 929
    :cond_14
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 930
    .line 931
    iget v2, v4, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    .line 932
    .line 933
    iget v4, v4, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    .line 934
    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .line 939
    .line 940
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 941
    .line 942
    const/4 v8, 0x4

    .line 943
    new-array v9, v8, [J

    .line 944
    .line 945
    fill-array-data v9, :array_21

    .line 946
    .line 947
    .line 948
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v7

    .line 955
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 962
    .line 963
    const/4 v7, 0x5

    .line 964
    new-array v7, v7, [J

    .line 965
    .line 966
    fill-array-data v7, :array_22

    .line 967
    .line 968
    .line 969
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 983
    .line 984
    const/4 v3, 0x4

    .line 985
    new-array v3, v3, [J

    .line 986
    .line 987
    fill-array-data v3, :array_23

    .line 988
    .line 989
    .line 990
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 1004
    .line 1005
    const/4 v3, 0x2

    .line 1006
    new-array v3, v3, [J

    .line 1007
    .line 1008
    fill-array-data v3, :array_24

    .line 1009
    .line 1010
    .line 1011
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v2

    .line 1018
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2

    .line 1025
    const/4 v3, 0x0

    .line 1026
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 1027
    .line 1028
    .line 1029
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1030
    :goto_c
    cmp-long v2, v18, v20

    .line 1031
    .line 1032
    if-nez v2, :cond_15

    .line 1033
    .line 1034
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 1035
    .line 1036
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 1037
    .line 1038
    .line 1039
    goto :goto_d

    .line 1040
    :cond_15
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 1041
    .line 1042
    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1043
    .line 1044
    .line 1045
    :goto_d
    iget-object v2, v15, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 1046
    .line 1047
    if-eqz v2, :cond_16

    .line 1048
    .line 1049
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1050
    .line 1051
    .line 1052
    :cond_16
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 1053
    .line 1054
    invoke-virtual {v2, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    throw v1

    .line 1058
    :cond_17
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 1059
    .line 1060
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 1061
    .line 1062
    const/4 v3, 0x4

    .line 1063
    new-array v3, v3, [J

    .line 1064
    .line 1065
    fill-array-data v3, :array_25

    .line 1066
    .line 1067
    .line 1068
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    const/4 v3, 0x0

    .line 1076
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 1077
    .line 1078
    .line 1079
    throw v1

    .line 1080
    nop

    .line 1081
    :array_0
    .array-data 8
        -0xb4134b1c327893L
        0x53321936e7602decL    # 5.89876534838497E92
        -0x494f7fb9311b014aL    # -2.890367336279131E-45
    .end array-data

    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    :array_1
    .array-data 8
        0x65208945b5f7345fL    # 1.3401816824824606E179
        0x3beadfa0253bfcceL
        0x374914b061c52c5fL    # 2.249325406048412E-42
        0xb91d5f14c9353b4L
        0x47915b91eb30c9d8L    # 5.768083631395064E36
    .end array-data

    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    :array_2
    .array-data 8
        -0x4836096c602514ecL    # -5.960856104830025E-40
        0x3d70ada98a4b917aL    # 9.480554711210033E-13
    .end array-data

    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    :array_3
    .array-data 8
        -0x5d03e643b005826cL
        0x7936bc6e1923e8cbL    # 7.871747521088082E275
        0xcb64a02213c739dL
        0x9e5eb3a80b92c4aL
    .end array-data

    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    :array_4
    .array-data 8
        -0x6290466eb76cde5fL    # -6.725000310877307E-167
        -0x87a0606ce065722L
    .end array-data

    :array_5
    .array-data 8
        0x4f9ad0a4bc35aee8L    # 3.0321938032907952E75
        -0x51dae8d46ef6d4bbL    # -2.1204024846085974E-86
        -0x698f0335ff587f46L
    .end array-data

    :array_6
    .array-data 8
        -0x2124300dcd3b2517L    # -8.890672550384049E148
        0x7684814cb721e1d8L    # 8.07100530837377E262
        0x32059852f0eca1b5L    # 1.0012545577114138E-67
        -0x3cad429cf1679b21L    # -2.109913090028838E16
        -0x615faf6b403cf7e5L    # -3.626379716469827E-161
    .end array-data

    :array_7
    .array-data 8
        0x52a37b0fe7bf75adL    # 1.2400909393197593E90
        -0x585eb8de42601ce9L    # -8.56449222289842E-118
        -0x77e0a0dc3bb634b5L
    .end array-data

    :array_8
    .array-data 8
        0x43bdf060b199850cL    # 2.15733053741157888E18
        -0x60153122b3aadf2fL    # -6.248239920684559E-155
        0x642e440d8dff950L
    .end array-data

    :array_9
    .array-data 8
        0x61f255d946677fb8L    # 6.599131501031127E163
        0x144f8f6c62ba7416L    # 7.499865063989113E-211
        0x449b317ecbeeba9cL    # 3.2104230538961622E22
        -0x49147bea17be19cfL    # -3.85580714809536E-44
        0x5ccbdf55dca914d0L    # 1.037247615658753E139
        -0x62b4732fd1898c72L    # -1.4600066718375197E-167
        -0x4eb062cd786df883L    # -3.5785838967387486E-71
        0x2bf4ddf40e89fee0L    # 6.105785320265672E-97
        -0x4527c66aaf1e2abeL    # -3.130999416677009E-25
    .end array-data

    :array_a
    .array-data 8
        0x4d15502db0337999L    # 2.1919351898732278E63
        -0x2dfebd4ee16fd31eL    # -1.0730069056555805E87
        0x22d537048ab6d9a4L    # 6.958943238476868E-141
    .end array-data

    :array_b
    .array-data 8
        -0x7fb3bf8cf50f4b17L    # -3.143112121301649E-307
        -0x71e3dd73d8fbf640L
        0x390acdccd557fad5L    # 6.4528058317735664E-34
        -0x1e131d244d7384e6L    # -5.198254614691127E163
        -0x3200bcb3b18cc357L    # -5.267785380466086E67
        -0x6fccd6a447cf07a6L
        -0x6c64c6d4ec1fccaeL    # -3.158814198028748E-214
        0x728a9144b3195213L    # 5.668869446489495E243
    .end array-data

    :array_c
    .array-data 8
        -0x4a462a000ede0731L    # -6.905337963365049E-50
        0x196b3957b618f607L    # 3.128416320733565E-186
        -0x16672797175f8f0aL    # -4.754471651643703E200
        0x6c177237e1653c7cL
        0x66d6e3871f9eba08L    # 2.489774278783643E187
    .end array-data

    :array_d
    .array-data 8
        -0x76fb03abce74fa71L    # -3.254141658846677E-265
        0x26bd253464865e3fL
        -0x22ce6882915cff99L    # -8.379675914906475E140
    .end array-data

    :array_e
    .array-data 8
        0x21a9ab5cc1f28e8bL
        0x4711d3558f80ecbbL    # 2.313885345687328E34
        -0x1a190980c8502f8dL    # -7.622785808911872E182
        0x64af556e10dd9720L    # 9.919717443238735E176
        -0x3d9e2a957259b135L    # -6.127597929464623E11
    .end array-data

    :array_f
    .array-data 8
        0x2243a4c7dc814c7dL
        0x78d85f567ff09889L    # 1.3184832340158665E274
        0x5a0613c6cbf396a4L    # 4.670175777938609E125
    .end array-data

    :array_10
    .array-data 8
        0x44e27cb22d8f0ee7L    # 6.984226562576038E23
        -0x76e8e43021fe1052L    # -7.166683440586937E-265
        -0x720e54cffb2943b6L
        0x4ca5e972b11e2ad7L    # 1.7605537935084648E61
        0x2c114650846a65b4L
    .end array-data

    :array_11
    .array-data 8
        -0x32e72349dd7684d2L    # -2.5569242482564272E63
        -0x1b575adfa574f8f4L    # -7.802193804500842E176
        -0x5ffdcff56d29c7f6L
    .end array-data

    :array_12
    .array-data 8
        -0x73dd5d992f84af12L
        -0x2d6dc3c8bcd39a1aL    # -5.804030560247279E89
        0x6b3dd0188513dc72L    # 3.828607656441158E208
        0xd6e205372c8a843L
        -0x1696ce95e0238ee5L    # -6.02625451964379E199
    .end array-data

    :array_13
    .array-data 8
        0x6d53e0a78f194e45L    # 4.3855076342897405E218
        0x3ca526e14c0c80c5L    # 1.4677061830061752E-16
        -0x5355efd8421e1deaL    # -1.561843571360484E-93
    .end array-data

    :array_14
    .array-data 8
        0x19b32bfe44279cbfL    # 7.049960122491847E-185
        0x210c63f3d311ff66L
        -0x6dfafdf6fba6286aL    # -7.264686562535537E-222
        -0x34a4a90b11466b8dL    # -1.0474482458146186E55
        0x61cdd91d812ef558L    # 1.3428405787056254E163
    .end array-data

    :array_15
    .array-data 8
        0x1d8bb671a4802543L
        0x3675c37ca5faeaedL    # 2.3826037743238077E-46
        0x4866db03306cb01eL    # 6.221863649915941E40
    .end array-data

    :array_16
    .array-data 8
        0xb74f621b9de3ac8L
        0x6adf49929263dfccL    # 6.278073803560897E206
        0xc30cec04fdba142L
        -0x7685c752ee1ac755L
        0x1afca5e3e062a830L
        -0x63304f43d4836c1bL    # -6.560240868274775E-170
        -0x2de135cb5a1b266aL    # -3.828128932674698E87
        -0x6fc6a9580e5ff3f2L
        0xd38e9764e8c850dL    # 5.70074298750816E-245
    .end array-data

    :array_17
    .array-data 8
        -0x2653e37484173d66L    # -9.291638542986858E123
        -0x4a6eda37b3096a4cL    # -1.1457866746901611E-50
        0x3d59d4e17fc3e59L
        -0x4e10c73bf7c6d367L    # -3.6189960794283884E-68
        0x246de3e41dcda8a8L
    .end array-data

    :array_18
    .array-data 8
        0x518171fd7959b3f9L    # 4.236298878999844E84
        0xf1ebe2c41ffb23L
        -0x578ac64a145abc92L    # -8.61902595744781E-114
        0x5391176aca4c47efL    # 3.5651528578559926E94
        0x65d48a5f5fa1a8f1L    # 3.409327933676278E182
        0x4a73d8fc0b0bad32L    # 4.641167018525376E50
    .end array-data

    :array_19
    .array-data 8
        -0x6ea5b78aec58214bL    # -4.437913053180992E-225
        -0x428b2ea2722077faL    # -1.1833568449721197E-12
        -0x5f3358f9ed1cf36cL
        -0x58d845da138c5eaaL    # -4.594276752641824E-120
        0x7b1d7f3294dff2bbL    # 1.0965584459849948E285
        0x6ff597ddf8f3bad1L    # 2.095242591178444E231
        -0x43382aaffb683234L    # -6.61505634349751E-16
    .end array-data

    :array_1a
    .array-data 8
        0x7937f762563c7bacL    # 8.297702096459881E275
        0x15c41f0e5a3bd11aL    # 8.022121874605214E-204
        0x72f108716f5ca93aL    # 4.652079609794594E245
        0x53b66a07feaf7d2aL    # 1.8701721677957506E95
    .end array-data

    :array_1b
    .array-data 8
        0x5ea6b93ef3c3f9d6L    # 9.079989488608738E147
        0x5846999081cc3499L    # 1.7809597461912735E117
        -0x1cbc3ca952fe8e41L    # -1.4916995066713958E170
        -0x2f7400f6028c9daL
        0x15cca11a2be4620eL
    .end array-data

    :array_1c
    .array-data 8
        0x5af0c6bea68041b7L    # 1.1628816944920128E130
        -0x1b2035920e4befb5L    # -8.0515241120603075E177
        0x41224e47a040d4d2L    # 599843.8129946238
        0x7a50bd1b6c054aa5L    # 1.5192095607851096E281
        -0x741dcce5df6765c6L    # -1.98589319632339E-251
    .end array-data

    :array_1d
    .array-data 8
        0x7b7cc67f89f8e545L    # 6.846317111401735E286
        0x783ece57e7e01bc6L
        0x36afba02c92ca369L    # 2.7786526797911223E-45
    .end array-data

    :array_1e
    .array-data 8
        0x43fb79dfcf2dedfdL    # 3.167775347404543E19
        -0x464513ce167e6277L    # -1.3273884673878956E-30
        0xe221625d76411ceL
        0x70aeb50299e68da2L    # 6.102180249229397E234
        -0x4338dbe4b0e11ae1L    # -6.422929328193918E-16
    .end array-data

    :array_1f
    .array-data 8
        0xd76217eb9d8ff46L
        -0x7c2aa7e4e113070bL    # -3.422183825613879E-290
        0x52788b7086b2929aL    # 1.9530628096485977E89
        0x65b86487a2325da7L    # 1.0121786602709808E182
        0x59e7c0891f9c2545L    # 1.2561169929139937E125
        0x6600081d271b710fL    # 2.1287605541415014E183
        0x6839089d2d07e6c3L    # 1.1421453387475054E194
    .end array-data

    :array_20
    .array-data 8
        -0x47663448ff9f9bbL
        0xe66bb2dc489cb13L    # 2.727188711291772E-239
        0x2aa23df44f7d3503L
        0x2831abcf3fdd3a0aL    # 4.48483029972061E-115
        0x5298ac9f03c998cL
        -0x26a1726999944716L    # -3.155827088928167E122
    .end array-data

    :array_21
    .array-data 8
        -0x4899b8d8d7bfa6aL    # -5.327653565613769E286
        -0x29bde67cbccbce8bL    # -3.3209234581233294E107
        0x77db9fb59fedce0eL    # 2.2802401364817103E269
        -0x2465da162862f523L    # -1.8560010947485494E133
    .end array-data

    :array_22
    .array-data 8
        0x49929e39a78f2af1L    # 2.6572593508488226E46
        0x765254c09f9c8baL
        0x35999af0cda3546fL    # 1.7109193372486575E-50
        -0x48d33334f444f6e3L    # -6.457177322324638E-43
        -0x68142f5b2eb3a2c7L
    .end array-data

    :array_23
    .array-data 8
        -0x50084f1cd3fb76fbL    # -1.2787448674614766E-77
        0x111856cd9a9851fdL
        0x3e724f7620822004L    # 6.821154141707387E-8
        0x7c6bf0adbd661db8L    # 2.1782843648110123E291
    .end array-data

    :array_24
    .array-data 8
        0x54db7e0dbd5dca1fL    # 6.013276559536247E100
        -0x62c28a8a3078c985L    # -7.805808744732397E-168
    .end array-data

    :array_25
    .array-data 8
        -0x4dad893f64489de5L    # -2.739452966561613E-66
        -0x3e56af1f1b87b4b3L    # -2.123654262349495E8
        -0x203a2c82c13235dcL
        -0x554321135ab806a6L
    .end array-data
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x3

    .line 3
    :try_start_0
    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 4
    .line 5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    if-nez v3, :cond_9

    .line 11
    .line 12
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-class v6, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v7, v1, [J

    .line 33
    .line 34
    fill-array-data v7, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Ljava/lang/ClassLoader;

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    if-ne v7, v8, :cond_0

    .line 64
    .line 65
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :catchall_0
    move-exception v3

    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_0
    if-eqz v7, :cond_1

    .line 73
    .line 74
    :try_start_4
    invoke-static {v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .line 76
    .line 77
    :catch_0
    :try_start_5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-nez v7, :cond_2

    .line 86
    .line 87
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 89
    return v5

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    goto/16 :goto_10

    .line 92
    .line 93
    :cond_2
    :try_start_7
    sget-boolean v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    .line 94
    .line 95
    if-nez v7, :cond_8

    .line 96
    .line 97
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v7, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 103
    if-eqz v8, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const/4 v8, 0x1

    .line 107
    :try_start_8
    invoke-static {p0, p1, p2, v8}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v9, :cond_7

    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zza()Ljava/lang/ClassLoader;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    if-eqz v9, :cond_5

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .line 131
    const/16 v10, 0x1d

    .line 132
    .line 133
    if-lt v9, v10, :cond_6

    .line 134
    .line 135
    invoke-static {}, L뒘땟땧딨뎽뎠도땋뒾듐듰둡돨뒋땪땤뒼되듔딜딐땟듼뒼듨땩땧땫땀땋된듬뎹돴뒝딸드됩땳땔땍땨땹돵디뎬딃땰된돳뒈땲뒝돶딟땍뎹땨땸돠땳딀둣뎬됩듽돰둣땔뒘됫뎬뒋둥돸땰딃듻뎽둥뒈딃따뒷듰땁딤뎨딻땁딎뒉듨듻뎹뒹뒹땦뒋딻땡돶땩뒘딎듻땳땤듻딃딃두땯땋딐둔땔됫뒾딀땍뒙뒀땝둑땔든딠둘뒹;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()V

    .line 136
    .line 137
    .line 138
    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-static {v9, v10}, L뒘땟땧딨뎽뎠도땋뒾듐듰둡돨뒋땪땤뒼되듔딜딐땟듼뒼듨땩땧땫땀땋된듬뎹돴뒝딸드됩땳땔땍땨땹돵디뎬딃땰된돳뒈땲뒝돶딟땍뎹땨땸돠땳딀둣뎬됩듽돰둣땔뒘됫뎬뒋둥돸땰딃듻뎽둥뒈딃따뒷듰땁딤뎨딻땁딎뒉듨듻뎹뒹뒹땦뒋딻땡돶땩뒘딎듻땳땤듻딃딃두땯땋딐둔땔됫뒾딀땍뒙뒀땝둑땔든딠둘뒹;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DelegateLastClassLoader;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    goto :goto_0

    .line 152
    :cond_6
    new-instance v9, Lcom/google/android/gms/dynamite/zzc;

    .line 153
    .line 154
    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-direct {v9, v10, v11}, Lcom/google/android/gms/dynamite/zzc;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 164
    .line 165
    .line 166
    :goto_0
    invoke-static {v9}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    sput-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_8
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 173
    .line 174
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 175
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 176
    return v8

    .line 177
    :cond_7
    :goto_1
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 178
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 179
    return v8

    .line 180
    :catch_1
    :try_start_d
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 198
    .line 199
    :goto_3
    monitor-exit v6

    .line 200
    goto :goto_6

    .line 201
    :goto_4
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 202
    :try_start_e
    throw v3
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 203
    :catch_2
    move-exception v3

    .line 204
    goto :goto_5

    .line 205
    :catch_3
    move-exception v3

    .line 206
    goto :goto_5

    .line 207
    :catch_4
    move-exception v3

    .line 208
    :goto_5
    :try_start_f
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v7, v1, [J

    .line 211
    .line 212
    fill-array-data v7, :array_1

    .line 213
    .line 214
    .line 215
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    const/4 v6, 0x5

    .line 227
    new-array v6, v6, [J

    .line 228
    .line 229
    fill-array-data v6, :array_2

    .line 230
    .line 231
    .line 232
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 239
    .line 240
    :goto_6
    sput-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 241
    .line 242
    :cond_9
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 243
    :try_start_10
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 244
    .line 245
    .line 246
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 247
    if-eqz v2, :cond_a

    .line 248
    .line 249
    :try_start_11
    invoke-static {p0, p1, p2, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    .line 250
    .line 251
    .line 252
    move-result p0
    :try_end_11
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 253
    return p0

    .line 254
    :catchall_2
    move-exception p1

    .line 255
    goto/16 :goto_11

    .line 256
    .line 257
    :catch_5
    move-exception p1

    .line 258
    :try_start_12
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array v1, v1, [J

    .line 261
    .line 262
    fill-array-data v1, :array_3

    .line 263
    .line 264
    .line 265
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 275
    .line 276
    new-array p2, v0, [J

    .line 277
    .line 278
    fill-array-data p2, :array_4

    .line 279
    .line 280
    .line 281
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    return v5

    .line 288
    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    .line 289
    .line 290
    .line 291
    move-result-object v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 292
    if-nez v6, :cond_b

    .line 293
    .line 294
    goto/16 :goto_e

    .line 295
    .line 296
    :cond_b
    :try_start_13
    invoke-virtual {v6}, Lcom/google/android/gms/dynamite/zzq;->zze()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-lt v2, v1, :cond_11

    .line 301
    .line 302
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 303
    .line 304
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    check-cast v2, Lcom/google/android/gms/dynamite/zzn;

    .line 309
    .line 310
    if-eqz v2, :cond_c

    .line 311
    .line 312
    iget-object v2, v2, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 313
    .line 314
    if-eqz v2, :cond_c

    .line 315
    .line 316
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    goto/16 :goto_e

    .line 321
    .line 322
    :catch_6
    move-exception p1

    .line 323
    goto/16 :goto_c

    .line 324
    .line 325
    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    check-cast v2, Ljava/lang/Long;

    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 338
    .line 339
    .line 340
    move-result-wide v10

    .line 341
    move-object v8, p1

    .line 342
    move v9, p2

    .line 343
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/dynamite/zzq;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Landroid/database/Cursor;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 352
    .line 353
    if-eqz p1, :cond_10

    .line 354
    .line 355
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 356
    .line 357
    .line 358
    move-result p2

    .line 359
    if-nez p2, :cond_d

    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_d
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 363
    .line 364
    .line 365
    move-result p2

    .line 366
    if-lez p2, :cond_e

    .line 367
    .line 368
    invoke-static {p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z

    .line 369
    .line 370
    .line 371
    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 372
    if-eqz v0, :cond_e

    .line 373
    .line 374
    goto :goto_7

    .line 375
    :catchall_3
    move-exception p2

    .line 376
    goto :goto_9

    .line 377
    :catch_7
    move-exception p2

    .line 378
    goto :goto_a

    .line 379
    :cond_e
    move-object v4, p1

    .line 380
    :goto_7
    if-eqz v4, :cond_f

    .line 381
    .line 382
    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 383
    .line 384
    .line 385
    :cond_f
    move v5, p2

    .line 386
    goto/16 :goto_e

    .line 387
    .line 388
    :cond_10
    :goto_8
    :try_start_16
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 389
    .line 390
    new-array v2, v1, [J

    .line 391
    .line 392
    fill-array-data v2, :array_5

    .line 393
    .line 394
    .line 395
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 402
    .line 403
    new-array v2, v0, [J

    .line 404
    .line 405
    fill-array-data v2, :array_6

    .line 406
    .line 407
    .line 408
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 412
    .line 413
    .line 414
    if-eqz p1, :cond_13

    .line 415
    .line 416
    :try_start_17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 417
    .line 418
    .line 419
    goto/16 :goto_e

    .line 420
    .line 421
    :goto_9
    move-object v4, p1

    .line 422
    goto/16 :goto_f

    .line 423
    .line 424
    :goto_a
    move-object v4, p1

    .line 425
    goto :goto_d

    .line 426
    :cond_11
    const/4 v3, 0x2

    .line 427
    if-ne v2, v3, :cond_12

    .line 428
    .line 429
    :try_start_18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 430
    .line 431
    new-array v3, v1, [J

    .line 432
    .line 433
    fill-array-data v3, :array_7

    .line 434
    .line 435
    .line 436
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 443
    .line 444
    const/16 v3, 0xa

    .line 445
    .line 446
    new-array v3, v3, [J

    .line 447
    .line 448
    fill-array-data v3, :array_8

    .line 449
    .line 450
    .line 451
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v6, v2, p1, p2}, Lcom/google/android/gms/dynamite/zzq;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    goto :goto_e

    .line 466
    :cond_12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 467
    .line 468
    new-array v3, v1, [J

    .line 469
    .line 470
    fill-array-data v3, :array_9

    .line 471
    .line 472
    .line 473
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 480
    .line 481
    const/16 v3, 0x9

    .line 482
    .line 483
    new-array v3, v3, [J

    .line 484
    .line 485
    fill-array-data v3, :array_a

    .line 486
    .line 487
    .line 488
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v6, v2, p1, p2}, Lcom/google/android/gms/dynamite/zzq;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    .line 499
    .line 500
    .line 501
    move-result v5
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 502
    goto :goto_e

    .line 503
    :goto_b
    move-object p2, p1

    .line 504
    goto :goto_f

    .line 505
    :goto_c
    move-object p2, p1

    .line 506
    :goto_d
    :try_start_19
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 507
    .line 508
    new-array v1, v1, [J

    .line 509
    .line 510
    fill-array-data v1, :array_b

    .line 511
    .line 512
    .line 513
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 523
    .line 524
    new-array p2, v0, [J

    .line 525
    .line 526
    fill-array-data p2, :array_c

    .line 527
    .line 528
    .line 529
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 533
    .line 534
    .line 535
    if-eqz v4, :cond_13

    .line 536
    .line 537
    :try_start_1a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 538
    .line 539
    .line 540
    :cond_13
    :goto_e
    return v5

    .line 541
    :catchall_4
    move-exception p1

    .line 542
    goto :goto_b

    .line 543
    :goto_f
    if-eqz v4, :cond_14

    .line 544
    .line 545
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 546
    .line 547
    .line 548
    :cond_14
    throw p2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 549
    :goto_10
    :try_start_1b
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 550
    :try_start_1c
    throw p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 551
    :goto_11
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 552
    .line 553
    .line 554
    throw p1

    .line 555
    :array_0
    .array-data 8
        0x703dae7ef34d1bc2L    # 4.608125921482205E232
        0x1a7ce4448fe08e54L
        -0x5cca461a26241021L    # -4.561052333533066E-139
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    :array_1
    .array-data 8
        0x6e7c95f9d6034e0dL    # 1.6532852922185978E224
        -0x3da20142fbadb9b7L    # -5.153114074330982E11
        -0x31a20cfb60401b19L    # -3.2297249697402936E69
    .end array-data

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :array_2
    .array-data 8
        0x61e0aa404d426b49L    # 2.998983793699187E163
        0x33726d2af7a8548fL    # 7.166749889063609E-61
        -0x618fe1b1fbded97dL    # -4.478408196894695E-162
        0x671245479ecc8beaL    # 3.179879663612005E188
        -0x1ae2b1cc43c6a667L    # -1.1875344992352259E179
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_3
    .array-data 8
        0x3350d4e4536e6281L    # 1.6366149970869668E-61
        -0x1fd4231f66a306ddL    # -1.8678954953982061E155
        0x7dd4d9ff6bf6ba1eL    # 1.3636852561901412E298
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_4
    .array-data 8
        -0x2bd172449346ee87L    # -3.2631090670464196E97
        0x1722d630a8cadd1L
        -0x6f3d2a8335812a0bL    # -6.211183610350497E-228
        -0x5dcc1e701948216fL    # -6.368578919241348E-144
        0x4d28d6fc90f9e86cL    # 5.1092487349210625E63
        -0x244a3693c44497f9L    # -6.185740452503141E133
        0x785deaf63c3fd14dL    # 6.322168223657134E271
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_5
    .array-data 8
        0x42f1a8a371cf5052L    # 3.106559091642931E14
        -0x160fda97db4ff42aL
        0x7cf344e7fd939ed4L    # 7.691635205550438E293
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_6
    .array-data 8
        -0x5bf6acdd7a4160d5L
        -0x5c81e000b87e6d48L
        0xd1074730f5a128L
        -0x435e9fc492472a3cL
        0x15dfee9431e64c8L    # 4.374052999502788E-302
        -0x4e5be728ebecbfa6L    # -1.4559381659664386E-69
        0x188205707ac4deaaL
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_7
    .array-data 8
        0x39a2de37d741010fL    # 4.6513308655730415E-31
        -0x556931d61fde82f1L
        -0x3dbf2faf011164b5L    # -1.4442889161321323E11
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_8
    .array-data 8
        0x6558b4a7be04cacaL    # 1.60182222897255E180
        0x2c51bb8df880cb8fL    # 3.320738329023036E-95
        0x66bcc04bf2817910L
        -0x51ed0b66300c4d25L    # -9.528748408414166E-87
        0x145b2b4e853b1e47L    # 1.291276850315391E-210
        -0x8276b45f7ef6b24L
        -0x3ccf8d0f5b659bbaL    # -4.629977506669638E15
        0x5e4d1b2f2e8b044fL    # 1.8172440467939883E146
        0x4add3c169e1fd94L
        0x5243f38282c110a0L    # 1.984440084011951E88
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    :array_9
    .array-data 8
        0x5237516826234afeL    # 1.159658095744493E88
        0x2a237f9699c5a87dL
        0xdb5e16ca7d26790L
    .end array-data

    :array_a
    .array-data 8
        -0x4d948232827da97aL    # -8.157706577715754E-66
        -0x66c67926c3b3382cL    # -3.66672440422568E-187
        0x2b786d53ba42274cL    # 2.7919820250353313E-99
        -0x261967c32c8f04a2L    # -1.1949077472706136E125
        -0x21328f9514cd5f68L    # -4.7053601755249627E148
        0x7381501a9cb469c7L    # 2.421009050074515E248
        -0x3ee674ff2dc149a6L    # -418496.2053173535
        0x3abf61a0a12b0afaL
        0x2f338ab756a28a9fL    # 2.5751769566672995E-81
    .end array-data

    :array_b
    .array-data 8
        -0x128ed381d21e3e1cL
        -0x11b118f8e1e169c6L    # -2.2340852944351898E223
        -0x799375a99b90636fL
    .end array-data

    :array_c
    .array-data 8
        0x466f7bd7c8aed3cbL    # 1.9955204487197827E31
        0x603b0fb7fe40e8L
        -0x1b68e52738ac3d0bL    # -3.6573035789788047E176
        -0x1ddd8dbf7fcfa5abL    # -5.311251116547183E164
        -0x4cefb3fdaaa4c2eaL    # -9.903898796698917E-63
        -0x38d57d16744900fdL    # -6.882746748594559E34
        -0x346e784384847bb1L    # -1.0745993446555925E56
    .end array-data
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    sget-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v8, 0x4

    .line 26
    new-array v8, v8, [J

    .line 27
    .line 28
    fill-array-data v8, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v9, v3, [J

    .line 41
    .line 42
    fill-array-data v9, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const/4 v11, 0x1

    .line 53
    if-eq v11, p2, :cond_0

    .line 54
    .line 55
    move-object p0, v8

    .line 56
    :cond_0
    new-instance p2, Landroid/net/Uri$Builder;

    .line 57
    .line 58
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v9, v3, [J

    .line 64
    .line 65
    fill-array-data v9, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {p2, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v9, v2, [J

    .line 82
    .line 83
    fill-array-data v9, :array_3

    .line 84
    .line 85
    .line 86
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {p2, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array p2, v1, [J

    .line 108
    .line 109
    fill-array-data p2, :array_4

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const/4 v9, 0x0

    .line 132
    const/4 v10, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 136
    .line 137
    .line 138
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 139
    if-eqz p0, :cond_8

    .line 140
    .line 141
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    const/4 p1, 0x0

    .line 148
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-lez p2, :cond_4

    .line 153
    .line 154
    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 155
    .line 156
    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    :try_start_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    sput-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v1, v1, [J

    .line 166
    .line 167
    fill-array-data v1, :array_5

    .line 168
    .line 169
    .line 170
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-ltz v1, :cond_1

    .line 182
    .line 183
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    sput v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :catchall_0
    move-exception p1

    .line 191
    goto :goto_2

    .line 192
    :cond_1
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v3, v2, [J

    .line 195
    .line 196
    fill-array-data v3, :array_6

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-ltz v1, :cond_3

    .line 211
    .line 212
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_2

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_2
    const/4 v11, 0x0

    .line 220
    :goto_1
    sput-boolean v11, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    .line 221
    .line 222
    move p1, v11

    .line 223
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z

    .line 225
    .line 226
    .line 227
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    if-eqz v1, :cond_4

    .line 229
    .line 230
    move-object p0, v4

    .line 231
    goto :goto_3

    .line 232
    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    :try_start_5
    throw p1

    .line 234
    :cond_4
    :goto_3
    if-eqz p3, :cond_6

    .line 235
    .line 236
    if-nez p1, :cond_5

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_5
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 240
    .line 241
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array p3, v0, [J

    .line 244
    .line 245
    fill-array-data p3, :array_7

    .line 246
    .line 247
    .line 248
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-direct {p1, p2, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 256
    .line 257
    .line 258
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 259
    :catchall_1
    move-exception p1

    .line 260
    goto :goto_4

    .line 261
    :catch_0
    move-exception p1

    .line 262
    goto :goto_6

    .line 263
    :goto_4
    move-object v4, p0

    .line 264
    goto :goto_7

    .line 265
    :cond_6
    :goto_5
    if-eqz p0, :cond_7

    .line 266
    .line 267
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    :cond_7
    return p2

    .line 271
    :cond_8
    :try_start_6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array p2, v1, [J

    .line 274
    .line 275
    fill-array-data p2, :array_8

    .line 276
    .line 277
    .line 278
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 285
    .line 286
    const/4 p2, 0x7

    .line 287
    new-array p2, p2, [J

    .line 288
    .line 289
    fill-array-data p2, :array_9

    .line 290
    .line 291
    .line 292
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 299
    .line 300
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array p3, v0, [J

    .line 303
    .line 304
    fill-array-data p3, :array_a

    .line 305
    .line 306
    .line 307
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-direct {p1, p2, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    .line 315
    .line 316
    .line 317
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 318
    :catchall_2
    move-exception p0

    .line 319
    move-object p1, p0

    .line 320
    goto :goto_7

    .line 321
    :catch_1
    move-exception p0

    .line 322
    move-object p1, p0

    .line 323
    move-object p0, v4

    .line 324
    :goto_6
    :try_start_7
    instance-of p2, p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 325
    .line 326
    if-eqz p2, :cond_9

    .line 327
    .line 328
    throw p1

    .line 329
    :cond_9
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array v2, v2, [J

    .line 343
    .line 344
    fill-array-data v2, :array_b

    .line 345
    .line 346
    .line 347
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p3

    .line 364
    invoke-direct {p2, p3, p1, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    .line 365
    .line 366
    .line 367
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 368
    :goto_7
    if-eqz v4, :cond_a

    .line 369
    .line 370
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 371
    .line 372
    .line 373
    :cond_a
    throw p1

    .line 374
    nop

    .line 375
    :array_0
    .array-data 8
        -0x20008dda2de856d8L
        -0x4a9ea94a511779a5L    # -1.4481966119232236E-51
        -0x14066cc17a00e522L    # -1.3452888453751169E212
        0x412e2c1edeaa705cL    # 988687.4348940956
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
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
    .line 394
    .line 395
    :array_1
    .array-data 8
        -0x2fbfbca512f71751L    # -3.7662780816840725E78
        0x1cfbd433b810c66aL
    .end array-data

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
    .line 406
    .line 407
    :array_2
    .array-data 8
        0x4f598f9ac139207eL    # 1.8064919411044138E74
        -0x491b20e489030f25L    # -2.9247218876177336E-44
    .end array-data

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
    .line 418
    .line 419
    :array_3
    .array-data 8
        -0x4ed624d2fbe4f272L    # -7.317032740314818E-72
        0x1cc427a616a94b57L
        -0x77435f9f3a04945cL    # -1.3871765822019E-266
        -0x577518e67f2aabbfL    # -2.184882283583005E-113
        0x6f11148eb040e789L    # 1.0115615185028634E227
    .end array-data

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
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_4
    .array-data 8
        -0x211e776a9fb0ffd3L    # -1.1209783229282133E149
        -0x3c67a33f64e21ee9L    # -4.3887243180535136E17
        -0xeca4e534d0adc94L    # -2.2072781578400626E237
    .end array-data

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
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_5
    .array-data 8
        -0x10c802e23b325f18L    # -5.682822548263155E227
        -0x2783d3bb72461ee7L    # -1.7761113753489462E118
        0xa093a6af6720873L
    .end array-data

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
    :array_6
    .array-data 8
        -0x5b04b1d1172fd43L
        -0x1e384e9d2003dbe0L    # -1.0659238195489623E163
        0x560790b51cc9609aL    # 2.7023449676294326E106
        -0x22bc41757a14f7aaL    # -1.8810041391781874E141
        0x4d8500b2fa38dc03L    # 2.7648071633515023E65
    .end array-data

    .line 476
    .line 477
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
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :array_7
    .array-data 8
        -0x2fc1cdcdb811df00L    # -3.4964671583458213E78
        -0x6e5e92433a664e63L    # -9.417101902079808E-224
        -0x45b079ab857d0829L    # -7.957959780997206E-28
        0x19350d8e6c1b2a69L    # 3.024097271448075E-187
        -0x22ce6f8da648ab0bL    # -8.366570418727302E140
        -0x6e92f86b24815a61L    # -9.803350398741684E-225
        0x5f135353af08e92aL    # 9.884358749089287E149
        0x33a556701c5bae92L    # 6.639225529224082E-60
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_8
    .array-data 8
        0x15ba9a9bd1158664L
        -0x298bb9521e4eb02eL    # -2.976203904672938E108
        -0x6a5f68ec24f32e32L    # -1.653572266593823E-204
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_9
    .array-data 8
        -0x7362af25adf8398bL
        -0x3d073e8b0eb9e667L    # -4.3550671558287356E14
        0x3d2867a4eca9c05L
        0x54fa3b79c6f85794L    # 2.295067043004631E101
        0x58a8935b48d12335L    # 1.2394603547145653E119
        -0x5d47705f950b9412L
        -0x36820ce9e4d32de7L    # -1.0686358697164101E46
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    :array_a
    .array-data 8
        0x1450f2ae09670290L    # 8.054909800302765E-211
        0x416d91e3b3565726L    # 1.5503133604289602E7
        0x3f89fe07ae3984ebL    # 0.01269155502740423
        0x4a15c4f52fc0218bL    # 7.953991104315078E48
        -0xf797d0719ccbef4L    # -1.1183898378846394E234
        0x61bcfe1d241f3becL    # 6.52176763776966E162
        0x7f1c5f0a92dc807bL    # 1.9456028177426185E304
        0x5261c2de2f7bbeb8L    # 7.0664470798218E88
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_b
    .array-data 8
        0x4dafd414c03064c5L    # 1.6759630642071617E66
        -0x706ee9bcdbd63514L
        -0x5fab8658b7767056L    # -6.10844334833009E-153
        0x3bcca1f1de54cf26L    # 1.2126376457230053E-20
        0x12a51bcd675f6e56L    # 7.474680816702176E-219
    .end array-data
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :array_0
    .array-data 8
        0x20e3035c84ff8dccL
        -0x34c028ffc1134216L    # -3.0496515197833E54
        -0x61446024d32d6975L
        0x7925abf02e9e730fL    # 3.7516101326515974E275
        -0x2bba6a2ca6dfa1a1L    # -9.22116546788127E97
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 8
        -0x183b28d3addeffa0L    # -7.428408991116403E191
        -0x5049dcc72df34ec7L    # -7.468121954863688E-79
        -0x268e811709e65bbaL    # -7.228540509290834E122
    .end array-data
.end method

.method private static zzd(Ljava/lang/ClassLoader;)V
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v3, v0, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/os/IBinder;

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    move-object v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v0, v0, [J

    .line 39
    .line 40
    fill-array-data v0, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    instance-of v2, v0, Lcom/google/android/gms/dynamite/zzr;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    check-cast v0, Lcom/google/android/gms/dynamite/zzr;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :catch_1
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_2
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :catch_3
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :catch_4
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamite/zzr;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamite/zzr;-><init>(Landroid/os/IBinder;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzr;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    return-void

    .line 79
    :goto_1
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 80
    .line 81
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 v3, 0x6

    .line 84
    new-array v3, v3, [J

    .line 85
    .line 86
    fill-array-data v3, :array_2

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v0, v2, p0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        -0x3d58eceb9d18445fL    # -1.2685356921821814E13
        0x7f23c84cedf8ac62L    # 2.7132207908614776E304
        0x188e2670f22e7e08L
        -0x6f2a7fb590d4ce45L    # -1.418158225942022E-227
        0x70f801a9bd75bdb6L    # 1.5266004911887E236
        0x5fc0fb1a8b3459a2L    # 1.7787210474051144E153
        -0x2717d76801dc7675L    # -1.9494832011255166E120
        -0x5f05f4e493e6f9eaL    # -7.956089052620306E-150
    .end array-data

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
        0x3ea8a53175989fc7L    # 7.34486756919118E-7
        0x7dc455f9486bf417L    # 6.649787061259028E297
        -0x71f466e3ae29644eL
        -0x2859fb959544f31dL    # -1.6943823698838592E114
        0x6314083ce5568fb8L    # 1.8900172894156162E169
        -0x25b748b8e48ba96fL    # -8.365369462415741E126
        -0x36afea7c667278a3L    # -1.434744249111465E45
        -0xc9f864554a3e778L    # -5.759770424899568E247
    .end array-data

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
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_2
    .array-data 8
        -0x68969ff73419de9fL    # -6.789240286097438E-196
        0x3c61ef1e6986d4a6L    # 7.7776577728368E-18
        -0x4f1a9c4688dc7cfaL    # -3.783142361609906E-73
        0x32cc3657b0de2e5cL    # 5.357831476232085E-64
        0x217a83f45b678435L    # 2.073676909607371E-147
        -0x7cce2037b0d7ca8fL    # -2.79865674569365E-293
    .end array-data
.end method

.method private static zze(Landroid/database/Cursor;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iput-object p0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private static zzf(Landroid/content/Context;)Z
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return v3

    .line 22
    :cond_1
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v5, 0x5

    .line 34
    new-array v5, v5, [J

    .line 35
    .line 36
    fill-array-data v5, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const v5, 0x989680

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p0, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_2

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v4, 0x4

    .line 68
    new-array v4, v4, [J

    .line 69
    .line 70
    fill-array-data v4, :array_1

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    iget-object p0, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 98
    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 102
    .line 103
    and-int/lit16 p0, p0, 0x81

    .line 104
    .line 105
    if-nez p0, :cond_3

    .line 106
    .line 107
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v1, v0, [J

    .line 110
    .line 111
    fill-array-data v1, :array_2

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v1, 0x6

    .line 123
    new-array v1, v1, [J

    .line 124
    .line 125
    fill-array-data v1, :array_3

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    sput-boolean v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    .line 135
    .line 136
    :cond_3
    if-nez v2, :cond_4

    .line 137
    .line 138
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v0, v0, [J

    .line 141
    .line 142
    fill-array-data v0, :array_4

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    const/4 v0, 0x7

    .line 154
    new-array v0, v0, [J

    .line 155
    .line 156
    fill-array-data v0, :array_5

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    :cond_4
    return v2

    .line 166
    nop

    .line 167
    :array_0
    .array-data 8
        0x45a4277bf4ee145aL    # 3.1187168363151274E27
        0x4923eaf54980021aL    # 2.2209095027915484E44
        -0x2c13c16ad51712dfL    # -1.8853065038398203E96
        -0x57e50a1532438761L    # -1.710611760166017E-115
        -0x74338a1c83f838c9L    # -7.763833264654538E-252
    .end array-data

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
        -0x3204c3e75392becL
        0x7e515bbb7aedafb6L    # 2.9061874115920936E300
        0x7edb16ec6569fa75L    # 1.1610672089590063E303
        -0x2907f6d48d6fa378L    # -9.031863186920035E110
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
    .line 208
    .line 209
    .line 210
    .line 211
    :array_2
    .array-data 8
        0x4497bd6d20bf60cdL    # 2.8027181807826203E22
        0x1a66596ef9555af6L
        0x61431fc36305b68bL    # 3.360842396387109E160
    .end array-data

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
        -0x499ceb8f6105f1cfL    # -1.0443966929780192E-46
        -0x2665ddf8ec10598L    # -1.04775656320092E297
        -0x4d29b36c6ce27bcfL    # -8.46971477210958E-64
        -0x2d7075e11610760L
        -0x54f1e2da6289c5f5L
        0x5be75959e8e00dd4L    # 5.303430576030574E134
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
    :array_4
    .array-data 8
        0x71f4e4fa1820257cL    # 8.707777191055251E240
        -0x684eb88ea36fbe94L
        -0x62304e8483ef8120L
    .end array-data

    :array_5
    .array-data 8
        0x62ba29bf0e8f537aL    # 3.8569706615072163E167
        -0x67b7a4c984159771L    # -1.067687325791515E-191
        -0x3a1382c896ef8934L    # -7.053566136560429E28
        0x4907bbbe81e59255L    # 6.6158995418446735E43
        -0x72832d8cbd0d0fd2L
        0x1e311618d47c0b9fL    # 2.967090564158791E-163
        -0x3a24327502c986bfL    # -3.441832566289377E28
    .end array-data
.end method

.method private static zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x3

    .line 3
    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzq;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v3

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :try_start_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v5, 0x4

    .line 19
    new-array v5, v5, [J

    .line 20
    .line 21
    fill-array-data v5, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/16 v5, 0x9

    .line 42
    .line 43
    new-array v5, v5, [J

    .line 44
    .line 45
    fill-array-data v5, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/os/IBinder;

    .line 64
    .line 65
    if-nez p0, :cond_1

    .line 66
    .line 67
    move-object v4, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v5, v0, [J

    .line 72
    .line 73
    fill-array-data v5, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {p0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    instance-of v5, v4, Lcom/google/android/gms/dynamite/zzq;

    .line 88
    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    check-cast v4, Lcom/google/android/gms/dynamite/zzq;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance v4, Lcom/google/android/gms/dynamite/zzq;

    .line 97
    .line 98
    invoke-direct {v4, p0}, Lcom/google/android/gms/dynamite/zzq;-><init>(Landroid/os/IBinder;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    if-eqz v4, :cond_3

    .line 102
    .line 103
    sput-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzq;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    :try_start_2
    monitor-exit v2

    .line 106
    return-object v4

    .line 107
    :goto_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v1, v1, [J

    .line 110
    .line 111
    fill-array-data v1, :array_3

    .line 112
    .line 113
    .line 114
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v0, v0, [J

    .line 126
    .line 127
    fill-array-data v0, :array_4

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    :cond_3
    monitor-exit v2

    .line 137
    return-object v3

    .line 138
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw p0

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        0x1d1648ba1de4e692L
        0x637727065374e143L    # 1.3980230343812037E171
        -0x68e3d21bf918eedL    # -9.838942569868324E276
        -0x54ed84c84019f519L    # -3.300611730152131E-101
    .end array-data

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
    :array_1
    .array-data 8
        0x68b62585c6147ee1L    # 2.5866859981580143E196
        -0x3abc936d3152bc06L    # -4.696462854019384E25
        -0x364039c4f0f43262L    # -1.813994061896427E47
        -0x1b5ca4ef1a50e136L    # -6.127692321341752E176
        0x299ac51ea2a18ac9L
        -0x2b904f8156c16189L    # -5.415057393008521E98
        0x5c77379e1d70827L
        0x6b4c3c78185eb2adL    # 7.252260196896611E208
        -0x55989ddead3eb654L    # -2.039096148530179E-104
    .end array-data

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
    :array_2
    .array-data 8
        0x74f625b3f0f5d315L    # 2.597985223533723E255
        0x4580ce03c1bf8af8L    # 6.501020771381633E26
        -0x28fa7c50ec154c7cL    # -1.6168787707629403E111
        0x5757ebed0a35a56fL    # 5.7529203347523655E112
        0x3b8b07bbde134e11L    # 7.154837113535271E-22
        -0x6df2dd5db9274186L
        -0x49d9827166e879feL    # -7.694297614372901E-48
    .end array-data

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
    .line 232
    .line 233
    :array_3
    .array-data 8
        -0x382ee8cf4fe5335bL    # -9.086914505680584E37
        0x181620f3df8b2695L    # 1.212548450740677E-192
        0x7657f18714d81110L
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_4
    .array-data 8
        0x351f118b968d4b9cL    # 8.109266321967888E-53
        0x5714886c3217a22fL    # 3.0862331003913715E111
        0x79206692d40b4e56L    # 2.839146808318597E275
        0x3bb616bdc7f388dfL    # 4.6774923990517375E-21
        0x57f07e263494785cL    # 4.061551526097647E115
        -0x69300da903522fa7L    # -8.347146966415057E-199
        0x2610a600bd44f4cfL    # 2.459436345877577E-125
    .end array-data
.end method


# virtual methods
.method public getModuleContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-object v0
.end method

.method public instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :catch_2
    move-exception v0

    .line 23
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    .line 50
    .line 51
    .line 52
    throw v2

    .line 53
    :array_0
    .array-data 8
        0x25b0d88c972c99b5L    # 3.888444763975939E-127
        -0x7d9d1f6b6113b49aL
        0x663925c95ae90a71L    # 2.6713695491100852E184
        -0x67e0a11fb6540b2aL
        0x1eafaddaf5588d6eL
        0x77a73d2f0832d6a8L    # 2.3978585993881764E268
    .end array-data
.end method
