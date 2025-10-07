.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    filled-new-array {v3, v2}, [I

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x3

    new-array v6, v5, [J

    fill-array-data v6, :array_1

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    filled-new-array {v6, v5}, [I

    move-result-object v7

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v5, [J

    fill-array-data v9, :array_2

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v4, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    .line 3
    new-instance v4, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v5, [J

    fill-array-data v8, :array_3

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v5, [J

    fill-array-data v9, :array_4

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {v4, v7, v2, v9, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v4, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    .line 4
    new-instance v7, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_5

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_6

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-direct {v7, v8, v5, v11, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v7, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    .line 5
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_7

    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_8

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    invoke-direct {v8, v10, v9, v13, v12}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    .line 6
    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_9

    invoke-direct {v12, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_a

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    invoke-direct {v10, v12, v11, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    .line 7
    new-instance v12, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_b

    invoke-direct {v14, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v5, [J

    fill-array-data v6, :array_c

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x8

    invoke-direct {v12, v11, v13, v14, v6}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    new-instance v6, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_d

    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_e

    invoke-direct {v13, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v13, 0x9

    invoke-direct {v6, v11, v15, v13, v3}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    .line 9
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_f

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v5, [J

    fill-array-data v9, :array_10

    invoke-direct {v15, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0xa

    invoke-direct {v3, v11, v14, v15, v9}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    .line 10
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_11

    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_12

    invoke-direct {v14, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xb

    invoke-direct {v9, v11, v13, v14, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    .line 11
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_13

    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_14

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc

    invoke-direct {v2, v11, v15, v14, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    .line 12
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_15

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_16

    invoke-direct {v15, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xd

    const/16 v5, 0xb

    invoke-direct {v11, v13, v5, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    .line 13
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x3

    new-array v15, v14, [J

    fill-array-data v15, :array_17

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v16, v11

    new-array v11, v14, [J

    fill-array-data v11, :array_18

    invoke-direct {v15, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0xf

    const/16 v14, 0xc

    invoke-direct {v5, v13, v14, v15, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    .line 14
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x3

    new-array v15, v14, [J

    fill-array-data v15, :array_19

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v17, v5

    new-array v5, v14, [J

    fill-array-data v5, :array_1a

    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x10

    const/16 v14, 0xd

    invoke-direct {v11, v13, v14, v15, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    .line 15
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x3

    new-array v15, v14, [J

    fill-array-data v15, :array_1b

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v18, v11

    new-array v11, v14, [J

    fill-array-data v11, :array_1c

    invoke-direct {v15, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0xe

    const/16 v14, 0x11

    invoke-direct {v5, v13, v15, v14, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    .line 16
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x3

    new-array v14, v15, [J

    fill-array-data v14, :array_1d

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v19, v5

    new-array v5, v15, [J

    fill-array-data v5, :array_1e

    invoke-direct {v14, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x12

    const/16 v15, 0xf

    invoke-direct {v11, v13, v15, v14, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    .line 17
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x2

    new-array v14, v15, [J

    fill-array-data v14, :array_1f

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v20, v11

    const/4 v15, 0x3

    new-array v11, v15, [J

    fill-array-data v11, :array_20

    invoke-direct {v14, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x14

    const/16 v15, 0x10

    invoke-direct {v5, v13, v15, v14, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    .line 18
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x2

    new-array v14, v15, [J

    fill-array-data v14, :array_21

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v21, v5

    const/4 v15, 0x3

    new-array v5, v15, [J

    fill-array-data v5, :array_22

    invoke-direct {v14, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x15

    const/16 v15, 0x11

    invoke-direct {v11, v13, v15, v14, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    .line 19
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x2

    new-array v14, v15, [J

    fill-array-data v14, :array_23

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v22, v11

    const/4 v15, 0x3

    new-array v11, v15, [J

    fill-array-data v11, :array_24

    invoke-direct {v14, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x16

    const/16 v15, 0x12

    invoke-direct {v5, v13, v15, v14, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    .line 20
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x2

    new-array v14, v15, [J

    fill-array-data v14, :array_25

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v23, v5

    const/4 v15, 0x3

    new-array v5, v15, [J

    fill-array-data v5, :array_26

    invoke-direct {v14, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x13

    const/16 v15, 0x17

    invoke-direct {v11, v13, v14, v15, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    .line 21
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x2

    new-array v15, v14, [J

    fill-array-data v15, :array_27

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v25, v11

    const/4 v15, 0x3

    new-array v11, v15, [J

    fill-array-data v11, :array_28

    invoke-direct {v14, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x18

    const/16 v15, 0x14

    invoke-direct {v5, v13, v15, v14, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    .line 22
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x4

    new-array v14, v15, [J

    fill-array-data v14, :array_29

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v26, v5

    const/4 v15, 0x2

    new-array v5, v15, [J

    fill-array-data v5, :array_2a

    invoke-direct {v14, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v27, v2

    const/4 v15, 0x3

    new-array v2, v15, [J

    fill-array-data v2, :array_2b

    invoke-direct {v14, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x19

    const/16 v14, 0x15

    invoke-direct {v11, v13, v14, v5, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    .line 23
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x2

    new-array v15, v14, [J

    fill-array-data v15, :array_2c

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v14, [J

    fill-array-data v5, :array_2d

    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x1a

    const/16 v14, 0x16

    invoke-direct {v2, v13, v14, v15, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    .line 24
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x2

    new-array v15, v14, [J

    fill-array-data v15, :array_2e

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x1b

    const/16 v14, 0xaa

    filled-new-array {v15, v14}, [I

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v28, v2

    move-object/from16 v29, v11

    const/4 v2, 0x2

    new-array v11, v2, [J

    fill-array-data v11, :array_2f

    invoke-direct {v15, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0x17

    invoke-direct {v5, v13, v15, v14, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    .line 25
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v2, [J

    fill-array-data v14, :array_30

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1c

    const/16 v15, 0x18

    invoke-direct {v11, v13, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    .line 26
    new-instance v13, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v2, [J

    fill-array-data v15, :array_31

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v24, v11

    new-array v11, v2, [J

    fill-array-data v11, :array_32

    invoke-direct {v15, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v30, v5

    new-array v5, v2, [J

    fill-array-data v5, :array_33

    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v31, v9

    new-array v9, v2, [J

    fill-array-data v9, :array_34

    invoke-direct {v15, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v11, v5, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x1d

    const/16 v11, 0x19

    invoke-direct {v13, v14, v11, v9, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v13, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    .line 27
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v2, [J

    fill-array-data v11, :array_35

    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v2, [J

    fill-array-data v14, :array_36

    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x1e

    const/16 v14, 0x1a

    invoke-direct {v5, v9, v14, v11, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x1b

    .line 28
    new-array v2, v2, [Lcom/google/zxing/common/CharacterSetECI;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v7, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v6, v2, v0

    const/16 v0, 0x8

    aput-object v3, v2, v0

    const/16 v0, 0x9

    aput-object v31, v2, v0

    const/16 v0, 0xa

    aput-object v27, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    const/16 v0, 0x11

    aput-object v22, v2, v0

    const/16 v0, 0x12

    aput-object v23, v2, v0

    const/16 v0, 0x13

    aput-object v25, v2, v0

    const/16 v0, 0x14

    aput-object v26, v2, v0

    const/16 v0, 0x15

    aput-object v29, v2, v0

    const/16 v0, 0x16

    aput-object v28, v2, v0

    const/16 v0, 0x17

    aput-object v30, v2, v0

    const/16 v0, 0x18

    aput-object v24, v2, v0

    const/16 v0, 0x19

    aput-object v13, v2, v0

    const/16 v0, 0x1a

    aput-object v5, v2, v0

    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 32
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    iget-object v4, v3, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 34
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_1

    .line 35
    :cond_0
    sget-object v4, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v4, v3, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 37
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x1

    add-int/2addr v2, v7

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 8
        -0x651a06bec75efbaL
        0x22da2f924c121565L    # 8.589508559319781E-141
    .end array-data

    :array_1
    .array-data 8
        0x3455d63333f5d42fL    # 1.3915160031396482E-56
        -0x5647ed7ee6a4bc8dL
        -0x16b40dd2b9de22a2L    # -1.6711939610831663E199
    .end array-data

    :array_2
    .array-data 8
        -0x34a4083495eefa78L    # -1.0715188748431558E55
        -0x740c10330c9d99a2L    # -4.350882523856551E-251
        -0x67c59c29b19805dL    # -2.176981555335373E277
    .end array-data

    :array_3
    .array-data 8
        -0x7a60cebf1e8b95b4L
        -0x78af2483634ff32fL
        -0x77af1343eeee4a60L
    .end array-data

    :array_4
    .array-data 8
        -0x4817ec00b4c4c8eeL    # -2.211225566433472E-39
        0x3f58ce17cdb100c8L    # 0.0015139801460151581
        -0x3af18bc05079457aL    # -4.602092986666261E24
    .end array-data

    :array_5
    .array-data 8
        0x419e1a6ac0e0b38eL    # 1.2626193621943495E8
        0x76aed295952b60feL    # 4.852833851545304E263
        0x10e5f6a63e2c4e4aL
    .end array-data

    :array_6
    .array-data 8
        0x49e73f51513fa41aL    # 1.0617505473526509E48
        0x3fc5ba65d02d3845L    # 0.16975090660929673
        0x288a3734f0a710c7L
    .end array-data

    :array_7
    .array-data 8
        0x62e48c646189fcdL
        0x469591e4e9eaaa7dL    # 1.0937238265284684E32
        0x6c6686866c669c97L    # 1.5166352830661213E214
    .end array-data

    :array_8
    .array-data 8
        0x3f8c095661c40699L    # 0.013689684732983752
        0x7edb2f49cc5ed372L    # 1.1651464509728437E303
        0x7c6b5f7e34c52cbL
    .end array-data

    :array_9
    .array-data 8
        0x227668d3aefa437dL    # 1.148560413385047E-142
        0x226f29979f6dc6a3L    # 7.985901318462514E-143
        -0x4da9d2aed8a2e48dL    # -3.290365493963684E-66
    .end array-data

    :array_a
    .array-data 8
        0x4d0c164cc99d2eb2L    # 1.4442958176893465E63
        0x6495fd45e6a2901bL    # 3.4807259089306106E176
        -0x61907ebe5996a1e4L
    .end array-data

    :array_b
    .array-data 8
        -0x3bc0deafa8a6c84eL    # -5.742495809270827E20
        -0x64da124c67e60526L    # -6.764285428561865E-178
        -0xfa43c0787b32c5L
    .end array-data

    :array_c
    .array-data 8
        0xfe5e3332a17c3f7L    # 4.405645006191011E-232
        0x45911096d0741321L    # 1.3203250450839908E27
        -0x63ea0352e5353e0dL
    .end array-data

    :array_d
    .array-data 8
        -0x7bd1c23e8eca224dL
        -0xcf975289da91769L
        -0xf25c8993681c55aL    # -4.167828908854848E235
    .end array-data

    :array_e
    .array-data 8
        -0xe2a7b248b3b628L
        -0xa0f8fe51d31f966L
        -0x1fce787c9853a613L    # -2.350301422599851E155
    .end array-data

    :array_f
    .array-data 8
        -0x454d955800323a92L    # -5.950732791710647E-26
        0x59faf46c6439e00aL    # 2.8509787991320653E125
        -0x676c4b57c0fea3beL    # -2.764231709613964E-190
    .end array-data

    :array_10
    .array-data 8
        -0x3d7bdd139bdd90e0L    # -2.7675284286218906E12
        -0x1d98b580f0b74998L    # -1.0729902790119903E166
        -0x41e9408993ee237aL    # -1.324102092101803E-9
    .end array-data

    :array_11
    .array-data 8
        0x4b90e675dfa9e36eL    # 1.0359814591085311E56
        -0x7d1a0f6170b5647aL
        0x2fff7b0e88136783L    # 1.699203432805151E-77
    .end array-data

    :array_12
    .array-data 8
        0xe42694af3b7355dL    # 5.522273568032508E-240
        -0x4dfbe7d180dc1ba2L    # -9.316811588377341E-68
        -0x2ca19c34baace0afL    # -3.9619300801441828E93
    .end array-data

    :array_13
    .array-data 8
        -0x2073a6fedb8b2689L    # -1.8558601757117145E152
        -0x61ef9bc5c7bec61L
        -0x4fd44ba38164a0eL
    .end array-data

    :array_14
    .array-data 8
        -0x5aa959385279c25eL
        0x299d72f7354b4271L    # 3.134825488525463E-108
        0x27de283c20b6f72eL    # 1.195892766180549E-116
    .end array-data

    :array_15
    .array-data 8
        0x599feca2093ce7d5L    # 5.2759451119298696E123
        -0x4df4207baa0c913aL    # -1.2923390287707643E-67
        0x433414e079e8fde9L    # 5.652453884755433E15
    .end array-data

    :array_16
    .array-data 8
        -0x5525afc58846d2ecL
        -0x1eef6825dee76f08L    # -3.6450806166980646E159
        0x7dbb05788781f1e8L    # 4.4179734713470485E297
    .end array-data

    :array_17
    .array-data 8
        -0x38d1c2808de42806L    # -7.8508115016729465E34
        0x724e5039158ca168L    # 4.0425999114680792E242
        0x2dbe4bf26eb451bbL    # 2.379666796457059E-88
    .end array-data

    :array_18
    .array-data 8
        0x432cb577162f65a2L    # 4.040411212919505E15
        -0x531fefb88bbb2594L    # -1.5401887928034294E-92
        0x1560f08aa30e0613L    # 1.055252808778144E-205
    .end array-data

    :array_19
    .array-data 8
        0x7edefadbc126127L
        -0x54cd72e429b14f2bL
        -0x33bbe344724bea57L    # -2.524931135384649E59
    .end array-data

    :array_1a
    .array-data 8
        -0x3c3e1f11479504c8L    # -2.5765839385284076E18
        -0x60d8220821e90e84L    # -1.358098534801795E-158
        0x1ef365e7f5a8a406L
    .end array-data

    :array_1b
    .array-data 8
        0x79314f6d5af5e06dL    # 5.993212770847908E275
        0x114d7732b0aeafe4L
        0x67191e971445bf99L    # 4.3718793555658636E188
    .end array-data

    :array_1c
    .array-data 8
        0x692ca6a60ade528L
        0x52957c026e9eb791L    # 6.838206312592411E89
        0x3c3fb0787c73e805L    # 1.7178824808337802E-18
    .end array-data

    :array_1d
    .array-data 8
        -0x76ce3966f5fbfdf9L    # -2.205120383546991E-264
        0x75d15720125a6316L    # 3.3326807745115406E259
        0x333859fccc27ba06L    # 5.919525053904156E-62
    .end array-data

    :array_1e
    .array-data 8
        -0x22095f3d7b4c98ffL    # -4.4149266661588345E144
        0x4378b8fa938ba1L
        -0x54cbdcdd577f9962L
    .end array-data

    :array_1f
    .array-data 8
        0x7e67d2a4ee581404L    # 7.976989524817486E300
        0xd77d5a17df8116eL
    .end array-data

    :array_20
    .array-data 8
        0x53b4c1e796c699d0L    # 1.7319383896745144E95
        -0xc663193ccd436d6L    # -7.217434069996786E248
        -0x12ea9576a4cb2cd7L    # -2.953102062327247E217
    .end array-data

    :array_21
    .array-data 8
        0x5851b73132b07ee7L    # 2.7921198494804726E117
        -0x45c5d0651ea5d062L    # -3.3051324433839056E-28
    .end array-data

    :array_22
    .array-data 8
        -0x3bafae7dfc838f69L    # -1.2040846635055886E21
        0x72704fc4992ce956L    # 1.740255065049045E243
        -0x3718d91c77363694L    # -1.613452601098896E43
    .end array-data

    :array_23
    .array-data 8
        0x23048753e1757725L    # 5.387060564833322E-140
        -0x3f2ca583b8174b6cL    # -19817.94188897738
    .end array-data

    :array_24
    .array-data 8
        0x274b28d4a68679bcL
        0x624d4c9d6346df0L
        -0x54cc5ac8a6836edeL    # -1.403401053504891E-100
    .end array-data

    :array_25
    .array-data 8
        0x2209f14cf06d70d1L
        -0x5234fa2340e4e205L    # -4.2450540708498314E-88
    .end array-data

    :array_26
    .array-data 8
        -0x3df5de24d03bc745L    # -1.40296453045277E10
        -0x73cef72694e886eL    # -5.156739002845444E273
        -0x32e72cd53858a53cL    # -2.5530899512584883E63
    .end array-data

    :array_27
    .array-data 8
        -0x5ac89bb44a2ad3d6L    # -2.10913873881674E-129
        0x13cca8ff0051e72bL
    .end array-data

    :array_28
    .array-data 8
        -0xb6e738f6286f6b6L    # -3.216463868426956E253
        0x576b2c833502bd3L
        -0x3e1cf50fb2191de4L    # -2.5558718552151012E9
    .end array-data

    :array_29
    .array-data 8
        -0x59b38e06c599e1aeL
        -0x773a3dd885e7b32bL
        0x32fee778c6a5419bL    # 4.695244766625603E-63
        0x5b8abb406e51d31eL    # 9.48703827582448E132
    .end array-data

    :array_2a
    .array-data 8
        0x3fdf2583663cd5eL
        -0x4ee07b0649f3361dL    # -4.459842042618015E-72
    .end array-data

    :array_2b
    .array-data 8
        0x76635fe8f4c1a1e6L    # 1.9065143131845646E262
        0x353a45dedebc5bfeL    # 2.743022086698055E-52
        0x1bc03b85ad41905eL    # 5.127411424888601E-175
    .end array-data

    :array_2c
    .array-data 8
        0x1ccb7ef697ff86b7L    # 5.691951506877845E-170
        -0x4ea624c434384304L    # -5.853677249206834E-71
    .end array-data

    :array_2d
    .array-data 8
        0xf695bbbcb773a1bL
        0x3a84cc0dad037fa2L    # 8.399875202631528E-27
    .end array-data

    :array_2e
    .array-data 8
        0x3fe1bade48275cfaL    # 0.5540610703709767
        0x2d8c33dceaeed4e6L
    .end array-data

    :array_2f
    .array-data 8
        0x7943e920dfa147e0L    # 1.3787059531399578E276
        0x781ec27d14e38d61L    # 4.062548108265923E270
    .end array-data

    :array_30
    .array-data 8
        -0x457314e2bcf9443dL    # -1.1680054902600678E-26
        -0x22f2f2a3ff9d6c8bL    # -1.7298434574475446E140
    .end array-data

    :array_31
    .array-data 8
        0x447d5e68f5fb9f7dL    # 8.668136573372504E21
        -0x44ee264dbd6c6c32L    # -3.6913712969606356E-24
    .end array-data

    :array_32
    .array-data 8
        0x31e934987ca160beL    # 2.921631772365342E-68
        -0x7c8dcb69d4b3a5e7L    # -4.56083994099215E-292
    .end array-data

    :array_33
    .array-data 8
        -0x26308438d7095b00L    # -4.162472135469676E124
        -0x2d11a1828e0ad2d0L    # -3.09314763058809E91
    .end array-data

    :array_34
    .array-data 8
        -0x47936ba7970d5b60L    # -6.719002054068933E-37
        -0x32a5ea1dd10a1bacL    # -4.2923780391911837E64
    .end array-data

    :array_35
    .array-data 8
        0x18874a9dde00fbacL
        -0x7c35fe9b3985a036L
    .end array-data

    :array_36
    .array-data 8
        0x458af882bd6f1f58L    # 1.0433801575880023E27
        -0x7d230e46e6beee52L    # -7.081190336418367E-295
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    filled-new-array {p3}, [I

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 4
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 7
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 12
    .line 13
    return-object p0
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x384

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getValue()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method
