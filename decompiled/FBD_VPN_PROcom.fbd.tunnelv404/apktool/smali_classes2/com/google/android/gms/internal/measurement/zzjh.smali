.class public final Lcom/google/android/gms/internal/measurement/zzjh;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 8
        -0xfe85ea5532cf360L    # -9.171613126563156E231
        -0x475efdbd5616b0ceL    # -6.398010635316502E-36
        0x6a48e2326e311d11L    # 9.752141168433697E203
        -0x59936ea8d1e9ca7L
        -0x75d5958013217fd9L
        -0x7432fda4116edff8L    # -7.913518441142736E-252
        0x2169d33d3d58f2dfL
        0x565d7cdb4134783fL    # 1.0820807407375461E108
        0x279496f9d5a17694L    # 5.103084678912923E-118
        -0x3c3015d1655d3961L    # -4.5994036028336532E18
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xb

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :array_0
    .array-data 8
        -0x2ff341646cee2106L    # -4.160491020261536E77
        -0x716462479242495dL
        -0x3605851b8e960e07L    # -2.4187896183930528E48
        -0x9051ede3ce2cf40L
        -0x78a3aef44b5f04a2L
        -0x68cd8ea3136f4b51L    # -6.168083864406506E-197
        0x74fa2071fa37e73fL    # 3.06479584227391E255
        0x572ef2b73039b585L    # 9.303417454961761E111
        0x670c435746153048L    # 2.459497247964117E188
        -0x8fa78143c1527e3L    # -2.169547750260891E265
        0x4a2600bf803e3126L    # 1.607865331757411E49
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :array_0
    .array-data 8
        -0x3941658c269db0e8L    # -6.207092787140301E32
        -0x4746a1435ba08094L    # -1.9086316290501496E-35
        -0x209068f0ed05e2b4L    # -5.170332537919973E151
        -0x323b820365fe8e82L    # -4.3161475317672845E66
        0x20735005e700764eL
        0x325e7a4173c48675L    # 4.5219023016415244E-66
        0x2b6aac58bd69f61aL
        -0x3ad9371b7f38c361L    # -1.3772528232598394E25
        0x1089519c37c56df0L    # 5.218626966526906E-229
        0x219023047e41b569L    # 5.047998294562261E-147
    .end array-data
.end method
