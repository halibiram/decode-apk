.class public final Lcom/v2ray/ang/util/HttpUtil$resolveHostToIP$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/util/HttpUtil;->resolveHostToIP(Ljava/lang/String;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 HttpUtil.kt\ncom/v2ray/ang/util/HttpUtil\n*L\n1#1,102:1\n85#2:103\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/net/InetAddress;

    .line 2
    .line 3
    instance-of p1, p1, Ljava/net/Inet6Address;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p2, Ljava/net/InetAddress;

    .line 10
    .line 11
    instance-of p2, p2, Ljava/net/Inet6Address;

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p2}, L둘딀땳둔땪딞땸딟딌땩땁뒾딌듰땮듽땥돼뎹됩돵딌돵뎻됐뒘뒷들둡뒾땮뎹땨뎨듸뒘득땁뒤딹땡땤듻돤땀뒘둣뒋땝뎬듰땋뎨땨되돼둘땲뎽둔땥둔돸딄땡딝돶땠뒷땋들땵듨듨듻돴된딤땮딽땰든딎땃딞땁뎽뒀뒀뒨뒬뒼돤땟돠땦뎡딨땃돛땀듟돝딁돨딃땥드땫뒙딄딝돵딨뒝땀땋땠둑돰땠도듟땃뎽뎰듐땲땀듸;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method
