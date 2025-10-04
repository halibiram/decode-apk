.class public abstract Lcom/google/common/escape/Escaper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/escape/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use Escapers.nullEscaper() or another methods from the *Escapers classes"
.end annotation


# instance fields
.field private final asFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, L듽딟돳뒵땠땹땻땫뒈딞듬돠땥딜딀뒙돴둣땤따딁땥둣돨됴돝뒈땜땍뒋땃둑딌뒙듨땡돰딝뎬둬땯땫땲땰뎰듔뎡디뒹뎡돨땸뎽돠땤뒛드뒼뎠딤땅땹듟듨됨땟뒹땁땃땫둘딄뒐땱뒋돰돝땬딎뎬땸땠됩뒼딞두됴돤두땹딤뎬도딁뒐득듐듌딜둠뎠딽뒼뎰딤땨땅땀되땄뒋듸뎽듔딤뒷드땝뒬땭딸든듬딄돵드땮딄둠딜;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, v1}, L듽딟돳뒵땠땹땻땫뒈딞듬돠땥딜딀뒙돴둣땤따딁땥둣돨됴돝뒈땜땍뒋땃둑딌뒙듨땡돰딝뎬둬땯땫땲땰뎰듔뎡디뒹뎡돨땸뎽돠땤뒛드뒼뎠딤땅땹듟듨됨땟뒹땁땃땫둘딄뒐땱뒋돰돝땬딎뎬땸땠됩뒼딞두됴돤두땹딤뎬도딁뒐득듐듌딜둠뎠딽뒼뎰딤땨땅땀되땄뒋듸뎽듔딤뒷드땝뒬땭딸든듬딄돵드땮딄둠딜;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/common/escape/Escaper;->asFunction:Lcom/google/common/base/Function;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final asFunction()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/escape/Escaper;->asFunction:Lcom/google/common/base/Function;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method
