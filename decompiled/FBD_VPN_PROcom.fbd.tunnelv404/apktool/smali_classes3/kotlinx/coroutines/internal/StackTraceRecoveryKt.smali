.class public final Lkotlinx/coroutines/internal/StackTraceRecoveryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a!\u0010\u0003\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a.\u0010\u0003\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0080\u0008\u00a2\u0006\u0004\u0008\u0003\u0010\u0007\u001a\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0000H\u0080H\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\"\u0010\u000b\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0081\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u0004\u001a!\u0010\u000c\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0004\u001a\u0017\u0010\u0010\u001a\u00020\u000f*\u00060\rj\u0002`\u000eH\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\u001b\u0010\u0014\u001a\u00020\u0013*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015*\u000c\u0008\u0000\u0010\u0017\"\u00020\u00162\u00020\u0016*\u000c\u0008\u0000\u0010\u0018\"\u00020\r2\u00020\r\u00a8\u0006\u0019"
    }
    d2 = {
        "",
        "E",
        "exception",
        "recoverStackTrace",
        "(Ljava/lang/Throwable;)Ljava/lang/Throwable;",
        "Lkotlin/coroutines/Continuation;",
        "continuation",
        "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;",
        "",
        "recoverAndThrow",
        "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unwrap",
        "unwrapImpl",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "",
        "isArtificial",
        "(Ljava/lang/StackTraceElement;)Z",
        "cause",
        "",
        "initCause",
        "(Ljava/lang/Throwable;Ljava/lang/Throwable;)V",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "CoroutineStackFrame",
        "StackTraceElement",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1790#2,6:211\n12567#2,2:221\n1682#2,6:223\n12567#2,2:229\n1682#2,6:232\n37#3:217\n36#3,3:218\n1#4:231\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n39#1:211,6\n127#1:221,2\n137#1:223,6\n169#1:229,2\n190#1:232,6\n102#1:217\n102#1:218,3\n*E\n"
    }
.end annotation


# static fields
.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/StackTraceElement;

.field public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    .line 2
    .line 3
    invoke-direct {v0}, L_COROUTINE/ArtificialStackFrames;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, L_COROUTINE/ArtificialStackFrames;->coroutineBoundary()Ljava/lang/StackTraceElement;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/StackTraceElement;

    .line 11
    .line 12
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 13
    .line 14
    const-class v0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 44
    .line 45
    :goto_1
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    sput-object v0, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

    .line 48
    .line 49
    :try_start_1
    const-class v0, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_1
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    .line 79
    .line 80
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 81
    .line 82
    return-void
.end method

.method public static final access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    array-length v3, v2

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v3, :cond_1

    .line 29
    .line 30
    aget-object v5, v2, v4

    .line 31
    .line 32
    invoke-static {v5}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->isArtificial(Ljava/lang/StackTraceElement;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 47
    .line 48
    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 54
    .line 55
    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/Throwable;

    .line 64
    .line 65
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 70
    .line 71
    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->tryCopyException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :cond_3
    new-instance v4, Ljava/util/ArrayDeque;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    invoke-interface {p1}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_f

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    goto/16 :goto_b

    .line 106
    .line 107
    :cond_5
    const/4 p1, -0x1

    .line 108
    if-eq v2, p0, :cond_9

    .line 109
    .line 110
    array-length p0, v0

    .line 111
    const/4 v5, 0x0

    .line 112
    :goto_3
    if-ge v5, p0, :cond_7

    .line 113
    .line 114
    aget-object v6, v0, v5

    .line 115
    .line 116
    invoke-static {v6}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->isArtificial(Ljava/lang/StackTraceElement;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_6

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    const/4 v5, -0x1

    .line 127
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    array-length p0, v0

    .line 130
    add-int/lit8 p0, p0, -0x1

    .line 131
    .line 132
    if-gt v5, p0, :cond_9

    .line 133
    .line 134
    :goto_5
    aget-object v6, v0, p0

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    check-cast v7, Ljava/lang/StackTraceElement;

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-ne v8, v9, :cond_8

    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_8

    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_8

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_8

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_8
    aget-object v6, v0, p0

    .line 198
    .line 199
    invoke-virtual {v4, v6}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    if-eq p0, v5, :cond_9

    .line 203
    .line 204
    add-int/lit8 p0, p0, -0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_9
    sget-object p0, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/StackTraceElement;

    .line 208
    .line 209
    invoke-virtual {v4, p0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    array-length v0, p0

    .line 217
    const/4 v2, 0x0

    .line 218
    :goto_6
    if-ge v2, v0, :cond_b

    .line 219
    .line 220
    aget-object v5, p0, v2

    .line 221
    .line 222
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    sget-object v6, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_a

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_b
    const/4 v2, -0x1

    .line 239
    :goto_7
    if-ne v2, p1, :cond_c

    .line 240
    .line 241
    new-array p0, v1, [Ljava/lang/StackTraceElement;

    .line 242
    .line 243
    invoke-virtual {v4, p0}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    check-cast p0, [Ljava/lang/StackTraceElement;

    .line 248
    .line 249
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 250
    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    add-int/2addr p1, v2

    .line 258
    new-array p1, p1, [Ljava/lang/StackTraceElement;

    .line 259
    .line 260
    const/4 v0, 0x0

    .line 261
    :goto_8
    if-ge v0, v2, :cond_d

    .line 262
    .line 263
    aget-object v5, p0, v0

    .line 264
    .line 265
    aput-object v5, p1, v0

    .line 266
    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_e

    .line 279
    .line 280
    add-int/lit8 v0, v1, 0x1

    .line 281
    .line 282
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    check-cast v4, Ljava/lang/StackTraceElement;

    .line 287
    .line 288
    add-int/2addr v1, v2

    .line 289
    aput-object v4, p1, v1

    .line 290
    .line 291
    move v1, v0

    .line 292
    goto :goto_9

    .line 293
    :cond_e
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 294
    .line 295
    .line 296
    :goto_a
    move-object p0, v3

    .line 297
    :goto_b
    return-object p0

    .line 298
    :cond_f
    invoke-interface {p1}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    if-eqz v5, :cond_4

    .line 303
    .line 304
    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto/16 :goto_2
.end method

.method public static final initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final isArtificial(Ljava/lang/StackTraceElement;)Z
    .locals 4
    .param p0    # Ljava/lang/StackTraceElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, L_COROUTINE/CoroutineDebuggingKt;->getARTIFICIAL_FRAME_PACKAGE_NAME()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {p0, v0, v3, v1, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final recoverAndThrow(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    throw p0
.end method

.method public static final recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static final recoverStackTrace(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    return-object p0
.end method

.method public static final unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public static final unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 5
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    array-length v2, v1

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_2

    .line 29
    .line 30
    aget-object v4, v1, v3

    .line 31
    .line 32
    invoke-static {v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->isArtificial(Ljava/lang/StackTraceElement;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    return-object p0
.end method
