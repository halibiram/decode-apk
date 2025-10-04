.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
    value = .enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;,
        Lcom/google/common/util/concurrent/AbstractFuture$Failure;,
        Lcom/google/common/util/concurrent/AbstractFuture$Listener;,
        Lcom/google/common/util/concurrent/AbstractFuture$Waiter;,
        Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Trusted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 4
    .line 5
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v4, 0x7

    .line 8
    new-array v4, v4, [J

    .line 9
    .line 10
    fill-array-data v4, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v5, v1, [J

    .line 23
    .line 24
    fill-array-data v5, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const/4 v3, 0x0

    .line 44
    :goto_0
    sput-boolean v3, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 45
    .line 46
    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sput-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    :try_start_1
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;

    .line 60
    .line 61
    invoke-direct {v5, v4}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    move-object v2, v5

    .line 65
    move-object v5, v4

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v5

    .line 68
    :try_start_2
    new-instance v12, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;

    .line 69
    .line 70
    const-class v6, Ljava/lang/Thread;

    .line 71
    .line 72
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v8, v1, [J

    .line 75
    .line 76
    fill-array-data v8, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-static {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v8, v1, [J

    .line 93
    .line 94
    fill-array-data v8, :array_3

    .line 95
    .line 96
    .line 97
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v2, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v9, v1, [J

    .line 111
    .line 112
    fill-array-data v9, :array_4

    .line 113
    .line 114
    .line 115
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {v3, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 127
    .line 128
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    const/4 v10, 0x3

    .line 131
    new-array v10, v10, [J

    .line 132
    .line 133
    fill-array-data v10, :array_5

    .line 134
    .line 135
    .line 136
    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-static {v3, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    const-class v2, Ljava/lang/Object;

    .line 148
    .line 149
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v1, v1, [J

    .line 152
    .line 153
    fill-array-data v1, :array_6

    .line 154
    .line 155
    .line 156
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    move-object v6, v12

    .line 168
    invoke-direct/range {v6 .. v11}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    .line 170
    .line 171
    move-object v2, v12

    .line 172
    goto :goto_1

    .line 173
    :catchall_1
    move-exception v1

    .line 174
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;

    .line 175
    .line 176
    invoke-direct {v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    .line 177
    .line 178
    .line 179
    move-object v4, v1

    .line 180
    :goto_1
    sput-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 181
    .line 182
    if-eqz v4, :cond_0

    .line 183
    .line 184
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 185
    .line 186
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 187
    .line 188
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v6, v0, [J

    .line 191
    .line 192
    fill-array-data v6, :array_7

    .line 193
    .line 194
    .line 195
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v1, v2, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v0, v0, [J

    .line 208
    .line 209
    fill-array-data v0, :array_8

    .line 210
    .line 211
    .line 212
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v1, v2, v0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    :cond_0
    new-instance v0, Ljava/lang/Object;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 225
    .line 226
    .line 227
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 228
    .line 229
    return-void

    .line 230
    nop

    .line 231
    :array_0
    .array-data 8
        -0xb3f400cedc99dd8L    # -2.456043472836481E254
        0xac37f1ab16c35bfL
        -0x31b70949bc8868a9L    # -1.3460410452699469E69
        0x41e6ab6bb7dbafc6L    # 3.0426638708652067E9
        0x2acac785f5890280L
        -0x4b0c18003d5a98cfL    # -1.2989431820320683E-53
        -0x38d60f9a97cad8d9L    # -6.734161703168001E34
    .end array-data

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
    :array_1
    .array-data 8
        0x5d7703705c8d1652L    # 1.7539587863437567E142
        -0x21f862045d82dbc3L    # -9.215839113070762E144
    .end array-data

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
    :array_2
    .array-data 8
        -0x39dc2e4583fba9e5L    # -7.851214503397836E29
        -0x1b33f7fbe2c1374aL    # -3.5496938717579923E177
    .end array-data

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
    :array_3
    .array-data 8
        0x66c08c40257065L
        -0x40a507ffb17bed2aL    # -0.0016460421557564129
    .end array-data

    .line 288
    .line 289
    .line 290
    :array_4
    .array-data 8
        -0x435e5e47b79d6d13L    # -1.223446218062207E-16
        -0x325bf0c8e5ac0ba1L    # -1.0562525111583689E66
    .end array-data

    :array_5
    .array-data 8
        0x52908e94eb235a18L    # 5.269862938144973E89
        -0x14fe2f3ae27e250eL    # -2.859863033099797E207
        0x463e2a0a318ae4e8L    # 2.3898555690567255E30
    .end array-data

    :array_6
    .array-data 8
        -0x26aa01820a101d45L    # -2.2717714637876377E122
        -0x5308f073b4130053L    # -4.422160197982773E-92
    .end array-data

    :array_7
    .array-data 8
        0x1f9e0e9ba78f1944L    # 2.189216936004073E-156
        0x418a2bfbbc75a7dcL    # 5.488626355744907E7
        -0x34d6694116af1bb5L    # -1.2254624813931736E54
        -0x5e09d64cb4a5dd4bL
        -0x1c93462b6599c977L    # -8.672837472999094E170
    .end array-data

    :array_8
    .array-data 8
        -0x2bafc851bcc885b0L    # -1.385615028212794E98
        -0x7b97f8a2a63dfc98L
        0x136547f879d8c0b9L    # 3.086653643440207E-215
        0x2d699ae12bc08e73L    # 6.28486650035665E-90
        0x2834b3e849f515a1L    # 5.25424088663769E-115
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$300(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$702(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 2
    .line 3
    return-object p1
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v5, v1, [J

    .line 11
    .line 12
    fill-array-data v5, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->appendResultObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v4, v0, [J

    .line 31
    .line 32
    fill-array-data v4, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_0

    .line 48
    :catch_1
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v2, v2, [J

    .line 53
    .line 54
    fill-array-data v2, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v1, v1, [J

    .line 77
    .line 78
    fill-array-data v1, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v1, v2, [J

    .line 95
    .line 96
    fill-array-data v1, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v2, v2, [J

    .line 113
    .line 114
    fill-array-data v2, :array_5

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v0, v0, [J

    .line 137
    .line 138
    fill-array-data v0, :array_6

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    :goto_2
    return-void

    .line 152
    nop

    .line 153
    :array_0
    .array-data 8
        -0x175a9fe846de00f3L    # -1.2483048927425974E196
        0x515e48dacddf7b18L    # 9.19264505563876E83
        0x2497f108ef47036eL
        0x2b0b4ff3648f0f88L    # 2.4388768161999203E-101
    .end array-data

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
    :array_1
    .array-data 8
        0x3cbf7bbc56cf57caL    # 4.3691914775904877E-16
        0x4b88a0c256d6da3fL    # 7.548449425427606E55
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
    :array_2
    .array-data 8
        0x7ec3049de0756cd5L    # 4.075597426408799E302
        0x62ce5cee4d0aebc7L    # 8.95225494628629E167
        0x3fde0d3116379531L    # 0.4695551602329316
    .end array-data

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
    :array_3
    .array-data 8
        -0x58f2c41fbd2171fcL    # -1.415136609771689E-120
        -0x55b89280c06f1392L    # -5.107420327553322E-105
        0x69e93db936b3a8eL    # 8.62475874507729E-277
        -0x7dfe7ce0813a43abL    # -5.229919524300256E-299
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
    :array_4
    .array-data 8
        -0x2cb65388b19b02b9L    # -1.6735437220781188E93
        0x623705566d08a593L    # 1.3256808915022023E165
        -0x476035069bf63fa1L    # -5.979573858290132E-36
    .end array-data

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
    .line 234
    .line 235
    .line 236
    .line 237
    :array_5
    .array-data 8
        -0x330b1854bb2a9268L    # -5.374875341890067E62
        0x785e884cd6c99459L    # 6.4520447253525596E271
        0x5c07a3c585849e83L    # 2.147784143862552E135
    .end array-data

    .line 238
    :array_6
    .array-data 8
        -0x14a17467b44ac1bfL    # -1.5690663107479476E209
        -0x28933ff83d17a75cL    # -1.3828275689495287E113
    .end array-data
.end method

.method private addPendingString(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

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
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 24
    .line 25
    instance-of v3, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    new-array v4, v4, [J

    .line 33
    .line 34
    fill-array-data v4, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 50
    .line 51
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->appendUserObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v2, v2, [J

    .line 57
    .line 58
    fill-array-data v2, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/google/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    goto :goto_0

    .line 83
    :catch_1
    move-exception v1

    .line 84
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    add-int/lit8 v3, v3, 0x26

    .line 97
    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    const/4 v5, 0x6

    .line 106
    new-array v5, v5, [J

    .line 107
    .line 108
    fill-array-data v5, :array_3

    .line 109
    .line 110
    .line 111
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-static {v3, v4, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_1
    if-eqz v1, :cond_1

    .line 119
    .line 120
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v4, v2, [J

    .line 123
    .line 124
    fill-array-data v4, :array_4

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v2, v2, [J

    .line 143
    .line 144
    fill-array-data v2, :array_5

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_2

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    return-void

    .line 174
    nop

    .line 175
    :array_0
    .array-data 8
        -0x67bfb893983b8e79L    # -7.136091951030954E-192
        0x415e0835156cded3L    # 7872724.334769922
    .end array-data

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
    :array_1
    .array-data 8
        0x39bc1077a0803767L    # 1.3836780693671415E-30
        -0x569440d109bcc56aL    # -3.692025127653986E-109
        0xeb93f7d4afbc3cL
    .end array-data

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
    :array_2
    .array-data 8
        0x570f71df758bff88L
        -0x22eceebb79de5df9L    # -2.2706523951558605E140
    .end array-data

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
    :array_3
    .array-data 8
        -0x46588ea2b384fd2L
        -0x2f916838e21d61c9L    # -2.8339309808653632E79
        -0x9791816a497f1beL    # -9.015995320682464E262
        0x77b37ab07cb4fecfL    # 4.019837554950908E268
        -0x19f52fd8825100fdL    # -3.560364371927037E183
        0x6bc19a633977ee7aL    # 1.1574321864339818E211
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
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_4
    .array-data 8
        0x35d1f407d6eef179L    # 1.919391946352243E-49
        0x65e87694e81895cL
    .end array-data

    :array_5
    .array-data 8
        0x4b3b36498b9a32afL    # 2.606397510453622E54
        -0x4ee07a69d6b18959L    # -4.4601798252374913E-72
    .end array-data
.end method

.method private appendResultObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne p2, p0, :cond_1

    .line 23
    .line 24
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    new-array v0, v0, [J

    .line 28
    .line 29
    fill-array-data v0, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v0, v0, [J

    .line 57
    .line 58
    fill-array-data v0, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void

    .line 83
    :array_0
    .array-data 8
        0x18b0290a964dd007L    # 9.067605921219533E-190
        0x8a2d93f2e3eef43L    # 4.56681501986472E-267
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
    :array_1
    .array-data 8
        -0x75fb53b4a8ceb6f1L    # -2.100863234435136E-260
        -0x3b2610935e1ae240L    # -4.89903046779604E23
        0x5711bc25a54ae01fL    # 2.665682171748965E111
    .end array-data

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
    :array_2
    .array-data 8
        0x55666f8093921422L    # 2.512495892586154E103
        -0x7deb106bbc3143eaL    # -1.250475060049967E-298
    .end array-data
.end method

.method private appendUserObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    if-ne p2, p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception p2

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v1, 0x6

    .line 33
    new-array v1, v1, [J

    .line 34
    .line 35
    fill-array-data v1, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x271048bc5319d06L
        -0x4c5cf30ca340bb7dL    # -5.927605137597977E-60
        -0x713b946dd932fc21L
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        0x2c6072affcbcdc1eL    # 6.160336210219509E-95
        0x694038c0268de83bL    # 9.700699114946202E198
        -0x7041a3c8ac4cde1dL    # -7.638855026889135E-233
        0x6047d916d931e17dL    # 6.394989381329436E155
        -0x506f176b2bacf752L
        0x47a25fbcb459473bL    # 1.2211599753697156E37
    .end array-data
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 3
    .param p1    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->gasListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    move-object v0, p1

    .line 11
    move-object p1, v2

    .line 12
    :goto_0
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 15
    .line 16
    iput-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    move-object p1, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object v0
.end method

.method private static complete(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->releaseWaiters()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_1
    if-eqz p0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    check-cast v1, Ljava/lang/Runnable;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 28
    .line 29
    iget-object p0, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 32
    .line 33
    if-ne v2, v1, :cond_1

    .line 34
    .line 35
    iget-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 42
    .line 43
    invoke-virtual {v3, p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 56
    .line 57
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    move-object p0, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 7
    .line 8
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/lit8 v3, v3, 0x39

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    add-int/2addr v4, v3

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v5, 0x7

    .line 37
    new-array v5, v5, [J

    .line 38
    .line 39
    fill-array-data v5, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    new-array v4, v4, [J

    .line 59
    .line 60
    fill-array-data v4, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        0x2e75fbada6530a2cL    # 7.072460508512992E-85
        -0x5ad1937381d66c2eL
        0x16d4b51f81d4e023L
        -0x66978a42c980e464L    # -2.810785449674432E-186
        -0x48a2a29dd5ae17ffL    # -5.2670489478940487E-42
        -0x1cbbd1fcc0594265L    # -1.5231513889204627E170
        -0x5d1d6ce2678fa352L
    .end array-data

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
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        -0x2e7658f5656fc417L    # -6.2292905675969E84
        -0x104bda4a3ed2e555L    # -1.221838082436892E230
        -0x7471f8c76bca586aL
    .end array-data
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/google/common/util/concurrent/NullnessCasts;->uncheckedNull()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    return-object p1

    .line 18
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    .line 19
    .line 20
    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    throw p1

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x6896d3e8cdd91282L    # 6.665622392789454E195
        -0x89d3e84121de82cL    # -1.209544081975788E267
        0x3fb858324ffc9172L    # 0.09509577229306901
        0x29d31eb21212e0b7L
    .end array-data
.end method

.method private static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    instance-of v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 11
    .line 12
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object p0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    .line 30
    .line 31
    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    instance-of v1, p0, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    move-object v1, p0

    .line 46
    check-cast v1, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sget-boolean v3, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 65
    .line 66
    xor-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    and-int/2addr v3, v1

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    sget-object p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 72
    .line 73
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 84
    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    add-int/lit8 v6, v6, 0x54

    .line 96
    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .line 101
    .line 102
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v8, v0, [J

    .line 105
    .line 106
    fill-array-data v8, :array_0

    .line 107
    .line 108
    .line 109
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v3, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    return-object v3

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    goto :goto_2

    .line 137
    :catch_1
    move-exception v3

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    if-nez v3, :cond_6

    .line 140
    .line 141
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    :cond_6
    return-object v3

    .line 144
    :goto_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 145
    .line 146
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    :goto_2
    if-nez v1, :cond_7

    .line 151
    .line 152
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 153
    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    add-int/lit8 v3, v3, 0x4d

    .line 165
    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .line 170
    .line 171
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    const/16 v5, 0xb

    .line 174
    .line 175
    new-array v5, v5, [J

    .line 176
    .line 177
    fill-array-data v5, :array_1

    .line 178
    .line 179
    .line 180
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-static {v3, v4, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    return-object v1

    .line 194
    :cond_7
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 195
    .line 196
    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    return-object p0

    .line 200
    :goto_3
    if-eqz v1, :cond_8

    .line 201
    .line 202
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 203
    .line 204
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    add-int/lit8 v5, v5, 0x54

    .line 215
    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 219
    .line 220
    .line 221
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    new-array v0, v0, [J

    .line 224
    .line 225
    fill-array-data v0, :array_2

    .line 226
    .line 227
    .line 228
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-static {v5, v6, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {v1, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    return-object v1

    .line 242
    :cond_8
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    return-object p0

    .line 252
    nop

    .line 253
    :array_0
    .array-data 8
        -0x5df4bcf3dffc7f51L
        0x4e81b93077e20a45L    # 1.5290297791981948E70
        0x1f243ba5c7133040L
        -0x4d7c57c656261f11L    # -2.3331951051777526E-65
        -0x5f915699eec4b9caL
        -0x72dc55073b89ff27L
        -0x41fcc1c3e0331033L    # -5.600480631344046E-10
        -0x40618196da0538ebL    # -0.029779093688097797
        0x501b23a98dfc520bL    # 7.856292340526702E77
        -0x8386daa36e460e3L    # -9.728717750012244E268
        -0x4da7a9f0b2215617L    # -3.610715009742796E-66
        -0xc9924f9e68fd91fL    # -7.990212877637243E247
    .end array-data

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
    :array_1
    .array-data 8
        -0x47439e9672b05215L    # -2.1351127824312363E-35
        -0x6a61fa3e658257c4L
        0x1d953c9380d6bad9L    # 3.601371431865128E-166
        0x11623ffb9fcec8d2L    # 6.16303348826866E-225
        0x5ee58a6634b6e4a8L    # 1.377165427130784E149
        0x6b318f332925e5f4L    # 2.2549974534832697E208
        -0x31d5577913b9945bL    # -3.5935329121415975E68
        -0x63ea3c3dfc6f30aaL    # -2.199959956193962E-173
        0x5789e8e46b6b23a7L    # 4.984841577323082E113
        -0x72887f78f859faccL    # -8.604971945918172E-244
        0xe4150b1956656c1L    # 5.193512966979432E-240
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
    .line 326
    .line 327
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
    :array_2
    .array-data 8
        -0x1f91c4a6766e25c4L    # -3.2427410944693457E156
        -0x3ad942f8508177dfL    # -1.37445185348436E25
        0x12061a45bcd2e107L    # 7.643232864858291E-222
        -0x6eb52136b77f4625L
        -0x32ef2ad779c3c971L    # -1.7311376020547788E63
        0x5f0424b08b9cfd81L    # 5.151324280930929E149
        -0x587e63fff05b2005L    # -2.18220565957048E-118
        -0x7195e3fca3912a67L    # -3.132497873076585E-239
        -0x4426dd323d75a172L
        -0x10f1f4059d86012eL    # -8.897435003294724E226
        0x1ae27f9d18634cf3L    # 3.566390442728817E-179
        0x63c757eed80e17aL
    .end array-data
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    :cond_1
    throw p0

    .line 27
    :catch_0
    const/4 v0, 0x1

    .line 28
    goto :goto_0
.end method

.method private releaseWaiters()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->gasWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->unpark()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 3
    .line 4
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 5
    .line 6
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_1
    if-eqz p1, :cond_4

    .line 13
    .line 14
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    move-object v1, p1

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iput-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 25
    .line 26
    iget-object p1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 27
    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 32
    .line 33
    invoke-virtual {v3, p0, p1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :goto_2
    move-object p1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 43
    .line 44
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 45
    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    .line 48
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 49
    .line 50
    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iput-object v0, v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 54
    .line 55
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 56
    .line 57
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 65
    .line 66
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 67
    .line 68
    if-ne v0, v2, :cond_0

    .line 69
    .line 70
    :cond_2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x7ce4c3d75ffc56caL
        -0xd0c828d26593123L    # -5.323154480152941E245
        -0x1b73050f37782861L    # -2.2936619339674346E176
        -0x9bcef45e9d8e371L    # -4.690193835838485E261
    .end array-data

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
    :array_1
    .array-data 8
        -0x7be48ba1903a10d4L    # -7.043017278934381E-289
        0x703a46c058a87cfaL    # 4.0794543662715976E232
        0x615234d0d6723739L    # 6.399111441444092E160
        -0x7feb73634a95f078L    # -2.857727187377072E-308
    .end array-data
.end method

.method public afterDone()V
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    return-void
.end method

.method public cancel(Z)Z
    .locals 7
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 11
    .line 12
    or-int/2addr v3, v4

    .line 13
    if-eqz v3, :cond_8

    .line 14
    .line 15
    sget-boolean v3, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 20
    .line 21
    new-instance v4, Ljava/util/concurrent/CancellationException;

    .line 22
    .line 23
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v6, 0x5

    .line 26
    new-array v6, v6, [J

    .line 27
    .line 28
    fill-array-data v6, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, p1, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    .line 47
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 51
    .line 52
    :goto_1
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_2
    const/4 v5, 0x0

    .line 56
    move-object v4, p0

    .line 57
    :cond_3
    :goto_3
    sget-object v6, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 58
    .line 59
    invoke-virtual {v6, v4, v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_7

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-static {v4}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 71
    .line 72
    .line 73
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 74
    .line 75
    if-eqz v4, :cond_9

    .line 76
    .line 77
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 80
    .line 81
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    .line 82
    .line 83
    if-eqz v4, :cond_6

    .line 84
    .line 85
    move-object v4, v0

    .line 86
    check-cast v4, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 87
    .line 88
    iget-object v0, v4, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 89
    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    const/4 v5, 0x0

    .line 95
    :goto_4
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 96
    .line 97
    or-int/2addr v5, v6

    .line 98
    if-eqz v5, :cond_9

    .line 99
    .line 100
    const/4 v5, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 103
    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_7
    iget-object v0, v4, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 107
    .line 108
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 109
    .line 110
    if-nez v6, :cond_3

    .line 111
    .line 112
    move v1, v5

    .line 113
    goto :goto_5

    .line 114
    :cond_8
    const/4 v1, 0x0

    .line 115
    :cond_9
    :goto_5
    return v1

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        0x3fa461a3e0c98cc1L    # 0.03980743521676678
        -0x5d2808d9a8edf289L    # -7.861170965188275E-141
        0x103739499459ae07L
        0x1399e38719dbca18L    # 3.003963730027142E-214
        -0x4b2f04d71b5811L
    .end array-data
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 81
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 82
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 83
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 84
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 86
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v0, v3, :cond_7

    .line 87
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 88
    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 89
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 93
    :goto_1
    instance-of v5, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 94
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 95
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 96
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 98
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v0, v4, :cond_2

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 100
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 17
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_16

    .line 3
    iget-object v7, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 4
    :goto_0
    instance-of v11, v7, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v11, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    .line 5
    invoke-direct {v0, v7}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v7, v5, v10

    if-lez v7, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    add-long/2addr v12, v5

    goto :goto_1

    :cond_2
    move-wide v12, v10

    :goto_1
    const-wide/16 v14, 0x3e8

    cmp-long v7, v5, v14

    if-ltz v7, :cond_a

    .line 7
    iget-object v7, v0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 8
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v7, v8, :cond_9

    .line 9
    new-instance v8, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v8}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 10
    :cond_3
    invoke-virtual {v8, v7}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 11
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v4, v0, v7, v8}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 12
    :cond_4
    invoke-static {v0, v5, v6}, Lcom/google/common/util/concurrent/OverflowAvoidingLockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    iget-object v4, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 15
    :goto_2
    instance-of v6, v4, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v6, v9

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 16
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v5, v12, v4

    cmp-long v4, v5, v14

    if-gez v4, :cond_4

    .line 18
    invoke-direct {v0, v8}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-direct {v0, v8}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 20
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_8
    iget-object v7, v0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 22
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v7, v4, :cond_3

    .line 23
    :cond_9
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v4, v5, v10

    if-lez v4, :cond_e

    .line 24
    iget-object v4, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 25
    :goto_4
    instance-of v6, v4, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v6, v9

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 26
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 27
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v5, v12, v4

    goto :goto_3

    .line 29
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 30
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x1c

    .line 33
    invoke-static {v12, v8}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    move-result v12

    .line 34
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x2

    new-array v10, v9, [J

    fill-array-data v10, :array_0

    invoke-direct {v12, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v9, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    invoke-static {v1, v13, v8}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-long v10, v5, v14

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-gez v2, :cond_14

    .line 36
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v9, [J

    fill-array-data v8, :array_2

    invoke-direct {v2, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    neg-long v5, v5

    .line 37
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 38
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x0

    cmp-long v10, v8, v2

    if-eqz v10, :cond_10

    cmp-long v2, v5, v14

    if-lez v2, :cond_f

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/16 v16, 0x1

    :goto_6
    if-lez v10, :cond_12

    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    .line 40
    invoke-static {v2, v7}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    move-result v2

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v8, v2, [J

    fill-array-data v8, :array_3

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    invoke-static {v1, v3, v7}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v16, :cond_11

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_4

    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_5

    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_12
    if-eqz v16, :cond_13

    .line 45
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_6

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    invoke-static {v1, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v5, v3, [J

    fill-array-data v5, :array_7

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 49
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x6

    new-array v4, v4, [J

    fill-array-data v4, :array_8

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_15
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x5

    .line 51
    invoke-static {v3, v1}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    move-result v3

    .line 52
    invoke-static {v3, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x2

    new-array v5, v5, [J

    fill-array-data v5, :array_9

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    invoke-static {v3, v1, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    nop

    :array_0
    .array-data 8
        -0x1f74683386e4cb79L    # -1.1838757066610839E157
        -0x526b1c2020975879L    # -4.102064964754116E-89
    .end array-data

    :array_1
    .array-data 8
        -0x56c07f3cc2aff52eL
        -0x138269c80f178e56L
    .end array-data

    :array_2
    .array-data 8
        -0x2a4d0d8e7d831341L    # -6.789846935262716E104
        0x3ada9bd1d707ca4eL    # 3.439090076651759E-25
    .end array-data

    :array_3
    .array-data 8
        -0x225eb18e9c374143L    # -1.0552008659629687E143
        -0x17c68ffbbc66de52L    # -1.1605738006286625E194
    .end array-data

    :array_4
    .array-data 8
        -0x2af37b27fcca7aceL    # -4.9902424658802725E101
        -0x1ec83d95f9d0e00bL    # -2.087727123598438E160
    .end array-data

    :array_5
    .array-data 8
        0x63f946c4de876c45L    # 3.907270262904499E173
        -0x21b827372e1a1d71L    # -1.488875157459849E146
    .end array-data

    :array_6
    .array-data 8
        -0x2bdf250001601d49L    # -1.800153127962768E97
        -0x2abc20dce879ea95L    # -5.56342213012854E102
        -0x92388051198e43eL
    .end array-data

    :array_7
    .array-data 8
        0x6e66735e09b70b86L    # 6.492258232780729E223
        -0x77c0be0e2de46ed7L
    .end array-data

    :array_8
    .array-data 8
        0x62409f07f13868f0L    # 1.9143017772244396E165
        -0x541d6d82bf2ac312L    # -2.7171606440970255E-97
        -0x2f30cd75f8957241L    # -1.8495561138512953E81
        0x6fbd8598f7a56098L
        0x70f96f044e42e765L    # 1.617355425766529E236
        0x292c4475beee81L
    .end array-data

    :array_9
    .array-data 8
        -0x4449fd97a4b3af3bL    # -4.6606727655917305E-21
        -0x7179a3b87d87d0e5L
    .end array-data
.end method

.method public interruptTask()V
    .locals 0

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 4
    .line 5
    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    instance-of v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    and-int/2addr v0, v2

    .line 13
    return v0
.end method

.method public final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public pendingToString()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/16 v3, 0x29

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    new-array v4, v4, [J

    .line 25
    .line 26
    fill-array-data v4, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    new-array v1, v1, [J

    .line 46
    .line 47
    fill-array-data v1, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    return-object v0

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0x534d86a0f3305333L    # -2.2141385737366337E-93
        0x62bfd7fb4507c4e3L    # 4.6944079516799746E167
        0x4e4397c853b89429L    # 1.0564471049603152E69
        0x475e32acad458351L    # 6.271868284204903E35
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
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
    .line 80
    :array_1
    .array-data 8
        0x2ed170206a3b304aL    # 3.590523260635412E-83
        -0x4e05d7beeca77b6eL    # -6.063912907851346E-68
    .end array-data
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 22
    .line 23
    invoke-virtual {v0, p0, v3, p1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    return v1

    .line 34
    :cond_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 37
    .line 38
    .line 39
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 40
    .line 41
    invoke-virtual {v4, p0, v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    :try_start_0
    sget-object v1, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    .line 48
    .line 49
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 55
    .line 56
    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 61
    .line 62
    :goto_0
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 63
    .line 64
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :goto_1
    return v2

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 69
    .line 70
    :cond_3
    instance-of v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 75
    .line 76
    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 79
    .line 80
    .line 81
    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v4, 0x6

    .line 18
    new-array v4, v4, [J

    .line 19
    .line 20
    fill-array-data v4, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :goto_0
    const/16 v2, 0x40

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v3, v0, [J

    .line 78
    .line 79
    fill-array-data v3, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v3, 0x3

    .line 101
    new-array v3, v3, [J

    .line 102
    .line 103
    fill-array-data v3, :array_2

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->addPendingString(Ljava/lang/StringBuilder;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v0, v0, [J

    .line 133
    .line 134
    fill-array-data v0, :array_3

    .line 135
    .line 136
    .line 137
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0

    .line 145
    :array_0
    .array-data 8
        -0x323142fc15bb0b06L    # -6.474250263473801E66
        -0x2e6611ef804172ecL    # -1.2593321591891472E85
        -0x3adce0d458812e5cL    # -1.1558394606478318E25
        -0x7c4761fe50bda81L    # -1.454847900377904E271
        0x57a9557287ea84cbL    # 1.9496127174828445E114
        0x2e84149456fa639dL    # 1.2920619518229327E-84
    .end array-data

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
    :array_1
    .array-data 8
        -0x342e176e409023d0L    # -1.7564580127371037E57
        0x1143aa7f20be8973L
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
    :array_2
    .array-data 8
        -0x11fdb5c8c7fe986cL    # -8.264151556096943E221
        -0xc1fc6c89a0bdab8L
        0x37875a77081c02d5L    # 3.351045511185327E-41
    .end array-data

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
    :array_3
    .array-data 8
        0x749c8dd692e51515L    # 5.23364383165483E253
        -0x4b112c65f9312b68L    # -1.0057637424472494E-53
    .end array-data
.end method

.method public final tryInternalFastPathGetFailure()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final wasInterrupted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method
