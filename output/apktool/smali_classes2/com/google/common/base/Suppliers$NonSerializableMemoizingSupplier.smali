.class Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonSerializableMemoizingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile delegate:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field volatile initialized:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/common/base/Supplier;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/base/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->initialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->initialized:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 11
    .line 12
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->initialized:Z

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    monitor-exit p0

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/google/common/base/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    iget-object v2, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/lit8 v3, v3, 0x19

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v5, v1, [J

    .line 27
    .line 28
    fill-array-data v5, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v3, v0, [J

    .line 47
    .line 48
    fill-array-data v3, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-int/lit8 v3, v3, 0x13

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v0, v0, [J

    .line 96
    .line 97
    fill-array-data v0, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        -0x6873a1afc4a528e1L
        0x746d9c66cfbeefaaL    # 6.784199790600446E252
        -0x4d4ddff0b2961143L    # -1.7210938256953283E-64
        0x269d2163ba6c2504L
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
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        0x4dbe49acab023b3dL    # 3.1896766750105507E66
        -0x3434c8b5e3737a0bL    # -1.3346675109742E57
    .end array-data

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
    :array_2
    .array-data 8
        -0x24633db8d9c4bd6cL    # -2.041316488820959E133
        -0xf54230031e188dfL    # -5.5370551853614166E234
        -0x3a01355c99c4cb98L    # -1.5247239906837215E29
        0x30122bf9aee899a2L    # 3.923363576374825E-77
    .end array-data

    .line 142
    .line 143
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
    :array_3
    .array-data 8
        -0x44f98dc0d9fe2194L    # -2.3208905485488958E-24
        -0x17f963c2f86059e0L    # -1.2894772446087534E193
    .end array-data
.end method
