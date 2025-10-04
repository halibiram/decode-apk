.class public Lcom/trilead/ssh2/sftp/ErrorCodes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SSH_FX_BAD_MESSAGE:I = 0x5

.field public static final SSH_FX_BYTE_RANGE_LOCK_CONFLICT:I = 0x19

.field public static final SSH_FX_BYTE_RANGE_LOCK_REFUSED:I = 0x1a

.field public static final SSH_FX_CANNOT_DELETE:I = 0x16

.field public static final SSH_FX_CONNECTION_LOST:I = 0x7

.field public static final SSH_FX_DELETE_PENDING:I = 0x1b

.field public static final SSH_FX_DIR_NOT_EMPTY:I = 0x12

.field public static final SSH_FX_EOF:I = 0x1

.field public static final SSH_FX_FAILURE:I = 0x4

.field public static final SSH_FX_FILE_ALREADY_EXISTS:I = 0xb

.field public static final SSH_FX_FILE_CORRUPT:I = 0x1c

.field public static final SSH_FX_FILE_IS_A_DIRECTORY:I = 0x18

.field public static final SSH_FX_GROUP_INVALID:I = 0x1e

.field public static final SSH_FX_INVALID_FILENAME:I = 0x14

.field public static final SSH_FX_INVALID_HANDLE:I = 0x9

.field public static final SSH_FX_INVALID_PARAMETER:I = 0x17

.field public static final SSH_FX_LINK_LOOP:I = 0x15

.field public static final SSH_FX_LOCK_CONFLICT:I = 0x11

.field public static final SSH_FX_NOT_A_DIRECTORY:I = 0x13

.field public static final SSH_FX_NO_CONNECTION:I = 0x6

.field public static final SSH_FX_NO_MATCHING_BYTE_RANGE_LOCK:I = 0x1f

.field public static final SSH_FX_NO_MEDIA:I = 0xd

.field public static final SSH_FX_NO_SPACE_ON_FILESYSTEM:I = 0xe

.field public static final SSH_FX_NO_SUCH_FILE:I = 0x2

.field public static final SSH_FX_NO_SUCH_PATH:I = 0xa

.field public static final SSH_FX_OK:I = 0x0

.field public static final SSH_FX_OP_UNSUPPORTED:I = 0x8

.field public static final SSH_FX_OWNER_INVALID:I = 0x1d

.field public static final SSH_FX_PERMISSION_DENIED:I = 0x3

.field public static final SSH_FX_QUOTA_EXCEEDED:I = 0xf

.field public static final SSH_FX_UNKNOWN_PRINCIPAL:I = 0x10

.field public static final SSH_FX_WRITE_PROTECT:I = 0xc

.field private static final messages:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x8

    new-array v4, v3, [J

    fill-array-data v4, :array_1

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v5, 0xe

    new-array v6, v5, [J

    fill-array-data v6, :array_3

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x4

    new-array v7, v6, [J

    fill-array-data v7, :array_4

    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_5

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v6, [J

    fill-array-data v8, :array_6

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v9, 0xa

    new-array v10, v9, [J

    fill-array-data v10, :array_7

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v1, [J

    fill-array-data v10, :array_8

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v11, 0xb

    new-array v12, v11, [J

    fill-array-data v12, :array_9

    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v6, [J

    fill-array-data v12, :array_a

    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v11, [J

    fill-array-data v13, :array_b

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_c

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x6

    new-array v15, v14, [J

    fill-array-data v15, :array_d

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_e

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v14, [J

    fill-array-data v3, :array_f

    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v13, v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_10

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v11, 0xf

    new-array v14, v11, [J

    fill-array-data v14, :array_11

    invoke-direct {v15, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_12

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v11, 0x5

    new-array v9, v11, [J

    fill-array-data v9, :array_13

    invoke-direct {v15, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v14, v9}, [Ljava/lang/String;

    move-result-object v9

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_14

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x7

    new-array v1, v5, [J

    fill-array-data v1, :array_15

    invoke-direct {v15, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v11, [J

    fill-array-data v15, :array_16

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v6, [J

    fill-array-data v5, :array_17

    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v14, v5}, [Ljava/lang/String;

    move-result-object v5

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_18

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v6, 0x9

    new-array v11, v6, [J

    fill-array-data v11, :array_19

    invoke-direct {v15, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v14, v11}, [Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x3

    new-array v6, v15, [J

    fill-array-data v6, :array_1a

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v15, 0xd

    move-object/from16 v16, v11

    new-array v11, v15, [J

    fill-array-data v11, :array_1b

    invoke-direct {v14, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x5

    new-array v15, v14, [J

    fill-array-data v15, :array_1c

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v17, v6

    const/16 v15, 0xe

    new-array v6, v15, [J

    fill-array-data v6, :array_1d

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_1e

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v15, 0xc

    move-object/from16 v18, v6

    new-array v6, v15, [J

    fill-array-data v6, :array_1f

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_20

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v15, 0x16

    move-object/from16 v19, v6

    new-array v6, v15, [J

    fill-array-data v6, :array_21

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_22

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v20, v6

    const/16 v14, 0xa

    new-array v6, v14, [J

    fill-array-data v6, :array_23

    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_24

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v21, v6

    const/4 v14, 0x5

    new-array v6, v14, [J

    fill-array-data v6, :array_25

    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_26

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v22, v6

    const/4 v14, 0x6

    new-array v6, v14, [J

    fill-array-data v6, :array_27

    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_28

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v23, v6

    const/4 v15, 0x5

    new-array v6, v15, [J

    fill-array-data v6, :array_29

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x3

    new-array v15, v14, [J

    fill-array-data v15, :array_2a

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v15, 0x10

    move-object/from16 v24, v6

    new-array v6, v15, [J

    fill-array-data v6, :array_2b

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_2c

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v25, v6

    const/16 v14, 0xe

    new-array v6, v14, [J

    fill-array-data v6, :array_2d

    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_2e

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v26, v6

    const/16 v15, 0xd

    new-array v6, v15, [J

    fill-array-data v6, :array_2f

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x5

    new-array v15, v14, [J

    fill-array-data v15, :array_30

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v27, v6

    const/16 v14, 0xc

    new-array v6, v14, [J

    fill-array-data v6, :array_31

    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x5

    new-array v15, v14, [J

    fill-array-data v15, :array_32

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v28, v6

    const/16 v14, 0xf

    new-array v6, v14, [J

    fill-array-data v6, :array_33

    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x5

    new-array v15, v14, [J

    fill-array-data v15, :array_34

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v29, v6

    const/4 v15, 0x7

    new-array v6, v15, [J

    fill-array-data v6, :array_35

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_36

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v30, v6

    const/16 v14, 0xb

    new-array v6, v14, [J

    fill-array-data v6, :array_37

    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_38

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v31, v6

    const/16 v14, 0xa

    new-array v6, v14, [J

    fill-array-data v6, :array_39

    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x4

    new-array v14, v15, [J

    fill-array-data v14, :array_3a

    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v32, v6

    const/16 v15, 0xa

    new-array v6, v15, [J

    fill-array-data v6, :array_3b

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x4

    new-array v15, v14, [J

    fill-array-data v15, :array_3c

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v33, v6

    const/16 v15, 0xb

    new-array v6, v15, [J

    fill-array-data v6, :array_3d

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x6

    new-array v15, v14, [J

    fill-array-data v15, :array_3e

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v34, v6

    const/16 v15, 0xf

    new-array v6, v15, [J

    fill-array-data v6, :array_3f

    invoke-direct {v14, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v11, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x20

    new-array v11, v11, [[Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v0, v11, v14

    const/4 v0, 0x1

    aput-object v2, v11, v0

    const/4 v0, 0x2

    aput-object v4, v11, v0

    const/4 v0, 0x3

    aput-object v7, v11, v0

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    const/4 v0, 0x7

    aput-object v3, v11, v0

    const/16 v0, 0x8

    aput-object v13, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v1, v11, v0

    const/16 v0, 0xb

    aput-object v5, v11, v0

    const/16 v0, 0xc

    aput-object v16, v11, v0

    const/16 v0, 0xd

    aput-object v17, v11, v0

    const/16 v0, 0xe

    aput-object v18, v11, v0

    const/16 v0, 0xf

    aput-object v19, v11, v0

    const/16 v0, 0x10

    aput-object v20, v11, v0

    const/16 v0, 0x11

    aput-object v21, v11, v0

    const/16 v0, 0x12

    aput-object v22, v11, v0

    const/16 v0, 0x13

    aput-object v23, v11, v0

    const/16 v0, 0x14

    aput-object v24, v11, v0

    const/16 v0, 0x15

    aput-object v25, v11, v0

    const/16 v0, 0x16

    aput-object v26, v11, v0

    const/16 v0, 0x17

    aput-object v27, v11, v0

    const/16 v0, 0x18

    aput-object v28, v11, v0

    const/16 v0, 0x19

    aput-object v29, v11, v0

    const/16 v0, 0x1a

    aput-object v30, v11, v0

    const/16 v0, 0x1b

    aput-object v31, v11, v0

    const/16 v0, 0x1c

    aput-object v32, v11, v0

    const/16 v0, 0x1d

    aput-object v33, v11, v0

    const/16 v0, 0x1e

    aput-object v34, v11, v0

    const/16 v0, 0x1f

    aput-object v6, v11, v0

    sput-object v11, Lcom/trilead/ssh2/sftp/ErrorCodes;->messages:[[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0xcf7a030314d3899L    # -1.331428953351282E246
        -0xfc0d43503bcf80L
        -0x7ef05b74a092344cL
    .end array-data

    :array_1
    .array-data 8
        -0x2c94aa188820950dL    # -7.127491279531206E93
        -0x3e989e73525c40a7L    # -1.2258405426238703E7
        0x3d7cf2f78f204ef4L    # 1.6455652457742092E-12
        0x65a1b83912a6d627L    # 3.676392132223106E181
        0x43fa71fee527e11cL    # 3.048935004039137E19
        -0xa474a0e12295cf2L
        -0x3c59d3ea4870bb1fL    # -7.9883792296826893E17
        0x3e7a55653d5bcf5bL    # 9.810021536407926E-8
    .end array-data

    :array_2
    .array-data 8
        -0x7a25e7122dfbeabeL
        -0x5541d4705909a76L
        0x1d270207dca520c0L
    .end array-data

    :array_3
    .array-data 8
        -0x4dc8df51e52ee37eL    # -8.578524621447073E-67
        -0x58415fa1a43332baL
        -0x6662170423fb3d9bL    # -2.749669168736043E-185
        -0x5134a485d4193c15L    # -2.8164689359545054E-83
        0x437707ce2badac89L    # 1.03720104668874896E17
        0x4e187f02da301bd3L    # 1.651036386050694E68
        -0x36642cf1bdb53f63L    # -3.9712362544783967E46
        -0x61896e43c4376e53L    # -6.270757647404537E-162
        0x6ef99498e610879aL    # 3.7874339990793014E226
        -0x4b155adbe8f80c0aL    # -8.693363611390935E-54
        -0x3e460f7bc3df7c18L    # -4.351928921270127E8
        0x3fe25fe85f7690a0L    # 0.5742074837221658
        -0x1fbdbfbbad7a63bcL    # -4.894129451607593E155
        -0x1a3d692a769e6cd6L    # -1.5427231485833207E182
    .end array-data

    :array_4
    .array-data 8
        -0x7aae5580f58335eeL    # -4.752064590683464E-283
        -0x7ae097c8839ecc02L
        -0x4d8237f9e2e1601fL    # -1.7674422672170339E-65
        0x5a0fa5ed399c7ba8L    # 6.694783721888413E125
    .end array-data

    :array_5
    .array-data 8
        -0x34c6018f469b47f6L    # -2.4897217116615362E54
        0x3bea97b5d6a5112dL    # 4.504964785111283E-20
        -0x3690358c45d5951fL    # -5.671673302732098E45
        0x1fe8cf076ead466dL    # 5.782243471492176E-155
        -0x171ffde8e8e0322bL    # -1.4957834534109764E197
        -0x47f62f27b2c00b99L    # -9.483227391592932E-39
        -0x310de6cf6d3789b5L    # -1.998568772511288E72
        -0x2cd1b86b543558a7L    # -4.934452766793773E92
    .end array-data

    :array_6
    .array-data 8
        -0x6e2f0190a53ea0d8L
        0x751ba5c0956cc158L    # 1.297274032044075E256
        -0x39055481a818b0d1L    # -8.6548762698399E33
        0x5cf635effa442224L    # 6.61241519253155E139
    .end array-data

    :array_7
    .array-data 8
        -0x3aaeaa71890eb174L    # -8.382307237147605E25
        -0x682b8b4c378daefcL    # -7.005525518436944E-194
        -0x131a43d1cc96a6ccL    # -3.746348219307932E216
        -0x6e1505b6ae00111fL
        -0x4153a038db031a5dL    # -8.456150428555258E-7
        0x19166261c87a16d2L    # 8.038339049536367E-188
        0x5773e053bcc3908dL    # 1.912024458755502E113
        0x544661c8590fa3cL
        -0x38597dfd6b87a912L    # -1.4959033413354114E37
        0x623771e81845c7a7L    # 1.3501030243971686E165
    .end array-data

    :array_8
    .array-data 8
        0x6e371e46bc5aa2f8L    # 8.356647457661336E222
        -0x6a6a9f2d014607d2L
        -0x6fe6e0d25bfc0751L
    .end array-data

    :array_9
    .array-data 8
        -0x611a3ceca56579d3L    # -7.739473147952702E-160
        -0x7ce076520f6531c4L
        -0x74202dbbbe29e888L    # -1.736130188522885E-251
        -0xb3002da4f3f600fL
        0x157a47eaebb9a68aL    # 3.274339205370269E-205
        -0x1d480279066c7125L    # -3.536665810610415E167
        -0x6614d32ba622bc61L    # -7.994366455591062E-184
        -0x5f4d0fb0cb8de3e4L    # -3.616034343079423E-151
        0x7dfb70863f8c18b4L    # 7.178152431159633E298
        -0x7ceb9d2cf91534dfL    # -7.979890889894324E-294
        0x2e4b1d291241025L
    .end array-data

    :array_a
    .array-data 8
        -0x7d3c92f852289940L    # -2.376267760295655E-295
        -0x48c48cd4f09ba3d1L    # -1.2308950015345188E-42
        0x57fb48e0ffa1fc75L    # 6.719195354597951E115
        0x2ae31ca10ed776c9L    # 4.266520239955429E-102
    .end array-data

    :array_b
    .array-data 8
        0x39199bb021c4cdeL    # 1.76371923998832E-291
        -0x77a17143334da711L
        -0x5ffc14bb25646a46L
        -0x563960baea46a779L    # -1.926483945168949E-107
        -0xdbd31e2cc39825bL
        0x7c4c7082e03fdddcL
        0x620525eba09fb2beL    # 1.5222975786646857E164
        0x4efc5c445738ce7aL    # 3.1317825587256933E72
        0xb1422e8ef80a7e7L
        -0x2f1fe6b91cb0fa77L    # -3.817690106128414E81
        -0x1a589899c6cd1a52L
    .end array-data

    :array_c
    .array-data 8
        -0x2e7d287aef876b4aL    # -4.5754403479733E84
        -0x578c87f138438502L    # -7.905780403653349E-114
        0x7cc1788f4e1c93acL    # 8.71729990916211E292
        0x7b6a6d334a134d7fL    # 3.143739783837038E286
    .end array-data

    :array_d
    .array-data 8
        -0x1159ad877aec0687L    # -1.0328156960685775E225
        0x14e67f99692d96dcL    # 5.47476279029672E-208
        0x23ecc1212339b18eL
        0x4bd1ae56caf8e1e2L    # 1.7341485967467344E57
        -0x25061f840b58a140L    # -1.793701815010609E130
        0x41848ce3fc4df3afL    # 4.3097215538062446E7
    .end array-data

    :array_e
    .array-data 8
        0x6fd6b69ca5cbb2b7L    # 5.509820667708491E230
        -0x4cb8ad48331b16cdL    # -1.1339071395347453E-61
        0x255d92db68216b19L
        0x290edeea27c4b463L    # 6.418284088318689E-111
    .end array-data

    :array_f
    .array-data 8
        0x62ef015ac291ad23L    # 3.6566501164484306E168
        0x202ad8a536a5596L
        -0x4b5b7c0886cb96ebL    # -4.183432828226938E-55
        -0xcd18445506fc135L    # -6.660528539116404E246
        0x504c1d7af2e560bfL    # 6.511025606004607E78
        -0x1bb31f1b6023fad3L    # -1.4285056325246666E175
    .end array-data

    :array_10
    .array-data 8
        0x6c45bb58d88bd3d0L    # 3.657995196592917E213
        -0x7e6c43cc9a72ebd1L    # -4.604526533618431E-301
        -0x34ee2862c457e5a4L    # -4.272368396562594E53
        -0x2f682ddcac15400fL    # -1.7652903484683608E80
    .end array-data

    :array_11
    .array-data 8
        -0x398cf2c6cd95281dL    # -2.415084063615445E31
        -0x537c930456bad3daL    # -2.9102371456249837E-94
        0x3a867d8b8f180f09L    # 9.083804561216241E-27
        0x2ade081886ecccdL
        0x297b863902f4035bL    # 7.324837228012643E-109
        -0x10bed3597207118L
        0x3c2c8780632bdb89L    # 7.732883015038792E-19
        0x4d6085e3ee2f6af9L    # 5.437737385239961E64
        0x62810b42462645b8L
        -0x3f9b390787ea3ecdL    # -166.21783069848024
        -0x76fd145e2a793da5L
        0x4782bdcde17b8a8bL    # 3.1139529736163784E36
        0x138fb9887e018b30L
        0x6604ce3226ba52b9L    # 2.7626416030291546E183
        -0x266ff7bb4042c970L    # -2.6495617411745725E123
    .end array-data

    :array_12
    .array-data 8
        -0x63f8e4465c5d83beL
        -0x6e4b79e93a8045bdL
        0x13f4978b8dd11c06L
        -0x358a627a7dc3186aL    # -5.054531724704264E50
    .end array-data

    :array_13
    .array-data 8
        -0x55e9797314ef83d6L    # -6.138435070429099E-106
        0x99dbf4abd2353bL
        0x53983baa418c2e93L    # 5.054835567120777E94
        0x777bbf80a0bd8cddL    # 3.5788931824421688E267
        -0x7df6689d0ea810a2L    # -7.642713333298766E-299
    .end array-data

    :array_14
    .array-data 8
        -0x4c34eedcfa922cb6L    # -3.3687597014597456E-59
        -0x1619fa0e79c0ae4dL    # -1.3486146043295258E202
        -0x1202e66344559d77L    # -6.574315296445861E221
        0xb38df41a02a90a1L
    .end array-data

    :array_15
    .array-data 8
        -0x736cabffc3d12e50L    # -4.31930018376683E-248
        -0x599a6046bd8154fL
        0xd1e926ed79b9a41L
        -0x1a6aad5d16da975dL    # -2.2119820900673337E181
        0x136ff4a7634c1f3fL
        -0x35c05cc69d5ba265L    # -4.6238395988313345E49
        -0x67ab5784975fd55eL
    .end array-data

    :array_16
    .array-data 8
        0x37f61cca2e8ebaf8L    # 4.061417480011151E-39
        -0x75c1efd3083e2cb0L
        -0x46cf8433c14ea4f3L    # -3.1746230481132256E-33
        -0x7b4dffc3fb236f49L    # -4.728666971419487E-286
        0x2ec4770e52751606L    # 2.1069017339791754E-83
    .end array-data

    :array_17
    .array-data 8
        -0x647add83555287b4L    # -4.172428816440611E-176
        -0x6cff4ef4a21cc40fL    # -3.78277556683555E-217
        -0x1debd097121294a6L    # -2.9059664491712053E164
        -0x557f4c8c5a471b15L    # -5.825504588359398E-104
    .end array-data

    :array_18
    .array-data 8
        -0x38a0d34a04a72f0fL    # -6.474721868906602E35
        0x3436cedc883b6ce9L    # 3.633532403192201E-57
        -0x12a1eb00e6d30d7eL    # -6.636877914291081E218
        0x39a1654d8c328699L    # 4.288374723001374E-31
    .end array-data

    :array_19
    .array-data 8
        -0x4d9a8106a275ea0dL    # -6.37864541180296E-66
        0x7eb8623b5aff9a7fL    # 2.6127363918452098E302
        -0x44a2a959e03625f6L    # -9.707286213169933E-23
        0x746dfbf6367db2e0L    # 6.869722861979011E252
        0x3517d93f3ee11325L    # 6.224780605398251E-53
        -0x376af13113109c96L    # -4.585992522271052E41
        0xd76eb3d15695572L
        -0x31271b0a6ff9d56L    # -5.898885311033796E293
        0x34f7b7e02e8054cbL    # 1.5476889725265911E-53
    .end array-data

    :array_1a
    .array-data 8
        -0x2e0fba4fc79f924bL    # -5.057845745090388E86
        0xffcf2dd63ada11aL
        0x4582966996010350L    # 7.190709581614635E26
    .end array-data

    :array_1b
    .array-data 8
        -0x50bb521283275657L    # -5.450159527894288E-81
        -0x88f0a2df4ae77ecL    # -2.1875000166962714E267
        -0x32313d985a51f81eL    # -6.4786845513887234E66
        -0x1d436a0cdbbfbcadL    # -4.214121622599764E167
        -0x5767a52c73e70acL
        -0x3c0fc4053985035dL    # -1.8716868137705943E19
        -0x4e7b8c7c11eef31fL    # -3.703995846419484E-70
        -0x52abaf980a4a1933L    # -2.4930937078143245E-90
        -0x48863b4f86e85124L    # -1.8487861305190112E-41
        -0x2620a3d399cc52e6L    # -8.292299948975129E124
        0x459ab9e92f8f16a9L    # 2.067840680170443E27
        -0x7f5557ae3d6bfb66L
        0x157fec12d7986c0aL
    .end array-data

    :array_1c
    .array-data 8
        -0xd3647926ba7f620L    # -8.781012246994774E244
        -0x1a70dd84426cee34L
        -0x65869e9a2d6de55bL    # -3.822804661980792E-181
        -0x4eb96c2162a80c70L    # -2.5556955131723074E-71
        0x47c1e1b7437d2a4eL    # 4.753771949899006E37
    .end array-data

    :array_1d
    .array-data 8
        0x153a6c81f6483f54L    # 2.057591755293528E-206
        -0x11b08d694323ae0dL    # -2.2734975201479583E223
        0x1bb1f800f6c25b7aL
        -0x7cead9d92c623e2fL    # -8.278557942431853E-294
        -0x774c520b67562f9fL    # -9.5362627427311E-267
        0x48c8ee483cc7b5edL    # 4.343556171387101E42
        0x133e46c5fe155b12L    # 5.489189162365715E-216
        -0xcfef812c3b5bb9L    # -4.40657423828535E304
        -0x52362c4d4daa64f9L    # -4.057180451449527E-88
        -0x4c70f86573bdddb0L    # -2.413728867334202E-60
        0x52f75012e3145deaL    # 4.748898825821326E91
        0x51969564ab746892L    # 1.096809844080727E85
        -0x41e7afb967d842aeL    # -1.4152364563425631E-9
        -0x757bb741cbc67b7bL    # -5.277042440351618E-258
    .end array-data

    :array_1e
    .array-data 8
        -0x4a2c51fad7146848L
        0x216f4f8de7fe68deL
        -0x5f2714a950e591b8L
        -0x4c9dd44501fd681fL    # -3.53366572101733E-61
    .end array-data

    :array_1f
    .array-data 8
        0x3813608b093f25aaL    # 1.4236060553297914E-38
        -0x6d06bb1205ac21e6L
        0x1dbfbfdfd989f1ceL
        0x449541a63edf79b9L    # 2.5095178440706603E22
        -0x29d4f881edce12dfL    # -1.2398317493858322E107
        -0x121e730957cefd20L    # -1.982529945464709E221
        0x32613895d0846461L    # 5.110109808679806E-66
        0x219edb84bd56f97cL
        0x1643aa5894513c1dL    # 2.007132326570985E-201
        0x5bcd78708537e430L    # 1.6734591081267072E134
        -0x59b2a1e35c2c8b30L
        -0x7965b42c28e55f51L    # -7.417149135776047E-277
    .end array-data

    :array_20
    .array-data 8
        -0x63d8617898fc1017L
        -0x78478cbb274123bcL
        -0x488d11687d25cb6eL    # -1.358304340631958E-41
        0x408f09603eaa0593L    # 993.1719945223762
    .end array-data

    :array_21
    .array-data 8
        -0x2c2347b4cf63f40cL    # -9.58520754995919E95
        -0x536b230178f6a89aL    # -6.251201620344335E-94
        0x5ad6f87b0c2c47ccL    # 3.980622680073593E129
        0x2c93affd801fc2adL    # 5.898900779253943E-94
        0xe7d966ff69fa2a1L    # 7.099599732022272E-239
        0x178a2cc14146dd9dL
        -0x4eb632a14e07eb93L    # -2.9207084980149033E-71
        -0x3198d4373a307070L    # -4.997518359870029E69
        -0x6e37cec1d6fe1405L    # -5.228671575814288E-223
        0x1ac703ad55536e12L
        0x53f51a461d51b899L    # 2.817184321921114E96
        -0x64b31262b9ef26a0L
        -0x1277646a754b4a53L    # -4.343289445131323E219
        0x3362b64bbebbf952L    # 3.638926323396505E-61
        0x6370076b371d0393L    # 9.678842750726194E170
        -0x1e23048d0a98a32fL    # -2.6077704461513033E163
        0x7855630f57669528L    # 4.519444089491226E271
        -0x4f72f491c49a26e6L    # -8.026703986012633E-75
        0x7582578a13a81b82L    # 1.101620024494078E258
        -0x3e15c60c743707ebL    # -3.5200441262802835E9
        0x6b05980509e91334L    # 3.466383790520923E207
        0x1ea029e58e4c532fL    # 3.592791445333052E-161
    .end array-data

    :array_22
    .array-data 8
        -0x5d3e8b8ee27be217L    # -2.862781408949386E-141
        -0x261f7ce2e8ca593dL    # -8.732370935736972E124
        -0x294c95fdea2a4574L    # -4.559482721424891E109
        -0x2f958d4934fea589L    # -2.4499847617323988E79
    .end array-data

    :array_23
    .array-data 8
        0x790ef8ac4da388a8L    # 1.3403758773083284E275
        0x76c3609554be4fa2L    # 1.2203348062407307E264
        -0x6fef8b6b8fb1cfdeL
        -0x641636d05b8fff8bL    # -3.258025886216363E-174
        -0x3fa749e036596488L    # -98.84569016714329
        0x69bc82fa74735ce0L    # 2.1824245099923698E201
        -0x2332d205184315baL    # -1.0858941610673487E139
        -0x1fb3c3a311689c05L    # -7.571601793849346E155
        -0x5bf022515290fec7L
        -0x2778aa2c7018f629L    # -2.9422593175176173E118
    .end array-data

    :array_24
    .array-data 8
        0x71d954614c4dbf6aL    # 2.639034417646475E240
        0x5bfbd165677d0726L    # 1.263697867201161E135
        0x7268799e2b85ccf0L    # 1.3056009457937153E243
        0x5bd901b2b38b6527L    # 2.8399670688093125E134
    .end array-data

    :array_25
    .array-data 8
        -0x2edf10f400b4f954L    # -6.42514090686608E82
        0x1fc2d130761d8564L    # 1.096442846167645E-155
        0x1a16cce7534a201dL    # 5.365932453777448E-183
        -0x57e88d28cec4ae88L
        -0x3a4579085e46bc31L    # -8.209775722980138E27
    .end array-data

    :array_26
    .array-data 8
        -0x5a6b5aa2614b1bcL
        -0x43b3d49b38220af0L    # -3.0541440190582384E-18
        -0x39dcbbb04de3130bL    # -7.632382073467204E29
        0x15a8b02cced94a7bL
    .end array-data

    :array_27
    .array-data 8
        -0x68f2a152cb19d08L    # -9.32620587930089E276
        -0x6827cf273e3a9750L
        -0x65494b1250e82ec9L
        -0x758d894ff81e10e7L    # -2.401710545803691E-258
        -0x70e3341d0a5e74e5L    # -7.075580663827165E-236
        -0x7551bddfcaf4d8beL
    .end array-data

    :array_28
    .array-data 8
        -0xbe1343dacfd8a9L
        0x1f25849d30cec56L
        0x24ec8ddfca4b1354L    # 8.045662880809633E-131
        0x763f7dda9a85b0ffL    # 3.873568254603753E261
    .end array-data

    :array_29
    .array-data 8
        -0x3548cf60fc98fcafL    # -8.67638152460473E51
        -0x467ac94a360b87a9L    # -1.307395903200198E-31
        -0x6a96c2cebbf4c0e2L
        0x7a73313d71651c4eL    # 6.967612240352206E281
        -0x70a409a6423ccd35L
    .end array-data

    :array_2a
    .array-data 8
        0x55b21bc3b5dc3690L    # 6.489330719235115E104
        0x1ea9d681c7fae56eL
        0x3c213ff959be7845L    # 4.675594367415182E-19
    .end array-data

    :array_2b
    .array-data 8
        -0x65fa68a5dad6a390L    # -2.540679111175232E-183
        -0x62de0fb3658650c8L
        -0x7532f72719a38f2eL
        0x48e305fa3fd8be0bL    # 1.325733986438204E43
        -0x772bd197f851e17bL
        -0x1274e07cdec955e0L    # -4.787249865090225E219
        0x76fa43300e421e2bL    # 1.3231572892470378E265
        -0xcac7cd35a6d5feeL
        -0x101f5cde051e4f7fL    # -8.071753695880454E230
        -0x37c0070e2ace1c92L    # -1.087965758515247E40
        0x36ddf1c393c5f3deL    # 2.098051422669808E-44
        -0x2e2101786cbe27bfL    # -2.4084630953640268E86
        0x294d76e980d2241L
        0x69538dacefce819eL    # 2.3386211712702635E199
        0x3be083699f725f32L    # 2.797466988048701E-20
        -0x3e0a8150fe73d85dL    # -5.769981976759677E9
    .end array-data

    :array_2c
    .array-data 8
        0x19dac81c170c1c8dL    # 3.93931270304606E-184
        0x3aefc4e9aa32ec12L    # 8.212143253293375E-25
        -0xecedd98eb7326f1L    # -1.7433521883153182E237
        0x75aced4fc1027f88L    # 6.949437625052738E258
    .end array-data

    :array_2d
    .array-data 8
        -0x5e00afdc1cc03bb1L    # -6.269132326406628E-145
        0x59d69f8e3ba38b88L    # 5.982097494248316E124
        -0x6c21b09afe8f0894L    # -5.627181833162379E-213
        -0x335dc13c4adfc228L    # -1.4659431919381056E61
        0x59f3053de77b0f8aL
        -0x484c52ebe0042bc5L    # -2.258704168040326E-40
        0x56d4f19173dea057L    # 1.9674798699597272E110
        -0x7d096c85db0900c4L
        -0x7160ddd6e4ea75c3L
        0x444bad7b491f9422L    # 1.0211255111616658E21
        -0x72b77b94a998e2cL    # -1.11074478939047E274
        -0xfeaa46c4b0cb4a2L    # -8.289562677967177E231
        -0x6fb79672e4503b36L
        -0x2dd1bb8868f338dfL    # -7.526353045998197E87
    .end array-data

    :array_2e
    .array-data 8
        0x2f3294fb705e29baL    # 2.448683974085167E-81
        0x24f34d570bd20710L
        -0x53022f63112bb09L
        0x61d54f02ae042a79L    # 1.9173142064736093E163
    .end array-data

    :array_2f
    .array-data 8
        -0x66dd8fa9c550d958L
        0x5266fdcab643c910L    # 9.147315776604178E88
        0x54cae21c9db710c1L    # 2.940020309026212E100
        0xb581372c5748159L
        0x7d6fdb981052ddf9L    # 1.6277263251563107E296
        -0xed13fa7445e1663L    # -1.564410949838525E237
        0x7d497248807ef8fdL    # 3.250367254906665E295
        -0x5343454193e767eaL    # -3.4432530316103787E-93
        0x77d5c23177132789L    # 1.7960831403680107E269
        0x5e96a35c043864a3L    # 4.5229137321239905E147
        0x21b5fba3040480b9L
        -0x470bd61a0e2cd7caL    # -2.4271128794180167E-34
        0x65b47826e418d9c3L    # 8.493785924601894E181
    .end array-data

    :array_30
    .array-data 8
        -0x3d3b10647ba944e9L    # -4.603867776139818E13
        0x266f518b0bd3bb56L
        0x1c90b12fe9a42584L    # 4.319310458177164E-171
        0x1632b99c900e652eL    # 9.555772213832178E-202
        0x471c44d4a3cba603L    # 3.6695090738682255E34
    .end array-data

    :array_31
    .array-data 8
        -0x59e29c2d969412e2L
        -0x4bfd4f40496ddf90L    # -3.721945672278422E-58
        -0x272b0a90bf56b457L    # -8.456355463336003E119
        -0x53de61d46aa69f97L    # -4.124054180468283E-96
        -0x748a19b409e87a62L    # -1.866894491099904E-253
        -0x23bfd6f6ef9f031fL    # -2.349185575771474E136
        -0x6f9770d690c69daeL
        0x373caa5fd051ad0aL    # 1.2854065748274841E-42
        0x202c9d5e2a8201aL
        -0x168cd8f6fd4bf49bL    # -9.162672920453532E199
        0x4d13972226f7e9d6L    # 2.014752167230129E63
        -0x238a60ca72a9ff1aL    # -2.514502740510911E137
    .end array-data

    :array_32
    .array-data 8
        0x38a053bdd2845c28L    # 6.141578141861371E-36
        -0x584f4a3521af8ce5L
        -0x176c3e05f0439113L    # -5.769179701808481E195
        0x6be66732e71e9a30L    # 5.892172913299052E211
        0x7c03b66c1622fe8bL    # 2.4013168504705643E289
    .end array-data

    :array_33
    .array-data 8
        0x18c1f1213aae4bbfL    # 2.013452968092507E-189
        0x5773134086e5e431L    # 1.8349640642438677E113
        0x6f6bf1c9d848aaa4L    # 5.29593754156909E228
        0xb3ca35cd194cba9L
        0x4700fe53a6c9c6edL    # 1.1029388666477321E34
        0x50a82b9c203968cL
        -0x56edd5e57977824bL    # -7.553083208419977E-111
        -0x5b6d0e3031677298L
        -0x698395cefc3f9800L
        -0x3fe557b560d98e7aL    # -6.664347159119989
        -0xd38ad292cc57d2bL    # -7.962728339846369E244
        0x7348beb8a4ed6fe0L    # 2.1626886570966072E247
        0x62b81cba2ad74b16L
        0x23062c94783baed5L    # 5.818872205104379E-140
        -0x46c6a3629d63920dL    # -4.8845004818765725E-33
    .end array-data

    :array_34
    .array-data 8
        -0x4b98a5610fed54fdL    # -2.976403911566612E-56
        0x1f591978f0037992L
        -0x2875c303011ec9eeL    # -5.048042549236029E113
        -0x881a3e99a316119L    # -3.915740315416828E267
        -0x2a02bb24fa1971dbL    # -1.6782083841688921E106
    .end array-data

    :array_35
    .array-data 8
        -0x626efab7ca40c9a2L
        -0x78f3224e3714916fL
        0x7f4e8a8681df8c28L    # 1.6755234564372534E305
        0xebf4545ae512f2bL
        0x6d7bfc6813930870L    # 2.4697734496258857E219
        -0xe896178293c7583L    # -3.682264495223413E238
        0x76233474ff86044cL
    .end array-data

    :array_36
    .array-data 8
        -0x39570ef180ee090cL    # -2.5293815203106505E32
        0x767508f28843e7acL    # 4.139784516171446E262
        0x52b368af4c815442L    # 2.4710423861034613E90
        -0xfea46846e210ab4L    # -8.431936038405793E231
    .end array-data

    :array_37
    .array-data 8
        0x6fa0fec4121263bcL    # 5.153383465794414E229
        -0x78f915cbdab72d93L    # -8.273154621823556E-275
        -0x71eb213fa6673dccL    # -7.824714065168368E-241
        0x5cfd5e9d5d028cfcL    # 8.743712507775021E139
        0x76aa3ebde09588deL    # 4.132132162944274E263
        -0x24a1b13bdcb598a1L    # -1.3445309878303426E132
        -0x5e1cd1b7115219d4L
        -0xce8184b2c70e6aeL    # -2.611602578411716E246
        -0x4dec721d772dd1f1L    # -1.813267486478563E-67
        0x74914fb6258bc300L    # 3.172984003522669E253
        -0x592c12d95e93b09L
    .end array-data

    :array_38
    .array-data 8
        0x740a5704136c5b7dL    # 9.429325443995243E250
        0x34070c2df673580dL    # 4.589613428833144E-58
        -0x29ccd308d7f67d8dL    # -1.7591727306601554E107
        -0x10c7434ac05e0730L    # -5.860116330793728E227
    .end array-data

    :array_39
    .array-data 8
        0x3e136e4739b3f5daL    # 1.1310199225198289E-9
        0x4ac1a482b87a29c6L    # 1.320177535393119E52
        -0x388a0559fe881b06L    # -1.8259518201528025E36
        0x35df353c7f190298L    # 3.336460762750038E-49
        0x792b076688eecee8L
        -0x2d6fb5c2f362c884L    # -5.184891235885452E89
        0x18085e6aee4f0250L    # 6.676475700806515E-193
        -0xc5b5040f7fef38bL
        0x4da9a01c8e947e5cL    # 1.349336681630758E66
        -0x6e15938f9ff4c0a5L    # -2.284362542336515E-222
    .end array-data

    :array_3a
    .array-data 8
        -0x464b9bc111e405d6L    # -1.005382774326279E-30
        -0x664827a84e6a7bf0L    # -8.768425216075303E-185
        0x7fe0e32fba580ab7L    # 9.487014866653949E307
        0x65af7d26659da32L    # 4.754158179997436E-278
    .end array-data

    :array_3b
    .array-data 8
        0x6e5c7e0deecd11aL
        0x4e49f7efd247675bL    # 1.4002189190467947E69
        0x275da4fdd10c08b2L    # 4.592041720728892E-119
        0x37d2b678fa6094deL    # 8.592488776150157E-40
        0xd838096bb5c3524L    # 1.4281024000237347E-243
        0x56feaa90ca9fb98bL    # 1.152336724449458E111
        0x5a728d10bf328468L    # 5.023036864598263E127
        0x19236ec1f54caf99L
        -0x432e52dcfee38dfbL    # -9.812326159289059E-16
        -0x7421c0b54fc4800bL
    .end array-data

    :array_3c
    .array-data 8
        -0x7ea37823bedb803dL
        -0x276f755adf7f401aL    # -4.1713377400368815E118
        0x323910c8e9ce8254L    # 9.297335044181496E-67
        -0x669325066a155fdbL
    .end array-data

    :array_3d
    .array-data 8
        0x28895761004cf1f5L
        0x35935d0bf094b597L    # 1.2938495434504997E-50
        -0x5ad4aeecee03cddcL
        0x682c2632e971afbeL    # 6.421455946097695E193
        0x520c55bc3de557beL    # 1.7614507446932853E87
        -0x7387e414e12214eeL
        0x2c7a1cf854aac79cL    # 1.956054136066943E-94
        0x301df080abcacee5L    # 6.464056301647085E-77
        0x68ba606deed0b0c4L    # 3.080755827752805E196
        -0x3d17d1a954732f0bL    # -2.1269841316416766E14
        -0x39dbffd1f2b4c9e6L    # -7.923094618255788E29
    .end array-data

    :array_3e
    .array-data 8
        0x40acb18c39b4ec34L    # 3672.773877767404
        0x12f0992740c0e42L
        0x417c2aa6f493fd8fL    # 2.9534831286130484E7
        0x5ac332a20edfb065L    # 1.663409922634813E129
        0x6403b4ebfd11ca6cL    # 6.092590535569245E173
        0x52915b02ab61950eL    # 5.524030813102967E89
    .end array-data

    :array_3f
    .array-data 8
        -0x4a1a5608828990c9L    # -4.632207573296496E-49
        -0x552fb1a6c56a1607L    # -1.820078948856625E-102
        -0x6c9fea5859997e3L    # -7.618738711338027E275
        -0x1cce369bafdb6f62L    # -6.712628804452156E169
        -0x5d184689ef19864cL
        -0x376fbf3bbbb545d2L    # -3.539588824175283E41
        0xac63849e18549b0L
        -0x5820e20ea4d51014L
        0x79186aee5ab6b70L
        -0x2fad92495fc3fe6aL    # -8.535529515320946E78
        0x447b0dfa80f2d16aL    # 7.985109587795399E21
        -0x5312b1544e2bf372L    # -2.810006074389892E-92
        -0x10a772683c4364b4L    # -2.3266068911833987E228
        -0x2128a3acf1b9ce00L    # -7.467627656096464E148
        0x13882bbc92a0f2d2L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDescription(I)[Ljava/lang/String;
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/trilead/ssh2/sftp/ErrorCodes;->messages:[[Ljava/lang/String;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget-object p0, v0, p0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method
