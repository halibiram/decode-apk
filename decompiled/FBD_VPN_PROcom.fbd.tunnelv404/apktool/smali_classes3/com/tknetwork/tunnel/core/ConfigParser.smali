.class public Lcom/tknetwork/tunnel/core/ConfigParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;,
        Lcom/tknetwork/tunnel/core/ConfigParser$linestate;
    }
.end annotation


# static fields
.field public static final CONVERTED_PROFILE:Ljava/lang/String;


# instance fields
.field private auth_user_pass_file:Ljava/lang/String;

.field final connectionOptions:[Ljava/lang/String;

.field final ignoreOptions:[Ljava/lang/String;

.field final ignoreOptionsWithArg:[[Ljava/lang/String;

.field private final meta:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final unsupportedOptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/core/ConfigParser;->CONVERTED_PROFILE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x2f4a7ff73fb8cfc4L    # 6.98417094463988E-81
        0x53abf66a3ac8d3d0L    # 1.1665559044793404E95
        0x7a201c2195bf7db9L    # 1.827672962585006E280
        -0x5aebbba624814c39L    # -4.568475141061292E-130
    .end array-data
.end method

.method public constructor <init>()V
    .locals 54

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tknetwork/tunnel/core/ConfigParser;->meta:Ljava/util/HashMap;

    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_1

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tknetwork/tunnel/core/ConfigParser;->unsupportedOptions:[Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_2

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_3

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_4

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_5

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_6

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_7

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_8

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_9

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_a

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v14, v3, [J

    fill-array-data v14, :array_b

    invoke-direct {v1, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v3, [J

    fill-array-data v15, :array_c

    invoke-direct {v1, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_d

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_e

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_f

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_10

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v4, v3, [J

    fill-array-data v4, :array_11

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_12

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_13

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_14

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v4, v3, [J

    fill-array-data v4, :array_15

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_16

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v4, v3, [J

    fill-array-data v4, :array_17

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v2, v4, [J

    fill-array-data v2, :array_18

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_19

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_1a

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_1b

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v30

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_1c

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_1d

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_1e

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_1f

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v34

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_20

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v35

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_21

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v36

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_22

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v37

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_23

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v38

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_24

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v39

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_25

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v40

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_26

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v41

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_27

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v42

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_28

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v43

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_29

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v44

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_2a

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v45

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_2b

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v46

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_2c

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_2d

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v48

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_2e

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v49

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_2f

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v50

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_30

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v51

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_31

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v52

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_32

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v53

    filled-new-array/range {v5 .. v53}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tknetwork/tunnel/core/ConfigParser;->ignoreOptions:[Ljava/lang/String;

    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_33

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_34

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_35

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x4

    new-array v6, v5, [J

    fill-array-data v6, :array_36

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_37

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_38

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_39

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x3

    new-array v7, v6, [J

    fill-array-data v7, :array_3a

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    new-array v7, v5, [[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v7, v5

    const/4 v1, 0x1

    aput-object v3, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    aput-object v2, v7, v6

    iput-object v7, v0, Lcom/tknetwork/tunnel/core/ConfigParser;->ignoreOptionsWithArg:[[Ljava/lang/String;

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3b

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_3f

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_40

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_41

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_42

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_43

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_44

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_45

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_46

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_47

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_48

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_49

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_4a

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_4b

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_4c

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_4d

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_4e

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_4f

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_50

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_51

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_52

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_53

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v28

    filled-new-array/range {v4 .. v28}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tknetwork/tunnel/core/ConfigParser;->connectionOptions:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x1618bc9ea66a8a8cL    # 3.155922768413743E-202
        -0x34c80cec8540db6eL    # -2.2939079031404074E54
    .end array-data

    :array_1
    .array-data 8
        0x322e6c15b02ec9aaL    # 5.642111668742536E-67
        0x43a5587c72e80225L    # 7.690580528537975E17
        -0x1de8e70b85531803L    # -3.325234350246101E164
    .end array-data

    :array_2
    .array-data 8
        -0x529335a949adaebbL    # -7.066734696280912E-90
        -0x69ae93c69565f06L    # -5.84117761112441E276
        -0x47c0e90fd5bbcad8L    # -9.136412917885427E-38
    .end array-data

    :array_3
    .array-data 8
        -0x267907c9279e4e23L    # -1.8980228127943278E123
        -0x27e8b1a8a78ce70eL    # -2.2957598893702277E116
    .end array-data

    :array_4
    .array-data 8
        -0x2b7bf2cfb2de25fcL    # -1.370553058361175E99
        0x4f517f5816e4c676L    # 1.2366118709425894E74
        -0x7b57283c2ec90243L
    .end array-data

    :array_5
    .array-data 8
        0x6aa0b18bc742d24L
        0x7fa9f6fdd983fc5fL    # 9.116555150833434E306
    .end array-data

    :array_6
    .array-data 8
        0x6eed27ad1ae57130L
        -0x7e18ba31694f127eL
    .end array-data

    :array_7
    .array-data 8
        -0x62c9edd7e9578babL    # -5.848209843565069E-168
        -0x5f0deeb535ea0b8aL    # -5.519520769094202E-150
    .end array-data

    :array_8
    .array-data 8
        -0x6ec9588b4e1c853dL    # -9.562920408078225E-226
        0x55dacab30381a69aL    # 3.8404339083024947E105
    .end array-data

    :array_9
    .array-data 8
        -0x6b3c3099f3396704L
        0x7e63381f1001b59fL    # 6.435488723217524E300
    .end array-data

    :array_a
    .array-data 8
        0x2a351551eb8dfe7L
        -0x2ee5945f52a7cc36L    # -5.012317285382623E82
        0x7fb5833ceabfa90bL    # 1.5106695354182413E307
    .end array-data

    :array_b
    .array-data 8
        0x5e6e05bad717b7aaL    # 7.497786250110836E146
        -0x48408a3f4c159e8bL    # -3.6114276332900637E-40
        -0x2e6566ec73f12290L    # -1.2917754708331602E85
        -0x60b520f5ef84a669L    # -6.116177929291778E-158
    .end array-data

    :array_c
    .array-data 8
        0x18e65af01a11fcb9L
        0x5333f42696680ee8L    # 6.503429259177532E92
        -0x5426896caf1174L
        0x363c1f4f1ceb5af8L
    .end array-data

    :array_d
    .array-data 8
        -0x12be0cb02b996c93L    # -1.980167353193193E218
        0x427dcc3dec5b47edL    # 2.0476905896204954E12
        -0x2822a438f8b73afcL
    .end array-data

    :array_e
    .array-data 8
        0x46fa673720513564L    # 8.56832337885721E33
        0x3aa72e9535ac99c3L    # 3.74524831948813E-26
        -0x19b0568e8adfcca7L    # -6.726732544778278E184
    .end array-data

    :array_f
    .array-data 8
        0x7ca61d61e3b61583L    # 2.7585974519986384E292
        -0x3a2ae5b6b9dd8ad9L    # -2.612385321626598E28
    .end array-data

    :array_10
    .array-data 8
        0x60bbb62298633eecL    # 9.511680135602828E157
        -0x23014320aefa859bL    # -9.151041801616217E139
    .end array-data

    :array_11
    .array-data 8
        0x51abcf87a5341cb7L    # 2.70134554592688E85
        -0x4b282b314008a028L    # -3.8876589061990424E-54
        0x4bdb52313aed0dfL
        0x652c09e71d85be30L
    .end array-data

    :array_12
    .array-data 8
        0xd1ee6b9bc72a164L
        0x3fb315e8cfe15d56L    # 0.07455306124881153
    .end array-data

    :array_13
    .array-data 8
        0x30d6a9273e232bcbL    # 2.003989505708564E-73
        -0x4b6b6edd830d2324L    # -2.0969608829915072E-55
        0x19959b47a1857504L
    .end array-data

    :array_14
    .array-data 8
        -0x6ccc1e379b35bacbL    # -3.604644213772489E-216
        0x22bebb333250f005L
        -0x24031fe165afa983L    # -1.3117379731081872E135
    .end array-data

    :array_15
    .array-data 8
        0x2ff79d8dfe5ec836L    # 1.2746686786017088E-77
        -0x6a003dfe20b7cfa1L
        0x3443b53f8e37771fL    # 6.279331405250985E-57
        0x4c3caa692e4f3f93L    # 1.7993731079043407E59
    .end array-data

    :array_16
    .array-data 8
        0x54c9e7f7ef8be048L    # 2.8331597472734216E100
        0x3ee53d193a774ee1L    # 1.0127385237014077E-5
        -0x38b22bc13af8b3afL    # -3.097629057138597E35
        -0x5bc189429869eaffL
    .end array-data

    :array_17
    .array-data 8
        -0x7796cb2e1e272b82L
        -0x2b83eb22e17f333aL    # -9.597074853708281E98
        0x2414933f3158017bL    # 7.07694234878885E-135
        0x5a0f47552bc6246fL    # 6.616618843609559E125
        0x6ec182b77154ac4aL    # 3.2407690688506414E225
    .end array-data

    :array_18
    .array-data 8
        -0x2a46c4e6214300f8L    # -9.041711016909818E104
        -0x898829e24d5c175L
        0x5af80a27a056f6b0L
        0x26a172dd828083L
    .end array-data

    :array_19
    .array-data 8
        -0x3f8fc26787c62464L    # -259.84972403145525
        -0x54962c0429829afeL    # -1.4760574312534895E-99
        -0x109b6f6f1a94ddc8L    # -3.897349340494997E228
        0x510d831167e239cL
    .end array-data

    :array_1a
    .array-data 8
        -0x7232b40463a595e6L
        0x32f37cf894530a47L    # 2.9608195148719185E-63
        -0x596617008c179eeaL    # -9.798772389600539E-123
        -0x7359b9c8bef9db0dL    # -9.955366748968035E-248
        0x783dfd206a6b10fdL    # 1.5842906289830376E271
    .end array-data

    :array_1b
    .array-data 8
        -0x689f4665cbb550eeL    # -4.474857369556368E-196
        -0x30f9ab71de7ab274L    # -4.931776745103108E72
        0x17e44973cc131c87L
        0x684b3f18ddd6522L
    .end array-data

    :array_1c
    .array-data 8
        -0x357ba2a8ef3f5bdaL    # -9.524131363995497E50
        -0x45ac29139a4be99fL    # -1.0016410330175614E-27
        -0x3936ad70ead58a3L
        0x90133e3772cbd77L
    .end array-data

    :array_1d
    .array-data 8
        -0xcb99b19986a3aabL
        0x208ab0bf31789650L    # 6.370119265878639E-152
        -0x203d3c955c164511L    # -1.965432333143363E153
        -0x17ccff93a2fd60a5L    # -8.669391569872558E193
    .end array-data

    :array_1e
    .array-data 8
        0x1ed329f8bf8f892dL    # 3.407747331516057E-160
        -0x2e5746d1a8efbedeL    # -2.4014654439485852E85
        -0x6ff87fdb0f6f3b37L
        -0x7d041d9486d4537aL
    .end array-data

    :array_1f
    .array-data 8
        0x22e7020c0a7f35bL
        -0x163d26552ceb42a0L    # -2.8857886861746584E201
        -0x3c257b2f1a91997aL    # -7.6435273029209354E18
        -0x7f40696e08085b28L    # -4.498303983650119E-305
    .end array-data

    :array_20
    .array-data 8
        -0x6ab6ea88fb90312dL    # -3.906493691653376E-206
        0x34481efe270f53a1L    # 7.685414886488418E-57
        0xb2d1ba741d48128L
    .end array-data

    :array_21
    .array-data 8
        0x24d6c825f17122acL    # 3.209596858512791E-131
        -0x51ae554b2b7b527dL    # -1.420952849631197E-85
    .end array-data

    :array_22
    .array-data 8
        -0x1f978aa08f83f1feL    # -2.623477625499043E156
        -0x435e9d4cbe7592c4L    # -1.2063647115821748E-16
        0x49fbd86c63bf38cbL    # 2.5435064615062187E48
        0x78ea440e19858b8cL    # 2.841825219357545E274
    .end array-data

    :array_23
    .array-data 8
        0x102b77d8f772a1cfL    # 8.846323445019886E-231
        -0x104afe817102032bL    # -1.2739040069150294E230
        0x4925566355e9f4dfL    # 2.379205539563755E44
    .end array-data

    :array_24
    .array-data 8
        -0x5d1a43afe3defad2L
        -0x3146786554e55030L    # -1.761995399509502E71
    .end array-data

    :array_25
    .array-data 8
        0x63ee45630f63e354L
        0x4fef8352826d4219L    # 1.1402979784853569E77
        -0x16eab859d2b44dd3L    # -1.5906928419289864E198
    .end array-data

    :array_26
    .array-data 8
        -0x5a098e7073da22a5L    # -8.288849904365168E-126
        -0x3b4a632d09a01cbL    # -5.33084018021647E290
        -0x1a85e3fa484879f2L    # -6.7713512548711275E180
    .end array-data

    :array_27
    .array-data 8
        -0x6383ceebc53a84caL
        0x1653af9fbe6aa8f6L
        -0x242d29474461fe1bL    # -2.139490249443838E134
    .end array-data

    :array_28
    .array-data 8
        -0x242d69277dd89e99L    # -2.111153176188014E134
        -0x511e55a816bbd224L    # -7.274694720896257E-83
        -0x773394044cdc8d97L    # -2.754517706834857E-266
    .end array-data

    :array_29
    .array-data 8
        0x4fa4a591ab412118L    # 4.6693960537919194E75
        -0x6cf64097e64c2293L    # -5.835139927216937E-217
        -0x2c43f8cac2cfbe5L
    .end array-data

    :array_2a
    .array-data 8
        0x6c9013fc844aaf6aL    # 8.660259119728695E214
        -0x45a0ee579d3b0451L    # -1.568582414521488E-27
    .end array-data

    :array_2b
    .array-data 8
        -0x251b09fc205339e9L    # -7.264740006845382E129
        -0x7856a7d766812f4L
        0x4abed22f1a44c369L    # 1.1531516826916558E52
    .end array-data

    :array_2c
    .array-data 8
        -0x69b301457e585dc3L
        -0x50d31df81029ef35L    # -1.9030600204053553E-81
        -0x3933f00e30e4290dL    # -1.1383414552128827E33
    .end array-data

    :array_2d
    .array-data 8
        -0x4c79572d463a491eL
        -0x67afca47622bc86aL
        0x7f9aeda24ef687d1L    # 4.727416438025358E306
        -0x657abcf8acece27aL
    .end array-data

    :array_2e
    .array-data 8
        -0x665c9d4f729ed8a4L
        -0x55fc1083568ddbb6L    # -2.716305315247397E-106
    .end array-data

    :array_2f
    .array-data 8
        -0xc06c67f5ca0e34bL
        0x7e06b8778ca66eb8L
    .end array-data

    :array_30
    .array-data 8
        -0x5737b91f08057d9cL    # -3.154600175876891E-112
        0x2b6acdd82dc54ad1L    # 1.5318362666928204E-99
    .end array-data

    :array_31
    .array-data 8
        0x618c667e91fab47fL    # 7.98567568765796E161
        0x49a7fed4ee5b213fL    # 6.849486296116416E46
    .end array-data

    :array_32
    .array-data 8
        -0x449ac487cc0bb710L    # -1.4050359455914107E-22
        -0x256cb993ca403e78L
    .end array-data

    :array_33
    .array-data 8
        -0x21895af22d73c061L    # -1.131059056358317E147
        0x278f664da7ad3659L
    .end array-data

    :array_34
    .array-data 8
        0x3e679353d5cfcb46L    # 4.391278694134642E-8
        -0x18b4f09b7aed18caL    # -3.76770706485262E189
        -0x13ba5a8ffb6b52fcL    # -3.643589338450475E213
    .end array-data

    :array_35
    .array-data 8
        -0x227e50e86698af2cL    # -2.695549671958647E142
        -0x5a1254a30a026074L    # -5.478736356245892E-126
    .end array-data

    :array_36
    .array-data 8
        -0x238881d8563d5604L    # -2.732075437505512E137
        0x170834b07c2459e1L
        -0x6f4b830a0e6910e6L
        0x154d9a2450e938f1L    # 4.610157304794236E-206
    .end array-data

    :array_37
    .array-data 8
        0x4e9b9e52b5b34b33L    # 4.765388332296675E70
        0x4d12614952b31814L    # 1.890275938613296E63
    .end array-data

    :array_38
    .array-data 8
        0x5747bcd4a09d5310L    # 2.854339075105925E112
        0x5410ddde9c93adacL    # 9.006751404855193E96
    .end array-data

    :array_39
    .array-data 8
        -0x769da766f9ee3512L
        0x1a490ae379d82191L    # 4.714882732224424E-182
    .end array-data

    :array_3a
    .array-data 8
        -0x7feaf885db6bae52L    # -2.924471242442703E-308
        0x1aa6c80d0e2847bdL    # 2.745073350121786E-180
        -0x2bed0308e57cb1c5L    # -1.013960815668107E97
    .end array-data

    :array_3b
    .array-data 8
        -0x7ff5065aeec26382L    # -1.526285933480501E-308
        0x6386b30e66744d91L    # 2.741338492393974E171
    .end array-data

    :array_3c
    .array-data 8
        0x2318b82199332e24L
        0x3b6efcf0f5a2595bL    # 2.0506172502918932E-22
    .end array-data

    :array_3d
    .array-data 8
        -0xd68c90cb28cf7abL    # -9.906919761161175E243
        0x5ebab6c9cacf7972L    # 2.1348977308139605E148
    .end array-data

    :array_3e
    .array-data 8
        0x2209d0acedc9b1a7L
        0x1b7e6dfd5cd298dcL
    .end array-data

    :array_3f
    .array-data 8
        -0x3346ce7f8d70aab2L    # -4.048417861503445E61
        0x22c814cd53e99852L    # 3.949582717691225E-141
        0x1615622920ee9193L    # 2.72810132397002E-202
    .end array-data

    :array_40
    .array-data 8
        -0x7c7e726ef42213d1L    # -8.794789040926614E-292
        0x6e39e68aa0145f12L    # 9.362370882127212E222
        0x5fbdc907eb6d2958L    # 1.559981540690968E153
    .end array-data

    :array_41
    .array-data 8
        -0xe66995aac1dd670L    # -1.6540426681920166E239
        -0x31861dfded9976deL    # -1.1164801550666404E70
        -0x64179d61873831e7L
        -0x46775bb9140d0725L    # -1.518662455573124E-31
    .end array-data

    :array_42
    .array-data 8
        0x4cb64fef39010696L    # 3.585439373364074E61
        -0x1a3b1b1f3cfc4f3cL    # -1.7340040965738073E182
    .end array-data

    :array_43
    .array-data 8
        -0x475b37239fea630dL    # -7.818302325327724E-36
        -0xe3809987a1b3001L    # -1.248300078990238E240
    .end array-data

    :array_44
    .array-data 8
        0x5361b7292e3f415bL    # 4.61914291710227E93
        0x1dd8d84d71a63eb1L    # 6.741246254673974E-165
        -0x5f67f38d5bb453beL
    .end array-data

    :array_45
    .array-data 8
        -0x4c18d3b7e4aa435dL    # -1.1536462327163766E-58
        -0xdf78bf51a645d9aL    # -2.0381862392964747E241
    .end array-data

    :array_46
    .array-data 8
        0x2653abfe56b952d1L    # 4.649722040454259E-124
        -0x237324b67efc4577L    # -6.711707937294652E137
    .end array-data

    :array_47
    .array-data 8
        0x2edc73a7c7131370L    # 5.858286802738023E-83
        -0x7f8f67cd3291c10L
        0x715aaa12212fb1c7L    # 1.0851940808336936E238
    .end array-data

    :array_48
    .array-data 8
        -0x7a4b581747314495L    # -3.55605174345493E-281
        -0x9ccb300f3570a6L
        0x1748ea0d84feb1f5L    # 1.666483375873929E-196
    .end array-data

    :array_49
    .array-data 8
        -0x610c25ce5d42604dL
        -0x4bd5012a41311d07L    # -2.1503115715759062E-57
    .end array-data

    :array_4a
    .array-data 8
        -0x4efa1ee445d920d1L    # -1.5479076945153916E-72
        -0x712305f34962228bL    # -4.449930177073905E-237
    .end array-data

    :array_4b
    .array-data 8
        0x385fc4469999fb7bL    # 3.7341579063340112E-37
        0x37689298daea4e9L
    .end array-data

    :array_4c
    .array-data 8
        0x476c71e20ba94a45L    # 1.1815530679832827E36
        0x42edbc1b0aac0113L    # 2.615499579310166E14
        0x2f6db7eea97ade50L
    .end array-data

    :array_4d
    .array-data 8
        0x10d0ea62ac6295bbL
        0x4a9e502c6ab27d09L    # 2.835376570177312E51
        -0x1b2b6388a6b2c87aL    # -5.220122020737598E177
    .end array-data

    :array_4e
    .array-data 8
        -0x77018c8a4d939892L
        0x4cb25f4e6994e364L    # 2.9523132128666253E61
        -0x7ed93d9a7e106f37L    # -4.148532023169705E-303
        -0x7d82c207949bb6e4L
    .end array-data

    :array_4f
    .array-data 8
        0x6e8869f477310e2L
        0x32991e5eeb96ac63L    # 5.962892714223496E-65
        0x12adebb2edf3a40fL    # 1.0595095999868058E-218
        -0x474f44345858c00dL    # -1.2588943604979507E-35
    .end array-data

    :array_50
    .array-data 8
        -0x71c1bbc1e028e7cdL    # -4.539068300977658E-240
        -0x5348fd37f9f43875L    # -2.757873172069648E-93
        -0x4032c7db283a71deL    # -0.22827587638595143
    .end array-data

    :array_51
    .array-data 8
        0x750c8200dedef0aeL    # 6.6882181820953715E255
        -0x6788f9068ee5d231L    # -8.075412476718753E-191
        -0x4569314f24571b9fL    # -1.8423659802441945E-26
        0x61cd47594f50b1edL    # 1.317223766032389E163
    .end array-data

    :array_52
    .array-data 8
        -0x6b6c4a2b3f4bac12L
        -0x359d110d73f62d5eL    # -2.2136942603850337E50
        -0x316e509015b9e05bL    # -3.0514866150316765E70
        -0x581d29a3567a2e00L
    .end array-data

    :array_53
    .array-data 8
        -0x1a7c095b86cc686eL    # -1.0354829352763668E181
        0x7a0bcb6b9c478aL
    .end array-data
.end method

.method private checkIgnoreAndInvalidOptions(Lcom/tknetwork/tunnel/core/VpnProfile;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->unsupportedOptions:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    if-ge v4, v2, :cond_1

    .line 8
    .line 9
    aget-object v5, v1, v4

    .line 10
    .line 11
    iget-object v6, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    add-int/2addr v4, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/16 v2, 0x9

    .line 26
    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v5, v0, v3

    .line 42
    .line 43
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->ignoreOptions:[Ljava/lang/String;

    .line 52
    .line 53
    array-length v2, v1

    .line 54
    :goto_1
    if-ge v3, v2, :cond_2

    .line 55
    .line 56
    aget-object v4, v1, v3

    .line 57
    .line 58
    iget-object v5, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/2addr v3, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-lez v1, :cond_4

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/16 v3, 0xa

    .line 81
    .line 82
    new-array v3, v3, [J

    .line 83
    .line 84
    fill-array-data v3, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v2, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mCustomConfigOptions:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mCustomConfigOptions:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ljava/util/Vector;

    .line 129
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v4, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mCustomConfigOptions:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOptionStrings(Ljava/util/Vector;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mCustomConfigOptions:Ljava/lang/String;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    iput-boolean v0, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mUseCustomConfig:Z

    .line 155
    .line 156
    :cond_4
    return-void

    .line 157
    :array_0
    .array-data 8
        0x40607f5a1e0d01e4L    # 131.9797506574679
        0xda826f05ec1c514L
        -0x31a856147ec408b7L    # -2.5518937268024545E69
        0xf13261b79af8e52L
        -0x1c589831da506ec9L    # -1.1306423958836623E172
        0x2c40d9a11436c3d1L    # 1.577735616978419E-95
        -0x1901f419c8ff09afL    # -1.3073471817034818E188
        0x491652ae7f9bd21bL    # 1.244547451417363E44
        0x5265743b0bd73e2eL    # 8.535668505255125E88
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        0x7ff71ae988ee6857L
        0x34df2733109632abL    # 5.082090307304431E-54
        -0x60a9e8d4102b0b40L
        0x4ecf4a39f52ea650L    # 4.3191055293323796E71
        -0x5f52d125df360e79L
        0x28b76144a58a967fL
        0x7700c215969e84bfL    # 1.6886205147166125E265
        0x7a5aa5fe9f1c9a23L    # 2.418618522303874E281
        -0x113b8bab2baf19cL
        0x52bbd59b06eba70eL    # 3.5437292256147227E90
    .end array-data
.end method

.method private checkRedirectParameters(Lcom/tknetwork/tunnel/core/VpnProfile;Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tknetwork/tunnel/core/VpnProfile;",
            "Ljava/util/Vector<",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/util/Vector;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v3, v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v6, v0, [J

    .line 35
    .line 36
    fill-array-data v6, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    iput-boolean v4, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mAllowLocalLAN:Z

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v6, v0, [J

    .line 65
    .line 66
    fill-array-data v6, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    iput-boolean v1, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mAllowLocalLAN:Z

    .line 83
    .line 84
    :cond_2
    :goto_1
    add-int/2addr v3, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-void

    .line 87
    :array_0
    .array-data 8
        -0x2cfa09a0bb2acebaL    # -8.947636195141193E91
        -0x44779501f85b97f4L    # -6.463374553973406E-22
        -0x518f31618874be46L    # -5.407221471614182E-85
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_1
    .array-data 8
        -0x17c91f81d4b8430dL    # -1.0437461268004071E194
        -0x19b68797d7f78dcbL    # -5.411305956911245E184
        0x6acc686e60583082L    # 2.850143330069787E206
    .end array-data
.end method

.method private checkinlinefile(Ljava/util/Vector;Ljava/io/BufferedReader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    new-array v5, v4, [J

    .line 17
    .line 18
    fill-array-data v5, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v5, v4, [J

    .line 37
    .line 38
    fill-array-data v5, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sub-int/2addr v3, v0

    .line 59
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    new-array v5, v5, [J

    .line 67
    .line 68
    fill-array-data v5, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v6, v4, [J

    .line 81
    .line 82
    fill-array-data v6, :array_3

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    new-array v6, v0, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v2, v6, v1

    .line 95
    .line 96
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-eqz v6, :cond_2

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_1

    .line 115
    .line 116
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v4, v4, [J

    .line 119
    .line 120
    fill-array-data v4, :array_4

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_0

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    sub-int/2addr p2, v0

    .line 141
    invoke-virtual {v3, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    invoke-static {v3, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v7, v4, [J

    .line 166
    .line 167
    fill-array-data v7, :array_5

    .line 168
    .line 169
    .line 170
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-static {v6, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    goto :goto_0

    .line 178
    :cond_2
    new-instance p1, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    .line 179
    .line 180
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    const/4 v3, 0x6

    .line 183
    new-array v3, v3, [J

    .line 184
    .line 185
    fill-array-data v3, :array_6

    .line 186
    .line 187
    .line 188
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    new-array v3, v4, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object v2, v3, v1

    .line 198
    .line 199
    aput-object v2, v3, v0

    .line 200
    .line 201
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-direct {p1, p2}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :cond_3
    :goto_1
    return-void

    .line 210
    nop

    .line 211
    :array_0
    .array-data 8
        0x4eae651ddb7def8eL    # 1.048892446836515E71
        -0x460e5b1979f627efL    # -1.3918774232917247E-29
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_1
    .array-data 8
        0x7281ef374b288fa3L    # 3.826786811204367E243
        -0x3f0f9667f259ccdfL    # -67225.50333232853
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_2
    .array-data 8
        -0x1489283593cd91b3L    # -4.693630047086566E209
        0x40ba1dc7dede759fL    # 6685.780744460789
        0x3fa51d1cfa4a73d2L    # 0.041237741044120604
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_3
    .array-data 8
        0x5739b34f165d408cL    # 1.5451787199075662E112
        -0x23f6fb3c54024d34L    # -2.2730618869973765E135
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_4
    .array-data 8
        0xd8b2366d5bd8024L
        0x12818cd9f8e315e5L
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_5
    .array-data 8
        -0x3aca3512a7127136L    # -2.6345738527727193E25
        0x1ab69e929ed84372L    # 5.451100104485107E-180
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_6
    .array-data 8
        -0x7365885ce3051ddfL
        -0x4369d2da72dd8752L    # -7.69396846146555E-17
        -0x7c913cfbb21e4c7cL
        0x7f2927634c4a4c2dL    # 3.4499297707404624E304
        0x17bfa175419fbd6cL
        -0x6f93817bc010c29bL
    .end array-data
.end method

.method private fixup(Lcom/tknetwork/tunnel/core/VpnProfile;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mRemoteCN:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mServerName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    const-wide v2, 0x670f029ef3a3b050L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-wide v2, v1, v4

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mRemoteCN:Ljava/lang/String;

    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private getAllOption(Ljava/lang/String;II)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Vector<",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/Vector;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/Vector;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    add-int/lit8 v5, p2, 0x1

    .line 35
    .line 36
    if-lt v4, v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    add-int/lit8 v5, p3, 0x1

    .line 43
    .line 44
    if-gt v4, v5, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/16 v4, 0x8

    .line 54
    .line 55
    new-array v4, v4, [J

    .line 56
    .line 57
    fill-array-data v4, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    sub-int/2addr v3, v0

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    const/4 v4, 0x4

    .line 85
    new-array v4, v4, [Ljava/lang/Object;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    aput-object p1, v4, v5

    .line 89
    .line 90
    aput-object v3, v4, v0

    .line 91
    .line 92
    const/4 p1, 0x2

    .line 93
    aput-object p2, v4, p1

    .line 94
    .line 95
    const/4 p1, 0x3

    .line 96
    aput-object p3, v4, p1

    .line 97
    .line 98
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    .line 103
    .line 104
    invoke-direct {p2, p1}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p2

    .line 108
    :cond_2
    iget-object p2, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        -0x311965569d2a69ebL    # -1.248064718812057E72
        -0x49a4ef8f76991c92L    # -7.407235539904966E-47
        -0xbb6803ad94ebf7eL
        -0x7fa597f0851e5804L    # -5.875638215231818E-307
        -0x777c94d2c34173afL    # -1.176232294476068E-267
        0x78b2574716c47249L    # 2.4804895263991477E273
        -0x555f40d15d839e0aL
        -0x4703cd86836fdb65L    # -3.394110425290927E-34
    .end array-data
.end method

.method private getOption(Ljava/lang/String;II)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/Vector;

    .line 14
    .line 15
    return-object p1
.end method

.method private getOptionStrings(Ljava/util/Vector;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    const-wide v4, 0x10a4e686f548739dL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    aput-wide v4, v3, v6

    .line 14
    .line 15
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Vector;

    .line 37
    .line 38
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/core/ConfigParser;->ignoreThisOption(Ljava/util/Vector;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ne v4, v0, :cond_2

    .line 49
    .line 50
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v5, 0x3

    .line 53
    new-array v5, v5, [J

    .line 54
    .line 55
    fill-array-data v5, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    const/4 v5, 0x4

    .line 78
    new-array v5, v5, [J

    .line 79
    .line 80
    fill-array-data v5, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    :cond_1
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v4, v3}, Lcom/tknetwork/tunnel/core/VpnProfile;->insertFileData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v4}, Lcom/tknetwork/tunnel/core/VpnProfile;->openVpnEscape(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v5, v0, [J

    .line 158
    .line 159
    fill-array-data v5, :array_2

    .line 160
    .line 161
    .line 162
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    goto :goto_1

    .line 170
    :cond_3
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v4, v0, [J

    .line 177
    .line 178
    fill-array-data v4, :array_3

    .line 179
    .line 180
    .line 181
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-static {v3, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_4
    return-object v1

    .line 191
    :array_0
    .array-data 8
        -0x1d1bc01213601e44L    # -2.388178068577229E168
        0x587b6bcac843de6fL    # 1.7287118283923774E118
        -0x62305338461277b8L    # -4.297223590490542E-165
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_1
    .array-data 8
        0x4d7f31fc144c4192L    # 2.0532772177196503E65
        0x765eee4708a9362aL    # 1.521832995981064E262
        0x3c6f0e0ac2e496e3L    # 1.3467895073656474E-17
        0x6b76c3fab7e46489L    # 4.67772880700394E209
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_2
    .array-data 8
        -0x7eb6cea95fa1701eL
        -0x67d0715ee58d5ac6L    # -3.458362353206847E-192
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_3
    .array-data 8
        0x35992baaf7890483L    # 1.681875781758423E-50
        -0x13dc3e54dbc504e1L    # -8.313757427657584E212
    .end array-data
.end method

.method private isUdpProto(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v3, v2, [J

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v3, v0, [J

    .line 47
    .line 48
    fill-array-data v3, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v3, v2, [J

    .line 67
    .line 68
    fill-array-data v3, :array_3

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v2, v2, [J

    .line 87
    .line 88
    fill-array-data v2, :array_4

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v0, v0, [J

    .line 107
    .line 108
    fill-array-data v0, :array_5

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    const/4 v3, 0x5

    .line 135
    new-array v3, v3, [J

    .line 136
    .line 137
    fill-array-data v3, :array_6

    .line 138
    .line 139
    .line 140
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {v0, p1}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 152
    goto :goto_2

    .line 153
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 154
    :goto_2
    return p1

    .line 155
    :array_0
    .array-data 8
        -0x3fd28290ac187dc0L    # -14.744989988336897
        -0x2a956aa1a438f2aL
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_1
    .array-data 8
        0x41ef065f986430cbL    # 4.164091075130956E9
        -0x4ea931dc2a898b7bL    # -5.162922074151783E-71
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 8
        -0x4c951ffdafcaafadL    # -5.226367351711534E-61
        0x5cea5df6cb06f8acL    # 3.924908198853993E139
        0x163be82f03c7abecL
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_3
    .array-data 8
        0x41cbec2727ec569bL    # 9.36922703846393E8
        -0x6e7ee4f01a4d8c2cL
    .end array-data

    :array_4
    .array-data 8
        -0x6291515c00116384L
        -0x6b23729b22006ddeL
    .end array-data

    :array_5
    .array-data 8
        0x36ec14ec0d0ba10bL    # 3.9350880712997734E-44
        0x23632a8a0c6e6660L    # 3.218898712216717E-138
        -0x4278ae87457e98beL    # -2.6509779242224447E-12
    .end array-data

    :array_6
    .array-data 8
        0xb6b131552583c2aL
        -0x464cbf000039b029L    # -9.492908689262413E-31
        -0xdfeb681ccd9f771L    # -1.440881395654313E241
        -0x64472f1856835764L    # -3.919357898678685E-175
        0x444f1fcacd8112b0L    # 1.1482798711994308E21
    .end array-data
.end method

.method private parseConnection(Ljava/lang/String;Lcom/tknetwork/tunnel/core/Connection;)Landroidx/core/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tknetwork/tunnel/core/Connection;",
            ")",
            "Landroidx/core/util/Pair<",
            "Lcom/tknetwork/tunnel/core/Connection;",
            "[",
            "Lcom/tknetwork/tunnel/core/Connection;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tknetwork/tunnel/core/ConfigParser;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/StringReader;

    .line 7
    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/tknetwork/tunnel/core/ConfigParser;->parseConfig(Ljava/io/Reader;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p2}, Lcom/tknetwork/tunnel/core/ConfigParser;->parseConnectionOptions(Lcom/tknetwork/tunnel/core/Connection;)Landroidx/core/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x3188698750a0baf9L    # 4.421384778156563E-70
        0x2b4eab6c52dfefc6L    # 4.381873853588152E-100
        0x101e48f579b6affcL    # 4.876754062997359E-231
    .end array-data
.end method

.method private parseConnectionOptions(Lcom/tknetwork/tunnel/core/Connection;)Landroidx/core/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tknetwork/tunnel/core/Connection;",
            ")",
            "Landroidx/core/util/Pair<",
            "Lcom/tknetwork/tunnel/core/Connection;",
            "[",
            "Lcom/tknetwork/tunnel/core/Connection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/core/Connection;->clone()Lcom/tknetwork/tunnel/core/Connection;

    .line 8
    .line 9
    .line 10
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v4, Lcom/tknetwork/tunnel/core/Connection;

    .line 19
    .line 20
    invoke-direct {v4}, Lcom/tknetwork/tunnel/core/Connection;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v6, v3, [J

    .line 26
    .line 27
    fill-array-data v6, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-direct {p0, v5, v2, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/String;

    .line 48
    .line 49
    iput-object v5, v4, Lcom/tknetwork/tunnel/core/Connection;->mServerPort:Ljava/lang/String;

    .line 50
    .line 51
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v6, v3, [J

    .line 54
    .line 55
    fill-array-data v6, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-direct {p0, v5, v2, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/String;

    .line 76
    .line 77
    iput-object v5, v4, Lcom/tknetwork/tunnel/core/Connection;->mServerPort:Ljava/lang/String;

    .line 78
    .line 79
    :cond_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v6, v3, [J

    .line 82
    .line 83
    fill-array-data v6, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-direct {p0, v5, v2, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Ljava/lang/String;

    .line 104
    .line 105
    invoke-direct {p0, v5}, Lcom/tknetwork/tunnel/core/ConfigParser;->isUdpProto(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    iput-boolean v5, v4, Lcom/tknetwork/tunnel/core/Connection;->mUseUdp:Z

    .line 110
    .line 111
    :cond_3
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v6, v1, [J

    .line 114
    .line 115
    fill-array-data v6, :array_3

    .line 116
    .line 117
    .line 118
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-direct {p0, v5, v2, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-eqz v5, :cond_4

    .line 130
    .line 131
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v6, Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    iput v6, v4, Lcom/tknetwork/tunnel/core/Connection;->mConnectTimeout:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catch_1
    move-exception p1

    .line 145
    new-instance v1, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    .line 146
    .line 147
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    const/16 v6, 0x9

    .line 150
    .line 151
    new-array v6, v6, [J

    .line 152
    .line 153
    fill-array-data v6, :array_4

    .line 154
    .line 155
    .line 156
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-array v3, v3, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object v5, v3, v0

    .line 174
    .line 175
    aput-object p1, v3, v2

    .line 176
    .line 177
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {v1, p1}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v1

    .line 185
    :cond_4
    :goto_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v6, v3, [J

    .line 188
    .line 189
    fill-array-data v6, :array_5

    .line 190
    .line 191
    .line 192
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-direct {p0, v5, v2, v1}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    if-eqz p1, :cond_6

    .line 204
    .line 205
    iget-object p1, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_5

    .line 220
    .line 221
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    check-cast v6, Ljava/util/Vector;

    .line 226
    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    iget-object v8, v4, Lcom/tknetwork/tunnel/core/Connection;->mCustomConfiguration:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, v6}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOptionStrings(Ljava/util/Vector;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    iput-object v6, v4, Lcom/tknetwork/tunnel/core/Connection;->mCustomConfiguration:Ljava/lang/String;

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_5
    iget-object p1, v4, Lcom/tknetwork/tunnel/core/Connection;->mCustomConfiguration:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-nez p1, :cond_6

    .line 258
    .line 259
    iput-boolean v2, v4, Lcom/tknetwork/tunnel/core/Connection;->mUseCustomConfig:Z

    .line 260
    .line 261
    :cond_6
    if-nez v5, :cond_7

    .line 262
    .line 263
    new-instance v5, Ljava/util/Vector;

    .line 264
    .line 265
    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 266
    .line 267
    .line 268
    :cond_7
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    new-array p1, p1, [Lcom/tknetwork/tunnel/core/Connection;

    .line 273
    .line 274
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_b

    .line 283
    .line 284
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    check-cast v6, Ljava/util/Vector;

    .line 289
    .line 290
    :try_start_2
    invoke-virtual {v4}, Lcom/tknetwork/tunnel/core/Connection;->clone()Lcom/tknetwork/tunnel/core/Connection;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    aput-object v7, p1, v0
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :catch_2
    move-exception v7

    .line 298
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    .line 300
    .line 301
    :goto_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eq v7, v3, :cond_a

    .line 306
    .line 307
    if-eq v7, v1, :cond_9

    .line 308
    .line 309
    const/4 v8, 0x4

    .line 310
    if-eq v7, v8, :cond_8

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_8
    aget-object v7, p1, v0

    .line 314
    .line 315
    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    check-cast v8, Ljava/lang/String;

    .line 320
    .line 321
    invoke-direct {p0, v8}, Lcom/tknetwork/tunnel/core/ConfigParser;->isUdpProto(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    iput-boolean v8, v7, Lcom/tknetwork/tunnel/core/Connection;->mUseUdp:Z

    .line 326
    .line 327
    :cond_9
    aget-object v7, p1, v0

    .line 328
    .line 329
    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    check-cast v8, Ljava/lang/String;

    .line 334
    .line 335
    iput-object v8, v7, Lcom/tknetwork/tunnel/core/Connection;->mServerPort:Ljava/lang/String;

    .line 336
    .line 337
    :cond_a
    aget-object v7, p1, v0

    .line 338
    .line 339
    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    check-cast v6, Ljava/lang/String;

    .line 344
    .line 345
    iput-object v6, v7, Lcom/tknetwork/tunnel/core/Connection;->mServerName:Ljava/lang/String;

    .line 346
    .line 347
    :goto_5
    add-int/2addr v0, v2

    .line 348
    goto :goto_3

    .line 349
    :cond_b
    invoke-static {v4, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    return-object p1

    .line 354
    nop

    .line 355
    :array_0
    .array-data 8
        -0x37569a489c91fb3eL    # -1.1062097161725403E42
        -0x79f9fc497ec2e9d9L
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_1
    .array-data 8
        0xe428367a50dd389L    # 5.552867477901751E-240
        -0x5f784f65ec43aabL    # -6.943338291174606E279
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_2
    .array-data 8
        -0x3208a222c7d00fb3L    # -3.9372738805367434E67
        0x2c55ac1fbb9ed77fL    # 4.0585188657137926E-95
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :array_3
    .array-data 8
        -0x35aea45db1c7e7afL    # -1.0147466211735567E50
        -0x10fdf2f340554365L    # -5.345242782913126E226
        -0x51228d74eb67241bL    # -6.0632946390827736E-83
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_4
    .array-data 8
        -0x281e3f9dec0fe886L    # -2.1857643032725865E115
        0x67c3ec4c58721956L    # 7.101381769343262E191
        0x71b3875cdc0d853cL    # 5.086642892014845E239
        -0x6af3dc49870818faL
        0x6d4bb0b89290a509L    # 3.0546031211845016E218
        -0x4bf1e38346350281L    # -5.99625420960906E-58
        0x1a2a75ef7b0e7777L
        0x29e82ba45102e4daL    # 8.233353296582374E-107
        -0x799f5f40ff13f273L    # -5.862620646149367E-278
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_5
    .array-data 8
        -0x579643e7dda224b9L    # -5.225062527238116E-114
        -0x1df339a999b6078fL    # -2.0712823366492057E164
    .end array-data
.end method

.method private parseline(Ljava/lang/String;)Ljava/util/Vector;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/util/Vector;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    sget-object v3, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->initial:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 16
    .line 17
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v5, v1, [J

    .line 20
    .line 21
    const-wide v6, 0x6bfd678669d10ab4L    # 1.5467111240831282E212

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    aput-wide v6, v5, v0

    .line 27
    .line 28
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-ge v5, v8, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v8, 0x0

    .line 50
    :goto_1
    const/16 v9, 0x5c

    .line 51
    .line 52
    if-nez v6, :cond_2

    .line 53
    .line 54
    if-ne v8, v9, :cond_2

    .line 55
    .line 56
    sget-object v10, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->readin_single_quote:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 57
    .line 58
    if-eq v3, v10, :cond_2

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_2
    sget-object v10, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->initial:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 64
    .line 65
    const/16 v11, 0x27

    .line 66
    .line 67
    const/16 v12, 0x22

    .line 68
    .line 69
    if-ne v3, v10, :cond_7

    .line 70
    .line 71
    invoke-direct {p0, v8}, Lcom/tknetwork/tunnel/core/ConfigParser;->space(C)Z

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    if-nez v13, :cond_a

    .line 76
    .line 77
    const/16 v3, 0x3b

    .line 78
    .line 79
    if-eq v8, v3, :cond_f

    .line 80
    .line 81
    const/16 v3, 0x23

    .line 82
    .line 83
    if-ne v8, v3, :cond_3

    .line 84
    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_3
    if-nez v6, :cond_4

    .line 88
    .line 89
    if-ne v8, v12, :cond_4

    .line 90
    .line 91
    sget-object v3, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->reading_quoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    if-nez v6, :cond_5

    .line 95
    .line 96
    if-ne v8, v11, :cond_5

    .line 97
    .line 98
    sget-object v3, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->readin_single_quote:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    sget-object v3, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->reading_unquoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 102
    .line 103
    :cond_6
    move v7, v8

    .line 104
    goto :goto_2

    .line 105
    :cond_7
    sget-object v13, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->reading_unquoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 106
    .line 107
    if-ne v3, v13, :cond_8

    .line 108
    .line 109
    if-nez v6, :cond_6

    .line 110
    .line 111
    invoke-direct {p0, v8}, Lcom/tknetwork/tunnel/core/ConfigParser;->space(C)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-eqz v11, :cond_6

    .line 116
    .line 117
    sget-object v3, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->done:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    sget-object v13, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->reading_quoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 121
    .line 122
    if-ne v3, v13, :cond_9

    .line 123
    .line 124
    if-nez v6, :cond_6

    .line 125
    .line 126
    if-ne v8, v12, :cond_6

    .line 127
    .line 128
    sget-object v3, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->done:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_9
    sget-object v13, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->readin_single_quote:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 132
    .line 133
    if-ne v3, v13, :cond_a

    .line 134
    .line 135
    if-ne v8, v11, :cond_6

    .line 136
    .line 137
    sget-object v3, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->done:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 138
    .line 139
    :cond_a
    :goto_2
    sget-object v8, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->done:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 140
    .line 141
    if-ne v3, v8, :cond_b

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v4, v1, [J

    .line 149
    .line 150
    const-wide v7, 0x23d104427ae6ab5cL

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    aput-wide v7, v4, v0

    .line 156
    .line 157
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const/4 v7, 0x0

    .line 165
    goto :goto_3

    .line 166
    :cond_b
    move-object v10, v3

    .line 167
    :goto_3
    if-eqz v6, :cond_d

    .line 168
    .line 169
    if-eqz v7, :cond_d

    .line 170
    .line 171
    if-eq v7, v9, :cond_d

    .line 172
    .line 173
    if-eq v7, v12, :cond_d

    .line 174
    .line 175
    invoke-direct {p0, v7}, Lcom/tknetwork/tunnel/core/ConfigParser;->space(C)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_c

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_c
    new-instance p1, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    .line 183
    .line 184
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    const/4 v1, 0x7

    .line 187
    new-array v1, v1, [J

    .line 188
    .line 189
    fill-array-data v1, :array_0

    .line 190
    .line 191
    .line 192
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-direct {p1, v0}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :cond_d
    :goto_4
    move-object v3, v10

    .line 204
    const/4 v6, 0x0

    .line 205
    :goto_5
    if-eqz v7, :cond_e

    .line 206
    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    :cond_e
    add-int/lit8 v8, v5, 0x1

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-lt v5, v9, :cond_10

    .line 229
    .line 230
    :cond_f
    :goto_6
    return-object v2

    .line 231
    :cond_10
    move v5, v8

    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    nop

    .line 235
    :array_0
    .array-data 8
        0x603e5d2893fc5a98L    # 4.071133448647739E155
        -0x40161050ab1178fdL    # -0.8105084093878933
        0x34378a09ec03446bL    # 3.7500131253023875E-57
        0x2356118df6b994f0L
        0x1dcdad1f287260e3L    # 4.026071728193369E-165
        -0x95b6e7fa276819cL
        -0x1933ff41ef9c4bafL    # -1.5230365877273846E187
    .end array-data
.end method

.method private parsemeta(Ljava/lang/String;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x1

    .line 22
    aget-object p1, p1, v0

    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v2, v1, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Ljava/util/Vector;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :array_0
    .array-data 8
        0x5892e96a2b740206L    # 4.769036325378566E118
        0x2f3f1ba3206670ccL
        -0x2e5d5fdbacc5c3aeL    # -1.8091642447341372E85
        0x51c61c2ff8517de6L    # 8.59052340055377E85
    .end array-data

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
    :array_1
    .array-data 8
        0x146bb987f16b36a5L
        -0x60b3d53950c3b3c9L    # -6.411126276861027E-158
    .end array-data
.end method

.method private space(C)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    return p1
.end method

.method public static useEmbbedUserAuth(Lcom/tknetwork/tunnel/core/VpnProfile;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/tknetwork/tunnel/core/VpnProfile;->getEmbeddedContent(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    array-length v0, p1

    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    aget-object v0, p1, v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/tknetwork/tunnel/core/VpnProfile;->mUsername:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aget-object p1, p1, v0

    .line 34
    .line 35
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/VpnProfile;->mPassword:Ljava/lang/String;

    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x259a18c45d28262fL
        0x402c5858b5fbd029L    # 14.172551810254008
    .end array-data
.end method


# virtual methods
.method public convertProfile()Lcom/tknetwork/tunnel/core/VpnProfile;
    .locals 17

    move-object/from16 v1, p0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 1
    new-instance v6, Lcom/tknetwork/tunnel/core/VpnProfile;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v8, 0x4

    new-array v9, v8, [J

    fill-array-data v9, :array_0

    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tknetwork/tunnel/core/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v6}, Lcom/tknetwork/tunnel/core/VpnProfile;->clearDefaults()V

    .line 3
    iget-object v7, v1, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x2

    new-array v11, v10, [J

    fill-array-data v11, :array_1

    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x1

    if-nez v7, :cond_0

    iget-object v7, v1, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v10, [J

    fill-array-data v12, :array_2

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4
    :cond_0
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUsePull:Z

    .line 5
    iget-object v7, v1, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v10, [J

    fill-array-data v12, :array_3

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v7, v1, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v10, [J

    fill-array-data v12, :array_4

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_5

    invoke-direct {v7, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v9, v10}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 8
    iput v8, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuthenticationType:I

    .line 9
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUseTLSAuth:Z

    .line 10
    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mTLSAuthFilename:Ljava/lang/String;

    .line 11
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    if-ne v11, v5, :cond_2

    .line 12
    invoke-virtual {v7, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mTLSAuthDirection:Ljava/lang/String;

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    .line 13
    :goto_0
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v10, [J

    fill-array-data v12, :array_6

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v9, v8}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 14
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v9, [J

    const-wide v14, -0x43863087c79d7045L    # -2.238697783184922E-17

    aput-wide v14, v13, v4

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 15
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v9, [J

    const-wide v15, 0x6ee4bad24ab32c66L    # 1.534621476633807E226

    aput-wide v15, v14, v4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    .line 16
    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Vector;

    .line 17
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v5, [J

    fill-array-data v0, :array_7

    invoke-direct {v15, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_8

    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v15

    if-lt v15, v5, :cond_4

    .line 20
    invoke-virtual {v14, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    :cond_4
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v15

    if-lt v15, v8, :cond_5

    .line 22
    invoke-virtual {v14, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    :cond_5
    invoke-virtual {v14, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 24
    :try_start_0
    new-instance v15, Lcom/tknetwork/tunnel/core/CIDRIP;

    invoke-direct {v15, v14, v0}, Lcom/tknetwork/tunnel/core/CIDRIP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_9

    invoke-direct {v14, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v10, [J

    fill-array-data v13, :array_a

    invoke-direct {v4, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_2

    .line 27
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v10, [J

    fill-array-data v12, :array_b

    invoke-direct {v4, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 28
    :catch_0
    new-instance v2, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_c

    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    invoke-static {v5, v4, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-direct {v2, v0}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    :catch_1
    new-instance v2, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_d

    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    invoke-static {v5, v4, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-direct {v2, v0}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_7
    iput-object v12, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCustomRoutes:Ljava/lang/String;

    .line 35
    iput-object v13, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mExcludedRoutes:Ljava/lang/String;

    .line 36
    :cond_8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v8}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 37
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v9, [J

    const-wide v11, 0x10ba4c8251601e3aL

    const/4 v13, 0x0

    aput-wide v11, v4, v13

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    .line 39
    invoke-static {v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    invoke-virtual {v4, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_f

    invoke-direct {v4, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    invoke-static {v4, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 42
    :cond_9
    iput-object v2, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCustomRoutesv6:Ljava/lang/String;

    .line 43
    :cond_a
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_10

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 44
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mRoutenopull:Z

    .line 45
    :cond_b
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v10, [J

    fill-array-data v2, :array_11

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v10}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 46
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    if-eqz v2, :cond_c

    .line 47
    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v10, [J

    fill-array-data v12, :array_12

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 48
    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mTLSAuthFilename:Ljava/lang/String;

    .line 49
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUseTLSAuth:Z

    .line 50
    :cond_d
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ne v4, v5, :cond_c

    .line 51
    invoke-virtual {v2, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mTLSAuthDirection:Ljava/lang/String;

    goto :goto_4

    .line 52
    :cond_e
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_13

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 53
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mTLSAuthDirection:Ljava/lang/String;

    .line 54
    :cond_f
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_14

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 55
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUseTLSAuth:Z

    .line 56
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mTLSAuthFilename:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_15

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mTLSAuthDirection:Ljava/lang/String;

    .line 58
    :cond_10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_16

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 59
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUseDefaultRoute:Z

    .line 60
    invoke-direct {v1, v6, v0}, Lcom/tknetwork/tunnel/core/ConfigParser;->checkRedirectParameters(Lcom/tknetwork/tunnel/core/VpnProfile;Ljava/util/Vector;)V

    .line 61
    :cond_11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_17

    invoke-direct {v0, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 62
    invoke-direct {v1, v6, v0}, Lcom/tknetwork/tunnel/core/ConfigParser;->checkRedirectParameters(Lcom/tknetwork/tunnel/core/VpnProfile;Ljava/util/Vector;)V

    .line 63
    :cond_12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_18

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    .line 64
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_19

    invoke-direct {v4, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 65
    invoke-virtual {v4, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v10, [J

    fill-array-data v13, :array_1a

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    :cond_13
    if-eqz v0, :cond_14

    .line 66
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v10, [J

    fill-array-data v13, :array_1b

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_15

    :cond_14
    if-nez v4, :cond_4c

    if-nez v0, :cond_4c

    .line 67
    :cond_15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_1c

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 68
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v4, v10, :cond_16

    .line 69
    :try_start_1
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mMssFix:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 70
    :catch_2
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_1d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/16 v0, 0x5aa

    .line 71
    iput v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mMssFix:I

    .line 72
    :cond_17
    :goto_5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_1e

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 73
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_1f

    invoke-direct {v4, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_6

    .line 74
    :cond_18
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_20

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_19
    :goto_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_21

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10, v10}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 76
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    .line 77
    invoke-virtual {v4, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 78
    invoke-virtual {v4, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 79
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v10, [J

    fill-array-data v14, :array_22

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 80
    invoke-virtual {v4, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mSearchDomain:Ljava/lang/String;

    goto :goto_7

    .line 81
    :cond_1b
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v10, [J

    fill-array-data v13, :array_23

    invoke-direct {v4, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 82
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mOverrideDNS:Z

    .line 83
    iget-object v4, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mDNS1:Ljava/lang/String;

    sget-object v11, Lcom/tknetwork/tunnel/core/VpnProfile;->DEFAULT_DNS1:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 84
    iput-object v12, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mDNS1:Ljava/lang/String;

    goto :goto_7

    .line 85
    :cond_1c
    iput-object v12, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mDNS2:Ljava/lang/String;

    goto :goto_7

    .line 86
    :cond_1d
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_24

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10, v10}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 87
    :try_start_2
    new-instance v4, Lcom/tknetwork/tunnel/core/CIDRIP;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v11, v0}, Lcom/tknetwork/tunnel/core/CIDRIP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Lcom/tknetwork/tunnel/core/CIDRIP;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mIPv4Address:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 89
    new-instance v2, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_25

    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_1e
    :goto_8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v8, [J

    fill-array-data v4, :array_26

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v4}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 91
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUseRandomHostname:Z

    .line 92
    :cond_1f
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_27

    invoke-direct {v0, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v4}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 93
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUseFloat:Z

    .line 94
    :cond_20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_28

    invoke-direct {v0, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 95
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUseLzo:Z

    .line 96
    :cond_21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_29

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 97
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCipher:Ljava/lang/String;

    .line 98
    :cond_22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_2a

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 99
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuth:Ljava/lang/String;

    .line 100
    :cond_23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_2b

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 101
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCaFilename:Ljava/lang/String;

    .line 102
    :cond_24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_2c

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 103
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mClientCertFilename:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    iput v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuthenticationType:I

    const/4 v7, 0x0

    .line 105
    :cond_25
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_2d

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 106
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mClientKeyFilename:Ljava/lang/String;

    .line 107
    :cond_26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_2e

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 108
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mPKCS12Filename:Ljava/lang/String;

    .line 109
    iput v10, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuthenticationType:I

    const/4 v7, 0x0

    .line 110
    :cond_27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_2f

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 111
    iput v10, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuthenticationType:I

    const/4 v7, 0x0

    .line 112
    :cond_28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_30

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v10}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    .line 113
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v8, [J

    fill-array-data v11, :array_31

    invoke-direct {v4, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v4

    .line 114
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_32

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_2b

    .line 115
    invoke-virtual {v11, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mRemoteCN:Ljava/lang/String;

    .line 116
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCheckRemoteCN:Z

    const/4 v11, 0x0

    .line 117
    iput v11, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mX509AuthType:I

    if-eqz v0, :cond_29

    .line 118
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, v10, :cond_2a

    :cond_29
    if-eqz v4, :cond_2b

    .line 119
    :cond_2a
    iput v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mX509AuthType:I

    .line 120
    :cond_2b
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_33

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v10}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 121
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mRemoteCN:Ljava/lang/String;

    .line 122
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCheckRemoteCN:Z

    .line 123
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v10, :cond_2f

    .line 124
    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v10, [J

    fill-array-data v12, :array_34

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 125
    iput v5, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mX509AuthType:I

    goto :goto_9

    .line 126
    :cond_2c
    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v10, [J

    fill-array-data v12, :array_35

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 127
    iput v10, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mX509AuthType:I

    goto :goto_9

    .line 128
    :cond_2d
    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_36

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 129
    iput v8, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mX509AuthType:I

    goto :goto_9

    .line 130
    :cond_2e
    new-instance v2, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_37

    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_2f
    iput v10, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mX509AuthType:I

    .line 132
    :cond_30
    :goto_9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v8, [J

    fill-array-data v4, :array_38

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 133
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mx509UsernameField:Ljava/lang/String;

    .line 134
    :cond_31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_39

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 135
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mVerb:Ljava/lang/String;

    .line 136
    :cond_32
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_3a

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v4}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 137
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mNobind:Z

    .line 138
    :cond_33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_3b

    invoke-direct {v0, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v4}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 139
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mPersistTun:Z

    .line 140
    :cond_34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_3c

    invoke-direct {v0, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v4}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 141
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mPushPeerInfo:Z

    .line 142
    :cond_35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_3d

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v10}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 143
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnectRetry:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v10, :cond_36

    .line 145
    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnectRetryMaxTime:Ljava/lang/String;

    .line 146
    :cond_36
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v8, [J

    fill-array-data v4, :array_3e

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 147
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnectRetryMax:Ljava/lang/String;

    .line 148
    :cond_37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_3f

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_39

    const/4 v4, 0x0

    .line 149
    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Vector;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_40

    invoke-direct {v8, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 150
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mExpectTLSCert:Z

    goto :goto_a

    .line 151
    :cond_38
    iget-object v4, v1, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_41

    invoke-direct {v8, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_39
    :goto_a
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_42

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3e

    if-eqz v7, :cond_3a

    .line 153
    iput v5, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuthenticationType:I

    goto :goto_b

    .line 154
    :cond_3a
    iget v7, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuthenticationType:I

    if-nez v7, :cond_3b

    .line 155
    iput v2, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuthenticationType:I

    goto :goto_b

    :cond_3b
    if-ne v7, v10, :cond_3c

    const/4 v2, 0x7

    .line 156
    iput v2, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mAuthenticationType:I

    .line 157
    :cond_3c
    :goto_b
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v9, :cond_3e

    .line 158
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v5, [J

    fill-array-data v8, :array_43

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 159
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/tknetwork/tunnel/core/ConfigParser;->auth_user_pass_file:Ljava/lang/String;

    .line 160
    :cond_3d
    iput-object v4, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUsername:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/tknetwork/tunnel/core/ConfigParser;->useEmbbedUserAuth(Lcom/tknetwork/tunnel/core/VpnProfile;Ljava/lang/String;)V

    .line 162
    :cond_3e
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_44

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v10}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 163
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v2, v5, :cond_3f

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v10, [J

    fill-array-data v8, :array_45

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCustomConfigOptions:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v10, [J

    fill-array-data v8, :array_46

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v10, [J

    fill-array-data v7, :array_47

    invoke-direct {v0, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCustomConfigOptions:Ljava/lang/String;

    goto :goto_c

    .line 167
    :cond_3f
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mCrlFilename:Ljava/lang/String;

    .line 168
    :cond_40
    :goto_c
    invoke-direct {v1, v4}, Lcom/tknetwork/tunnel/core/ConfigParser;->parseConnectionOptions(Lcom/tknetwork/tunnel/core/Connection;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 169
    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/tknetwork/tunnel/core/Connection;

    iput-object v2, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnections:[Lcom/tknetwork/tunnel/core/Connection;

    .line 170
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_48

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getAllOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v2

    .line 171
    iget-object v4, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnections:[Lcom/tknetwork/tunnel/core/Connection;

    array-length v4, v4

    if-lez v4, :cond_42

    if-nez v2, :cond_41

    goto :goto_d

    .line 172
    :cond_41
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x8

    new-array v3, v3, [J

    fill-array-data v3, :array_49

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    :goto_d
    if-eqz v2, :cond_44

    .line 173
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lcom/tknetwork/tunnel/core/Connection;

    iput-object v4, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnections:[Lcom/tknetwork/tunnel/core/Connection;

    .line 174
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Vector;

    .line 175
    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/tknetwork/tunnel/core/Connection;

    invoke-direct {v1, v7, v8}, Lcom/tknetwork/tunnel/core/ConfigParser;->parseConnection(Ljava/lang/String;Lcom/tknetwork/tunnel/core/Connection;)Landroidx/core/util/Pair;

    move-result-object v7

    .line 176
    iget-object v7, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, [Lcom/tknetwork/tunnel/core/Connection;

    array-length v8, v8

    if-ne v8, v9, :cond_43

    .line 177
    iget-object v8, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnections:[Lcom/tknetwork/tunnel/core/Connection;

    check-cast v7, [Lcom/tknetwork/tunnel/core/Connection;

    const/4 v11, 0x0

    aget-object v7, v7, v11

    aput-object v7, v8, v4

    add-int/2addr v4, v9

    goto :goto_e

    .line 178
    :cond_43
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x8

    new-array v3, v3, [J

    fill-array-data v3, :array_4a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_44
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_4b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 180
    iput-boolean v9, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mRemoteRandom:Z

    .line 181
    :cond_45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_4c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v9}, Lcom/tknetwork/tunnel/core/ConfigParser;->getOption(Ljava/lang/String;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 182
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_4d

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v13, 0x1

    goto :goto_f

    .line 184
    :cond_46
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_4e

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v13, 0x0

    .line 185
    :goto_f
    iget-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnections:[Lcom/tknetwork/tunnel/core/Connection;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_49

    aget-object v4, v0, v3

    .line 186
    iget-boolean v7, v4, Lcom/tknetwork/tunnel/core/Connection;->mUseUdp:Z

    if-ne v7, v13, :cond_47

    const/4 v7, 0x0

    .line 187
    iput-boolean v7, v4, Lcom/tknetwork/tunnel/core/Connection;->mEnabled:Z

    :cond_47
    add-int/2addr v3, v9

    goto :goto_10

    .line 188
    :cond_48
    new-instance v2, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_4f

    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_49
    iget-object v0, v1, Lcom/tknetwork/tunnel/core/ConfigParser;->meta:Ljava/util/HashMap;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_50

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_4a

    .line 190
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v9, :cond_4a

    .line 191
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mName:Ljava/lang/String;

    .line 192
    :cond_4a
    iget-object v0, v1, Lcom/tknetwork/tunnel/core/ConfigParser;->meta:Ljava/util/HashMap;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v10, [J

    fill-array-data v3, :array_51

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_4b

    .line 193
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v9, :cond_4b

    .line 194
    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/tknetwork/tunnel/core/VpnProfile;->mUsername:Ljava/lang/String;

    .line 195
    :cond_4b
    invoke-direct {v1, v6}, Lcom/tknetwork/tunnel/core/ConfigParser;->checkIgnoreAndInvalidOptions(Lcom/tknetwork/tunnel/core/VpnProfile;)V

    .line 196
    invoke-direct {v1, v6}, Lcom/tknetwork/tunnel/core/ConfigParser;->fixup(Lcom/tknetwork/tunnel/core/VpnProfile;)V

    return-object v6

    .line 197
    :cond_4c
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x9

    new-array v3, v3, [J

    fill-array-data v3, :array_52

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        -0x63ec40bf1e47f466L
        0x30a8a4cdbd45a88cL    # 2.7241945934593106E-74
        0x22aaae5fd215c44fL
        0x3630f5a109d55ecbL    # 1.1604152925981402E-47
    .end array-data

    :array_1
    .array-data 8
        -0xaa44003aac34035L
        0x42ec252685920a00L    # 2.47567085244496E14
    .end array-data

    :array_2
    .array-data 8
        0x5709759953cf1735L    # 1.9133573295575578E111
        -0x4664cfbd92b5cad7L    # -3.351243038372419E-31
    .end array-data

    :array_3
    .array-data 8
        0x4a47118a2522aa5eL    # 6.742934247900561E49
        0x5bcb08507a192c95L    # 1.5350196726624669E134
    .end array-data

    :array_4
    .array-data 8
        -0x4f6d8db78386c7a3L    # -1.019560831059192E-74
        -0x6518d83f8249a3d0L    # -4.464189719723634E-179
    .end array-data

    :array_5
    .array-data 8
        -0x1c1cf3d7c21ea1e8L    # -1.4721947222804852E173
        0x3a6cf609680bc890L
    .end array-data

    :array_6
    .array-data 8
        0x70656c691096bf33L    # 2.6608269956744773E233
        0x1cf5bd6f771cc868L    # 3.600324345483548E-169
    .end array-data

    :array_7
    .array-data 8
        0x7d44f6a689d7f27fL    # 2.6777443691414896E295
        -0x1fe99e0aa2e1123dL    # -7.502556872375416E154
        0x538b7a16be44c909L    # 2.865738405876223E94
    .end array-data

    :array_8
    .array-data 8
        -0x7a8a306c14c63138L
        -0x6c062f90f8bb19cL
        0x1060fe939453b12aL    # 8.7570969857266E-230
    .end array-data

    :array_9
    .array-data 8
        0x3eb4adbf7a0a63bcL    # 1.2325467439232239E-6
        0x57368c6c829c3f3aL    # 1.3556783259713821E112
        -0x103c0f17ddfb8721L    # -2.418658483423576E230
    .end array-data

    :array_a
    .array-data 8
        -0x4e8a29ee7c3211bcL    # -1.977416625659872E-70
        0x1aab6830b87df44bL    # 3.302432894094014E-180
    .end array-data

    :array_b
    .array-data 8
        -0x65a746085720708cL    # -9.310738667139796E-182
        -0x638beaa46361f162L
    .end array-data

    :array_c
    .array-data 8
        0x269b8081d0fcecebL
        0x1e0a6dabf3544c28L    # 5.736715670224674E-164
        -0x4125687df552b04fL    # -6.339985854381741E-6
        0x333b6bd9cb2b057bL    # 6.665746842202992E-62
        -0x66baeaabc8d95304L    # -6.056917037329038E-187
        -0x733a334a961e6561L    # -3.897292063101466E-247
    .end array-data

    :array_d
    .array-data 8
        -0x6719319dc264ad5L
        0x11201168e28699ceL
        0x61b26e0d0e04c84aL    # 4.145723575288091E162
        0x803be8d5f4729e0L
        -0x73195baacca013c2L    # -1.619149345007292E-246
        -0x1f958020bcf71013L    # -2.842401698779847E156
    .end array-data

    :array_e
    .array-data 8
        -0x3f1b14efec1184f4L    # -42840.502433052374
        0x7429fb88f08393b4L    # 3.7205599508376095E251
        -0x5814f591419ae48eL
    .end array-data

    :array_f
    .array-data 8
        -0x3f1d6b4c90d603e9L    # -38053.607319824565
        -0x377304d330171912L    # -3.1557680571844023E41
    .end array-data

    :array_10
    .array-data 8
        0x1ce8e992553a7199L    # 2.06285085052081E-169
        -0x616d149c3254c2dL
        0x674f92e5b7c19c28L    # 4.3961690795363787E189
    .end array-data

    :array_11
    .array-data 8
        0x3fce3c689f4ce53dL    # 0.23621852663363
        0x5e1954ba28855084L    # 1.976922624594728E145
    .end array-data

    :array_12
    .array-data 8
        0x65bb53f94c987de5L    # 1.133980558841845E182
        -0x78bce1549136b1b2L
    .end array-data

    :array_13
    .array-data 8
        0x7104d4ab245b65a5L    # 2.649300596159405E236
        -0x6931a7c62cc050dL    # -8.00371968463377E276
        -0x777619533ad359a8L    # -1.568886883370943E-267
    .end array-data

    :array_14
    .array-data 8
        -0x6adb343699518fcbL    # -8.096804831946198E-207
        0x4f4842efb96a6e29L    # 8.57326155347594E73
        0x5f526ded804e256fL    # 1.508166049773721E151
    .end array-data

    :array_15
    .array-data 8
        0x1557467dace91206L    # 7.24968757452808E-206
        0x353a70a669e1143fL    # 2.7604689021085975E-52
        -0x55abf32bd09b04cbL    # -8.742151640477766E-105
    .end array-data

    :array_16
    .array-data 8
        0x2b3790ec456b1eeeL
        -0x31018e63a9a6614bL    # -3.3618452578714707E72
        -0x5ce95949a809405bL
    .end array-data

    :array_17
    .array-data 8
        0x6a892c254a11a7deL    # 1.578455881616791E205
        0x24c8a6ad2e9e76ccL
        0x5c0528d1a47ca396L    # 1.9224383548502512E135
    .end array-data

    :array_18
    .array-data 8
        0x19615907c3478f45L    # 1.9935010370009955E-186
        -0x2673bcab65f69a0dL    # -2.3354289047569383E123
    .end array-data

    :array_19
    .array-data 8
        -0x783a1f8a2ca3b23dL    # -3.235174194249203E-271
        0xf57cfab7403b4fdL    # 9.36105624179102E-235
    .end array-data

    :array_1a
    .array-data 8
        0x783d80b5e83873cbL    # 1.55861550462506E271
        -0x11b7c00255cdbffdL    # -1.7531452895681004E223
    .end array-data

    :array_1b
    .array-data 8
        -0x25383871b8a3f1edL    # -2.060398121629157E129
        0x5aef95c6c7d3b66L
    .end array-data

    :array_1c
    .array-data 8
        -0x131d8d13167ad23aL    # -3.179933396224113E216
        0x4392c8c3a1207fcaL    # 3.3838669620680768E17
    .end array-data

    :array_1d
    .array-data 8
        0x56cb8bb06d298487L    # 1.293843147350828E110
        -0x1ba167326f06287fL    # -3.0270161078424636E175
        0x411d009129da1dedL    # 475172.29087111243
        -0x2e4c97a1d4e4132bL    # -3.770270960228169E85
        0x5a2e474e91fbdf6dL    # 2.5620238510552348E126
        -0x33a60c921a7c6a58L    # -6.515856481792353E59
        -0x3f6d1d329efd9b6L
    .end array-data

    :array_1e
    .array-data 8
        0x4a1c350c8bd25624L    # 1.0306225536310717E49
        0x5ba66f5de09a024aL
    .end array-data

    :array_1f
    .array-data 8
        0x7b5b3e6f8ea4124L
        -0x3c7e4f942baab35fL    # -1.59329656781771808E17
    .end array-data

    :array_20
    .array-data 8
        0x12b0cfbfcd577c95L
        -0x57b97628d021ec99L
        0x783e766835b22331L    # 1.6093186743354191E271
        -0x6e54e42e182af6fL
        -0x3f8c39f5bf8f4d6eL    # -316.3775028612373
        -0x49df11426011be74L    # -5.792871014044196E-48
        -0x327599a8360a297cL    # -3.4752762761617575E65
    .end array-data

    :array_21
    .array-data 8
        0x23275308288c81bL
        -0x462211ffb02750cfL    # -5.9025910321481946E-30
        -0x5b99b6af17be0968L
    .end array-data

    :array_22
    .array-data 8
        0x322bca0c1eca630aL    # 5.1538023765065123E-67
        -0x11010883f352e76cL    # -4.584924585711608E226
    .end array-data

    :array_23
    .array-data 8
        -0x67c599746263a321L    # -5.786501146786242E-192
        0xe7676d289548131L    # 5.390306276589788E-239
    .end array-data

    :array_24
    .array-data 8
        -0x6f808b3d7fca9452L    # -3.241813979795384E-229
        -0x2ef13853f2c1d985L    # -2.91969181538793E82
    .end array-data

    :array_25
    .array-data 8
        -0x6a395420b076a58aL    # -9.038801056085192E-204
        0x154f02513d28d922L
        -0x2fbbd7c273e96274L    # -4.66808608642961E78
        0x48f166270884c8a2L    # 2.425071274222791E43
        0x7e37d76ab776773aL    # 9.979040070789411E299
        0x2461770a7d301c77L    # 1.922297556900111E-133
    .end array-data

    :array_26
    .array-data 8
        0x65e9e0bf5709b5d5L    # 8.590466427138599E182
        -0x6a39e7f0da904710L    # -8.808600680053334E-204
        -0x17b45629fa9f302fL    # -2.5242543986719067E194
        -0x40536180453e1908L    # -0.05589675097230712
    .end array-data

    :array_27
    .array-data 8
        -0x1f3c0de4f2019213L    # -1.3692336851598224E158
        0x2c54224dc5415c5aL    # 3.770434716222E-95
    .end array-data

    :array_28
    .array-data 8
        -0x101fba63a68bb340L
        0x23282ef9010ba235L    # 2.538463586254149E-139
    .end array-data

    :array_29
    .array-data 8
        0xbe616d4e93db282L
        0x548716a7b126e298L    # 1.5781353192402598E99
    .end array-data

    :array_2a
    .array-data 8
        0x4084b27dcbbbcedaL    # 662.3114237473012
        -0x1277609c660d27bbL    # -4.345912772141303E219
    .end array-data

    :array_2b
    .array-data 8
        -0x695602d536421ac4L    # -1.697623396734499E-199
        -0x13dbfcdb06af1e76L    # -8.421386231613973E212
    .end array-data

    :array_2c
    .array-data 8
        0x77f1dce09cb487feL    # 5.898012981661985E269
        -0x42d0eb30a38dabc2L    # -5.521146043389281E-14
    .end array-data

    :array_2d
    .array-data 8
        0x3feea478d3d1a813L    # 0.957577146252563
        0x4a2f57c745840bcfL    # 2.2903838429147435E49
    .end array-data

    :array_2e
    .array-data 8
        0x6da6be0e4f2e1f19L    # 1.6056217888493757E220
        -0x5cc906dc9d2882ecL    # -4.822846433125425E-139
    .end array-data

    :array_2f
    .array-data 8
        0x7085add3daa205f7L    # 1.0770259610015333E234
        0x507b7b7ec0687d4eL    # 5.0915917447452324E79
        -0x1d2ca3d1025b2b67L    # -1.1416290599151064E168
    .end array-data

    :array_30
    .array-data 8
        0x538dfacd85bbd868L    # 3.1267698918826508E94
        -0x4a7f43e62060a9dfL    # -5.591012768672143E-51
        -0x4e962e54db4f72f2L    # -1.1690436916470464E-70
    .end array-data

    :array_31
    .array-data 8
        -0x21620e7841662dfaL    # -5.9824644879650336E147
        -0x5e5ee93de07f0cfeL
        -0x34e9c1f432fa83eaL    # -5.325988924154363E53
        -0x22a73a0367565785L    # -4.720231962379201E141
    .end array-data

    :array_32
    .array-data 8
        0x4afb66038eea0008L    # 1.640158847728219E53
        0x31da247ba55e7996L    # 1.515124455419865E-68
        -0x55463d7985aa7a9fL    # -7.188281320722479E-103
    .end array-data

    :array_33
    .array-data 8
        -0x49f4e6e6827d3741L    # -2.3176543656021895E-48
        -0xb9f5f0bfb52ba7bL    # -3.809827299252603E252
        0x4dfa7a2feb07ebb8L    # 4.4614151580511816E67
    .end array-data

    :array_34
    .array-data 8
        -0x63ce9efd599b8a8fL    # -7.026611602063353E-173
        0x737eec214c40551fL    # 2.1620682570819083E248
    .end array-data

    :array_35
    .array-data 8
        -0x34b1a5feedc59b95L    # -5.8142074048266154E54
        0x8c762cb08b7860eL
    .end array-data

    :array_36
    .array-data 8
        0x566854287f5bf1a2L
        0x4c40bf01bae2e9baL    # 2.1023419968508006E59
        -0x74a165ee1c56e5cfL    # -6.521855077647635E-254
    .end array-data

    :array_37
    .array-data 8
        -0x61d6539b5effae1dL
        -0x160ff70a0945691bL    # -1.9638402279875198E202
        -0x72179e52910ac78eL    # -1.142654275100274E-241
        0x74149efd4fa80390L    # 1.47641086897344E251
        -0x681d9f7c9e611834L
        -0x38766c5d17d5db29L    # -4.24965895964499E36
    .end array-data

    :array_38
    .array-data 8
        -0x718f220bbddcd4fL
        -0x12344accc57f6355L    # -7.824725049444017E220
        -0x10013281c43cc7c4L    # -2.9888600350434477E231
        0x533e2f95d11c8449L    # 9.838355692174601E92
    .end array-data

    :array_39
    .array-data 8
        -0x5b5fd3f28507e73bL    # -2.847985749261081E-132
        -0xb6ed364a3afcb36L    # -3.14785004818563E253
    .end array-data

    :array_3a
    .array-data 8
        0x50c09464ea5fb836L    # 9.829345442217473E80
        0x7bb11969a74bfee1L    # 6.509286713664768E287
    .end array-data

    :array_3b
    .array-data 8
        -0x272ec08738a09a5cL    # -6.959137876627341E119
        0x737a764866d98424L    # 1.8502047994639252E248
        -0xd908406162156b0L
    .end array-data

    :array_3c
    .array-data 8
        0x6776faea2c4f6f7L
        0x4683c5dda411e672L    # 5.013029062752849E31
        0x1b384e3cecce2c7dL
    .end array-data

    :array_3d
    .array-data 8
        0x15c43d6591481447L    # 8.069373672969271E-204
        -0x8fa59192aaf9897L
        -0x5f1a9b7e562e8244L    # -3.267652117982238E-150
    .end array-data

    :array_3e
    .array-data 8
        0xc053f11be5b53fdL    # 9.27338409844594E-251
        0x2441f73939eadfdL
        -0x2d471654302bab96L    # -3.1717640520897473E90
        0x7724bfaf15a011e0L    # 8.362929725722673E265
    .end array-data

    :array_3f
    .array-data 8
        0x398ee54f7a9ad5bbL    # 1.904097232891796E-31
        -0x4d710ca61b421463L    # -3.6736678508660837E-65
        -0x1c08c60609b1239L    # -1.316434312414479E300
    .end array-data

    :array_40
    .array-data 8
        0x6de096842a571a6bL    # 1.8737845664621153E221
        0x652dd39bd3e26213L    # 2.417303252121076E179
    .end array-data

    :array_41
    .array-data 8
        0x1d7b6222bd62574L
        0x205adb2d5ce25734L    # 8.012095958462659E-153
        -0x122937cd75624dd3L    # -1.2867349176186959E221
    .end array-data

    :array_42
    .array-data 8
        0x8c5c8743f28277dL
        0x4a02b5d7153bf60aL    # 3.418144163931845E48
        -0x16407e57c25fc6b8L
    .end array-data

    :array_43
    .array-data 8
        0x3a8e7cc6c80e9b37L    # 1.2313766094100748E-26
        0x1caf9f4a473542e3L
        -0x510ebe134784c46aL    # -1.4213451104696442E-82
    .end array-data

    :array_44
    .array-data 8
        0x608de1a42f95432eL
        -0x722715815cdff93cL    # -5.838505947225694E-242
        0x68941d7518d154d6L    # 5.873523411454249E195
    .end array-data

    :array_45
    .array-data 8
        0x28d00c7c88b702acL    # 4.17083987107188E-112
        0x181b94916da07a4aL
    .end array-data

    :array_46
    .array-data 8
        0x4e8f4b50a9504a32L    # 2.6998078423183198E70
        0x3a3bc7c5bdcf7eccL    # 3.506374521816384E-28
    .end array-data

    :array_47
    .array-data 8
        0x53aed8ed207dab7dL    # 1.286905834300358E95
        -0x1ffe2625fb912f3dL    # -2.991781881116009E154
    .end array-data

    :array_48
    .array-data 8
        0xb765eb361e310adL
        0x269dc91e9a49763eL    # 1.126441050989975E-122
        -0x520ef8fe730c28f6L    # -2.139876814968292E-87
    .end array-data

    :array_49
    .array-data 8
        0x61e3ff7b3dd6a999L    # 3.5987664916942947E163
        0x446950fe5ea8eaedL    # 3.7360384647155716E21
        0x3fe680291f4b3b03L    # 0.70314460861286
        -0x3bf9fa045d50274bL    # -5.078243583588661E19
        -0x5d06fbdad4337598L
        0x4d4621662fabc2aL
        -0x690f4f144678caf5L
        0x1e96ed84cc523641L
    .end array-data

    :array_4a
    .array-data 8
        0x320c367103176e03L    # 1.3080822393562488E-67
        -0x7183b83f4182b54L
        0x1c3a5b8b9a956a62L
        -0x492a8a3449db6affL    # -1.503603036138427E-44
        -0x5589b4a09526fa23L
        0x4b0638fe48996c5cL    # 2.660631365060055E53
        0x67b24b6fd950289fL    # 3.2604832133206287E191
        -0x7fce203e8ddded7dL    # -9.942767846482657E-308
    .end array-data

    :array_4b
    .array-data 8
        0x46f95288428af016L    # 8.217585917184266E33
        -0xb032985ea7a3b81L
        -0x7bdc3e12a40a529aL    # -1.013693763029056E-288
    .end array-data

    :array_4c
    .array-data 8
        -0x71d632674d13fd12L
        -0x5802dee155fb3b18L    # -4.620541083996474E-116
        -0x3d3fbfe6bf8bcaaL
    .end array-data

    :array_4d
    .array-data 8
        0x6fd72ff2025a1f28L    # 5.624794035816984E230
        0x2005ff78577b5aa3L
    .end array-data

    :array_4e
    .array-data 8
        -0x6d220e15f36581e7L    # -8.482954545044708E-218
        0x52004c66b4712732L    # 1.0131992499130243E87
    .end array-data

    :array_4f
    .array-data 8
        0x25c06786a42c2decL
        -0x596f7b474be8e83fL    # -6.246991227395425E-123
        -0x3d6776e51b389acdL    # -6.7442851967613E12
        0x4fb439df86127f58L    # 9.14850995837389E75
        0x58e672224401310dL    # 1.8112736125572676E120
        -0x4ff98ab55d6ee0d5L    # -2.4244067792169927E-77
    .end array-data

    :array_50
    .array-data 8
        -0x26e72caace2e4a20L    # -1.602642316979769E121
        0x546906675960c03eL    # 4.276248520687621E98
        0x68d8cb6156714e4bL    # 1.1583818142086186E197
    .end array-data

    :array_51
    .array-data 8
        0x4fff00d1cb686083L    # 2.2437034007886547E77
        0xe3a4340ca23d55bL
    .end array-data

    :array_52
    .array-data 8
        0x39260750acea58eL
        0x47a5a4ae9ab79151L    # 1.438443299675122E37
        0x5d7bbf145e3b1d2eL
        -0x4ef6db541619d153L    # -1.7788217706861302E-72
        0x1e863477b68cc48dL
        -0x501544e4ed6b49baL
        0x3af175bd2050182aL    # 9.026565569535727E-25
        -0xf2f50a4501ba3f8L    # -2.652544324273714E235
        -0x79f51ed4e3d8cc84L    # -1.480799495226016E-279
    .end array-data
.end method

.method public getAuthUserPassFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->auth_user_pass_file:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ignoreThisOption(Ljava/util/Vector;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->ignoreOptionsWithArg:[[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_3

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    array-length v6, v4

    .line 15
    if-ge v5, v6, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const/4 v5, 0x0

    .line 19
    :goto_1
    array-length v6, v4

    .line 20
    if-ge v5, v6, :cond_2

    .line 21
    .line 22
    aget-object v6, v4, v5

    .line 23
    .line 24
    invoke-virtual {p1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_3
    return v2
.end method

.method public parseConfig(Ljava/io/Reader;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    new-array v4, v3, [J

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    new-array v5, v5, [J

    .line 26
    .line 27
    fill-array-data v5, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance v2, Ljava/io/BufferedReader;

    .line 41
    .line 42
    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/4 v6, 0x1

    .line 52
    add-int/2addr v4, v6

    .line 53
    if-nez v5, :cond_0

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    if-ne v4, v6, :cond_2

    .line 57
    .line 58
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v8, v0, [J

    .line 61
    .line 62
    fill-array-data v8, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_1

    .line 77
    .line 78
    const-string v7, "PK\u0007\u00008"

    .line 79
    .line 80
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_1

    .line 85
    .line 86
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v8, v0, [J

    .line 89
    .line 90
    fill-array-data v8, :array_3

    .line 91
    .line 92
    .line 93
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    goto :goto_1

    .line 111
    :catch_0
    move-exception p1

    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_1
    new-instance p1, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    .line 115
    .line 116
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/16 v1, 0xd

    .line 119
    .line 120
    new-array v1, v1, [J

    .line 121
    .line 122
    fill-array-data v1, :array_4

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {p1, v0}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_2
    :goto_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v7, v3, [J

    .line 139
    .line 140
    fill-array-data v7, :array_5

    .line 141
    .line 142
    .line 143
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_3

    .line 155
    .line 156
    invoke-direct {p0, v5}, Lcom/tknetwork/tunnel/core/ConfigParser;->parsemeta(Ljava/lang/String;)Ljava/util/Vector;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iget-object v6, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->meta:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_3
    invoke-direct {p0, v5}, Lcom/tknetwork/tunnel/core/ConfigParser;->parseline(Ljava/lang/String;)Ljava/util/Vector;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-nez v6, :cond_4

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_4
    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Ljava/lang/String;

    .line 189
    .line 190
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 191
    .line 192
    new-array v8, v0, [J

    .line 193
    .line 194
    fill-array-data v8, :array_6

    .line 195
    .line 196
    .line 197
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_5

    .line 209
    .line 210
    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    check-cast v6, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v5, p1, v6}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    :cond_5
    invoke-direct {p0, v5, v2}, Lcom/tknetwork/tunnel/core/ConfigParser;->checkinlinefile(Ljava/util/Vector;Ljava/io/BufferedReader;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    if-eqz v7, :cond_6

    .line 237
    .line 238
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    check-cast v6, Ljava/lang/String;

    .line 243
    .line 244
    :cond_6
    iget-object v7, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 245
    .line 246
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-nez v7, :cond_7

    .line 251
    .line 252
    iget-object v7, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 253
    .line 254
    new-instance v8, Ljava/util/Vector;

    .line 255
    .line 256
    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :cond_7
    iget-object v7, p0, Lcom/tknetwork/tunnel/core/ConfigParser;->options:Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    check-cast v6, Ljava/util/Vector;

    .line 269
    .line 270
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :goto_2
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;

    .line 276
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    const/4 v3, 0x5

    .line 285
    new-array v3, v3, [J

    .line 286
    .line 287
    fill-array-data v3, :array_7

    .line 288
    .line 289
    .line 290
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-direct {v0, p1}, Lcom/tknetwork/tunnel/core/ConfigParser$ConfigParseError;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :array_0
    .array-data 8
        0x515e7a0159a473aaL    # 9.250923427090258E83
        -0x14faf8769a4167e2L    # -3.375784721253979E207
        0x46c3b666213f230L
        0x60ead1dc537ea21aL    # 7.364491268472853E158
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_1
    .array-data 8
        0x64ff64f614df6abcL    # 3.1804557665094457E178
        -0xda4fdb2df0edfbaL    # -7.203853242866896E242
        -0x496c1320b70fcdc3L    # -8.72539598384439E-46
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_2
    .array-data 8
        -0x81fefdba4087572L
        -0x65ff743b76971b62L    # -1.946994929600027E-183
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_3
    .array-data 8
        0x317ea7664f427329L    # 2.7759192502214937E-70
        0x56fe7420420c4bf2L    # 1.1443458693762147E111
    .end array-data

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_4
    .array-data 8
        -0x19cc1aef4336e9f7L    # -2.1133754090286214E184
        -0x433eebdad5145718L    # -4.740289309262739E-16
        -0x5fd46b86d7934d3fL
        -0x7a4b04f372782e7cL    # -3.611962314593219E-281
        -0x6c5b7e36cacccaceL    # -4.758989252402197E-214
        0x5651f70fe7107207L    # 6.592464128718556E107
        -0x1d8c01cb82e843dcL    # -1.842109058375867E166
        -0x77a8f2cbac477833L
        -0x1819fa0d0ade664eL    # -3.139991181526268E192
        0x3bc4a26cb76a15b2L    # 8.73903855468225E-21
        -0x54990a1400e6d5d2L    # -1.312185659050991E-99
        -0x36d04a4a84f1f2a1L    # -3.5357608979225872E44
        -0x5b6ad59956cc46a2L
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :array_5
    .array-data 8
        -0x7c4beefb425efa43L    # -8.043320296543389E-291
        0x4664e8c625582825L    # 1.3252826529839109E31
        0x4335fdb98b278878L    # 6.189947856324728E15
        0x1828fc38a81f2845L
    .end array-data

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_6
    .array-data 8
        0x2202d5dd31744521L    # 7.542009744897239E-145
        0x636f98c349255184L    # 9.539589688149086E170
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :array_7
    .array-data 8
        -0x15c6239e7bcb3a53L    # -5.067574002593888E203
        -0x71cad8fa89b52684L    # -3.17222275201122E-240
        0x78204a9906fc7a43L    # 4.303328104845948E270
        -0x1549430975ee126L
        -0x1193c47798785cb5L    # -8.164261439282975E223
    .end array-data
.end method
