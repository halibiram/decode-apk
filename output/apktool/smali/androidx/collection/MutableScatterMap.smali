.class public final Landroidx/collection/MutableScatterMap;
.super Landroidx/collection/ScatterMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/MutableScatterMap$MutableMapWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/ScatterMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0001EB\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000bJ\u0006\u0010\u000c\u001a\u00020\tJS\u0010\r\u001a\u00028\u00012\u0006\u0010\u000e\u001a\u00028\u000028\u0010\u000f\u001a4\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00018\u0001\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00028\u00010\u0010H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0015\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00028\u0000H\u0001\u00a2\u0006\u0002\u0010\u0018J\'\u0010\u0019\u001a\u00028\u00012\u0006\u0010\u000e\u001a\u00028\u00002\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u001bH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\tH\u0002J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J\u0010\u0010 \u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0016\u0010!\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00028\u0000H\u0086\n\u00a2\u0006\u0002\u0010\"J\u0017\u0010!\u001a\u00020\t2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000$H\u0086\nJ\u0017\u0010!\u001a\u00020\t2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0086\nJ\u001e\u0010!\u001a\u00020\t2\u000e\u0010#\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000&H\u0086\n\u00a2\u0006\u0002\u0010\'J\u0017\u0010!\u001a\u00020\t2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000(H\u0086\nJ\u0017\u0010!\u001a\u00020\t2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000)H\u0086\nJ\u001d\u0010*\u001a\u00020\t2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\u0086\nJ*\u0010*\u001a\u00020\t2\u001a\u0010,\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010-0&H\u0086\n\u00a2\u0006\u0002\u0010.J\u001d\u0010*\u001a\u00020\t2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010-H\u0086\nJ#\u0010*\u001a\u00020\t2\u0018\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010-0(H\u0086\nJ\u001d\u0010*\u001a\u00020\t2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100H\u0086\nJ#\u0010*\u001a\u00020\t2\u0018\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010-0)H\u0086\nJ\u001d\u00101\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00028\u0001\u00a2\u0006\u0002\u00102J\u001a\u00103\u001a\u00020\t2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003J\'\u00103\u001a\u00020\t2\u001a\u0010,\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010-0&\u00a2\u0006\u0002\u0010.J \u00103\u001a\u00020\t2\u0018\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010-0(J\u001a\u00103\u001a\u00020\t2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100J \u00103\u001a\u00020\t2\u0018\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010-0)J\u0015\u00104\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000e\u001a\u00028\u0000\u00a2\u0006\u0002\u00105J\u001b\u00104\u001a\u0002062\u0006\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00028\u0001\u00a2\u0006\u0002\u00107J\u0008\u00108\u001a\u00020\tH\u0002J&\u00109\u001a\u00020\t2\u0018\u0010:\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002060\u0010H\u0086\u0008\u00f8\u0001\u0000J\u0017\u0010;\u001a\u0004\u0018\u00018\u00012\u0006\u0010<\u001a\u00020\u0005H\u0001\u00a2\u0006\u0002\u0010=J\u0010\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u0005H\u0002J\u001e\u0010@\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00028\u0001H\u0086\u0002\u00a2\u0006\u0002\u0010AJ\u0006\u0010B\u001a\u00020\u0005J\u0019\u0010C\u001a\u00020\t2\u0006\u0010<\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020DH\u0082\u0008R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006F"
    }
    d2 = {
        "Landroidx/collection/MutableScatterMap;",
        "K",
        "V",
        "Landroidx/collection/ScatterMap;",
        "initialCapacity",
        "",
        "(I)V",
        "growthLimit",
        "adjustStorage",
        "",
        "asMutableMap",
        "",
        "clear",
        "compute",
        "key",
        "computeBlock",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "value",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "findFirstAvailableSlot",
        "hash1",
        "findInsertIndex",
        "(Ljava/lang/Object;)I",
        "getOrPut",
        "defaultValue",
        "Lkotlin/Function0;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "initializeGrowth",
        "initializeMetadata",
        "capacity",
        "initializeStorage",
        "minusAssign",
        "(Ljava/lang/Object;)V",
        "keys",
        "Landroidx/collection/ObjectList;",
        "Landroidx/collection/ScatterSet;",
        "",
        "([Ljava/lang/Object;)V",
        "",
        "Lkotlin/sequences/Sequence;",
        "plusAssign",
        "from",
        "pairs",
        "Lkotlin/Pair;",
        "([Lkotlin/Pair;)V",
        "pair",
        "",
        "put",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "putAll",
        "remove",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "removeDeletedMarkers",
        "removeIf",
        "predicate",
        "removeValueAt",
        "index",
        "(I)Ljava/lang/Object;",
        "resizeStorage",
        "newCapacity",
        "set",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "trim",
        "writeMetadata",
        "",
        "MutableMapWrapper",
        "collection"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 6 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 7 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,1850:1\n1284#1,2:2019\n1288#1,5:2027\n1284#1,2:2058\n1288#1,5:2066\n1284#1,2:2083\n1288#1,5:2091\n1284#1,2:2097\n1288#1,5:2105\n1#2:1851\n1672#3,6:1852\n1826#3:1870\n1688#3:1874\n1605#3,3:1887\n1619#3:1891\n1615#3:1894\n1795#3,3:1899\n1809#3,3:1903\n1733#3:1907\n1721#3:1909\n1715#3:1910\n1728#3:1915\n1818#3:1917\n1605#3,3:1927\n1619#3:1931\n1615#3:1934\n1795#3,3:1939\n1809#3,3:1943\n1733#3:1947\n1721#3:1949\n1715#3:1950\n1728#3:1955\n1818#3:1957\n1826#3:1972\n1688#3:1976\n1826#3:1997\n1688#3:2001\n1672#3,6:2021\n1672#3,6:2032\n1605#3,3:2038\n1615#3:2041\n1619#3:2042\n1795#3,3:2043\n1809#3,3:2046\n1733#3:2049\n1721#3:2050\n1715#3:2051\n1728#3:2052\n1818#3:2053\n1682#3:2054\n1661#3:2055\n1680#3:2056\n1661#3:2057\n1672#3,6:2060\n1795#3,3:2071\n1826#3:2074\n1715#3:2075\n1685#3:2076\n1661#3:2077\n1605#3,3:2078\n1615#3:2081\n1619#3:2082\n1672#3,6:2085\n1661#3:2096\n1672#3,6:2099\n1672#3,6:2110\n1672#3,6:2116\n215#4,2:1858\n391#5,4:1860\n363#5,6:1864\n373#5,3:1871\n376#5,2:1875\n396#5,2:1877\n379#5,6:1879\n398#5:1885\n633#5:1886\n634#5:1890\n636#5,2:1892\n638#5,4:1895\n642#5:1902\n643#5:1906\n644#5:1908\n645#5,4:1911\n651#5:1916\n652#5,8:1918\n633#5:1926\n634#5:1930\n636#5,2:1932\n638#5,4:1935\n642#5:1942\n643#5:1946\n644#5:1948\n645#5,4:1951\n651#5:1956\n652#5,8:1958\n363#5,6:1966\n373#5,3:1973\n376#5,9:1977\n267#6,4:1986\n237#6,7:1990\n248#6,3:1998\n251#6,2:2002\n272#6,2:2004\n254#6,6:2006\n274#6:2012\n305#7,6:2013\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n*L\n1113#1:2019,2\n1113#1:2027,5\n1180#1:2058,2\n1180#1:2066,5\n1254#1:2083,2\n1254#1:2091,5\n1270#1:2097,2\n1270#1:2105,5\n848#1:1852,6\n972#1:1870\n972#1:1874\n1021#1:1887,3\n1021#1:1891\n1021#1:1894\n1021#1:1899,3\n1021#1:1903,3\n1021#1:1907\n1021#1:1909\n1021#1:1910\n1021#1:1915\n1021#1:1917\n1033#1:1927,3\n1033#1:1931\n1033#1:1934\n1033#1:1939,3\n1033#1:1943,3\n1033#1:1947\n1033#1:1949\n1033#1:1950\n1033#1:1955\n1033#1:1957\n1047#1:1972\n1047#1:1976\n1093#1:1997\n1093#1:2001\n1113#1:2021,6\n1129#1:2032,6\n1145#1:2038,3\n1146#1:2041\n1147#1:2042\n1154#1:2043,3\n1155#1:2046,3\n1156#1:2049\n1157#1:2050\n1157#1:2051\n1161#1:2052\n1164#1:2053\n1173#1:2054\n1173#1:2055\n1179#1:2056\n1179#1:2057\n1180#1:2060,6\n1195#1:2071,3\n1196#1:2074\n1198#1:2075\n1249#1:2076\n1249#1:2077\n1251#1:2078,3\n1252#1:2081\n1254#1:2082\n1254#1:2085,6\n1268#1:2096\n1270#1:2099,6\n1285#1:2110,6\n1291#1:2116,6\n963#1:1858,2\n972#1:1860,4\n972#1:1864,6\n972#1:1871,3\n972#1:1875,2\n972#1:1877,2\n972#1:1879,6\n972#1:1885\n1021#1:1886\n1021#1:1890\n1021#1:1892,2\n1021#1:1895,4\n1021#1:1902\n1021#1:1906\n1021#1:1908\n1021#1:1911,4\n1021#1:1916\n1021#1:1918,8\n1033#1:1926\n1033#1:1930\n1033#1:1932,2\n1033#1:1935,4\n1033#1:1942\n1033#1:1946\n1033#1:1948\n1033#1:1951,4\n1033#1:1956\n1033#1:1958,8\n1047#1:1966,6\n1047#1:1973,3\n1047#1:1977,9\n1093#1:1986,4\n1093#1:1990,7\n1093#1:1998,3\n1093#1:2002,2\n1093#1:2004,2\n1093#1:2006,6\n1093#1:2012\n1102#1:2013,6\n*E\n"
    }
.end annotation


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/collection/ScatterMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterMap;->initializeStorage(I)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Capacity must be a positive value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    return-void
.end method

.method private final adjustStorage()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/collection/ScatterMap;->_size:I

    .line 8
    .line 9
    int-to-long v0, v0

    .line 10
    const-wide/16 v2, 0x20

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget v2, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 17
    .line 18
    int-to-long v2, v2

    .line 19
    const-wide/16 v4, 0x19

    .line 20
    .line 21
    invoke-static {v2, v3, v4, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/high16 v4, -0x8000000000000000L

    .line 26
    .line 27
    xor-long/2addr v0, v4

    .line 28
    xor-long/2addr v2, v4

    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-gtz v0, :cond_0

    .line 34
    .line 35
    iget v0, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 36
    .line 37
    invoke-direct {p0, v0}, Landroidx/collection/MutableScatterMap;->resizeStorage(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-direct {p0, v0}, Landroidx/collection/MutableScatterMap;->resizeStorage(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 6
    .line 7
    shr-int/lit8 v3, p1, 0x3

    .line 8
    .line 9
    and-int/lit8 v4, p1, 0x7

    .line 10
    .line 11
    shl-int/lit8 v4, v4, 0x3

    .line 12
    .line 13
    aget-wide v5, v2, v3

    .line 14
    .line 15
    ushr-long/2addr v5, v4

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    aget-wide v7, v2, v3

    .line 19
    .line 20
    rsub-int/lit8 v2, v4, 0x40

    .line 21
    .line 22
    shl-long v2, v7, v2

    .line 23
    .line 24
    int-to-long v7, v4

    .line 25
    neg-long v7, v7

    .line 26
    const/16 v4, 0x3f

    .line 27
    .line 28
    shr-long/2addr v7, v4

    .line 29
    and-long/2addr v2, v7

    .line 30
    or-long/2addr v2, v5

    .line 31
    not-long v4, v2

    .line 32
    const/4 v6, 0x7

    .line 33
    shl-long/2addr v4, v6

    .line 34
    and-long/2addr v2, v4

    .line 35
    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v2, v4

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v6, v2, v4

    .line 44
    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    shr-int/lit8 v1, v1, 0x3

    .line 52
    .line 53
    add-int/2addr p1, v1

    .line 54
    and-int/2addr p1, v0

    .line 55
    return p1

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 57
    .line 58
    add-int/2addr p1, v1

    .line 59
    and-int/2addr p1, v0

    .line 60
    goto :goto_0
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->getCapacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroidx/collection/ScatterMap;->_size:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/collection/MutableScatterMap;->growthLimit:I

    .line 13
    .line 14
    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    add-int/lit8 v0, p1, 0xf

    .line 7
    .line 8
    and-int/lit8 v0, v0, -0x8

    .line 9
    .line 10
    shr-int/lit8 v0, v0, 0x3

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    const/4 v6, 0x6

    .line 15
    const/4 v7, 0x0

    .line 16
    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v1, v0

    .line 24
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iput-object v0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 28
    .line 29
    shr-int/lit8 v1, p1, 0x3

    .line 30
    .line 31
    and-int/lit8 p1, p1, 0x7

    .line 32
    .line 33
    shl-int/lit8 p1, p1, 0x3

    .line 34
    .line 35
    aget-wide v2, v0, v1

    .line 36
    .line 37
    const-wide/16 v4, 0xff

    .line 38
    .line 39
    shl-long/2addr v4, p1

    .line 40
    not-long v6, v4

    .line 41
    and-long/2addr v2, v6

    .line 42
    or-long/2addr v2, v4

    .line 43
    aput-wide v2, v0, v1

    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/collection/MutableScatterMap;->initializeGrowth()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final initializeStorage(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput p1, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterMap;->initializeMetadata(I)V

    .line 17
    .line 18
    .line 19
    new-array v0, p1, [Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 22
    .line 23
    new-array p1, p1, [Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method private final removeDeletedMarkers()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    shr-int/lit8 v4, v2, 0x3

    .line 10
    .line 11
    aget-wide v5, v0, v4

    .line 12
    .line 13
    and-int/lit8 v7, v2, 0x7

    .line 14
    .line 15
    shl-int/lit8 v7, v7, 0x3

    .line 16
    .line 17
    shr-long/2addr v5, v7

    .line 18
    const-wide/16 v8, 0xff

    .line 19
    .line 20
    and-long/2addr v5, v8

    .line 21
    const-wide/16 v10, 0xfe

    .line 22
    .line 23
    cmp-long v12, v5, v10

    .line 24
    .line 25
    if-nez v12, :cond_0

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 28
    .line 29
    aget-wide v10, v5, v4

    .line 30
    .line 31
    shl-long v12, v8, v7

    .line 32
    .line 33
    not-long v12, v12

    .line 34
    and-long/2addr v10, v12

    .line 35
    const-wide/16 v12, 0x80

    .line 36
    .line 37
    shl-long v6, v12, v7

    .line 38
    .line 39
    or-long/2addr v6, v10

    .line 40
    aput-wide v6, v5, v4

    .line 41
    .line 42
    iget v4, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 43
    .line 44
    add-int/lit8 v6, v2, -0x7

    .line 45
    .line 46
    and-int/2addr v6, v4

    .line 47
    and-int/lit8 v4, v4, 0x7

    .line 48
    .line 49
    add-int/2addr v6, v4

    .line 50
    shr-int/lit8 v4, v6, 0x3

    .line 51
    .line 52
    and-int/lit8 v6, v6, 0x7

    .line 53
    .line 54
    shl-int/lit8 v6, v6, 0x3

    .line 55
    .line 56
    aget-wide v10, v5, v4

    .line 57
    .line 58
    shl-long v7, v8, v6

    .line 59
    .line 60
    not-long v7, v7

    .line 61
    and-long/2addr v7, v10

    .line 62
    shl-long v9, v12, v6

    .line 63
    .line 64
    or-long v6, v7, v9

    .line 65
    .line 66
    aput-wide v6, v5, v4

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Landroidx/collection/MutableScatterMap;->growthLimit:I

    .line 74
    .line 75
    add-int/2addr v0, v3

    .line 76
    iput v0, p0, Landroidx/collection/MutableScatterMap;->growthLimit:I

    .line 77
    .line 78
    return-void
.end method

.method private final resizeStorage(I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, v0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 10
    .line 11
    invoke-direct/range {p0 .. p1}, Landroidx/collection/MutableScatterMap;->initializeStorage(I)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v6, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    :goto_0
    if-ge v8, v4, :cond_2

    .line 20
    .line 21
    shr-int/lit8 v9, v8, 0x3

    .line 22
    .line 23
    aget-wide v9, v1, v9

    .line 24
    .line 25
    and-int/lit8 v11, v8, 0x7

    .line 26
    .line 27
    shl-int/lit8 v11, v11, 0x3

    .line 28
    .line 29
    shr-long/2addr v9, v11

    .line 30
    const-wide/16 v11, 0xff

    .line 31
    .line 32
    and-long/2addr v9, v11

    .line 33
    const-wide/16 v13, 0x80

    .line 34
    .line 35
    cmp-long v15, v9, v13

    .line 36
    .line 37
    if-gez v15, :cond_1

    .line 38
    .line 39
    aget-object v9, v2, v8

    .line 40
    .line 41
    if-eqz v9, :cond_0

    .line 42
    .line 43
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/4 v10, 0x0

    .line 49
    :goto_1
    const v13, -0x3361d2af    # -8.2930312E7f

    .line 50
    .line 51
    .line 52
    mul-int v10, v10, v13

    .line 53
    .line 54
    shl-int/lit8 v13, v10, 0x10

    .line 55
    .line 56
    xor-int/2addr v10, v13

    .line 57
    ushr-int/lit8 v13, v10, 0x7

    .line 58
    .line 59
    invoke-direct {v0, v13}, Landroidx/collection/MutableScatterMap;->findFirstAvailableSlot(I)I

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    and-int/lit8 v10, v10, 0x7f

    .line 64
    .line 65
    int-to-long v14, v10

    .line 66
    iget-object v10, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 67
    .line 68
    shr-int/lit8 v16, v13, 0x3

    .line 69
    .line 70
    and-int/lit8 v17, v13, 0x7

    .line 71
    .line 72
    shl-int/lit8 v17, v17, 0x3

    .line 73
    .line 74
    aget-wide v18, v10, v16

    .line 75
    .line 76
    move/from16 v20, v8

    .line 77
    .line 78
    shl-long v7, v11, v17

    .line 79
    .line 80
    not-long v7, v7

    .line 81
    and-long v7, v18, v7

    .line 82
    .line 83
    shl-long v17, v14, v17

    .line 84
    .line 85
    or-long v7, v7, v17

    .line 86
    .line 87
    aput-wide v7, v10, v16

    .line 88
    .line 89
    iget v7, v0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 90
    .line 91
    add-int/lit8 v8, v13, -0x7

    .line 92
    .line 93
    and-int/2addr v8, v7

    .line 94
    and-int/lit8 v7, v7, 0x7

    .line 95
    .line 96
    add-int/2addr v8, v7

    .line 97
    shr-int/lit8 v7, v8, 0x3

    .line 98
    .line 99
    and-int/lit8 v8, v8, 0x7

    .line 100
    .line 101
    shl-int/lit8 v8, v8, 0x3

    .line 102
    .line 103
    aget-wide v16, v10, v7

    .line 104
    .line 105
    shl-long/2addr v11, v8

    .line 106
    not-long v11, v11

    .line 107
    and-long v11, v16, v11

    .line 108
    .line 109
    shl-long/2addr v14, v8

    .line 110
    or-long/2addr v11, v14

    .line 111
    aput-wide v11, v10, v7

    .line 112
    .line 113
    aput-object v9, v5, v13

    .line 114
    .line 115
    aget-object v7, v3, v20

    .line 116
    .line 117
    aput-object v7, v6, v13

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    move/from16 v20, v8

    .line 121
    .line 122
    :goto_2
    add-int/lit8 v8, v20, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    return-void
.end method

.method private final writeMetadata(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 2
    .line 3
    shr-int/lit8 v1, p1, 0x3

    .line 4
    .line 5
    and-int/lit8 v2, p1, 0x7

    .line 6
    .line 7
    shl-int/lit8 v2, v2, 0x3

    .line 8
    .line 9
    aget-wide v3, v0, v1

    .line 10
    .line 11
    const-wide/16 v5, 0xff

    .line 12
    .line 13
    shl-long v7, v5, v2

    .line 14
    .line 15
    not-long v7, v7

    .line 16
    and-long/2addr v3, v7

    .line 17
    shl-long v7, p2, v2

    .line 18
    .line 19
    or-long v2, v3, v7

    .line 20
    .line 21
    aput-wide v2, v0, v1

    .line 22
    .line 23
    iget v1, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 24
    .line 25
    add-int/lit8 p1, p1, -0x7

    .line 26
    .line 27
    and-int/2addr p1, v1

    .line 28
    and-int/lit8 v1, v1, 0x7

    .line 29
    .line 30
    add-int/2addr p1, v1

    .line 31
    shr-int/lit8 v1, p1, 0x3

    .line 32
    .line 33
    and-int/lit8 p1, p1, 0x7

    .line 34
    .line 35
    shl-int/lit8 p1, p1, 0x3

    .line 36
    .line 37
    aget-wide v2, v0, v1

    .line 38
    .line 39
    shl-long v4, v5, p1

    .line 40
    .line 41
    not-long v4, v4

    .line 42
    and-long/2addr v2, v4

    .line 43
    shl-long p1, p2, p1

    .line 44
    .line 45
    or-long/2addr p1, v2

    .line 46
    aput-wide p1, v0, v1

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final asMutableMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/collection/MutableScatterMap$MutableMapWrapper;-><init>(Landroidx/collection/MutableScatterMap;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final clear()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/ScatterMap;->_size:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 5
    .line 6
    sget-object v2, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v6, 0x6

    .line 11
    const/4 v7, 0x0

    .line 12
    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 23
    .line 24
    iget v2, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 25
    .line 26
    shr-int/lit8 v3, v2, 0x3

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0x7

    .line 29
    .line 30
    shl-int/lit8 v2, v2, 0x3

    .line 31
    .line 32
    aget-wide v4, v1, v3

    .line 33
    .line 34
    const-wide/16 v6, 0xff

    .line 35
    .line 36
    shl-long/2addr v6, v2

    .line 37
    not-long v8, v6

    .line 38
    and-long/2addr v4, v8

    .line 39
    or-long/2addr v4, v6

    .line 40
    aput-wide v4, v1, v3

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 43
    .line 44
    iget v2, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static {v1, v3, v0, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 51
    .line 52
    iget v2, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 53
    .line 54
    invoke-static {v1, v3, v0, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Landroidx/collection/MutableScatterMap;->initializeGrowth()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final compute(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    const-string v0, "computeBlock"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v2, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v2, v2, v0

    .line 22
    .line 23
    :goto_1
    invoke-interface {p2, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    not-int v0, v0

    .line 30
    iget-object v1, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 31
    .line 32
    aput-object p1, v1, v0

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p2, p1, v0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object p1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p2, p1, v0

    .line 42
    .line 43
    :goto_2
    return-object p2
.end method

.method public final findInsertIndex(Ljava/lang/Object;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 14
    .line 15
    .line 16
    mul-int v3, v3, v4

    .line 17
    .line 18
    shl-int/lit8 v4, v3, 0x10

    .line 19
    .line 20
    xor-int/2addr v3, v4

    .line 21
    ushr-int/lit8 v4, v3, 0x7

    .line 22
    .line 23
    and-int/lit8 v3, v3, 0x7f

    .line 24
    .line 25
    iget v5, v0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 26
    .line 27
    and-int v6, v4, v5

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    :goto_1
    iget-object v8, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 31
    .line 32
    shr-int/lit8 v9, v6, 0x3

    .line 33
    .line 34
    and-int/lit8 v10, v6, 0x7

    .line 35
    .line 36
    shl-int/lit8 v10, v10, 0x3

    .line 37
    .line 38
    aget-wide v11, v8, v9

    .line 39
    .line 40
    ushr-long/2addr v11, v10

    .line 41
    const/4 v13, 0x1

    .line 42
    add-int/2addr v9, v13

    .line 43
    aget-wide v14, v8, v9

    .line 44
    .line 45
    rsub-int/lit8 v8, v10, 0x40

    .line 46
    .line 47
    shl-long v8, v14, v8

    .line 48
    .line 49
    int-to-long v14, v10

    .line 50
    neg-long v14, v14

    .line 51
    const/16 v10, 0x3f

    .line 52
    .line 53
    shr-long/2addr v14, v10

    .line 54
    and-long/2addr v8, v14

    .line 55
    or-long/2addr v8, v11

    .line 56
    int-to-long v10, v3

    .line 57
    const-wide v14, 0x101010101010101L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    mul-long v16, v10, v14

    .line 63
    .line 64
    move/from16 v18, v3

    .line 65
    .line 66
    xor-long v2, v8, v16

    .line 67
    .line 68
    sub-long v14, v2, v14

    .line 69
    .line 70
    not-long v2, v2

    .line 71
    and-long/2addr v2, v14

    .line 72
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long/2addr v2, v14

    .line 78
    :goto_2
    const-wide/16 v16, 0x0

    .line 79
    .line 80
    cmp-long v19, v2, v16

    .line 81
    .line 82
    if-eqz v19, :cond_2

    .line 83
    .line 84
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 85
    .line 86
    .line 87
    move-result v16

    .line 88
    shr-int/lit8 v16, v16, 0x3

    .line 89
    .line 90
    add-int v16, v6, v16

    .line 91
    .line 92
    and-int v16, v16, v5

    .line 93
    .line 94
    iget-object v12, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 95
    .line 96
    aget-object v12, v12, v16

    .line 97
    .line 98
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-eqz v12, :cond_1

    .line 103
    .line 104
    return v16

    .line 105
    :cond_1
    const-wide/16 v16, 0x1

    .line 106
    .line 107
    sub-long v16, v2, v16

    .line 108
    .line 109
    and-long v2, v2, v16

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    not-long v2, v8

    .line 113
    const/4 v12, 0x6

    .line 114
    shl-long/2addr v2, v12

    .line 115
    and-long/2addr v2, v8

    .line 116
    and-long/2addr v2, v14

    .line 117
    cmp-long v8, v2, v16

    .line 118
    .line 119
    if-eqz v8, :cond_6

    .line 120
    .line 121
    invoke-direct {v0, v4}, Landroidx/collection/MutableScatterMap;->findFirstAvailableSlot(I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget v2, v0, Landroidx/collection/MutableScatterMap;->growthLimit:I

    .line 126
    .line 127
    const-wide/16 v5, 0xff

    .line 128
    .line 129
    if-nez v2, :cond_4

    .line 130
    .line 131
    iget-object v2, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 132
    .line 133
    shr-int/lit8 v3, v1, 0x3

    .line 134
    .line 135
    aget-wide v7, v2, v3

    .line 136
    .line 137
    and-int/lit8 v2, v1, 0x7

    .line 138
    .line 139
    shl-int/lit8 v2, v2, 0x3

    .line 140
    .line 141
    shr-long v2, v7, v2

    .line 142
    .line 143
    and-long/2addr v2, v5

    .line 144
    const-wide/16 v7, 0xfe

    .line 145
    .line 146
    cmp-long v9, v2, v7

    .line 147
    .line 148
    if-nez v9, :cond_3

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/collection/MutableScatterMap;->adjustStorage()V

    .line 152
    .line 153
    .line 154
    invoke-direct {v0, v4}, Landroidx/collection/MutableScatterMap;->findFirstAvailableSlot(I)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    :cond_4
    :goto_3
    iget v2, v0, Landroidx/collection/ScatterMap;->_size:I

    .line 159
    .line 160
    add-int/2addr v2, v13

    .line 161
    iput v2, v0, Landroidx/collection/ScatterMap;->_size:I

    .line 162
    .line 163
    iget v2, v0, Landroidx/collection/MutableScatterMap;->growthLimit:I

    .line 164
    .line 165
    iget-object v3, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 166
    .line 167
    shr-int/lit8 v4, v1, 0x3

    .line 168
    .line 169
    aget-wide v7, v3, v4

    .line 170
    .line 171
    and-int/lit8 v9, v1, 0x7

    .line 172
    .line 173
    shl-int/lit8 v9, v9, 0x3

    .line 174
    .line 175
    shr-long v14, v7, v9

    .line 176
    .line 177
    and-long/2addr v14, v5

    .line 178
    const-wide/16 v16, 0x80

    .line 179
    .line 180
    cmp-long v12, v14, v16

    .line 181
    .line 182
    if-nez v12, :cond_5

    .line 183
    .line 184
    const/16 v19, 0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_5
    const/16 v19, 0x0

    .line 188
    .line 189
    :goto_4
    sub-int v2, v2, v19

    .line 190
    .line 191
    iput v2, v0, Landroidx/collection/MutableScatterMap;->growthLimit:I

    .line 192
    .line 193
    shl-long v12, v5, v9

    .line 194
    .line 195
    not-long v12, v12

    .line 196
    and-long/2addr v7, v12

    .line 197
    shl-long v12, v10, v9

    .line 198
    .line 199
    or-long/2addr v7, v12

    .line 200
    aput-wide v7, v3, v4

    .line 201
    .line 202
    iget v2, v0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 203
    .line 204
    add-int/lit8 v4, v1, -0x7

    .line 205
    .line 206
    and-int/2addr v4, v2

    .line 207
    and-int/lit8 v2, v2, 0x7

    .line 208
    .line 209
    add-int/2addr v4, v2

    .line 210
    shr-int/lit8 v2, v4, 0x3

    .line 211
    .line 212
    and-int/lit8 v4, v4, 0x7

    .line 213
    .line 214
    shl-int/lit8 v4, v4, 0x3

    .line 215
    .line 216
    aget-wide v7, v3, v2

    .line 217
    .line 218
    shl-long/2addr v5, v4

    .line 219
    not-long v5, v5

    .line 220
    and-long/2addr v5, v7

    .line 221
    shl-long v7, v10, v4

    .line 222
    .line 223
    or-long v4, v5, v7

    .line 224
    .line 225
    aput-wide v4, v3, v2

    .line 226
    .line 227
    not-int v1, v1

    .line 228
    return v1

    .line 229
    :cond_6
    add-int/lit8 v7, v7, 0x8

    .line 230
    .line 231
    add-int/2addr v6, v7

    .line 232
    and-int/2addr v6, v5

    .line 233
    move/from16 v3, v18

    .line 234
    .line 235
    goto/16 :goto_1
.end method

.method public final getOrPut(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lkotlin/jvm/functions/Function0<",
            "+TV;>;)TV;"
        }
    .end annotation

    .line 1
    const-string v0, "defaultValue"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public final minusAssign(Landroidx/collection/ObjectList;)V
    .locals 3
    .param p1    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TK;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 15
    iget p1, p1, Landroidx/collection/ObjectList;->_size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 16
    aget-object v2, v0, v1

    .line 17
    invoke-virtual {p0, v2}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Landroidx/collection/ScatterSet;)V
    .locals 14
    .param p1    # Landroidx/collection/ScatterSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TK;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 9
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 10
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 11
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v13, v9, v11

    if-gez v13, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 12
    aget-object v9, v0, v9

    .line 13
    invoke-virtual {p0, v9}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final minusAssign(Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final minusAssign(Lkotlin/sequences/Sequence;)V
    .locals 1
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TK;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign([Ljava/lang/Object;)V
    .locals 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Landroidx/collection/ScatterMap;)V
    .locals 1
    .param p1    # Landroidx/collection/ScatterMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->putAll(Landroidx/collection/ScatterMap;)V

    return-void
.end method

.method public final plusAssign(Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->putAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final plusAssign(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final plusAssign(Lkotlin/Pair;)V
    .locals 1
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "pair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final plusAssign(Lkotlin/sequences/Sequence;)V
    .locals 1
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->putAll(Lkotlin/sequences/Sequence;)V

    return-void
.end method

.method public final plusAssign([Lkotlin/Pair;)V
    .locals 1
    .param p1    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->putAll([Lkotlin/Pair;)V

    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    not-int v0, v0

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 9
    .line 10
    aget-object v2, v1, v0

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 13
    .line 14
    aput-object p1, v3, v0

    .line 15
    .line 16
    aput-object p2, v1, v0

    .line 17
    .line 18
    return-object v2
.end method

.method public final putAll(Landroidx/collection/ScatterMap;)V
    .locals 16
    .param p1    # Landroidx/collection/ScatterMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "from"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 11
    iget-object v2, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 13
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 14
    :goto_0
    aget-wide v6, v0, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_1

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v15, v11, v13

    if-gez v15, :cond_0

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    .line 15
    aget-object v12, v1, v11

    aget-object v11, v2, v11

    move-object/from16 v13, p0

    .line 16
    invoke-virtual {v13, v12, v11}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    move-object/from16 v13, p0

    :goto_2
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v13, p0

    if-ne v8, v9, :cond_4

    goto :goto_3

    :cond_2
    move-object/from16 v13, p0

    :goto_3
    if-eq v5, v3, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v13, p0

    :cond_4
    return-void
.end method

.method public final putAll(Ljava/lang/Iterable;)V
    .locals 2
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putAll(Lkotlin/sequences/Sequence;)V
    .locals 2
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putAll([Lkotlin/Pair;)V
    .locals 4
    .param p1    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {p0, v3, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, -0x3361d2af    # -8.2930312E7f

    mul-int v1, v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x7f

    .line 2
    iget v3, p0, Landroidx/collection/ScatterMap;->_capacity:I

    ushr-int/lit8 v1, v1, 0x7

    :goto_1
    and-int/2addr v1, v3

    .line 3
    iget-object v4, p0, Landroidx/collection/ScatterMap;->metadata:[J

    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v6, v1, 0x7

    shl-int/lit8 v6, v6, 0x3

    .line 4
    aget-wide v7, v4, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v4, v5

    rsub-int/lit8 v4, v6, 0x40

    shl-long v4, v9, v4

    int-to-long v9, v6

    neg-long v9, v9

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    int-to-long v6, v2

    const-wide v8, 0x101010101010101L

    mul-long v6, v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_2

    .line 5
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v1

    and-int/2addr v10, v3

    .line 6
    iget-object v11, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v11, v11, v10

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_2

    :cond_2
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v6, v4, v10

    if-eqz v6, :cond_4

    const/4 v10, -0x1

    :goto_3
    if-ltz v10, :cond_3

    .line 7
    invoke-virtual {p0, v10}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    mul-int v3, v3, v4

    shl-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x7f

    .line 9
    iget v5, v0, Landroidx/collection/ScatterMap;->_capacity:I

    ushr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v5

    const/4 v6, 0x0

    .line 10
    :goto_1
    iget-object v7, v0, Landroidx/collection/ScatterMap;->metadata:[J

    shr-int/lit8 v8, v3, 0x3

    and-int/lit8 v9, v3, 0x7

    shl-int/lit8 v9, v9, 0x3

    .line 11
    aget-wide v10, v7, v8

    ushr-long/2addr v10, v9

    const/4 v12, 0x1

    add-int/2addr v8, v12

    aget-wide v13, v7, v8

    rsub-int/lit8 v7, v9, 0x40

    shl-long v7, v13, v7

    int-to-long v13, v9

    neg-long v13, v13

    const/16 v9, 0x3f

    shr-long/2addr v13, v9

    and-long/2addr v7, v13

    or-long/2addr v7, v10

    int-to-long v9, v4

    const-wide v13, 0x101010101010101L

    mul-long v9, v9, v13

    xor-long/2addr v9, v7

    sub-long v13, v9, v13

    not-long v9, v9

    and-long/2addr v9, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v13

    :goto_2
    const-wide/16 v15, 0x0

    cmp-long v11, v9, v15

    if-eqz v11, :cond_2

    .line 12
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v11

    shr-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v3

    and-int/2addr v11, v5

    .line 13
    iget-object v15, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v11

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v15, 0x1

    sub-long v15, v9, v15

    and-long/2addr v9, v15

    goto :goto_2

    :cond_2
    not-long v9, v7

    const/4 v11, 0x6

    shl-long/2addr v9, v11

    and-long/2addr v7, v9

    and-long/2addr v7, v13

    cmp-long v9, v7, v15

    if-eqz v9, :cond_4

    const/4 v11, -0x1

    :goto_3
    if-ltz v11, :cond_3

    .line 14
    iget-object v1, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v11

    move-object/from16 v7, p2

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v0, v11}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    return v12

    :cond_3
    return v2

    :cond_4
    move-object/from16 v7, p2

    add-int/lit8 v6, v6, 0x8

    add-int/2addr v3, v6

    and-int/2addr v3, v5

    goto :goto_1
.end method

.method public final removeIf(Lkotlin/jvm/functions/Function2;)V
    .locals 14
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "predicate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    add-int/lit8 v1, v1, -0x2

    .line 10
    .line 11
    if-ltz v1, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    aget-wide v4, v0, v3

    .line 16
    .line 17
    not-long v6, v4

    .line 18
    const/4 v8, 0x7

    .line 19
    shl-long/2addr v6, v8

    .line 20
    and-long/2addr v6, v4

    .line 21
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v6, v8

    .line 27
    cmp-long v10, v6, v8

    .line 28
    .line 29
    if-eqz v10, :cond_2

    .line 30
    .line 31
    sub-int v6, v3, v1

    .line 32
    .line 33
    not-int v6, v6

    .line 34
    ushr-int/lit8 v6, v6, 0x1f

    .line 35
    .line 36
    const/16 v7, 0x8

    .line 37
    .line 38
    rsub-int/lit8 v6, v6, 0x8

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    :goto_1
    if-ge v8, v6, :cond_1

    .line 42
    .line 43
    const-wide/16 v9, 0xff

    .line 44
    .line 45
    and-long/2addr v9, v4

    .line 46
    const-wide/16 v11, 0x80

    .line 47
    .line 48
    cmp-long v13, v9, v11

    .line 49
    .line 50
    if-gez v13, :cond_0

    .line 51
    .line 52
    shl-int/lit8 v9, v3, 0x3

    .line 53
    .line 54
    add-int/2addr v9, v8

    .line 55
    iget-object v10, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 56
    .line 57
    aget-object v10, v10, v9

    .line 58
    .line 59
    iget-object v11, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v11, v11, v9

    .line 62
    .line 63
    invoke-interface {p1, v10, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    check-cast v10, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_0

    .line 74
    .line 75
    invoke-virtual {p0, v9}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_0
    shr-long/2addr v4, v7

    .line 79
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    if-ne v6, v7, :cond_3

    .line 83
    .line 84
    :cond_2
    if-eq v3, v1, :cond_3

    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    return-void
.end method

.method public final removeValueAt(I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/ScatterMap;->_size:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/collection/ScatterMap;->_size:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 8
    .line 9
    shr-int/lit8 v1, p1, 0x3

    .line 10
    .line 11
    and-int/lit8 v2, p1, 0x7

    .line 12
    .line 13
    shl-int/lit8 v2, v2, 0x3

    .line 14
    .line 15
    aget-wide v3, v0, v1

    .line 16
    .line 17
    const-wide/16 v5, 0xff

    .line 18
    .line 19
    shl-long v7, v5, v2

    .line 20
    .line 21
    not-long v7, v7

    .line 22
    and-long/2addr v3, v7

    .line 23
    const-wide/16 v7, 0xfe

    .line 24
    .line 25
    shl-long v9, v7, v2

    .line 26
    .line 27
    or-long v2, v3, v9

    .line 28
    .line 29
    aput-wide v2, v0, v1

    .line 30
    .line 31
    iget v1, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 32
    .line 33
    add-int/lit8 v2, p1, -0x7

    .line 34
    .line 35
    and-int/2addr v2, v1

    .line 36
    and-int/lit8 v1, v1, 0x7

    .line 37
    .line 38
    add-int/2addr v2, v1

    .line 39
    shr-int/lit8 v1, v2, 0x3

    .line 40
    .line 41
    and-int/lit8 v2, v2, 0x7

    .line 42
    .line 43
    shl-int/lit8 v2, v2, 0x3

    .line 44
    .line 45
    aget-wide v3, v0, v1

    .line 46
    .line 47
    shl-long/2addr v5, v2

    .line 48
    not-long v5, v5

    .line 49
    and-long/2addr v3, v5

    .line 50
    shl-long v5, v7, v2

    .line 51
    .line 52
    or-long v2, v3, v5

    .line 53
    .line 54
    aput-wide v2, v0, v1

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    aput-object v1, v0, p1

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 62
    .line 63
    aget-object v2, v0, p1

    .line 64
    .line 65
    aput-object v1, v0, p1

    .line 66
    .line 67
    return-object v2
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    not-int v0, v0

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 13
    .line 14
    aput-object p2, p1, v0

    .line 15
    .line 16
    return-void
.end method

.method public final trim()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/ScatterMap;->_size:I

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v1}, Landroidx/collection/MutableScatterMap;->resizeStorage(I)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 19
    .line 20
    sub-int/2addr v0, v1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method
