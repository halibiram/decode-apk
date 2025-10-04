.class public interface abstract Lcom/tknetwork/tunnel/config/SettingsConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_COLORS:Ljava/lang/String;

.field public static final AUTO_CLEAR_LOGS_KEY:Ljava/lang/String;

.field public static final AUTO_PINGER:Ljava/lang/String;

.field public static final BLOQUEAR_ROOT_KEY:Ljava/lang/String;

.field public static final BYPASS_KEY:Ljava/lang/String;

.field public static final CHAVE_KEY:Ljava/lang/String;

.field public static final CONFIG_INPUT_PASSWORD_KEY:Ljava/lang/String;

.field public static final CONFIG_MENSAGEM_EXPORTAR_KEY:Ljava/lang/String;

.field public static final CONFIG_MENSAGEM_KEY:Ljava/lang/String;

.field public static final CONFIG_PROTEGER_KEY:Ljava/lang/String;

.field public static final CONFIG_VALIDADE_KEY:Ljava/lang/String;

.field public static final CUSTOM_PAYLOAD_KEY:Ljava/lang/String;

.field public static final CUSTOM_SNI:Ljava/lang/String;

.field public static final DISABLE_DELAY_KEY:Ljava/lang/String;

.field public static final DNSFORWARD_KEY:Ljava/lang/String;

.field public static final DNSRESOLVER_KEY:Ljava/lang/String;

.field public static final DNSRESOLVER_KEY1:Ljava/lang/String;

.field public static final DNSRESOLVER_KEY2:Ljava/lang/String;

.field public static final DNSTYPE_KEY:Ljava/lang/String;

.field public static final DNS_CUSTOM_KEY:Ljava/lang/String;

.field public static final DNS_DEFAULT_KEY:Ljava/lang/String;

.field public static final DNS_GOOGLE_KEY:Ljava/lang/String;

.field public static final DNS_KEY:Ljava/lang/String;

.field public static final FILTER_APPS:Ljava/lang/String;

.field public static final FILTER_APPS_LIST:Ljava/lang/String;

.field public static final FILTER_BYPASS_MODE:Ljava/lang/String;

.field public static final HIDE_LOG_KEY:Ljava/lang/String;

.field public static final IDIOMA_KEY:Ljava/lang/String;

.field public static final KEYPATH_KEY:Ljava/lang/String;

.field public static final MAXIMO_THREADS_KEY:Ljava/lang/String;

.field public static final MODO_DEBUG_KEY:Ljava/lang/String;

.field public static final MODO_NOTURNO_KEY:Ljava/lang/String;

.field public static final NAMESERVER_KEY:Ljava/lang/String;

.field public static final PAYLOAD_DEFAULT:Ljava/lang/String;

.field public static final PINGER_KEY:Ljava/lang/String;

.field public static final PORTA_LOCAL_KEY:Ljava/lang/String;

.field public static final PROXY_IP_KEY:Ljava/lang/String;

.field public static final PROXY_PORTA_KEY:Ljava/lang/String;

.field public static final PROXY_USAR_AUTENTICACAO_KEY:Ljava/lang/String;

.field public static final PROXY_USAR_DEFAULT_PAYLOAD:Ljava/lang/String;

.field public static final SENHA_KEY:Ljava/lang/String;

.field public static final SERVIDOR_KEY:Ljava/lang/String;

.field public static final SERVIDOR_PORTA_KEY:Ljava/lang/String;

.field public static final TETHERING_SUBNET:Ljava/lang/String;

.field public static final TUNNELTYPE_KEY:Ljava/lang/String;

.field public static final TUNNEL_TYPE_SSH_DIRECT:Ljava/lang/String;

.field public static final TUNNEL_TYPE_SSH_PROXY:Ljava/lang/String;

.field public static final TUNNEL_TYPE_SSH_SSLTUNNEL:Ljava/lang/String;

.field public static final UDPFORWARD_KEY:Ljava/lang/String;

.field public static final UDPRESOLVER_KEY:Ljava/lang/String;

.field public static final USUARIO_KEY:Ljava/lang/String;

.field public static final VIBRATE:Ljava/lang/String;

.field public static final WAKELOCK:Ljava/lang/String;

.field public static final bTUNNEL_TYPE_PAY_SSL:I = 0x4

.field public static final bTUNNEL_TYPE_SLOWDNS:I = 0x6

.field public static final bTUNNEL_TYPE_SSH_DIRECT:I = 0x1

.field public static final bTUNNEL_TYPE_SSH_PROXY:I = 0x2

.field public static final bTUNNEL_TYPE_SSH_SSL:I = 0x3

.field public static final bTUNNEL_TYPE_SSL_RP:I = 0x5

.field public static final bTUNNEL_TYPE_UDP:I = 0x7

.field public static final data_compression_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->AUTO_CLEAR_LOGS_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->HIDE_LOG_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->MODO_DEBUG_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->MODO_NOTURNO_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->BLOQUEAR_ROOT_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_5

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->IDIOMA_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->TETHERING_SUBNET:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_7

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DISABLE_DELAY_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v4, v3, [J

    fill-array-data v4, :array_8

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->MAXIMO_THREADS_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_9

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->FILTER_APPS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_a

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->FILTER_BYPASS_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_b

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->FILTER_APPS_LIST:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_c

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->PROXY_IP_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_d

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->PROXY_PORTA_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_e

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->CUSTOM_PAYLOAD_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_f

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->PROXY_USAR_DEFAULT_PAYLOAD:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_10

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->PROXY_USAR_AUTENTICACAO_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_11

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->CONFIG_PROTEGER_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_12

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->CONFIG_MENSAGEM_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_13

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->CONFIG_VALIDADE_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_14

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->CONFIG_MENSAGEM_EXPORTAR_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_15

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->CONFIG_INPUT_PASSWORD_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_16

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNSFORWARD_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_17

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNSRESOLVER_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_18

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->UDPFORWARD_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_19

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNSRESOLVER_KEY1:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_1a

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNSRESOLVER_KEY2:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_1b

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->BYPASS_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1c

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNSTYPE_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1d

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->VIBRATE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_1e

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->data_compression_key:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_1f

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->UDPRESOLVER_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_20

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->APP_COLORS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_21

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNS_DEFAULT_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_22

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNS_GOOGLE_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_23

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNS_CUSTOM_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_24

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->AUTO_PINGER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_25

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->SERVIDOR_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_26

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->SERVIDOR_PORTA_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_27

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->USUARIO_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_28

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->SENHA_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_29

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->CHAVE_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->NAMESERVER_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_2b

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->DNS_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_2c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->KEYPATH_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2d

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->PORTA_LOCAL_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_2e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->WAKELOCK:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2f

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->PINGER_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_30

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->CUSTOM_SNI:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_31

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->PAYLOAD_DEFAULT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_32

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->TUNNELTYPE_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_33

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->TUNNEL_TYPE_SSH_DIRECT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_34

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->TUNNEL_TYPE_SSH_PROXY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_35

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/config/SettingsConstants;->TUNNEL_TYPE_SSH_SSLTUNNEL:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x77566a80df757ccfL    # 7.227945252071907E266
        -0x12742b10b7f9aa67L    # -4.9123327703222E219
        -0x60ba4b134733c2c0L    # -4.940681194230374E-158
    .end array-data

    :array_1
    .array-data 8
        0x4939584e1a16dd2aL    # 5.652110878285245E44
        0x69d3880d270e22a8L    # 5.980143614287686E201
    .end array-data

    :array_2
    .array-data 8
        -0x6ff68b57d1bac9dbL
        0x51b81e898b7bc99aL    # 4.6855787135470015E85
        -0x39f3355af7d2482fL    # -2.851380042207288E29
    .end array-data

    :array_3
    .array-data 8
        -0x12f4e8b5cc6d4853L    # -1.8678050367846728E217
        -0x47e7ef8a92b204bdL    # -1.7679649412288086E-38
        -0x34b6194a886099f6L    # -4.961685427459922E54
    .end array-data

    :array_4
    .array-data 8
        -0x1d7ed0a4ed861ed8L    # -3.1667715638087595E166
        0x3e5bdbfc91d0e114L    # 2.5946016103169623E-8
        -0x6986b310e93b55b4L    # -2.065819624863278E-200
    .end array-data

    :array_5
    .array-data 8
        -0x1f2f805002398125L    # -2.2652156120387954E158
        -0x71b6448cbe177d4cL    # -7.7181079009951E-240
    .end array-data

    :array_6
    .array-data 8
        -0x1681feb23d357a9L    # -6.39565226422635E301
        -0x95bd63a623fcf58L
        0xc7e626e2b6209ebL
    .end array-data

    :array_7
    .array-data 8
        -0x2a74fde913578accL    # -1.2098277901138398E104
        -0x6a88943d870423f5L
        -0x2b27abf1fbe7cd7L
    .end array-data

    :array_8
    .array-data 8
        0x7be1a95451dd8a19L    # 5.378634582546517E288
        0x3b0d800e3dfb0c41L    # 3.0502509788799184E-24
        -0x104fd74af1bd76bcL
        -0x59009062447b53dfL    # -7.608675099476461E-121
    .end array-data

    :array_9
    .array-data 8
        0x14a61a4b60ae34a0L    # 3.361542452206199E-209
        0x18a154b63f8e03d4L    # 4.862213318603959E-190
        -0x600a680b8b49e426L    # -1.00657644616012E-154
    .end array-data

    :array_a
    .array-data 8
        0x1bf15c1286e97ae9L    # 4.386757955196875E-174
        0x39c234d4eb87017eL    # 1.795287074621387E-30
        -0x4328fdf1aadf3d67L    # -1.277202299314009E-15
    .end array-data

    :array_b
    .array-data 8
        -0x766fd1228c31e9e7L
        0x488c2cb282e2d901L    # 3.0679421405208336E41
        0x722cf2d07d535931L    # 9.651448722797075E241
    .end array-data

    :array_c
    .array-data 8
        0x57179ccaff02f146L    # 3.549113413934304E111
        0x7d7c52aaa014c5adL    # 2.894234496392072E296
        -0x8fabdf15f2b8c02L
    .end array-data

    :array_d
    .array-data 8
        -0x4a3069a0f9b45c58L    # -1.6885130897526235E-49
        -0x5a78020434f22aedL    # -6.922461297107608E-128
        0xdb2ccc033c30ecfL
    .end array-data

    :array_e
    .array-data 8
        -0x30d0e7116532f195L    # -2.7472166845103932E73
        -0x3f693debb7949eeaL    # -1456.5198075082785
        0x3658f426a130554bL    # 6.829609712147256E-47
    .end array-data

    :array_f
    .array-data 8
        0x7c124216b49b32bL
        -0x4316a831e6823019L    # -2.8136369434279452E-15
        0x1ac5235869157c19L
        0x412b41bfed630afL
    .end array-data

    :array_10
    .array-data 8
        -0x482b0b531345d760L    # -9.622414747868812E-40
        -0x6f315a11f5adc237L
        0x45e8a160632b99fbL    # 6.098185975377659E28
        0xf699db501476d57L
    .end array-data

    :array_11
    .array-data 8
        -0x3d741335f461db8aL    # -3.8379769988525576E12
        -0x2f72cfb97c29ec7cL    # -1.081537982018866E80
        0x44d7f872e5964f4cL    # 4.527900033001565E23
    .end array-data

    :array_12
    .array-data 8
        -0xcc72982858b95ffL
        0x14a759cd68f4c1d6L    # 3.551359279634475E-209
        -0x16452f72fb63c42fL    # -2.0525289063750726E201
    .end array-data

    :array_13
    .array-data 8
        -0x2284215146765aafL    # -2.1240887460081973E142
        0x5ad062b1523b36a0L    # 2.8394768596938383E129
        0x1d3985debfdb3882L    # 6.762899908285979E-168
    .end array-data

    :array_14
    .array-data 8
        -0x259b06e684dd0690L    # -2.8394202358001825E127
        0x6fdffa120a28d4a2L    # 7.756971744186879E230
        0x475d99948547a8bfL    # 6.1476633833223095E35
        -0x285e84ab1cb4d7fbL    # -1.3453448727963477E114
    .end array-data

    :array_15
    .array-data 8
        0x3fa76209dd1b794L
        -0x75f97c6ea64cf7fL
        -0x1fc225bf474d0a83L    # -4.0025725757661716E155
    .end array-data

    :array_16
    .array-data 8
        0x5106b64aa09ca9f7L    # 2.154396677610677E82
        -0x108c26dd0cad6482L    # -7.523113617890357E228
        0x744284abdf17af4eL    # 1.0606846246620074E252
    .end array-data

    :array_17
    .array-data 8
        -0x24210aaee3590b69L    # -3.5158857325011008E134
        0x3f2ae2688f896169L    # 2.0511175513849712E-4
        -0x85247070173ca3cL
    .end array-data

    :array_18
    .array-data 8
        -0x6e756b1b6cdb5746L
        -0x5d82b8c171af9081L
        -0x6ace81507b83eacbL    # -1.362302632215331E-206
    .end array-data

    :array_19
    .array-data 8
        -0x3b71388bb9fd4df3L    # -1.816878436798476E22
        0x25ea36a284f7af5eL
        -0x7255e6d7175eb7e2L
    .end array-data

    :array_1a
    .array-data 8
        -0x634c7d64fc855ec8L
        0x39a8a608de40b71eL    # 6.07634233290841E-31
        0x5fa2987ce671d1a2L    # 4.869667610125975E152
    .end array-data

    :array_1b
    .array-data 8
        -0x10124e18555f56aL
        -0x2e93400cfa14923cL    # -1.7453545619020198E84
        0x77bc58b1c0c716f6L    # 5.849719143780573E268
    .end array-data

    :array_1c
    .array-data 8
        -0x56f0f4199a36ebbcL    # -6.454818529600843E-111
        -0x2c781d05713bc429L    # -2.491286337964897E94
    .end array-data

    :array_1d
    .array-data 8
        0x1a80bb4daff7f099L    # 5.040243218623076E-181
        0x97e3476444c5bd9L
    .end array-data

    :array_1e
    .array-data 8
        0x5b04f16de8b86218L    # 2.9034126224181276E130
        0xc50c18789e67880L
        -0xef97867e571e2bL
    .end array-data

    :array_1f
    .array-data 8
        0x3039f46c7dc14a9aL    # 2.2414985873179228E-76
        0x8ed5aeee8e2b73eL
        0x116ac8abe7b5ad06L    # 9.04495948264114E-225
    .end array-data

    :array_20
    .array-data 8
        -0x71b9d003528cf365L    # -6.654889405706259E-240
        0x2b5c95a71a52156dL    # 8.167953927481713E-100
        -0x3eabb0211f94986dL    # -5324667.506555456
    .end array-data

    :array_21
    .array-data 8
        -0x2720415fa9ba7ce6L
        -0x5b27a72b7f954985L
        -0x6f33ccb86ae1af82L    # -9.300090807209918E-228
        -0x4013fc1dd66aa09eL    # -0.8754740535905337
    .end array-data

    :array_22
    .array-data 8
        0x30b9585c1998023cL    # 5.603456858121147E-74
        -0x6a521246aff037d2L
        -0x2cbc2150bd5c6bb7L    # -1.2952199440023453E93
    .end array-data

    :array_23
    .array-data 8
        0x8cd698a472b3fd2L
        0x396c26e4f5472703L    # 4.3374917714631044E-32
        -0x7749247d212b9928L
    .end array-data

    :array_24
    .array-data 8
        0x116ee989c3f47410L
        0x3e8598117dc63ebbL    # 1.6088796329611674E-7
        0x3653b8b6fd62c959L    # 5.39761070363271E-47
    .end array-data

    :array_25
    .array-data 8
        0x650bbe34a510fe42L    # 5.621092394253127E178
        -0x4849d8fea759e9aaL    # -2.5429667073621677E-40
        -0x5bd25b1af4c4c203L
    .end array-data

    :array_26
    .array-data 8
        0x3792c9ab4c93626dL    # 5.391825580698165E-41
        -0x13732d720ca2a930L    # -7.762439879819662E214
    .end array-data

    :array_27
    .array-data 8
        -0x297e1c51f7f13cbdL    # -5.25174465347265E108
        0x41a5b36bbbbaa6d1L    # 1.8204002986455396E8
    .end array-data

    :array_28
    .array-data 8
        0x6d61f624837423a9L    # 7.925548689927833E218
        0x67051708fa079a63L    # 1.8352848944968642E188
    .end array-data

    :array_29
    .array-data 8
        0x79b7119a627676daL    # 2.0446562236868197E278
        -0x469ff21d2a277e47L    # -2.473547706524173E-32
    .end array-data

    :array_2a
    .array-data 8
        0x3212d984816d200cL    # 1.747933550952691E-67
        0x2c3a33828d200ffbL    # 1.2266558908678842E-95
        -0x77a06c3df165b93fL    # -2.390876904031736E-268
    .end array-data

    :array_2b
    .array-data 8
        0x5fe9db88db72ea9fL    # 1.0834161191726601E154
        -0x5440a99e9b6380daL    # -5.730924807909183E-98
    .end array-data

    :array_2c
    .array-data 8
        0x7a8e39bf1a9e0ff1L    # 2.194625831387659E282
        -0x4e020d0037e6747cL    # -6.942988377314555E-68
    .end array-data

    :array_2d
    .array-data 8
        -0x6674d87fbde08e18L
        -0x5cff3fe40826416fL    # -4.395597333004078E-140
        0x5ba3e8d7c9d94c44L    # 2.8263723820577195E133
    .end array-data

    :array_2e
    .array-data 8
        -0x3ce532ad0956ccb2L    # -1.8860264009433155E15
        -0x1b229ee936bc2ceL
    .end array-data

    :array_2f
    .array-data 8
        0x70f3c1b97669ff22L
        0x12bf5e591ca58612L
        -0x3e244e21738de425L    # -1.8585667057829502E9
    .end array-data

    :array_30
    .array-data 8
        0x61016a72145ab827L    # 1.912895442572516E159
        -0x4ce6d312f192b0e2L    # -1.529955786564803E-62
        -0x24c567acad7ece0eL    # -2.9495683936953E131
    .end array-data

    :array_31
    .array-data 8
        -0x37c09c45f7589258L    # -1.0681312888871803E40
        -0x414371e3f338eac4L    # -1.7020175163568317E-6
        -0x27f735e034d7c728L    # -1.22094738673111E116
        0x1aa45a463394234fL
        0x52685ab7d4d331d4L    # 9.689594310059246E88
        -0x602416f78398f80fL    # -3.252569076857098E-155
        0x6f3962b99acac666L    # 6.0137439773243614E227
    .end array-data

    :array_32
    .array-data 8
        0x18d1013f8ae9716fL
        0x5723d181e0953e6aL    # 5.957674007917207E111
        0x4b1e63f2f44398f5L    # 7.277061286293781E53
    .end array-data

    :array_33
    .array-data 8
        -0xbd293e805caeb06L    # -4.213103646090572E251
        0x6476679bfd272adfL    # 8.866190991669833E175
        -0x3a07caf8160f55bdL    # -1.1986801081840565E29
    .end array-data

    :array_34
    .array-data 8
        0x51989ef652c6a9fcL    # 1.1957586519439868E85
        -0x75f159a64d190f89L
    .end array-data

    :array_35
    .array-data 8
        -0x36523ef5cf47f8a3L    # -8.493283193911843E46
        0x4e0b98c6402aa4b9L    # 9.300094799174843E67
        0x2b760e9a0769a556L    # 2.5210916089116756E-99
    .end array-data
.end method


# virtual methods
.method public abstract onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end method
