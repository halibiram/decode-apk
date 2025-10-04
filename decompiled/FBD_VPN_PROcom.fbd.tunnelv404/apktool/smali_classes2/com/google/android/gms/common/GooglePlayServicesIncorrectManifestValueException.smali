.class public final Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;
.super Lcom/google/android/gms/common/GooglePlayServicesManifestException;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/16 v3, 0xd

    .line 11
    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/16 v2, 0x1a

    .line 54
    .line 55
    new-array v2, v2, [J

    .line 56
    .line 57
    fill-array-data v2, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/GooglePlayServicesManifestException;-><init>(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 8
        -0x34fc3b006e7ce7eeL    # -2.3669303432220425E53
        0x752a55058fb32cfaL
        0x646bd12d3c157454L    # 5.504010911534808E175
        0x686c75e1c899bff5L    # 1.0387938694445847E195
        0x384b53e7712c9a04L
        0x479edf8be3985508L    # 1.0259389839968265E37
        0x5bd26b2523ba5e80L    # 2.091766377081896E134
        -0x5fc67401b744257aL
        0x54d0d77d86f220d9L    # 3.683714989002626E100
        -0x2c92ead6fb532aebL    # -7.583029616584447E93
        -0x5032e990a82a4f2eL    # -1.9625447761407914E-78
        -0x77c58651d09fbe94L    # -5.011468516664921E-269
        0xd00a30412f87297L
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x4160d93f976812fdL    # 8833532.731454367
        -0x3fc58fcaa4527e9dL    # -26.438314180240365
        -0x419807d2b3c73e8cL    # -4.464656335986271E-8
    .end array-data

    :array_2
    .array-data 8
        0x2551b0b24c37fe96L    # 6.380212055173325E-129
        0x678664706642190aL    # 4.988462983497998E190
        -0x2d62afb2cc1df631L    # -9.330158863100529E89
        -0x177bda1ed5f6c9beL    # -2.9415648936355326E195
        0x94951ef3d17a7c8L
        0x4f761c2f185523d2L    # 6.250424640455597E74
        -0x4804b5fc10429897L    # -5.012220221125341E-39
        -0x2d3ebd9c2b527a5cL    # -4.394735993190237E90
        0x65bfde31b5ccb3e0L    # 1.3223653814482877E182
        0x75fd0f5fdba106c1L    # 2.2340491536715094E260
        -0xb3e1f8140d0367aL    # -2.621316071781619E254
        0x28fbe1f962845fe0L
        0x469d2ad5ef3d25e8L    # 1.47895917715156E32
        0x46688fed535052ddL    # 1.556815332483339E31
        0x531f889463abf518L    # 2.5693961188221614E92
        0x7243a6eea5494487L    # 2.6208069206433456E242
        0x551cce3dac9df799L    # 1.0080821116528802E102
        -0x62d3baebb9169dd4L
        -0x7fb5b1acb57edd8dL
        -0x6f1cf92608528723L
        -0x7b35df94ca108cdcL
        -0x48dccb6808822964L    # -4.306009431034651E-43
        -0xb4b401f4c344c84L
        -0x5a39a83b20a8918eL
        -0x14ae7dd9ca8d9b3bL    # -8.99380271987285E208
        0x220e9eb2142cec72L
    .end array-data
.end method
