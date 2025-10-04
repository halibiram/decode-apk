.class public final Lslowdns/app/tunnel/slowdns/core/SlowDnsConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lslowdns/app/tunnel/slowdns/core/SlowDnsConstants;",
        "",
        "",
        "SLOW_DNS_DEFAULT_ADDRESS",
        "Ljava/lang/String;",
        "",
        "SLOW_DNS_DEFAULT_PORT",
        "I",
        "SLOW_DNS_RESOLVER_MODE",
        "SLOW_DNS_RESOLVER_ADDRESS",
        "SLOW_DNS_PUB_KEY",
        "SLOW_DNS_NAME_SERVER",
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


# static fields
.field public static final INSTANCE:Lslowdns/app/tunnel/slowdns/core/SlowDnsConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SLOW_DNS_DEFAULT_ADDRESS:Ljava/lang/String; = "127.0.0.1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SLOW_DNS_DEFAULT_PORT:I = 0x8ae

.field public static final SLOW_DNS_NAME_SERVER:Ljava/lang/String; = "slowdnsNameServerKey"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SLOW_DNS_PUB_KEY:Ljava/lang/String; = "slowdnsPubKey"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SLOW_DNS_RESOLVER_ADDRESS:Ljava/lang/String; = "slowdnsResolverAddrKey"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SLOW_DNS_RESOLVER_MODE:Ljava/lang/String; = "slowdnsResolverModeKey"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lslowdns/app/tunnel/slowdns/core/SlowDnsConstants;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lslowdns/app/tunnel/slowdns/core/SlowDnsConstants;->INSTANCE:Lslowdns/app/tunnel/slowdns/core/SlowDnsConstants;

    .line 7
    .line 8
    return-void
.end method
