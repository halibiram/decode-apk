.class public interface abstract Lapp/tunnel/ssh2/tunnel/vpn/TunnelConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_SERVICE_RESTART:Ljava/lang/String; = "actionservicerestart"

.field public static final ACTION_SERVICE_STOP:Ljava/lang/String; = "actionstopservice"

.field public static final APP_SOCKSVPN_KEY:Ljava/lang/String; = "socksvpnkey"

.field public static final DNS_RESOLVERS_IP:[Ljava/lang/String;

.field public static final DNS_RESOLVER_PORT:I = 0x35

.field public static final FILE_WRITE_BUFFER_SIZE:I = 0x800

.field public static final PREFS_DNS_PORT:Ljava/lang/String; = "PREFS_DNS_PORT"

.field public static final PREFS_KEY_TORIFIED:Ljava/lang/String; = "PrefTord"

.field public static final PREF_TOR_SHARED_PREFS:Ljava/lang/String; = "org.torproject.android_preferences"

.field public static final SHELL_CMD_PS:Ljava/lang/String; = "toolbox ps"

.field public static final VPN_INTERFACE_MTU:I = 0x5dc

.field public static final VPN_INTERFACE_NETMASK:Ljava/lang/String; = "255.255.255.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "8.8.8.8"

    .line 2
    .line 3
    const-string v1, "8.8.4.4"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelConstants;->DNS_RESOLVERS_IP:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method
