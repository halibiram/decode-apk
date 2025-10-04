.class public Lcom/tknetwork/tunnel/service/TunnelVPN;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lde/blinkt/openvpn/core/TkLogStatus$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;,
        Lcom/tknetwork/tunnel/service/TunnelVPN$MyBinder;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_CHANNEL_BG_ID:Ljava/lang/String;

.field public static final NOTIFICATION_CHANNEL_NEWSTATUS_ID:Ljava/lang/String;

.field public static final NOTIFICATION_CHANNEL_USERREQ_ID:Ljava/lang/String;

.field private static final NOTIFICATION_ID:I = 0x281a8

.field public static final RECONNECT_SERVICE:Ljava/lang/String;

.field public static final STOP_SERVICE:Ljava/lang/String;

.field public static isRunning:Z

.field private static final m_OnUdpListeners:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/tknetwork/tunnel/listener/UdpListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private InjectorListener:Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;

.field private client:Ljava/net/Socket;

.field private config:Lconfig/ConfigUtil;

.field private dns:Lslowdns/app/tunnel/slowdns/process/SlowDnsProcess;

.field private dnstt:Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private huc:Ljavax/net/ssl/HttpsURLConnection;

.field private lastChannel:Ljava/lang/String;

.field private mBackServerThread:Lcom/tknetwork/tunnel/thread/BackServer;

.field private mBundle:Landroid/os/Bundle;

.field private mConnecttime:J

.field private mDisplayBytecount:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field public mSSHTunnelThread:Lcom/tknetwork/tunnel/service/c_07;

.field public mSSLSocket:Ljavax/net/ssl/SSLSocket;

.field private mThread:Ljava/lang/Thread;

.field private mTunnelType:I

.field private final m_Handler:Landroid/os/Handler;

.field private mainViewModel:Lcom/v2ray/ang/viewmodel/MainViewModel;

.field private myPrefs:Landroid/content/SharedPreferences;

.field private nm:Landroid/app/NotificationManager;

.field private pdns:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

.field private repeatCount:I

.field public server:Ljava/net/Socket;

.field spt:I

.field private ss:Ljava/net/ServerSocket;

.field private ssh:Lcom/tknetwork/tunnel/service/c_07;

.field private tun:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

.field public udp:Lcom/tknetwork/tunnel/thread/UDPTunnelThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    sput-object v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->RECONNECT_SERVICE:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    new-array v2, v1, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->NOTIFICATION_CHANNEL_BG_ID:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->STOP_SERVICE:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    new-array v2, v1, [J

    .line 55
    .line 56
    fill-array-data v2, :array_3

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->NOTIFICATION_CHANNEL_NEWSTATUS_ID:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v1, v1, [J

    .line 71
    .line 72
    fill-array-data v1, :array_4

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->NOTIFICATION_CHANNEL_USERREQ_ID:Ljava/lang/String;

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->isRunning:Z

    .line 86
    .line 87
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->m_OnUdpListeners:Lj$/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    return-void

    .line 95
    :array_0
    .array-data 8
        0xcd6e9c665313761L    # 8.1927367028697E-247
        0x614f0d25f8e74fb0L    # 5.456929485043942E160
        0x22762ccc8850b757L
        0x790da5c641ea619dL    # 1.2830836259021246E275
        0x481dab8e068785aaL    # 2.5240560166429936E39
        -0x58ecae88477a460cL
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
    :array_1
    .array-data 8
        0x2aaf77fca61d091aL
        0x70a5869d0e12542dL    # 4.277663576081472E234
        -0x4e3df4f9b97d0b8eL    # -5.228550456346505E-69
        -0x433500b9df4706fL
    .end array-data

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
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_2
    .array-data 8
        0x3e66a1147d398c19L    # 4.2150204795898146E-8
        -0x2dac96e8c1da13d4L    # -3.861319241748442E88
        -0x14e8f596927a1fcfL    # -7.397281602769422E207
        0x40c9673180904bc7L    # 13006.386735951424
    .end array-data

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
    :array_3
    .array-data 8
        -0x5b109c5436e1ce3fL    # -8.844516142536402E-131
        -0x216aca218c463823L    # -4.237671383369163E147
        -0xe75135b7117bfdeL    # -8.766220418618773E238
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
    :array_4
    .array-data 8
        0xf2d8da897502e73L
        -0x1bc104fbdfede3bL
        -0x43157aa47b95341aL    # -2.9444144558613872E-15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->repeatCount:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    .line 10
    new-instance v1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->m_Handler:Landroid/os/Handler;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mDisplayBytecount:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->spt:I

    .line 20
    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    const-wide v5, 0x29ee382f66a4add8L

    aput-wide v5, v4, v0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v4, v1

    goto :goto_1

    .line 61
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x2

    new-array v5, v5, [J

    fill-array-data v5, :array_1

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object p1

    nop

    :array_0
    .array-data 8
        0x9bf2a993826182fL
        -0x8c7e674351548beL
        -0x6fd947de2833a924L    # -7.316908741767377E-231
        -0x2473ea125bdfa45fL    # -9.967648130220423E132
    .end array-data

    :array_1
    .array-data 8
        0x27aa3aad3706c89aL
        0x5f847c9b5562f3edL    # 1.3412223865946592E152
    .end array-data
.end method

.method private a(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 1
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x2

    new-array v5, v4, [J

    fill-array-data v5, :array_0

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 4
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_1

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object p1, p1, v3

    .line 6
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_2

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_3

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 8
    iget v3, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->repeatCount:I

    aget-object v5, p1, v3

    add-int/2addr v3, v1

    .line 9
    iput v3, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->repeatCount:I

    .line 10
    array-length p1, p1

    sub-int/2addr p1, v1

    if-le v3, p1, :cond_1

    .line 11
    iput v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->repeatCount:I

    :cond_1
    move-object p1, v5

    .line 12
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_4

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_5

    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_6

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lconfig/ConfigUtil;->hide(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_7

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_8

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x5dc

    if-eqz v3, :cond_4

    .line 16
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_9

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 17
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_b

    .line 18
    aget-object v3, p1, v0

    .line 19
    invoke-direct {p0, v3, p2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 21
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    .line 23
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_a

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_6

    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_b

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 25
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_b

    .line 26
    aget-object v3, p1, v0

    .line 27
    invoke-direct {p0, v3, p2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 29
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 30
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_5
    add-int/2addr v0, v1

    goto :goto_1

    .line 31
    :cond_6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_c

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 32
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_d

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 33
    array-length v2, p1

    :goto_2
    if-ge v0, v2, :cond_b

    .line 34
    aget-object v3, p1, v0

    .line 35
    invoke-direct {p0, v3, p2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 37
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_7
    add-int/2addr v0, v1

    goto :goto_2

    .line 39
    :cond_8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_e

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 40
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_f

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 41
    array-length v2, p1

    :goto_3
    if-ge v0, v2, :cond_b

    .line 42
    aget-object v3, p1, v0

    .line 43
    invoke-direct {p0, v3, p2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 45
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_9
    add-int/2addr v0, v1

    goto :goto_3

    .line 47
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    :cond_b
    return-void

    nop

    :array_0
    .array-data 8
        0x2b187de1ae44e878L
        -0x1795b50b807be82dL    # -9.596744628166342E194
    .end array-data

    :array_1
    .array-data 8
        -0x7bd74fd8e434ccc9L
        -0x10fce60065f4c43eL    # -5.656340014976469E226
    .end array-data

    :array_2
    .array-data 8
        -0x36fc2546daf24d7bL    # -5.534595482445531E43
        0x6dd3467c62a8d5b1L    # 1.0886763285443636E221
    .end array-data

    :array_3
    .array-data 8
        -0x1b2827b4dafdba04L    # -6.039109481362042E177
        0x2ed1525e0079f789L    # 3.5665875793633305E-83
    .end array-data

    :array_4
    .array-data 8
        0xc2f3ad6e76cc5a2L
        -0x5a2ddf7146c2d131L
    .end array-data

    :array_5
    .array-data 8
        -0x602f9eb8a0e72836L
        -0x4d7dae768c54f846L    # -2.1743073990011375E-65
    .end array-data

    :array_6
    .array-data 8
        0x5985ace117c8c73L
        0x57649614ae005c9eL    # 9.90160730128591E112
        -0x24870e2c15f4d83cL
    .end array-data

    :array_7
    .array-data 8
        -0x5054d1e5275e4a91L    # -4.584607426787641E-79
        -0x6ebbe2cb28402656L    # -1.698140394380447E-225
        -0x52174b64a1ab3c96L    # -1.5524043221635142E-87
    .end array-data

    :array_8
    .array-data 8
        0x1ce238212188814fL    # 1.508631171953544E-169
        -0x317d0a29025e5988L    # -1.6357407793003043E70
        -0x716619360542a018L
    .end array-data

    :array_9
    .array-data 8
        -0x3b00c437331aaf40L    # -2.359939008978331E24
        0x371ba1d73ab7f377L    # 3.097675676704285E-43
        -0x10939f68d173826bL    # -5.377964147703929E228
    .end array-data

    :array_a
    .array-data 8
        -0x7ac76449a3a20161L
        0x7727e880205fefd1L    # 9.636363204697037E265
        -0x5d0a7d838a592df1L    # -2.822257376066611E-140
    .end array-data

    :array_b
    .array-data 8
        -0x3f704a51b880a3a9L    # -1014.7100973081641
        -0x4e7b9d38c0b77870L    # -3.692154808848297E-70
        -0x76e19708dd45fc37L    # -9.431060791821227E-265
    .end array-data

    :array_c
    .array-data 8
        0x437d5a0a73bdd473L    # 1.3218840420163768E17
        -0x12d868cb5c722f15L    # -6.50589026343682E217
        0x9315028332ed5b5L
    .end array-data

    :array_d
    .array-data 8
        0x1c29c70bf2d99446L    # 5.211151948594147E-173
        -0x5a4ffe7385ea4e0cL
        0x3633c247203ba64cL    # 1.3519586492797513E-47
    .end array-data

    :array_e
    .array-data 8
        0x729d7a554e0ab5a7L    # 1.2579764710027354E244
        0x193272f1cd1b11f7L
        -0xea5789302d84b70L    # -1.0796862802446015E238
    .end array-data

    :array_f
    .array-data 8
        -0x3ca21b02ddd79082L    # -3.3658200702172664E16
        0x21d77339cdd1d51fL    # 1.173726258238076E-145
        -0x579e1a5194e81c7dL
    .end array-data
.end method

.method private a(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 6

    const/4 v0, 0x1

    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 51
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    const/16 v4, 0x3e8

    int-to-long v4, v4

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 54
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    return v2

    nop

    :array_0
    .array-data 8
        0x73b1e8d68744c927L    # 2.0035512543911106E249
        0x71577f26f472dc99L    # 9.562759749602638E237
    .end array-data

    :array_1
    .array-data 8
        0x65c92e2d6fa413f7L    # 2.089727643184581E182
        -0x49787526eca50ad7L    # -5.15467088579109E-46
    .end array-data
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v5, v1, [J

    .line 10
    .line 11
    const-wide v6, -0x61423f6b10cf6c86L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    aput-wide v6, v5, v0

    .line 17
    .line 18
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v5, v3, [J

    .line 34
    .line 35
    fill-array-data v5, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    aget-object v4, v4, v0

    .line 50
    .line 51
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v6, v3, [J

    .line 54
    .line 55
    fill-array-data v6, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    aget-object v6, v5, v1

    .line 70
    .line 71
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v8, v3, [J

    .line 74
    .line 75
    fill-array-data v8, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    aget-object v7, v6, v0

    .line 90
    .line 91
    aget-object v6, v6, v1

    .line 92
    .line 93
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 94
    .line 95
    invoke-virtual {v8}, Lconfig/ConfigUtil;->getPayload()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v10, v2, [J

    .line 102
    .line 103
    fill-array-data v10, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v8, v9, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v9, v3, [J

    .line 120
    .line 121
    fill-array-data v9, :array_4

    .line 122
    .line 123
    .line 124
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v8, v3, [J

    .line 138
    .line 139
    fill-array-data v8, :array_5

    .line 140
    .line 141
    .line 142
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    aget-object v0, v5, v0

    .line 150
    .line 151
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v4, v2, [J

    .line 158
    .line 159
    fill-array-data v4, :array_6

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    aget-object v1, v5, v1

    .line 170
    .line 171
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v1, v3, [J

    .line 178
    .line 179
    fill-array-data v1, :array_7

    .line 180
    .line 181
    .line 182
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array v1, v3, [J

    .line 196
    .line 197
    fill-array-data v1, :array_8

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    new-array v1, v2, [J

    .line 214
    .line 215
    fill-array-data v1, :array_9

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    aget-object v1, v5, v3

    .line 226
    .line 227
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    new-array v1, v3, [J

    .line 234
    .line 235
    fill-array-data v1, :array_a

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v4, v3, [J

    .line 248
    .line 249
    fill-array-data v4, :array_b

    .line 250
    .line 251
    .line 252
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    new-array v1, v3, [J

    .line 266
    .line 267
    fill-array-data v1, :array_c

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 278
    .line 279
    new-array v4, v3, [J

    .line 280
    .line 281
    fill-array-data v4, :array_d

    .line 282
    .line 283
    .line 284
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    new-array v1, v3, [J

    .line 298
    .line 299
    fill-array-data v1, :array_e

    .line 300
    .line 301
    .line 302
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v4, v3, [J

    .line 312
    .line 313
    fill-array-data v4, :array_f

    .line 314
    .line 315
    .line 316
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 328
    .line 329
    new-array v1, v3, [J

    .line 330
    .line 331
    fill-array-data v1, :array_10

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array v4, v3, [J

    .line 344
    .line 345
    fill-array-data v4, :array_11

    .line 346
    .line 347
    .line 348
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 360
    .line 361
    new-array v1, v2, [J

    .line 362
    .line 363
    fill-array-data v1, :array_12

    .line 364
    .line 365
    .line 366
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 374
    .line 375
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 384
    .line 385
    new-array v1, v3, [J

    .line 386
    .line 387
    fill-array-data v1, :array_13

    .line 388
    .line 389
    .line 390
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 398
    .line 399
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 408
    .line 409
    new-array v1, v3, [J

    .line 410
    .line 411
    fill-array-data v1, :array_14

    .line 412
    .line 413
    .line 414
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 422
    .line 423
    new-array v4, v3, [J

    .line 424
    .line 425
    fill-array-data v4, :array_15

    .line 426
    .line 427
    .line 428
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 440
    .line 441
    new-array v1, v3, [J

    .line 442
    .line 443
    fill-array-data v1, :array_16

    .line 444
    .line 445
    .line 446
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 454
    .line 455
    new-array v3, v3, [J

    .line 456
    .line 457
    fill-array-data v3, :array_17

    .line 458
    .line 459
    .line 460
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    return-object p1

    .line 476
    :catch_0
    move-exception p1

    .line 477
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 478
    .line 479
    new-array v1, v2, [J

    .line 480
    .line 481
    fill-array-data v1, :array_18

    .line 482
    .line 483
    .line 484
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-direct {p0, v0, p1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 499
    .line 500
    new-array v0, v2, [J

    .line 501
    .line 502
    fill-array-data v0, :array_19

    .line 503
    .line 504
    .line 505
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 513
    .line 514
    const/4 v1, 0x4

    .line 515
    new-array v1, v1, [J

    .line 516
    .line 517
    fill-array-data v1, :array_1a

    .line 518
    .line 519
    .line 520
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-direct {p0, p1, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    const/4 p1, 0x0

    .line 531
    return-object p1

    .line 532
    nop

    .line 533
    :array_0
    .array-data 8
        -0x3abf2392c6ee1fbL    # -7.817229011276928E290
        -0x5e40e4501551ba7fL    # -3.892569206001316E-146
    .end array-data

    .line 534
    .line 535
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
    :array_1
    .array-data 8
        -0x6d2cd9e1ca7c8317L    # -5.42459031246197E-218
        0x26de6d0737e5425dL
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_2
    .array-data 8
        -0x5eed1f6fe544a3f2L
        -0x1963e7ed1b52f555L    # -1.9099918216438322E186
    .end array-data

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
    :array_3
    .array-data 8
        -0x711efd8dfc5d99ffL    # -5.224278275685044E-237
        0x36c79230b22ef0bfL    # 8.25752098353086E-45
        -0x272758a6ab5d2cbcL    # -9.947192413784961E119
    .end array-data

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
    .line 584
    .line 585
    :array_4
    .array-data 8
        0x62bc1c945b215441L    # 4.1442292295646195E167
        0x1d2b2f6ae8754d5aL
    .end array-data

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
    :array_5
    .array-data 8
        0x2e6e5d233ed1ff2dL    # 4.8843596001984565E-85
        -0x6be6b5252505fa9eL
    .end array-data

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
    :array_6
    .array-data 8
        0x45ec7fc76058d0f8L    # 7.056044305844904E28
        -0x132e03ab6ab985bfL    # -1.550041833865629E216
        -0x3ad6b9ab50a92915L    # -1.5277636652595453E25
    .end array-data

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
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    :array_7
    .array-data 8
        0x534deb635b117f6L
        -0x5dc8607e9029c8e3L    # -7.567255472062066E-144
    .end array-data

    .line 626
    .line 627
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
    :array_8
    .array-data 8
        0x1e394a55fd568f58L    # 4.391750110443732E-163
        0x4956fecb806a4bc4L    # 2.0512486520317176E45
    .end array-data

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
    :array_9
    .array-data 8
        0x6ce110a5250d581aL    # 2.941397364973711E216
        0x912b88569e3bd8eL
        0x306a8c6354f55d88L    # 1.8342110145106666E-75
    .end array-data

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
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_a
    .array-data 8
        0x7f4c0fb7d7f60fd8L    # 1.5394831635197409E305
        -0x110088b58a21d99dL    # -4.658842384993029E226
    .end array-data

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
    .line 676
    .line 677
    :array_b
    .array-data 8
        0x61e0229e00e9fbd4L    # 2.9036391730570534E163
        0x76f0f56cfdcc10ddL    # 8.544145076752247E264
    .end array-data

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
    :array_c
    .array-data 8
        0x257a4830056a196bL
        -0x711df0de9b032d67L    # -5.546635201509752E-237
    .end array-data

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
    :array_d
    .array-data 8
        -0x68908b3058d55e8cL
        0x3b8c36580a8682a2L    # 7.467728575053931E-22
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :array_e
    .array-data 8
        -0x4974114fdbfff482L    # -6.115874134751374E-46
        -0x73b319fda4119f1aL    # -2.018127060963406E-249
    .end array-data

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
    .line 724
    .line 725
    :array_f
    .array-data 8
        -0x1067321d18385155L    # -3.7606481327662524E229
        0x11b105571679300bL    # 1.839351488974973E-223
    .end array-data

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
    :array_10
    .array-data 8
        0x5456d3683c12ef8dL    # 1.950225305247587E98
        0x7fdb60fafe03a299L    # 7.690427256215943E307
    .end array-data

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
    :array_11
    .array-data 8
        0x1af32404aecaf262L
        0x6c2976101e7b2f3eL    # 1.071434281603348E213
    .end array-data

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
    .line 761
    :array_12
    .array-data 8
        -0x411f132160bd9786L    # -8.070598575483435E-6
        -0x187b31b432684158L    # -4.6350306882470645E190
        0x3957f167a00cdf78L    # 1.8445006591375896E-32
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_13
    .array-data 8
        -0x5e69f947b5cbc79cL    # -6.890372164765332E-147
        -0x2ee749e26ff03a8aL    # -4.6880904199852687E82
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_14
    .array-data 8
        0x1c39dce40c5730b8L
        0x4b1b3f58f639df21L    # 6.524468353661137E53
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    :array_15
    .array-data 8
        -0x22b0de38ae203276L    # -2.9658847772119377E141
        0x6b40bd2f5a94328cL    # 4.299288813852684E208
    .end array-data

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    :array_16
    .array-data 8
        -0x37aa341fff0e1125L    # -2.9667704328593067E40
        0x724d83f859f962f1L    # 3.9361967057722625E242
    .end array-data

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    :array_17
    .array-data 8
        0x61d30222ea85726bL    # 1.7103381355973966E163
        -0x18682a86cf331277L    # -1.0619205502146197E191
    .end array-data

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
    :array_18
    .array-data 8
        -0x3512e400cda0edcdL    # -8.71288449257459E52
        0x444121bda4010d98L    # 6.320518579026846E20
        -0x57397c3ba052835L
    .end array-data

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
    :array_19
    .array-data 8
        -0x422a1200f258e201L    # -7.977968582047222E-11
        0x65d4a098467a55bbL    # 3.4237360064029057E182
        -0x8d77cdbb5c244faL    # -9.879836656935627E265
    .end array-data

    .line 854
    .line 855
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
    :array_1a
    .array-data 8
        -0x3019e0801e97c55aL    # -8.00523002127251E76
        0x726c9e7ca3283b3cL    # 1.5266600048540023E243
        -0x74e0e6bc3265c5fdL
        0x21d9800d27a80ae1L
    .end array-data
.end method

.method private c_02()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mThread:Ljava/lang/Thread;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 10
    .line 11
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v3, v0, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 36
    .line 37
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v3, v0, [J

    .line 44
    .line 45
    fill-array-data v3, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mThread:Ljava/lang/Thread;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x371baa836c8c9f95L    # -1.417068247762173E43
        -0x5265897d85628fa9L    # -5.196359565258085E-89
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
    :array_1
    .array-data 8
        0x3d0298692828440aL    # 8.257996316279863E-15
        -0x4d9b6835add8647dL    # -6.110674082982455E-66
    .end array-data
.end method

.method private closeAll()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->ss:Ljava/net/ServerSocket;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->ss:Ljava/net/ServerSocket;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mThread:Ljava/lang/Thread;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 41
    .line 42
    .line 43
    :cond_4
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->huc:Ljavax/net/ssl/HttpsURLConnection;

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 48
    .line 49
    .line 50
    :cond_5
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBackServerThread:Lcom/tknetwork/tunnel/thread/BackServer;

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/thread/BackServer;->Stop()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBackServerThread:Lcom/tknetwork/tunnel/thread/BackServer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    :catch_0
    :cond_6
    return-void
.end method

.method private connectSSL()V
    .locals 8

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/utils/SSLUtil;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/utils/SSLUtil;-><init>(Lcom/tknetwork/tunnel/service/TunnelVPN;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 7
    .line 8
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getSni()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    new-array v4, v3, [J

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 28
    .line 29
    invoke-virtual {v4}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    new-array v5, v4, [J

    .line 41
    .line 42
    fill-array-data v5, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 53
    .line 54
    invoke-virtual {v5}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Ljava/net/URL;

    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v7, v4, [J

    .line 72
    .line 73
    fill-array-data v7, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-static {v6, v5, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-lez v5, :cond_0

    .line 95
    .line 96
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v6, v4, [J

    .line 103
    .line 104
    fill-array-data v6, :array_3

    .line 105
    .line 106
    .line 107
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v4, v4, [J

    .line 135
    .line 136
    fill-array-data v4, :array_4

    .line 137
    .line 138
    .line 139
    invoke-direct {v6, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_1

    .line 151
    .line 152
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v3, v3, [J

    .line 175
    .line 176
    fill-array-data v3, :array_5

    .line 177
    .line 178
    .line 179
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {v1}, Lconfig/ConfigUtil;->hide(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Ljava/net/Proxy;

    .line 204
    .line 205
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 206
    .line 207
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBackServerThread:Lcom/tknetwork/tunnel/thread/BackServer;

    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/tknetwork/tunnel/thread/BackServer;->getLocalSocketAddr()Ljava/net/SocketAddress;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-direct {v1, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 221
    .line 222
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->huc:Ljavax/net/ssl/HttpsURLConnection;

    .line 223
    .line 224
    new-instance v2, L땭듔땟뒻땜뒝딻뒉딄딟뎸땝뒈뒝땤땣뒋딐딝딻뒛뒨딌뒀돨뒘딸두돠뎻땯돠땋돷딅딁땝딃뒛따뎽뎸듌땁됨뎹땤땧둣땝돼딟뒀둣도땰된뒷땵땳뒙돝뒬돛딄땃딠뒬될뒐땳디딟딐둥돳땫딐땅딜땱뒾듔땯뒻땥돵땭뒐땠딻땍뎠딨돛땍둠딅돛딞듼됐뒨둘땹듟듼땁딅득돸뒀돵뎡뎠뎻드땍딻도돝딄드땝땪땰두뒬돰돶;

    .line 225
    .line 226
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->huc:Ljavax/net/ssl/HttpsURLConnection;

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->huc:Ljavax/net/ssl/HttpsURLConnection;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :array_0
    .array-data 8
        -0x44483fef3faa9b55L    # -5.029312250701605E-21
        -0x126b889b1df52405L    # -7.224668945569523E219
        -0x3487a0acffd64d29L    # -3.7350533386952464E55
    .end array-data

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
    :array_1
    .array-data 8
        0x6a11086a7da645cL
        -0x4b02e7a76090395cL    # -1.8985440088237779E-53
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
    :array_2
    .array-data 8
        0x5df88cb88ed47c0dL    # 4.789872668587882E144
        0x3fb4a9381cba6104L    # 0.08070707990043863
    .end array-data

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
    :array_3
    .array-data 8
        -0x57a800be36412f63L    # -2.436129518546809E-114
        -0x44ef6f62e8734acfL    # -3.42554041877258E-24
    .end array-data

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
    :array_4
    .array-data 8
        -0x70643e4171d4961eL
        0x1b9609c5c9e2e36cL
    .end array-data

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
    :array_5
    .array-data 8
        -0x7a22413bcf77188dL
        -0x67c8baea23956aabL    # -5.100310726791568E-192
        0xad5a30a07f5f388L
    .end array-data
.end method

.method private connectSocket(Ljava/lang/String;I)V
    .locals 3

    .line 93
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 94
    iget v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mTunnelType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 95
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 97
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->doVpnProtect(Ljava/net/Socket;)V

    return-void
.end method

.method private connectSocket()Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 1
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_18

    .line 5
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v7, [J

    fill-array-data v10, :array_0

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v3, [J

    const-wide v12, 0x1cad951510159c03L

    aput-wide v12, v11, v4

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 9
    :cond_0
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v6, [J

    fill-array-data v10, :array_3

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v10}, Lconfig/ConfigUtil;->getServerSelectedName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v8, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mTunnelType:I

    if-eqz v8, :cond_1

    .line 11
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v6, [J

    fill-array-data v10, :array_4

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v10}, Lconfig/ConfigUtil;->getNetworkSelectedName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v8, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v8}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v7, [J

    fill-array-data v11, :array_5

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 13
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v6, [J

    fill-array-data v10, :array_6

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_7

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_8

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v6, [J

    fill-array-data v10, :array_9

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_a

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_b

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v8

    .line 14
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_c

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mTunnelType:I

    aget-object v8, v8, v11

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 15
    :cond_2
    iget-object v8, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v8}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v7, [J

    fill-array-data v11, :array_d

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 16
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v6, [J

    fill-array-data v10, :array_e

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_f

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_10

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v6, [J

    fill-array-data v10, :array_11

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_12

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_13

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v8

    .line 17
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_14

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mTunnelType:I

    aget-object v8, v8, v11

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_3
    iget-object v8, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v8}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v7, [J

    fill-array-data v11, :array_15

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 19
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v6, [J

    fill-array-data v10, :array_16

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_17

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_18

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v6, [J

    fill-array-data v10, :array_19

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_1a

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_1b

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v8

    .line 20
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_1c

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mTunnelType:I

    aget-object v8, v8, v11

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 21
    :cond_4
    :goto_0
    iget v8, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mTunnelType:I

    if-nez v8, :cond_5

    .line 22
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_1d

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 23
    aget-object v1, v1, v4

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_1e

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_1f

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 25
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_20

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 26
    invoke-direct {v0, v2, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    .line 27
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->send200Status(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_5
    if-ne v8, v3, :cond_8

    .line 28
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    return v4

    .line 29
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_21

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 30
    aget-object v2, v2, v4

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_22

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    .line 31
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_23

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    .line 32
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v7, [J

    fill-array-data v7, :array_24

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 33
    invoke-direct {v0, v5, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    const-wide v6, -0x22cc6c42b415372bL    # -9.325379330098371E140

    aput-wide v6, v5, v4

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 35
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/net/Socket;)V

    .line 36
    :cond_7
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->send200Status(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_8
    if-ne v8, v7, :cond_d

    .line 37
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    return v4

    .line 38
    :cond_9
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v2}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v7, [J

    fill-array-data v8, :array_25

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 39
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v2}, Lconfig/ConfigUtil;->getProxy()Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v5, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v5}, Lconfig/ConfigUtil;->getProxyPort()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v7, [J

    fill-array-data v7, :array_26

    invoke-direct {v9, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 42
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v6, [J

    fill-array-data v9, :array_27

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v6, [J

    fill-array-data v6, :array_28

    invoke-direct {v10, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lconfig/ConfigUtil;->hide(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v8, v6}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {v0, v2, v5}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 44
    :cond_a
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v2}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v7, [J

    fill-array-data v8, :array_29

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 45
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v2}, Lconfig/ConfigUtil;->getProxy()Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-object v5, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v5}, Lconfig/ConfigUtil;->getProxyPort()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v7, [J

    fill-array-data v7, :array_2a

    invoke-direct {v9, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 48
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v6, [J

    fill-array-data v9, :array_2b

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v6, [J

    fill-array-data v6, :array_2c

    invoke-direct {v10, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lconfig/ConfigUtil;->hide(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v8, v6}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {v0, v2, v5}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 50
    :cond_b
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v2}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v7, [J

    fill-array-data v8, :array_2d

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 51
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v2}, Lconfig/ConfigUtil;->getProxy()Ljava/lang/String;

    move-result-object v2

    .line 52
    iget-object v5, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v5}, Lconfig/ConfigUtil;->getProxyPort()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v7, [J

    fill-array-data v7, :array_2e

    invoke-direct {v9, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 54
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v6, [J

    fill-array-data v9, :array_2f

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v6, [J

    fill-array-data v6, :array_30

    invoke-direct {v10, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lconfig/ConfigUtil;->hide(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v8, v6}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {v0, v2, v5}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    .line 56
    :cond_c
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    const-wide v6, 0x5c2861992a573ab6L    # 8.860615913325668E135

    aput-wide v6, v5, v4

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 57
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/net/Socket;)V

    goto/16 :goto_2

    :cond_d
    if-ne v8, v6, :cond_e

    .line 58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_31

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    aget-object v1, v1, v4

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_32

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 60
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_33

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 61
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_34

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    invoke-direct {v0, v2, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSSL()V

    .line 64
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->send200Status(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_e
    if-ne v8, v5, :cond_11

    .line 65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    return v4

    .line 66
    :cond_f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_35

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    aget-object v2, v2, v4

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_36

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    .line 68
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_37

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    .line 69
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v7, [J

    fill-array-data v7, :array_38

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 70
    invoke-direct {v0, v5, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSSL()V

    .line 72
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    const-wide v6, -0x54e57f2c422eb549L

    aput-wide v6, v5, v4

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 73
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/net/Socket;)V

    .line 74
    :cond_10
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->send200Status(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_11
    if-ne v8, v2, :cond_13

    .line 75
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    return v4

    .line 76
    :cond_12
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v2}, Lconfig/ConfigUtil;->getProxy()Ljava/lang/String;

    move-result-object v2

    .line 77
    iget-object v5, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    invoke-virtual {v5}, Lconfig/ConfigUtil;->getProxyPort()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v7, [J

    fill-array-data v7, :array_39

    invoke-direct {v9, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 79
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v6, [J

    fill-array-data v9, :array_3a

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v6, [J

    fill-array-data v6, :array_3b

    invoke-direct {v10, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lconfig/ConfigUtil;->hide(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v8, v6}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {v0, v2, v5}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSSL()V

    .line 82
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    const-wide v6, 0x3f3dac35f6b2fa8bL    # 4.527694461095375E-4

    aput-wide v6, v5, v4

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 83
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/net/Socket;)V

    goto :goto_2

    :cond_13
    if-ne v8, v1, :cond_14

    .line 84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_3c

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    aget-object v1, v1, v4

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_3d

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 86
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v7, [J

    fill-array-data v5, :array_3e

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 87
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v7, [J

    fill-array-data v6, :array_3f

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    invoke-direct {v0, v2, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket(Ljava/lang/String;I)V

    .line 89
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->send200Status(Ljava/io/OutputStream;)V

    .line 90
    :cond_14
    :goto_2
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_16

    .line 91
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3

    :cond_15
    const/4 v3, 0x0

    :goto_3
    return v3

    .line 92
    :cond_16
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_17

    goto :goto_4

    :cond_17
    const/4 v3, 0x0

    :goto_4
    return v3

    :catch_0
    :cond_18
    return v4

    :array_0
    .array-data 8
        0x4a99c7ac70d11d7cL    # 2.4113584417647933E51
        -0x4203ee5ec172643bL    # -4.0845576795251445E-10
    .end array-data

    :array_1
    .array-data 8
        0x42c7a1a7de5468f2L    # 5.196614707835389E13
        -0x5702e1e77d9cc7abL    # -3.026889829884306E-111
        -0x256e6ce14b3e5deL
    .end array-data

    :array_2
    .array-data 8
        -0x79b4bba8e53459ecL
        -0x1960bca303824895L    # -2.1254451402742093E186
        -0x49df75beebc7d383L    # -5.658582619403543E-48
        0xfb5f77dc3e35e05L    # 5.526999492845786E-233
        0x601e5a07ac940212L    # 1.0173737260022888E155
        -0x5ed666c3e96e694dL    # -6.256160950860926E-149
        -0x15dd68303e8c16d2L    # -1.821700104893674E203
    .end array-data

    :array_3
    .array-data 8
        -0x617d1973f44899efL
        -0x11088c2877d59297L    # -3.47237035870631E226
        0x6ef6a84172b11ff6L    # 3.354624601598789E226
    .end array-data

    :array_4
    .array-data 8
        -0x703da71744e41a3cL
        0x9843122f7832550L
        0x4d361b2d917b5db3L    # 9.09394842924549E63
    .end array-data

    :array_5
    .array-data 8
        -0xb122207c6de4298L
        0x7ee5268d1f510299L    # 1.8130432119306273E303
    .end array-data

    :array_6
    .array-data 8
        0x5806d5ce17078b2fL    # 1.1246896795201284E116
        -0x2d6c9e277bb5173L    # -8.050864749344428E294
        0x746255fd53f1cc2fL    # 4.200959877015687E252
    .end array-data

    :array_7
    .array-data 8
        0x22dce20835d133c7L    # 9.47421863357547E-141
        0x1b8a5821998274ecL
        0x63e3f914fe05a707L    # 1.5437263477653603E173
        0x648e2b65cddf6611L    # 2.3877888088811153E176
    .end array-data

    :array_8
    .array-data 8
        -0x364dbb6cfc843f55L    # -1.042910912397037E47
        -0x778c2f6750d48941L    # -6.001146287628447E-268
        0x686b13f7266ad669L    # 9.883337699239344E194
        0x20c53723b1350c05L    # 8.101457674656235E-151
        0x62203de1556b4aadL    # 4.676486157804311E164
    .end array-data

    :array_9
    .array-data 8
        -0x3b7f4e04688a5377L    # -9.855133314396226E21
        0x3248829275417035L    # 1.8182563619123836E-66
        -0x18f967770676af33L    # -1.9663272575258683E188
    .end array-data

    :array_a
    .array-data 8
        -0x538975ca7b0210dfL    # -1.6883907075242495E-94
        0xf9172844e574a48L    # 1.097469303971479E-233
        0x7100e51560b7ea49L    # 2.1487265265330436E236
        -0x8b139263376fc63L    # -4.961912366430571E266
        0x5bb18964478301ebL    # 4.979040142598699E133
    .end array-data

    :array_b
    .array-data 8
        -0x2ef6e1706dccd313L    # -2.3827458331077192E82
        0x6a0e2a18a2189fafL    # 7.3886031859497666E202
        -0x7725b13e03ad5f1aL    # -5.099244727680447E-266
        0xfa49274b5a70ac2L    # 2.588045190413933E-233
        -0x4b4fd007ffa6340L    # -8.033374233040161E285
    .end array-data

    :array_c
    .array-data 8
        0x6d1c0f22ae5ecc5cL    # 3.869109123907408E217
        0x4ef51c8a35017c13L    # 2.3312977070536555E72
        -0x57c6a0be917a9b2cL    # -6.439289419019447E-115
        -0x17cf8dac009714f4L    # -7.503660941379492E193
    .end array-data

    :array_d
    .array-data 8
        -0x1c23339c5883097aL
        0x24b8c7713116f541L    # 8.727441099738623E-132
    .end array-data

    :array_e
    .array-data 8
        0x51019fbfbacdc004L    # 1.671759476343045E82
        0x234f882f07657ff5L
        -0x2ce679bfa94e5bdaL    # -2.079766409850725E92
    .end array-data

    :array_f
    .array-data 8
        -0xe947eda0a1553cdL    # -2.2387732686693543E238
        0x160862619cce20b9L
        0x332c8e7b89636a93L    # 3.4708591225692825E-62
        -0x4f67979e8eed5b45L    # -1.3490517082730775E-74
    .end array-data

    :array_10
    .array-data 8
        -0x66a32b19059a09a8L
        -0x3d503270def4ee4cL    # -1.7483865032072852E13
        -0x4ddc5a3743168622L    # -3.643848875225283E-67
        -0x35bc93999ea7c9b8L    # -5.677477053691023E49
    .end array-data

    :array_11
    .array-data 8
        0x3430809c4e60df4aL
        -0x6e6ba5adfd309e21L    # -5.49854388981814E-224
        -0xf456225550a9f46L    # -1.057863187896214E235
    .end array-data

    :array_12
    .array-data 8
        0x343dba18e5a0e5c8L    # 4.7357751476735956E-57
        0x961afec0a08130cL
        0x6b7a1d2a1e1185c3L    # 5.365733933454919E209
        0x6d2dc16d8ce661e5L    # 8.206071017149917E217
    .end array-data

    :array_13
    .array-data 8
        0x73b337ff03010ca3L    # 2.1500136828758947E249
        -0x679ef586c8566784L
        0x6b94f776d134cc53L    # 1.7232416240897543E210
        0x177d5ef67b55c1c3L
        -0x274f02af178e1672L    # -1.7137177782722498E119
    .end array-data

    :array_14
    .array-data 8
        0x77afd715cd312845L    # 3.2853498184418535E268
        -0x1865ea12aa51599fL    # -1.1622484508822749E191
        0x5ae7a5bb20306b99L    # 8.195799008263514E129
        -0x86451cc9dcc14c9L
    .end array-data

    :array_15
    .array-data 8
        0x567f067be42ef677L    # 4.554018987029225E108
        -0x5d5473b0a4103b98L
    .end array-data

    :array_16
    .array-data 8
        -0x606a14e956fe62f3L    # -1.596428300007825E-156
        0x18a600308dea8c28L    # 6.172342982082146E-190
        -0x14655c93fab0d44fL    # -2.1893973546527471E210
    .end array-data

    :array_17
    .array-data 8
        -0x6943b7983d0bc38bL
        -0x370bbe1d8ced0755L    # -2.823464120817659E43
        0x5ca425e982f85a19L    # 1.874485145273844E138
        0x4ca5a9821f5d3bddL    # 1.740485985876859E61
    .end array-data

    :array_18
    .array-data 8
        0xb8dc95e4f18f6f7L
        -0x282eee7acd59c71fL    # -1.0508292608478036E115
        -0x1f803c10f2f28845L    # -6.814462899652542E156
        0xc3a4b7e564920aaL
    .end array-data

    :array_19
    .array-data 8
        -0x1b8f903ae78ece8fL    # -6.50443387321347E175
        -0x2aad5aebfca83363L    # -1.0439918699923E103
        -0x276026330900a559L    # -8.031902587360491E118
    .end array-data

    :array_1a
    .array-data 8
        -0x6da4fac22b2bc4feL    # -2.990034211588492E-220
        -0x7e1b79d73824af78L    # -1.532348662534421E-299
        0x4196c50210278a8fL    # 9.55024680386145E7
        0x24c5222ec7f028f1L
    .end array-data

    :array_1b
    .array-data 8
        -0xf46490667f7f41eL    # -1.022018775150458E235
        0x35bf8de9b31379b5L    # 8.433734570393485E-50
        -0x42043b7f23f8c104L    # -4.0407163381618664E-10
        -0x6bbc52a4cdb3b556L    # -4.676013406803755E-211
        -0x2e5fc7e7c6bf2ec8L    # -1.5754189575924542E85
    .end array-data

    :array_1c
    .array-data 8
        -0x71ca82053727d4cdL
        0x4d0ad7c000dfae4fL    # 1.3803095658826362E63
        0x23bf82b7525ff3ddL    # 1.693474979979737E-136
        -0x2790607414cafd4cL    # -9.968149238458894E117
    .end array-data

    :array_1d
    .array-data 8
        -0x215a724e4a06d7f8L    # -8.612426908342613E147
        0x17160ad33c5bce02L
    .end array-data

    :array_1e
    .array-data 8
        -0x47fc785a2ef8fad2L    # -7.174142641417777E-39
        0x3a4d51610f26a7ceL    # 7.400875225480709E-28
    .end array-data

    :array_1f
    .array-data 8
        0x692d5c82d312095cL    # 4.389585310794723E198
        0x6279ff9d6b196d4fL    # 2.3954430203449945E166
    .end array-data

    :array_20
    .array-data 8
        0x2cff629d19e9b61eL    # 6.018473739049425E-92
        -0x1b3b987229608e66L    # -2.583887443640393E177
    .end array-data

    :array_21
    .array-data 8
        -0x25116401f9fb88dcL    # -1.0608700349722744E130
        0x29ec8ad92a837a93L    # 9.722583324854313E-107
    .end array-data

    :array_22
    .array-data 8
        0x480f647a009581f8L    # 1.3352887057736931E39
        0x11fa801bcb5f2dc5L    # 4.582010003765433E-222
    .end array-data

    :array_23
    .array-data 8
        -0x1b6a25e09d9df565L    # -3.458991468249996E176
        0x48d87887058b5474L    # 8.526832883838479E42
    .end array-data

    :array_24
    .array-data 8
        0x766509903b616d54L    # 2.0701290446698383E262
        -0x299b511a913473caL    # -1.5179796445777706E108
    .end array-data

    :array_25
    .array-data 8
        -0x1509f23a468e7425L    # -1.770110719651421E207
        -0x57792fc1ec9ef9faL    # -1.852774467272704E-113
    .end array-data

    :array_26
    .array-data 8
        0x403c6b7c754de85L
        0x30a61c703666c9ccL
    .end array-data

    :array_27
    .array-data 8
        -0x5e7a4cb6dafdc2c0L    # -3.394208871717349E-147
        0x7f638861538b42ceL    # 4.286360322541895E305
        0x56d641cc9d671ad6L    # 2.090863160875781E110
    .end array-data

    :array_28
    .array-data 8
        0x4548e7c0201d2e05L    # 6.021726083442505E25
        0x4665d5ba0291b16eL    # 1.3839492737809935E31
        0x14fd6ed0fc08827fL
    .end array-data

    :array_29
    .array-data 8
        0x1819207d55934dcdL
        -0x7ce3bdadde0b0b90L
    .end array-data

    :array_2a
    .array-data 8
        0xf590223054df1c9L    # 9.831694500473612E-235
        0x75144203c84d2197L    # 9.505393847297862E255
    .end array-data

    :array_2b
    .array-data 8
        0x736ad503878c5ba7L    # 9.380389493087614E247
        0x359763941f20685eL    # 1.562830935630916E-50
        0x66697f94ca60bc32L    # 2.166903989651981E185
    .end array-data

    :array_2c
    .array-data 8
        -0x11191761b97a70d7L    # -1.6959246170965737E226
        -0x5b7300b90780efbbL
        0x38913c7a0cb503ebL    # 3.2417759376729774E-36
    .end array-data

    :array_2d
    .array-data 8
        -0x4b53199200440d27L    # -5.893189241888291E-55
        0x34ad3c211bcab7bL
    .end array-data

    :array_2e
    .array-data 8
        -0x3567bcb2e6ee1cdL    # -3.182920090116042E292
        -0x43d8bf90c565ea0aL    # -6.302385159576679E-19
    .end array-data

    :array_2f
    .array-data 8
        -0x6a8dbff62ac060b0L    # -2.2737850416564E-205
        -0x6cd734b50459a424L    # -2.247613855731521E-216
        -0x5cc8fd8aeb9265d4L    # -4.83048860435847E-139
    .end array-data

    :array_30
    .array-data 8
        -0x2e995052168ad894L    # -1.3772458492064426E84
        0x21c1f9af0086176bL    # 4.498512181850534E-146
        0x234082bedd35b1abL    # 6.932312751397148E-139
    .end array-data

    :array_31
    .array-data 8
        0x7355e06c21d12a07L    # 3.8239946069462507E247
        -0x553e6f50aa262bb1L    # -9.803112311427216E-103
    .end array-data

    :array_32
    .array-data 8
        -0x13d1b1b67ac6046bL    # -1.2753014055637236E213
        -0xaebcb5b6d9d11eL
    .end array-data

    :array_33
    .array-data 8
        -0x21db3122d45c1fc8L
        -0x353a014e3f779474L    # -1.645853800633273E52
    .end array-data

    :array_34
    .array-data 8
        -0x5975763e6a17f156L
        -0x5bf7c52c7eb3f2dL    # -7.49424295754972E280
    .end array-data

    :array_35
    .array-data 8
        -0x4024dda3966b8570L    # -0.42397222815081026
        0x74e9aa1a27447a5L
    .end array-data

    :array_36
    .array-data 8
        0x740f848d09cc4684L    # 1.1282932366563006E251
        0x21b64e40a2484219L    # 2.791113269504158E-146
    .end array-data

    :array_37
    .array-data 8
        -0x60310897d7c512b0L
        -0x772756893135b68eL    # -4.780260798305707E-266
    .end array-data

    :array_38
    .array-data 8
        0x23447eed44e9930eL    # 8.605518654300963E-139
        0x72d8d0cb9a1981aL
    .end array-data

    :array_39
    .array-data 8
        -0x12d8350f7a93a346L    # -6.56162196005507E217
        0x7d934de00ffb5fdcL    # 7.890555053117866E296
    .end array-data

    :array_3a
    .array-data 8
        -0x3467577928edf863L    # -1.5115498513738595E56
        0x707cd0baafa74cd0L    # 7.157816007117828E233
        -0x5c72f52e24e9554L
    .end array-data

    :array_3b
    .array-data 8
        -0x5fb9301fbe0da24dL
        -0x42db8d1dba9506e4L    # -3.632430378522718E-14
        0x218bb9e5d0ca8fc0L    # 4.336725168105532E-147
    .end array-data

    :array_3c
    .array-data 8
        -0x5813983e5c619220L
        0x6bbc3f224271f071L    # 9.28631509985278E210
    .end array-data

    :array_3d
    .array-data 8
        -0x3744f63577b5d14dL    # -2.3553634731719346E42
        -0x1a9691ddd6caf272L    # -3.297595223395173E180
    .end array-data

    :array_3e
    .array-data 8
        -0x3fd087c0bfd5243L
        -0x5cd15cad2b5fd325L
    .end array-data

    :array_3f
    .array-data 8
        -0x11a1912111c2641dL    # -4.4003055907956083E223
        0x40f6e2e80ea6b67bL    # 93742.50357695848
    .end array-data
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v2, v1, [J

    .line 25
    .line 26
    fill-array-data v2, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v3, v1, [J

    .line 39
    .line 40
    fill-array-data v3, :array_2

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {p0, p1, v0, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v2, v1, [J

    .line 57
    .line 58
    fill-array-data v2, :array_3

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v2, v1, [J

    .line 77
    .line 78
    fill-array-data v2, :array_4

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v3, v1, [J

    .line 91
    .line 92
    fill-array-data v3, :array_5

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {p0, p1, v0, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v2, v1, [J

    .line 109
    .line 110
    fill-array-data v2, :array_6

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v2, v1, [J

    .line 129
    .line 130
    fill-array-data v2, :array_7

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v3, v1, [J

    .line 143
    .line 144
    fill-array-data v3, :array_8

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-direct {p0, p1, v0, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v2, v1, [J

    .line 161
    .line 162
    fill-array-data v2, :array_9

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_3

    .line 177
    .line 178
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v2, v1, [J

    .line 181
    .line 182
    fill-array-data v2, :array_a

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v1, v1, [J

    .line 195
    .line 196
    fill-array-data v1, :array_b

    .line 197
    .line 198
    .line 199
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-direct {p0, p1, v0, v1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :cond_3
    return-object p1

    .line 211
    :array_0
    .array-data 8
        0x48ebd1bfd5b3d63eL    # 1.9387245815983631E43
        0x6bb5e3760d7f1260L    # 7.196036897834775E210
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
    :array_1
    .array-data 8
        0x2dcaaca129bab124L
        0x502ba779d901163bL    # 1.6010689706620196E78
    .end array-data

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
    :array_2
    .array-data 8
        0x4d1c9965ca6f2cc9L    # 2.9412580932423435E63
        -0x373bd4a3da228e55L    # -3.514000691989639E42
    .end array-data

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
    :array_3
    .array-data 8
        0x11b6f9caf3eb88c2L
        -0x62145b1080e1778aL
    .end array-data

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
    :array_4
    .array-data 8
        0x3b9507816011ee7bL    # 1.1132828178569843E-21
        0x1dd12f47c81d20dcL    # 4.662770745473997E-165
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
    :array_5
    .array-data 8
        0x3fcad2fff0f32589L    # 0.20956420197607553
        0x7e927bb4f8d08256L    # 4.951235051939057E301
    .end array-data

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
    :array_6
    .array-data 8
        0x74c1d828ecf7bde9L    # 2.616541829640953E254
        0x5a6b95e83da83722L    # 3.7346527196235304E127
    .end array-data

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
    :array_7
    .array-data 8
        -0x2739b54b20f281e7L    # -4.4971137199504115E119
        0x2d7fb493c7458672L
    .end array-data

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
    :array_8
    .array-data 8
        0x592b3c3873e28578L    # 3.516409293609043E121
        0x2562980daff00deL
    .end array-data

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
    :array_9
    .array-data 8
        -0x47b4fe8d2bcbeba3L    # -1.5872499444873117E-37
        0x7063464451437ec4L    # 2.3939183062903185E233
    .end array-data

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
    :array_a
    .array-data 8
        -0x6cae12cd5138fea3L    # -1.3000496588168892E-215
        -0x31b9212bc7fa2c94L    # -1.2331709143887437E69
    .end array-data

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
    :array_b
    .array-data 8
        0x65541788ce19144aL    # 1.3026840851025286E180
        0x69c93e3b38245229L    # 3.8644674303764456E201
    .end array-data
.end method

.method private doVpnProtect(Ljava/net/Socket;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->isProtected(Ljava/net/Socket;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v0, 0x4

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
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        -0x9b2c85d56ded37eL
        0x566e49209a398870L
        -0x3917731fa66e505dL    # -3.983513649313745E33
        0x7061d5fb26d6f3aL    # 7.98428138509408E-275
    .end array-data
.end method

.method private getIconByConnectionStatus(Lde/blinkt/openvpn/core/ConnectionStatus;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/TunnelVPN$1;->$SwitchMap$de$blinkt$openvpn$core$ConnectionStatus:[I

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
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const p1, 0x7f0800fc

    .line 19
    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_1
    const p1, 0x7f0800fd

    .line 25
    .line 26
    .line 27
    return p1
.end method

.method private static synthetic lambda$connectSSL$2(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onDisconnected$0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->m_OnUdpListeners:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/tknetwork/tunnel/listener/UdpListener;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/tknetwork/tunnel/listener/UdpListener;->onDisconnected()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private synthetic lambda$stopInjector$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->dns:Lslowdns/app/tunnel/slowdns/process/SlowDnsProcess;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->vpn_handler()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->dns:Lslowdns/app/tunnel/slowdns/process/SlowDnsProcess;

    .line 9
    .line 10
    invoke-virtual {v0}, Lslowdns/app/tunnel/slowdns/process/SlowDnsProcess;->interrupt()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->dns:Lslowdns/app/tunnel/slowdns/process/SlowDnsProcess;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/Exception;)V
    .locals 4

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 8
        -0x45440ca8d9272b08L    # -9.031309334253356E-26
        0x36371823db845455L    # 1.5801759335707052E-47
    .end array-data

    :array_1
    .array-data 8
        0xab4b87e33d18439L
        -0x32f82d76d394a605L    # -1.2249961557485201E63
        -0x735160cafe466980L
        -0x75b4883f9124aca5L    # -4.466191112511451E-259
    .end array-data
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x5c42b5077dd9a6ecL
        -0x5670973c8b51fcecL
    .end array-data
.end method

.method private send200Status(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        -0x40640a096be9a3d9L    # -0.027305462635549695
        0x4e382978726e5043L    # 6.514060729901321E68
        0x4c37743780e1d664L    # 1.4722296781170995E59
        -0x265a168d27056977L    # -7.242499011870336E123
        -0x19c8dd868de207e9L    # -2.457539971888405E184
        -0x3b40ca030834163fL    # -1.4738926666708724E23
    .end array-data
.end method

.method private showNotification()V
    .locals 0

    return-void
.end method

.method private startConnect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v3, v2, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->InjectorListener:Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;->startOpenVPN()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 35
    .line 36
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    fill-array-data v2, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-static {p0}, Lcom/tknetwork/tunnel/service/c_09;->startSocksHttp(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x5c94a4d6dd553153L
        0x3ec2d52420c042c3L    # 2.245018782439123E-6
    .end array-data

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
    :array_1
    .array-data 8
        -0x5635029cc1a57813L
        -0x3d4cc7e09496c17bL    # -2.113176622931052E13
    .end array-data
.end method

.method private startInjector1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mThread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mThread:Ljava/lang/Thread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private startVPN()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->InjectorListener:Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;->startOpenVPN()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private stop_notification()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private update_notification_event(Ljava/lang/String;Lde/blinkt/openvpn/core/ConnectionStatus;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->getIconByConnectionStatus(Lde/blinkt/openvpn/core/ConnectionStatus;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const v0, 0x7f130258

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mDisplayBytecount:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    new-array v2, v2, [J

    .line 52
    .line 53
    fill-array-data v2, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->nm:Landroid/app/NotificationManager;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const v0, 0x281a8

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mNotifyBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0xa320a4e28f22280L
        -0x2801d9b3f52a016bL    # -7.4247164992482E115
    .end array-data
.end method

.method private vpn_handler()V
    .locals 4

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/tknetwork/tunnel/service/c_06;->isRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v2, Lcom/tknetwork/tunnel/service/c_06;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    new-array v3, v3, [J

    .line 24
    .line 25
    fill-array-data v3, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->stopInjector()V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    return-void

    .line 47
    :array_0
    .array-data 8
        -0x485943eeee26656bL    # -1.3049040798428325E-40
        -0x3f2a3c00a0625e45L    # -22287.990210922184
        0x43d88134533d9701L    # 7.0630002441047255E18
        -0x741307e7489a6112L
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tknetwork/tunnel/service/TunnelVPN;->lambda$onDisconnected$0()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->lambda$connectSSL$2(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/TunnelVPN;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->lambda$stopInjector$1()V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/service/TunnelVPN;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->closeAll()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->startConnect()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lcom/tknetwork/tunnel/utils/VPNUtil;->getService()Lcom/tknetwork/tunnel/service/c_05;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05;->log_message(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return v1
.end method

.method public launchActivity()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x10000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/tknetwork/tunnel/service/TunnelVPN$MyBinder;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/tknetwork/tunnel/service/TunnelVPN$MyBinder;-><init>(Lcom/tknetwork/tunnel/service/TunnelVPN;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/NotificationManager;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->nm:Landroid/app/NotificationManager;

    .line 30
    .line 31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->myPrefs:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->editor:Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        -0x5e78b340cf47d20eL
        -0x480ed706c8985c19L    # -3.151803915108837E-39
        -0x1aa7e6a26fd231c2L    # -1.56249256070231E180
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->repeatCount:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->spt:I

    .line 8
    .line 9
    new-instance v0, Lcom/tknetwork/tunnel/thread/PayloadInjector;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/tknetwork/tunnel/thread/PayloadInjector;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/thread/PayloadInjector;->interrupt()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->m_Handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, L뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-direct {v1, v2}, L뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v3, v0, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Thread;

    .line 36
    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    new-array v2, v2, [J

    .line 41
    .line 42
    fill-array-data v2, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mThread:Ljava/lang/Thread;

    .line 56
    .line 57
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 62
    .line 63
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mTunnelType:I

    .line 68
    .line 69
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v1, 0x5

    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    sput-boolean v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->isRunning:Z

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->c_02()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v0, v0, [J

    .line 97
    .line 98
    fill-array-data v0, :array_3

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->stopInjector()V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :array_0
    .array-data 8
        0x1beaef5fa40d5308L    # 3.403222591217976E-174
        -0x3db915865d467e1cL    # -1.9684624113901477E11
    .end array-data

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
    :array_1
    .array-data 8
        -0x33d2f3ccbc9977e9L    # -9.116754975856134E58
        -0x39099c36e13041b4L    # -7.265901489680605E33
        0x794c72e7890093b9L    # 1.9699295146966444E276
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
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
    :array_2
    .array-data 8
        -0x666a4966a3a80baeL    # -1.996126519085676E-185
        0x14ff5a709656c702L    # 1.5258996999731568E-207
        0x42e550acfde596beL    # 1.8748995110008594E14
        -0x2f0641994a8bc3adL    # -1.220986119337627E82
        -0x57b89dda3e0d0a4L
    .end array-data

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
    :array_3
    .array-data 8
        -0x308aac3ae91038faL    # -6.02911149314116E74
        -0x62436e00c29e2b49L
    .end array-data
.end method

.method public run()V
    .locals 14
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Lkotlinx/coroutines/DelicateCoroutinesApi;
        }
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x3

    .line 6
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 7
    .line 8
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v7, 0x2

    .line 11
    new-array v8, v7, [J

    .line 12
    .line 13
    fill-array-data v8, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/4 v8, 0x0

    .line 24
    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 29
    .line 30
    invoke-virtual {v6}, Lconfig/ConfigUtil;->getV2rayConfig()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v9, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 38
    .line 39
    invoke-virtual {v9}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    const/16 v10, 0xb

    .line 44
    .line 45
    if-ne v9, v10, :cond_1

    .line 46
    .line 47
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 48
    .line 49
    invoke-virtual {v10}, Lconfig/ConfigUtil;->getWireguard()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v11, v1, [J

    .line 55
    .line 56
    fill-array-data v11, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {p0, v10}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v11, v2, [J

    .line 72
    .line 73
    const-wide v12, -0x4af2aee46ec65203L    # -3.8260244303018602E-53

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    aput-wide v12, v11, v8

    .line 79
    .line 80
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v11, v2, [J

    .line 89
    .line 90
    const-wide v12, 0x12b99438fa8f55a7L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    aput-wide v12, v11, v8

    .line 96
    .line 97
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 104
    .line 105
    invoke-virtual {v10}, Lconfig/ConfigUtil;->getEnableFreeServer()Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_2

    .line 110
    .line 111
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 112
    .line 113
    invoke-virtual {v10}, Lconfig/ConfigUtil;->getFreeServerUsername()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    iget-object v11, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 118
    .line 119
    invoke-virtual {v11}, Lconfig/ConfigUtil;->getFreeServerPassword()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 125
    .line 126
    invoke-virtual {v10}, Lconfig/ConfigUtil;->getUsername()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    iget-object v11, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 131
    .line 132
    invoke-virtual {v11}, Lconfig/ConfigUtil;->getPassword()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    :goto_0
    const/16 v12, 0x8

    .line 137
    .line 138
    if-ne v9, v12, :cond_6

    .line 139
    .line 140
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 141
    .line 142
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v12, v4, [J

    .line 145
    .line 146
    fill-array-data v12, :array_2

    .line 147
    .line 148
    .line 149
    invoke-direct {v9, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v13, v7, [J

    .line 159
    .line 160
    fill-array-data v13, :array_3

    .line 161
    .line 162
    .line 163
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    new-array v7, v7, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object v10, v7, v8

    .line 173
    .line 174
    aput-object v11, v7, v2

    .line 175
    .line 176
    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v3, v2}, Lconfig/ConfigUtil;->sets1(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const v2, 0x7f13025a

    .line 188
    .line 189
    .line 190
    if-eqz v5, :cond_4

    .line 191
    .line 192
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 193
    .line 194
    invoke-virtual {v3}, Lconfig/ConfigUtil;->gets1()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-static {v3}, Lcom/v2ray/ang/handler/AngConfigManager;->importCustomizeConfig(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-nez v5, :cond_3

    .line 203
    .line 204
    invoke-static {v3}, Lcom/v2ray/ang/handler/AngConfigManager;->importBatchConfig(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-nez v3, :cond_3

    .line 209
    .line 210
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v0, v0, [J

    .line 213
    .line 214
    fill-array-data v0, :array_4

    .line 215
    .line 216
    .line 217
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    new-array v3, v4, [J

    .line 230
    .line 231
    fill-array-data v3, :array_5

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->resString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v0, v2}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_3
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {p0, v0}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVService(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_4
    invoke-static {v6}, Lcom/v2ray/ang/handler/AngConfigManager;->importCustomizeConfig(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-nez v3, :cond_5

    .line 261
    .line 262
    invoke-static {v6}, Lcom/v2ray/ang/handler/AngConfigManager;->importBatchConfig(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_5

    .line 267
    .line 268
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 269
    .line 270
    new-array v0, v0, [J

    .line 271
    .line 272
    fill-array-data v0, :array_6

    .line 273
    .line 274
    .line 275
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    new-array v3, v4, [J

    .line 288
    .line 289
    fill-array-data v3, :array_7

    .line 290
    .line 291
    .line 292
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->resString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-static {v0, v2}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_5
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {p0, v0}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVService(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :goto_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 314
    .line 315
    new-array v1, v1, [J

    .line 316
    .line 317
    fill-array-data v1, :array_8

    .line 318
    .line 319
    .line 320
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_6

    .line 331
    .line 332
    :cond_6
    const/16 v5, 0x9

    .line 333
    .line 334
    if-ne v9, v5, :cond_7

    .line 335
    .line 336
    new-instance v0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

    .line 337
    .line 338
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;-><init>(Landroid/content/Context;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    .line 343
    .line 344
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 345
    .line 346
    new-array v1, v1, [J

    .line 347
    .line 348
    fill-array-data v1, :array_9

    .line 349
    .line 350
    .line 351
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_6

    .line 362
    .line 363
    :cond_7
    const/16 v1, 0xa

    .line 364
    .line 365
    if-ne v9, v1, :cond_a

    .line 366
    .line 367
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 368
    .line 369
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    new-array v5, v4, [J

    .line 372
    .line 373
    fill-array-data v5, :array_a

    .line 374
    .line 375
    .line 376
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 388
    .line 389
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    new-array v6, v3, [J

    .line 392
    .line 393
    fill-array-data v6, :array_b

    .line 394
    .line 395
    .line 396
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 408
    .line 409
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 410
    .line 411
    new-array v8, v7, [J

    .line 412
    .line 413
    fill-array-data v8, :array_c

    .line 414
    .line 415
    .line 416
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    if-eqz v1, :cond_9

    .line 428
    .line 429
    if-eqz v2, :cond_9

    .line 430
    .line 431
    if-nez v5, :cond_8

    .line 432
    .line 433
    goto :goto_2

    .line 434
    :cond_8
    invoke-static {v5}, Lcom/tknetwork/tunnel/utils/VPNUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 439
    .line 440
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 441
    .line 442
    new-array v9, v3, [J

    .line 443
    .line 444
    fill-array-data v9, :array_d

    .line 445
    .line 446
    .line 447
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    invoke-virtual {v6, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 458
    .line 459
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 460
    .line 461
    new-array v4, v4, [J

    .line 462
    .line 463
    fill-array-data v4, :array_e

    .line 464
    .line 465
    .line 466
    invoke-direct {v6, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 477
    .line 478
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 479
    .line 480
    new-array v3, v3, [J

    .line 481
    .line 482
    fill-array-data v3, :array_f

    .line 483
    .line 484
    .line 485
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    new-instance v1, Lslowdns/app/tunnel/slowdns/process/SlowDnsProcess;

    .line 496
    .line 497
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBundle:Landroid/os/Bundle;

    .line 498
    .line 499
    invoke-direct {v1, p0, v2}, Lslowdns/app/tunnel/slowdns/process/SlowDnsProcess;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 503
    .line 504
    .line 505
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mHandler:Landroid/os/Handler;

    .line 506
    .line 507
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 508
    .line 509
    .line 510
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 511
    .line 512
    new-array v0, v0, [J

    .line 513
    .line 514
    fill-array-data v0, :array_10

    .line 515
    .line 516
    .line 517
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_6

    .line 528
    .line 529
    :cond_9
    :goto_2
    return-void

    .line 530
    :cond_a
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 531
    .line 532
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getProxyAddress()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 537
    .line 538
    new-array v5, v7, [J

    .line 539
    .line 540
    fill-array-data v5, :array_11

    .line 541
    .line 542
    .line 543
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    aget-object v0, v0, v2

    .line 555
    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 561
    .line 562
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getEnableReplace()Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 567
    .line 568
    invoke-virtual {v5}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 573
    .line 574
    new-array v8, v3, [J

    .line 575
    .line 576
    fill-array-data v8, :array_12

    .line 577
    .line 578
    .line 579
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    invoke-virtual {p0, v6}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    :try_start_0
    new-instance v6, Ljava/net/ServerSocket;

    .line 590
    .line 591
    invoke-direct {v6, v0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 592
    .line 593
    .line 594
    iput-object v6, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->ss:Ljava/net/ServerSocket;

    .line 595
    .line 596
    if-eq v5, v4, :cond_b

    .line 597
    .line 598
    if-eq v5, v3, :cond_b

    .line 599
    .line 600
    const/4 v0, 0x5

    .line 601
    if-ne v5, v0, :cond_d

    .line 602
    .line 603
    :cond_b
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBackServerThread:Lcom/tknetwork/tunnel/thread/BackServer;

    .line 604
    .line 605
    if-eqz v0, :cond_c

    .line 606
    .line 607
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/thread/BackServer;->Stop()V

    .line 608
    .line 609
    .line 610
    goto :goto_3

    .line 611
    :catch_0
    move-exception v0

    .line 612
    goto :goto_5

    .line 613
    :cond_c
    :goto_3
    new-instance v0, Lcom/tknetwork/tunnel/thread/BackServer;

    .line 614
    .line 615
    invoke-direct {v0}, Lcom/tknetwork/tunnel/thread/BackServer;-><init>()V

    .line 616
    .line 617
    .line 618
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mBackServerThread:Lcom/tknetwork/tunnel/thread/BackServer;

    .line 619
    .line 620
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 621
    .line 622
    .line 623
    :cond_d
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mHandler:Landroid/os/Handler;

    .line 624
    .line 625
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 626
    .line 627
    .line 628
    :cond_e
    :goto_4
    sget-boolean v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->isRunning:Z

    .line 629
    .line 630
    if-eqz v0, :cond_11

    .line 631
    .line 632
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->ss:Ljava/net/ServerSocket;

    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    .line 639
    .line 640
    if-eqz v0, :cond_e

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    if-nez v0, :cond_e

    .line 647
    .line 648
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->connectSocket()Z

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-eqz v0, :cond_e

    .line 653
    .line 654
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    .line 655
    .line 656
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 657
    .line 658
    .line 659
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 660
    .line 661
    if-eqz v0, :cond_f

    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    if-eqz v0, :cond_f

    .line 668
    .line 669
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 670
    .line 671
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 672
    .line 673
    .line 674
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 675
    .line 676
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 677
    .line 678
    .line 679
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 680
    .line 681
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->doVpnProtect(Ljava/net/Socket;)V

    .line 682
    .line 683
    .line 684
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    .line 685
    .line 686
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 687
    .line 688
    invoke-static {v0, v5, v1}, Lcom/tknetwork/tunnel/thread/PayloadInjector;->connect(Ljava/net/Socket;Ljava/net/Socket;Z)V

    .line 689
    .line 690
    .line 691
    goto :goto_4

    .line 692
    :cond_f
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 693
    .line 694
    if-eqz v0, :cond_e

    .line 695
    .line 696
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    if-eqz v0, :cond_e

    .line 701
    .line 702
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 703
    .line 704
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 705
    .line 706
    .line 707
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 708
    .line 709
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->doVpnProtect(Ljava/net/Socket;)V

    .line 710
    .line 711
    .line 712
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->client:Ljava/net/Socket;

    .line 713
    .line 714
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 715
    .line 716
    invoke-static {v0, v5, v1}, Lcom/tknetwork/tunnel/thread/PayloadInjector;->connect(Ljava/net/Socket;Ljava/net/Socket;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .line 718
    .line 719
    goto :goto_4

    .line 720
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 725
    .line 726
    new-array v4, v4, [J

    .line 727
    .line 728
    fill-array-data v4, :array_13

    .line 729
    .line 730
    .line 731
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 739
    .line 740
    .line 741
    move-result v1

    .line 742
    if-eqz v1, :cond_10

    .line 743
    .line 744
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->onDestroy()V

    .line 752
    .line 753
    .line 754
    return-void

    .line 755
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .line 759
    .line 760
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 761
    .line 762
    new-array v3, v3, [J

    .line 763
    .line 764
    fill-array-data v3, :array_14

    .line 765
    .line 766
    .line 767
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    :cond_11
    :goto_6
    return-void

    .line 792
    nop

    .line 793
    :array_0
    .array-data 8
        0x3aeab390e6839acbL    # 6.902157819081112E-25
        -0x54a5f1837a4815c0L    # -7.445587760254237E-100
    .end array-data

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_1
    .array-data 8
        -0x7288f45a453aba36L    # -8.437807446106009E-244
        -0x3c46340ecb0f82efL    # -1.85884448089578317E18
        0x5a37d3e68ed16f93L    # 4.0323757117176076E126
        -0x5dcad556e9f4c8dL
        0x6044a338255103b4L    # 5.5340929598696355E155
        0x13b8a0616b012a75L
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
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
    :array_2
    .array-data 8
        -0x65d9fc808e2d843fL
        -0x28eeeb71ccde6922L    # -2.56728317785869E111
        -0x7073aefc81a79ea3L    # -8.905787531042743E-234
    .end array-data

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
    :array_3
    .array-data 8
        0x35a85f10937db4a2L    # 3.2569437674236575E-50
        -0x3a6a8f957258277fL    # -1.6587720204944355E27
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_4
    .array-data 8
        0xb99d616e9d6443bL
        0x372c4d63f544bbedL    # 6.345596579239732E-43
        0x4dde684f2b0baec3L    # 1.2809116347417584E67
        0x7f191535d7d013fbL    # 1.720095532758068E304
        -0x187b763dfc2108d6L    # -4.575387586756936E190
        0x687bdf1b81c549a8L    # 2.0345940022455218E195
        -0x1f6d4d5a76d8cc4cL    # -1.6044609640911534E157
    .end array-data

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
    :array_5
    .array-data 8
        -0x4e08cbd438e1b24aL    # -5.379228231324329E-68
        0x3f9804f2671048c8L    # 0.023456370869163107
        -0x327e21fd10101ad1L    # -2.352048976603021E65
    .end array-data

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
    .line 908
    .line 909
    :array_6
    .array-data 8
        0x419bf8c1c2b7f3f6L    # 1.1732184067964157E8
        -0x3929e29eda144343L    # -1.7941627755307846E33
        -0x60ae994083276ebL    # -2.990493335287232E279
        -0x3cff95960da92694L    # -5.775753621573575E14
        0x14a0e1692ebba6bL
        -0x1f280b149e62fcefL    # -3.289160245820126E158
        0x3387e82c1841bba2L    # 1.859664325418898E-60
    .end array-data

    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    :array_7
    .array-data 8
        -0xca1ca78a57a47a5L
        0x3602d72661052417L    # 1.611393111508894E-48
        0x6c0c2b0a8a1ad061L    # 2.9633637925677264E212
    .end array-data

    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    :array_8
    .array-data 8
        0x197503534bfc00b2L    # 4.829370636391406E-186
        -0x585300b4d4ac0d69L
        -0x2e188e7ff5a66c73L    # -3.6434148948414677E86
        -0x1ae8414a6911a59bL    # -9.622077568541573E178
        0x4486b17bf772a948L    # 1.339575863232951E22
        -0x783f9b6f81c538b4L    # -2.4241966399903365E-271
    .end array-data

    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    :array_9
    .array-data 8
        -0x1feb973a7537a03bL    # -6.84108737757253E154
        0x23cc821a93ef0b3aL
        0x693e5d932b4f8bb2L    # 9.07941728637499E198
        -0x5c5a8e83175798e1L    # -5.762140589789137E-137
        -0x612c643cf8368f66L
        -0x5bef459f60d89513L    # -5.753696202096833E-135
    .end array-data

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    :array_a
    .array-data 8
        0x62f5235edf584051L    # 4.985915355002074E168
        0x1b6c3cf124b7b917L
        -0x75485d5b6ac08074L
    .end array-data

    :array_b
    .array-data 8
        -0x2b595c5fbd1fac28L    # -6.189691022364658E99
        -0x7636d81e70e0e6f2L
        -0x47c68ef6d8766cb8L    # -7.476598380904519E-38
        -0x5deeccf86163a75eL    # -1.37737991531369E-144
    .end array-data

    :array_c
    .array-data 8
        -0x58efd51ae43bc3c4L
        -0x29f6bcbef79b4d6eL    # -2.896999643940337E106
    .end array-data

    :array_d
    .array-data 8
        -0x3cb6b805940f407dL    # -1.423203059220455E16
        -0x1fd070ddfe429a1fL    # -2.1156926044227456E155
        0x769f2af65dff658bL    # 2.4535938778158884E263
        -0x5dcc38c4e30a4419L    # -6.335630633254281E-144
    .end array-data

    :array_e
    .array-data 8
        -0x1715abbd8e39665cL    # -2.460162715020818E197
        0x4ea3b155cb073889L    # 6.795706310742896E70
        0xecc1a70a97822fbL
    .end array-data

    :array_f
    .array-data 8
        -0x614b6c784e369b16L    # -9.147225407338816E-161
        -0x3941fd2b1c5f13c6L    # -6.086966304427581E32
        -0x1d7feb92b6b66279L    # -2.9631119620034525E166
        0x60c009d113ba75fbL    # 1.10100003613544E158
    .end array-data

    :array_10
    .array-data 8
        0x5d3fcaf80cdb3876L    # 1.5144237583148133E141
        0x5bdcf56c92430fa1L    # 3.288796216085529E134
        -0x7dbc17aa7686f26L    # -5.347455937530541E270
        0x4f1b42bcbd984421L    # 1.2041368611134939E73
        0x1c7168915fc99bcbL    # 1.126167628733762E-171
        -0x7c8f85f2ec9ed5ccL    # -4.127775639327117E-292
        0x50f597af1a74a8dcL    # 1.0240993259301238E82
    .end array-data

    :array_11
    .array-data 8
        -0x36f27b8289170aefL    # -8.228289073184156E43
        -0x63994e7310f7dadaL    # -7.340320993363381E-172
    .end array-data

    :array_12
    .array-data 8
        -0x6377274c11194617L
        0x7dda229ede0625f9L    # 1.7092365107227297E298
        0x20f8088eddee0db7L    # 7.342059917360791E-150
        0x2885c15e1b17a800L
    .end array-data

    :array_13
    .array-data 8
        -0x186127e0cf49b837L    # -1.374267081870633E191
        -0x2714bd20572e59b8L    # -2.1998529886261286E120
        0x7670a28c07dc8899L    # 3.273841994843185E262
    .end array-data

    :array_14
    .array-data 8
        0x63577103d06a30e0L    # 3.5386882405111737E170
        0x70db0e49e3670481L    # 4.301275361828759E235
        -0x41a293b75dd74f19L    # -2.7402288558184235E-8
        0x4906a4dc47b60187L    # 6.312222083767771E43
    .end array-data
.end method

.method public setInjectorListener(Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->InjectorListener:Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;

    .line 2
    .line 3
    return-void
.end method

.method public stopInjector()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sput-boolean v1, Lcom/tknetwork/tunnel/service/TunnelVPN;->isRunning:Z

    .line 4
    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    new-array v3, v3, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput v1, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->repeatCount:I

    .line 24
    .line 25
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->config:Lconfig/ConfigUtil;

    .line 26
    .line 27
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    if-eq v2, v3, :cond_2

    .line 34
    .line 35
    const/16 v3, 0xb

    .line 36
    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/16 v3, 0xa

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    new-instance v2, Ljava/lang/Thread;

    .line 45
    .line 46
    new-instance v3, L땭뒤땰딐땀돷딝땹딀뒻된듬돴뎰드땸돴돨돴듽땫땡땔돷땵들듔듌돴둘됐뒐됨듻딜둥땨듬뒛득땨뎽뒨득뒈듐듌될돤두뒛뒋됴돷듼땜딟땟돵땜돰땦뒼딄딄딨디뒨땝딄뒼뎻듻돳듽뒛땩뎨득돳둥뎸땀둡든뒀땋뒼돝뒐든딠되든된땍돳땦땨딽땨땳둠된땄디돵땬뒻뎠땁뒘뒉듻돴뒋땨듽뎨땨둬딤따땅땫땪따뎠뒻돸;

    .line 47
    .line 48
    invoke-direct {v3, p0, v1}, L땭뒤땰딐땀돷딝땹딀뒻된듬돴뎰드땸돴돨돴듽땫땡땔돷땵들듔듌돴둘됐뒐됨듻딜둥땨듬뒛득땨뎽뒨득뒈듐듌될돤두뒛뒋됴돷듼땜딟땟돵땜돰땦뒼딄딄딨디뒨땝딄뒼뎻듻돳듽뒛땩뎨득돳둥뎸땀둡든뒀땋뒼돝뒐든딠되든된땍돳땦땨딽땨땳둠된땄디돵땬뒻뎠땁뒘뒉듻돴뒋땨듽뎨땨둬딤따땅땫땪따뎠뒻돸;-><init>(Lcom/tknetwork/tunnel/service/TunnelVPN;I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    .line 59
    .line 60
    new-instance v2, L땭뒤땰딐땀돷딝땹딀뒻된듬돴뎰드땸돴돨돴듽땫땡땔돷땵들듔듌돴둘됐뒐됨듻딜둥땨듬뒛득땨뎽뒨득뒈듐듌될돤두뒛뒋됴돷듼땜딟땟돵땜돰땦뒼딄딄딨디뒨땝딄뒼뎻듻돳듽뒛땩뎨득돳둥뎸땀둡든뒀땋뒼돝뒐든딠되든된땍돳땦땨딽땨땳둠된땄디돵땬뒻뎠땁뒘뒉듻돴뒋땨듽뎨땨둬딤따땅땫땪따뎠뒻돸;

    .line 61
    .line 62
    invoke-direct {v2, p0, v0}, L땭뒤땰딐땀돷딝땹딀뒻된듬돴뎰드땸돴돨돴듽땫땡땔돷땵들듔듌돴둘됐뒐됨듻딜둥땨듬뒛득땨뎽뒨득뒈듐듌될돤두뒛뒋됴돷듼땜딟땟돵땜돰땦뒼딄딄딨디뒨땝딄뒼뎻듻돳듽뒛땩뎨득돳둥뎸땀둡든뒀땋뒼돝뒐든딠되든된땍돳땦땨딽땨땳둠된땄디돵땬뒻뎠땁뒘뒉듻돴뒋땨듽뎨땨둬딤따땅땫땪따뎠뒻돸;-><init>(Lcom/tknetwork/tunnel/service/TunnelVPN;I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    sget-object v1, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/v2ray/ang/service/V2RayServiceManager;->getServiceControl()Ljava/lang/ref/SoftReference;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/v2ray/ang/service/ServiceControl;

    .line 85
    .line 86
    invoke-interface {v1}, Lcom/v2ray/ang/service/ServiceControl;->stopService()V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/tknetwork/tunnel/service/c_09;->stopSocksHttp(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :array_0
    .array-data 8
        0x2f002c046153f5bcL    # 2.663872061957309E-82
        0x4c00bca1d112708fL    # 1.3132359164078085E58
        -0x7568e86338c90f29L
        -0x4e71449a26eaaa48L    # -5.565986723266347E-70
    .end array-data
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;ILde/blinkt/openvpn/core/ConnectionStatus;I)V
    .locals 0

    .line 1
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->getLastState()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->getLocalizedState(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lde/blinkt/openvpn/core/ConnectionStatus;->CONNECTED:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 14
    .line 15
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mDisplayBytecount:Z

    .line 20
    .line 21
    invoke-direct {p0, p1, p4}, Lcom/tknetwork/tunnel/service/TunnelVPN;->update_notification_event(Ljava/lang/String;Lde/blinkt/openvpn/core/ConnectionStatus;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
