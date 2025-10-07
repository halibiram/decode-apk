.class public final Lcom/google/android/gms/internal/ads/zzefu;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x20ed461faa9d0cfeL    # -9.57777689533207E149
        -0x418682a58dea5cL    # -2.1399970101763947E307
        0x5a70bfe676e8d64cL    # 4.535267288169292E127
    .end array-data
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    new-array v1, v1, [J

    .line 25
    .line 26
    fill-array-data v1, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegn;->zze(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        -0x23a0d2de6b9c1f85L    # -9.064054997507756E136
        -0x1f21540ef70cd2e9L    # -4.211092963327887E158
        0x72ed69d197ab820fL    # 4.0167151924476117E245
        0x7d6b5de9d68cd0afL    # 1.3982684428752745E296
        0x629161b36736206eL    # 6.406022490258704E166
        0x657000fe232daa68L    # 4.15052126342528E180
        -0x5654bc6ae2d0b397L    # -5.804449586968186E-108
        -0x2f05327ee8a971daL    # -1.2712126621592938E82
        0x3fd45bfb7cdb3206L    # 0.318114158563532
        0x6d07736823f75ca2L    # 1.6168312644595473E217
        -0x543a1408ec53cf7bL    # -8.018006749784921E-98
        -0x34afd46edbb569ccL    # -6.195183503256191E54
        0x33f33cd7b69f1416L    # 1.915460683100894E-58
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x86728c355ff27efL
        0x76c86e5d9c2c3047L    # 1.5386134274995729E264
        -0x61514cdafd54fe4bL
        0x2a6a07308d16d423L
        0x352fa23e95f97ca7L    # 1.6513597144291055E-52
        -0x78cf76265beb15a2L    # -4.77682656060913E-274
        0x6069fbf52d6dc8cL
        0x2f2bf549418acc51L    # 1.8421271337042282E-81
        0x7d7e40d2fda2f2efL    # 3.091486458812861E296
        -0x7e728649d3ae606bL
        -0x6c81e16cf0e50ffeL    # -8.737151656589651E-215
        -0x1cce13917078ab9dL    # -6.764284958911826E169
    .end array-data
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzefu;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 p3, 0x7

    .line 4
    new-array v0, p3, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array p3, p3, [J

    .line 22
    .line 23
    fill-array-data p3, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        -0x17f60e45dea436aeL    # -1.4796135430772659E193
        -0x4f2f0e5ae9770c74L
        0x33e49c320b049407L    # 1.0260576589024204E-58
        0x73e8b2293969ff17L    # 2.2102021772669216E250
        0x5e70b8e9d3b89fc7L    # 8.352459474659528E146
        0x292b724360162343L    # 2.282527654013705E-110
        0x36c8f9977d541e7bL    # 8.749346005234653E-45
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        -0x2558d9c92507df4L
        -0x1e642c945dea38a7L    # -1.5648268794296169E162
        0x659f14de55f9f066L    # 3.2243310271266242E181
        0x61fb9c7d34226850L    # 9.937663441876223E163
        -0x5d486337c33a6a3cL    # -1.936344993799215E-141
        -0x466071e25ab0dbcaL    # -3.8894712801276984E-31
        0x78b095cfad99bbe6L    # 2.243038859744157E273
    .end array-data
.end method
