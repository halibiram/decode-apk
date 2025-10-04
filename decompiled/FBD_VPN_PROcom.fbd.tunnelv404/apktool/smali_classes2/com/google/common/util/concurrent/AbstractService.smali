.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;,
        Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;,
        Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;,
        Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;,
        Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;
    }
.end annotation


# static fields
.field private static final RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPING_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPING_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_NEW_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_STOPPING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final monitor:Lcom/google/common/util/concurrent/Monitor;

.field private volatile snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractService$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 7
    .line 8
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractService$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 14
    .line 15
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->stoppingEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 22
    .line 23
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractService;->stoppingEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sput-object v2, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 30
    .line 31
    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractService;->terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sput-object v2, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_NEW_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractService;->terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 50
    .line 51
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STOPPING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/Monitor;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 10
    .line 11
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 17
    .line 18
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 24
    .line 25
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 31
    .line 32
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 38
    .line 39
    new-instance v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 45
    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 47
    .line 48
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 54
    .line 55
    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/Monitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 7
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eq v2, p1, :cond_1

    .line 8
    .line 9
    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/lit8 v4, v4, 0x38

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    add-int/2addr v5, v4

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v0, 0x5

    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {v2, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v2

    .line 102
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    add-int/lit8 v5, v5, 0x26

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    add-int/2addr v6, v5

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    add-int/2addr v5, v6

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v1, v1, [J

    .line 140
    .line 141
    fill-array-data v1, :array_3

    .line 142
    .line 143
    .line 144
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v0, v0, [J

    .line 160
    .line 161
    fill-array-data v0, :array_4

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    const/4 v0, 0x3

    .line 180
    new-array v0, v0, [J

    .line 181
    .line 182
    fill-array-data v0, :array_5

    .line 183
    .line 184
    .line 185
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v6, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v3

    .line 196
    :cond_1
    return-void

    .line 197
    :array_0
    .array-data 8
        -0x25beceb83eb55d80L    # -5.81898521620462E126
        0x73219857287cf2b4L    # 3.84448092265136E246
        -0x2127273bdc1fcec1L    # -7.942685031061109E148
        -0x398d85e3c07d526L    # -1.805207317982484E291
    .end array-data

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
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_1
    .array-data 8
        0x45af7157f03e90c4L    # 4.865529599844528E27
        0x14679d61a32a20a3L
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
    :array_2
    .array-data 8
        0x1cab50ea310365e9L
        0x165c2ea6a5b15a21L    # 5.752786614397273E-201
        -0xd4579f33626e4b1L    # -4.52761510996296E244
        0x36a51cb55fd8ccabL    # 1.849025808697579E-45
        -0x613e712908a0408cL
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
    :array_3
    .array-data 8
        0x164b6e496df6a14aL    # 2.7997000751432626E-201
        0x4d273c7227075319L    # 4.7793920169145415E63
        -0x3d232a3e7fbcff42L    # -1.2681760008089897E14
        0x8a8e1c00391cf6L
    .end array-data

    :array_4
    .array-data 8
        -0x76e2dac1725fd4d7L    # -9.038890432573508E-265
        -0x71e43053f7e703eeL
    .end array-data

    :array_5
    .array-data 8
        -0x7f934d3c6063f21L
        0x278b4ca92fb8fa31L
        -0x35b62b29f238d5adL    # -7.550524107278376E49
    .end array-data
.end method

.method private dispatchListenerEvents()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->dispatch()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private enqueueFailedEvent(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 2
    .line 3
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$5;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractService$5;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private enqueueRunningEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService;->RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private enqueueStartingEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService;->STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private enqueueStoppingEvent(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 6
    .line 7
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 18
    .line 19
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method private enqueueTerminatedEvent(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 20
    .line 21
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STOPPING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 28
    .line 29
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_RUNNING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_3
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 36
    .line 37
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STARTING_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_4
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 44
    .line 45
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_NEW_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static stoppingEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$State;",
            ")",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$4;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static terminatedEvent(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$State;",
            ")",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$3;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue;->addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final awaitRunning()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 4
    throw v0
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 8
    throw p1

    .line 9
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x5

    new-array p3, p3, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    invoke-static {p2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x61bcb3e4b6bb5aa2L    # -6.702066124908524E-163
        -0x643a3393dae0ff5bL    # -6.885565899392737E-175
        -0x14b23231d09e72fL
        -0x7ed1a7483ac809ebL    # -5.53151072287282E-303
    .end array-data

    :array_1
    .array-data 8
        -0x3540b2b775d90d95L    # -1.1711426748163619E52
        0x4c8134fd5e8c8e38L    # 3.456321080073968E60
        0x162f14da792a6dceL    # 7.93075091481558E-202
        -0x4b12681571690d0bL    # -9.655304702852481E-54
        0x6eb56d0db0d52794L    # 1.9827030515679213E225
    .end array-data
.end method

.method public final awaitTerminated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 4
    throw v0
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 8
    throw p1

    .line 9
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    invoke-static {p2, v0, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x61fa24b84f84e51aL    # 9.409365676937388E163
        0x30fee07e1a6d29cdL    # 1.0922324856973434E-72
        0x5523b74ddb09be1eL    # 1.3799649502922144E102
        0x3f249dbf279167a2L    # 1.5728910855977463E-4
    .end array-data

    :array_1
    .array-data 8
        0x72e1c01b4ae91fdaL    # 2.424013477759874E245
        -0x563ad11547d55cdeL    # -1.803950176522091E-107
        0x26a90eaa59275c21L
        -0xfcfd6bee22446dcL    # -2.509047753603255E232
        -0x78078ae7e7d95561L
        -0x283f12da2fa64165L    # -5.210409940678397E114
        0x2c58f6992d415b91L    # 4.674798933204232E-95
    .end array-data
.end method

.method public doCancelStart()V
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    return-void
.end method

.method public abstract doStart()V
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation
.end method

.method public abstract doStop()V
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->failureCause()Ljava/lang/Throwable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final notifyFailed(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aget v2, v2, v3

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    if-eq v2, v0, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 38
    .line 39
    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, v2, v3, p1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 46
    .line 47
    invoke-direct {p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractService;->enqueueFailedEvent(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-int/lit8 v3, v3, 0x16

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_0

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :array_0
    .array-data 8
        -0x56a11e0e0554fc02L    # -2.054638506561315E-109
        -0x5c17b3f8e119297cL
        0x62cfec8586853c68L    # 9.412472343007035E167
        -0x765be66dd2552589L
    .end array-data
.end method

.method public final notifyStarted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 9
    .line 10
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 21
    .line 22
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 36
    .line 37
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueRunningEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    add-int/lit8 v2, v2, 0x2b

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v4, 0x7

    .line 80
    new-array v4, v4, [J

    .line 81
    .line 82
    fill-array-data v4, :array_0

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        0x3694da420093982L
        0x22e2b50b98414195L
        -0x1c041218c207cea7L    # -4.317354616806041E173
        0x3302e3f4b2f9fc48L    # 5.740018305727136E-63
        -0x254d8d3330e22e4bL    # -7.992409991087951E128
        -0x5db63f830e63e118L
        -0x1f9160bfd80ad28bL    # -3.28459895280094E156
    .end array-data
.end method

.method public final notifyStopped()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    aget v1, v1, v2

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 23
    .line 24
    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueTerminatedEvent(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/lit8 v2, v2, 0x2b

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v4, 0x7

    .line 65
    new-array v4, v4, [J

    .line 66
    .line 67
    fill-array-data v4, :array_0

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

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
    :array_0
    .array-data 8
        0x4a3b7f1513158d2cL    # 4.018605601394519E49
        0x164c7314282cdb48L
        0x1eb64a373e432221L    # 9.909016470399093E-161
        0x7d202cecebbc7af1L    # 5.165391234934959E294
        -0x3917dbf104550054L    # -3.9170774510095236E33
        0x4b5d3e1b329daf81L    # 1.1203539485269567E55
        0x5d5d9f6f21233894L    # 5.644219972177897E141
    .end array-data
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 12
    .line 13
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueStartingEvent()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    return-object p0

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/lit8 v2, v2, 0x21

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v4, 0x2

    .line 71
    new-array v4, v4, [J

    .line 72
    .line 73
    fill-array-data v4, :array_0

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    const/4 v2, 0x5

    .line 92
    new-array v2, v2, [J

    .line 93
    .line 94
    fill-array-data v2, :array_1

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x31f6661266914adeL    # 5.192591473807781E-68
        0x169286c7c76ca2cbL    # 6.050843740764454E-200
    .end array-data

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
    :array_1
    .array-data 8
        -0x5d00e49736cbe944L
        -0xc5bd0ba4e258030L    # -1.129036051539815E249
        0x78029c1a37027413L    # 1.2289302952555164E270
        0x20339f22985f9b75L
        -0x23c64e3ec8b14dc4L    # -1.867565184119485E136
    .end array-data
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->externalState()Lcom/google/common/util/concurrent/Service$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    aget v1, v1, v2

    .line 22
    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/lit8 v2, v2, 0x2d

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v4, 0x7

    .line 47
    new-array v4, v4, [J

    .line 48
    .line 49
    fill-array-data v4, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :pswitch_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 76
    .line 77
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 83
    .line 84
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueStoppingEvent(Lcom/google/common/util/concurrent/Service$State;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_2
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 94
    .line 95
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 103
    .line 104
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->enqueueStoppingEvent(Lcom/google/common/util/concurrent/Service$State;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doCancelStart()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :pswitch_3
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 112
    .line 113
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    .line 114
    .line 115
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 119
    .line 120
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 121
    .line 122
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->enqueueTerminatedEvent(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catchall_1
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->dispatchListenerEvents()V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_0
    :goto_2
    return-object p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x988037dd51ddafaL    # -4.720636994793696E262
        0x26226e10148fb697L    # 5.445221634580957E-125
        -0x56db5d1ca1f0e536L
        0x11e356a6538d48acL    # 1.671842827009312E-222
        0x360a84c7a04fe034L
        -0x3411ef8aa984488bL    # -5.897394051591774E57
        0x2c1f0ac4fd380796L    # 3.633222930856098E-96
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, 0x3

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v2

    .line 28
    invoke-static {v3, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    new-array v4, v3, [J

    .line 36
    .line 37
    fill-array-data v4, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v2, v3, [J

    .line 56
    .line 57
    fill-array-data v2, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x260c4b7eebe04dL
        0x624a6a27548e2d6fL    # 3.042234626465528E165
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
    :array_1
    .array-data 8
        -0x2e79ab5ae6c7c15dL    # -5.422630979664926E84
        -0x7bc12daed5fcff91L    # -3.162704755326837E-288
    .end array-data
.end method
