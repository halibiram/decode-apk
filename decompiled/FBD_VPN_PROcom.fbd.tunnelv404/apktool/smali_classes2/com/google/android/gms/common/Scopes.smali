.class public final Lcom/google/android/gms/common/Scopes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_STATE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final CLOUD_SAVE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final DRIVE_APPFOLDER:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final DRIVE_APPS:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final DRIVE_FILE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final DRIVE_FULL:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EMAIL:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final GAMES:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final GAMES_LITE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final LEGACY_USERINFO_EMAIL:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final LEGACY_USERINFO_PROFILE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final OPEN_ID:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLUS_LOGIN:Ljava/lang/String; = "https://www.googleapis.com/auth/plus.login"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLUS_ME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final PROFILE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->PROFILE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->EMAIL:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->OPEN_ID:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->LEGACY_USERINFO_PROFILE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->LEGACY_USERINFO_EMAIL:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v3, v2, [J

    fill-array-data v3, :array_5

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->PLUS_ME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->GAMES:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_7

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->GAMES_LITE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_8

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->CLOUD_SAVE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_9

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->APP_STATE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->DRIVE_FILE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_b

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->DRIVE_APPFOLDER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->DRIVE_FULL:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_d

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/Scopes;->DRIVE_APPS:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x487704c5a1bc37dL
        -0x7c7c1d483e785914L
    .end array-data

    :array_1
    .array-data 8
        0x2a42aa34c2527b76L    # 4.069081927803861E-105
        0x7439bd5e8ab7dbfaL    # 7.371574780684499E251
    .end array-data

    :array_2
    .array-data 8
        -0x5bf7e94b56c90f2aL
        0x29a872c399b833cbL    # 5.204993366011319E-108
    .end array-data

    :array_3
    .array-data 8
        -0xba362dc8dc89741L    # -3.277874009218556E252
        0x1c0f9b171aab30e7L
        0x36622c71f4a2e506L    # 9.947912946749306E-47
        0x2c7963345f0ac06fL    # 1.9016982740088772E-94
        -0x3f40db80dc426e67L    # -7972.496639106795
        0x2921904dbd3331f2L
        -0x3db379a7266bbe33L    # -2.4502610820051407E11
    .end array-data

    :array_4
    .array-data 8
        0x3abc1a65a8504e6bL    # 9.080605773506238E-26
        0x12511ca356639437L    # 1.893566610992992E-220
        0x55d0d9f613cd74d9L    # 2.4155430011235957E105
        -0x5a943dec4407aeabL
        -0x162aed6dbce850b7L    # -6.45199596858117E201
        0x43e2e2be24f38289L    # 1.0886872826662636E19
        -0x7cd28a4ce7ff0703L
    .end array-data

    :array_5
    .array-data 8
        0x6ad9998aad20818bL    # 5.136805772870646E206
        0x610a1514cb65c93bL    # 2.8648007246626786E159
        0x6f91ff3dfd30b319L    # 2.7285868778773254E229
        0x545b9c6d485810faL    # 2.359073154843237E98
        0x59beeb5b09c869d5L    # 2.0439426079658735E124
        -0x47783d06a03f68b8L    # -2.2345317847191006E-36
    .end array-data

    :array_6
    .array-data 8
        -0x28ba26d609dfdc93L    # -2.6271567238722475E112
        0x23fce5fc4375bb4L
        0x44e1ca8e2867750fL    # 6.721337285022257E23
        0x1fa30f5e45c8877aL
        0x40bc1c8c05994334L    # 7196.546960429103
        -0x10ee676d9a669d09L    # -1.0421021752111676E227
    .end array-data

    :array_7
    .array-data 8
        0x5f2c0be77ee4ff51L    # 2.868973539522379E150
        -0x661a70e2e537a56cL    # -6.342230662870776E-184
        -0x426b652ae653c774L    # -4.684992325629703E-12
        -0xfc5ee75b5cded4aL    # -4.0471843327604687E232
        0x12787eb61522bb91L
        -0x55ea9ea469e83aaeL
        -0x39a1bdb8beeeff9cL    # -9.589428108307103E30
    .end array-data

    :array_8
    .array-data 8
        0x2d37a5aa64de14c9L    # 7.255373595212554E-91
        -0x2f613153175bb59bL    # -2.2830365614446074E80
        0x1999e5e7f663de16L
        0x3d6deb279848536fL    # 8.503369860909269E-13
        0x3ec88176dc18bafbL    # 2.9213094599114917E-6
        0x7a59567dab4321a7L    # 2.299671563342819E281
        0x536b5d0e708bebcdL    # 7.134775956439729E93
    .end array-data

    :array_9
    .array-data 8
        -0x638da4ef6b9ff572L
        0x57feac64d9da6e33L    # 7.553712769579852E115
        0x3399a84a1374987bL    # 3.991656741479622E-60
        -0x53456820b2ecae2fL    # -3.1872254631419836E-93
        0x2877b9544132ccdaL
        -0x4b75ed6c2ffce26bL    # -1.3291519068299481E-55
    .end array-data

    :array_a
    .array-data 8
        0x420d70ea69164374L    # 1.5806057762782936E10
        -0x75c5a29b407dda5aL
        0x4e859811a58da8dL
        0x18eee5e076e13c6bL
        0x5e879e736f9d617eL    # 2.359437424982679E147
        0x568313e2974b8e8cL    # 5.600591882926528E108
        -0x1bee402ba8a566ecL    # -1.0974874648939098E174
    .end array-data

    :array_b
    .array-data 8
        0x381870c6b18fbc5dL    # 1.7956066931173908E-38
        0x1b294ee0a91ac31bL    # 7.806787892204088E-178
        0x17a731f80efff62L
        -0xf0d153b82b93a04L    # -1.202957474772302E236
        0x8290bdee2d54332L
        0x26ec4e68141378b3L
        0x55c68b4e870fabdeL    # 1.615781743144794E105
    .end array-data

    :array_c
    .array-data 8
        -0x4661fa5082b627c4L    # -3.7005229645464067E-31
        0x378dee70f0fe0dabL    # 4.2949468218650653E-41
        0x4e49a765f97677beL    # 1.383255538497389E69
        0x37e2abfb30c5f18dL    # 1.714734165308585E-39
        0x6b0a61ee6694223eL    # 4.2351003001991894E207
        0x5b0c17f24343f02dL    # 3.8947054014802214E130
    .end array-data

    :array_d
    .array-data 8
        -0x5ac3f7e390a1247bL    # -2.527499393791262E-129
        0xf3034110f6db7dcL    # 1.592535635543443E-235
        -0x43dab15018b769fdL    # -5.775374637529275E-19
        -0x10dba3adb7dd97c4L    # -2.411670475260615E227
        -0x29b3dd28cf0d7920L    # -5.162407789312973E107
        0x6d80d00b70c47192L    # 2.967451728977523E219
        0x80247c18003d97dL    # 4.32530890658736E-270
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
