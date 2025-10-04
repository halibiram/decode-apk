.class public final Lcom/google/android/gms/internal/ads/zzhr;
.super Lcom/google/android/gms/internal/ads/zzhp;
.source "SourceFile"


# instance fields
.field public final zzd:I

.field public final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzf:Ljava/util/Map;

.field public final zzg:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhb;[B)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/16 v7, 0x7d4

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    move-object v3, p0

    .line 25
    move-object v5, p3

    .line 26
    move-object v6, p5

    .line 27
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 28
    .line 29
    .line 30
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhr;->zzd:I

    .line 31
    .line 32
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhr;->zze:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhr;->zzf:Ljava/util/Map;

    .line 35
    .line 36
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhr;->zzg:[B

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 8
        -0x6ace92b59dc9c49fL
        0x2354b77e278e47L
        -0x7aa12f5be16b54bcL
    .end array-data
.end method
