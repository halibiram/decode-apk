.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;,
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_7

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_8

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_9

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_10

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_11

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_12

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_13

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_14

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_15

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_16

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_17

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_18

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_19

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v30

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v34

    filled-new-array/range {v3 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_20

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_21

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_22

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_23

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_24

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_25

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_26

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_27

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_28

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_29

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_30

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_31

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_32

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_33

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_34

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_35

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_36

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_37

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_38

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_39

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v30

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v34

    filled-new-array/range {v3 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_40

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_41

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_42

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_43

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_44

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_45

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_46

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_47

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_48

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_49

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_50

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_51

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_52

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_53

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_54

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_55

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_56

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_57

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_58

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_59

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v30

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v34

    filled-new-array/range {v3 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_60

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_61

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_62

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_63

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_64

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_65

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_66

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_67

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_68

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_69

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_70

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_71

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_72

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_73

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_74

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_75

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_76

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_77

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_78

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_79

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_7a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_7b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v30

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_7c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_7d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_7e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_7f

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v34

    filled-new-array/range {v3 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_80

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_81

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_82

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_83

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_84

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_85

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_86

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_87

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_88

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_89

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_8a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_8b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_8c

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_8d

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_8e

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_8f

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v18

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    .line 6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    return-void

    :array_0
    .array-data 8
        -0x24875ee09b92ee1eL    # -4.3705056057965075E132
        0x166837cc957fdc8bL    # 9.887137095568532E-201
    .end array-data

    :array_1
    .array-data 8
        0x6c911e45bd8f62daL    # 9.220539402523928E214
        0x3f1dc54f6f0dabeeL    # 1.1356637311414595E-4
    .end array-data

    :array_2
    .array-data 8
        0x33dcafb22f255222L    # 7.140614469125728E-59
        0x6a66e5b3ff6fcad2L    # 3.5894749461227975E204
    .end array-data

    :array_3
    .array-data 8
        0x3b78fa21207e2bafL    # 3.3056874222077326E-22
        -0x3ef9cbcad6a7b491L    # -181894.64518793995
    .end array-data

    :array_4
    .array-data 8
        0x3759ececffe5b364L    # 4.650156951453398E-42
        -0x77895a54916c4a09L    # -6.858945761228472E-268
    .end array-data

    :array_5
    .array-data 8
        -0x3c2a1e2bd7f88fdcL    # -6.3070984517798175E18
        -0x58d35b5fd2d841b7L    # -5.546145890213584E-120
    .end array-data

    :array_6
    .array-data 8
        0x83ce7ae4be199b9L
        0x68684706f2e43d70L    # 8.861153837557282E194
    .end array-data

    :array_7
    .array-data 8
        0x7ea8f3b914906e72L
        -0x493e881a801ea98cL    # -6.119591478137892E-45
    .end array-data

    :array_8
    .array-data 8
        0x1b51f718c9ffedf6L    # 4.433381927048836E-177
        0x5dc40c6d35c31fd6L    # 4.889570710185541E143
    .end array-data

    :array_9
    .array-data 8
        0x5016627fc2f6c595L    # 6.479945893877723E77
        -0x15a053ee447902faL    # -2.4825303260711085E204
    .end array-data

    :array_a
    .array-data 8
        0x572eb67e9a6a82aL
        0x6643086b02796f1fL    # 4.043634875218226E184
    .end array-data

    :array_b
    .array-data 8
        -0x31cfc45b5b097099L    # -4.376403026552278E68
        -0x3e9c72b70bce369L
    .end array-data

    :array_c
    .array-data 8
        -0x606250a7ac535a03L    # -2.162113363021982E-156
        -0x49df62fa141639aL    # -2.145864817950554E286
    .end array-data

    :array_d
    .array-data 8
        0x70b99e21e5493aa4L    # 1.0181619210275858E235
        0x54f4146b101a579L
    .end array-data

    :array_e
    .array-data 8
        -0x2b8c0a997b5b415bL    # -6.821008216905604E98
        0x7201b8f172155a1fL    # 1.477168085230254E241
    .end array-data

    :array_f
    .array-data 8
        0x6d3a492e6f145459L    # 1.4498368953462559E218
        -0x5fae69126ad05215L    # -5.247558084694731E-153
    .end array-data

    :array_10
    .array-data 8
        -0x300829e692287d2fL    # -1.7250362070826424E77
        -0x58f86de62a5fa04aL
    .end array-data

    :array_11
    .array-data 8
        0x6db3441323af168eL    # 2.720360932967321E220
        -0x40b534628032f23cL    # -8.177298583195648E-4
    .end array-data

    :array_12
    .array-data 8
        -0x3989716b6f13b264L    # -2.859433683375275E31
        0x196150ef692b87daL    # 1.989867276627771E-186
    .end array-data

    :array_13
    .array-data 8
        0x2396897fd29aff0eL    # 3.028029808544165E-137
        -0x6a0455a4a4b09112L    # -8.82390394464256E-203
    .end array-data

    :array_14
    .array-data 8
        -0x48f9ead693726fc0L    # -1.2377760885356267E-43
        0x71807b277ed181f6L    # 5.36601669805252E238
    .end array-data

    :array_15
    .array-data 8
        -0x745ef28eca8266c3L
        -0x667a3ceaeb832080L    # -1.0003046699325253E-185
    .end array-data

    :array_16
    .array-data 8
        0x6f7c404fd2f58eb1L    # 1.0708136499811808E229
        0x230d6dd779da8b67L    # 7.722689083157219E-140
    .end array-data

    :array_17
    .array-data 8
        0x563c3fa2e13dec09L    # 2.5915230827163567E107
        -0x52c7b8791975df7bL    # -7.449365908061945E-91
    .end array-data

    :array_18
    .array-data 8
        0x12d76937aa44b25eL    # 6.631980145846475E-218
        0x487bc05500346ff5L    # 1.510924325030965E41
    .end array-data

    :array_19
    .array-data 8
        0x72d88467490469f3L    # 1.6740459537554195E245
        0x777b08b50090eb34L    # 3.4867970283172985E267
    .end array-data

    :array_1a
    .array-data 8
        0x46a99b8fa47335b9L    # 2.5969253022265238E32
        0x6c4eedcce8379ddbL    # 5.206088280234873E213
    .end array-data

    :array_1b
    .array-data 8
        -0x1a34e5a5b712dad7L    # -2.2492814412820844E182
        -0x433e9120e039c9a3L    # -4.838655061027662E-16
    .end array-data

    :array_1c
    .array-data 8
        -0x31ebb431c3eacfeeL    # -1.3679554881303427E68
        -0x7539498ad88d811cL    # -9.454160096924375E-257
    .end array-data

    :array_1d
    .array-data 8
        -0x319aa8516f1ea4e6L    # -4.6031428931778516E69
        -0x31e8dd668363726cL    # -1.559306330133825E68
    .end array-data

    :array_1e
    .array-data 8
        0x697f1efccfa35858L
        -0x36abe913cff7c88dL    # -1.7920469789812454E45
    .end array-data

    :array_1f
    .array-data 8
        -0x776cdebef0ba64d9L
        -0x4baf8a516b3f9eecL    # -1.0488722878449336E-56
    .end array-data

    :array_20
    .array-data 8
        -0x39515c4ca2661888L    # -3.1072099478651318E32
        0x5b541d791dd06955L    # 8.923617522531859E131
    .end array-data

    :array_21
    .array-data 8
        -0x628b699540cff7f4L    # -8.72825492565819E-167
        -0x6a5df75840a80ea5L
    .end array-data

    :array_22
    .array-data 8
        -0x31534a1f6a196a30L    # -9.907614983790235E70
        -0xb4210556bd8f143L
    .end array-data

    :array_23
    .array-data 8
        0x772c00526dd667d2L    # 1.1286095690541037E266
        0x6f8c1e8da74453bcL    # 2.1316307618547493E229
    .end array-data

    :array_24
    .array-data 8
        0x5cb6ba1e91e7ddb6L    # 4.228834492558392E138
        -0x71d1288c9ac921ddL
    .end array-data

    :array_25
    .array-data 8
        -0x6493dfc6a4f85635L
        0x2c53cfc8794d496aL    # 3.710069846828943E-95
    .end array-data

    :array_26
    .array-data 8
        0x4dc6ae3548c7e7c3L    # 4.777070979042131E66
        -0x6ae4fbc5cae52cb9L
    .end array-data

    :array_27
    .array-data 8
        0x46615ce203c64075L    # 1.1004996949643918E31
        -0x2c0957d9e3ae1b2L
    .end array-data

    :array_28
    .array-data 8
        0x4180a3e03362490bL    # 3.489690242299088E7
        -0x7b0982a1f393eb56L    # -9.452530511074601E-285
    .end array-data

    :array_29
    .array-data 8
        -0xd2d0d1cfa688450L
        0x73a8b132097e0484L    # 1.381165385075915E249
    .end array-data

    :array_2a
    .array-data 8
        -0x1880de5f432e657aL
        0x3d48050c9c305a0eL    # 1.7067040165167036E-13
    .end array-data

    :array_2b
    .array-data 8
        -0x4c2901006ac497d5L    # -5.724200125397859E-59
        0x102bd122477ead0fL    # 8.958649000034993E-231
    .end array-data

    :array_2c
    .array-data 8
        0x4b7e1fd5baeb3748L    # 4.6165439729342805E55
        -0x261a7ea8a1c1a4fbL    # -1.1372933482989134E125
    .end array-data

    :array_2d
    .array-data 8
        -0xfa31d394258767eL    # -1.7938318817204842E233
        0x3cae80037e234672L    # 2.116366338758944E-16
    .end array-data

    :array_2e
    .array-data 8
        0x6815ccc56c9e0887L    # 2.4865172996689285E193
        0x2614694d0898620aL
    .end array-data

    :array_2f
    .array-data 8
        -0x28b9fa256e5e6743L    # -2.6481479377435988E112
        -0x15325452d9d5107bL    # -2.976826573680469E206
    .end array-data

    :array_30
    .array-data 8
        0x32ee571d3f9e9b5aL
        0x58faf1911d25c8L
    .end array-data

    :array_31
    .array-data 8
        0x1f21dcef19b9e40fL
        -0x7a999251cfdc8b6dL
    .end array-data

    :array_32
    .array-data 8
        0x5f9547f7c8a53d6cL    # 2.786457339611692E152
        0x11f9b215c396f17L
    .end array-data

    :array_33
    .array-data 8
        -0x385c874bc122f333L    # -1.2941031678611988E37
        -0x403ba6742c58085dL    # -0.15898273310443498
    .end array-data

    :array_34
    .array-data 8
        0x32ddf57c878d628bL    # 1.1379082515335406E-63
        0x1a9ca3f421479aedL
    .end array-data

    :array_35
    .array-data 8
        0x5fafa45a2b88d46L
        0x67c1ddddf2f14b69L    # 6.368407143199223E191
    .end array-data

    :array_36
    .array-data 8
        -0x49f12e3dc2586710L    # -2.6359335958620418E-48
        0x62c779a0ae139f83L    # 6.921419971210659E167
    .end array-data

    :array_37
    .array-data 8
        0x491ed4af15ea430L
        0x9444a40e1ba61b4L
    .end array-data

    :array_38
    .array-data 8
        0x2fddbb96e858e336L    # 4.0121441495340563E-78
        -0x39cb1ea61494f5d2L    # -1.6543060836236937E30
    .end array-data

    :array_39
    .array-data 8
        0x503ace602f2a6e23L    # 3.1039407098225875E78
        0x2f5f9be5e98c7556L    # 1.6661404580682564E-80
    .end array-data

    :array_3a
    .array-data 8
        0x7c832e71bd2d3e29L    # 5.981727696173303E291
        -0x5d3f0779fcdc0525L    # -2.783391048571911E-141
    .end array-data

    :array_3b
    .array-data 8
        -0x7e86bf184c5ed91eL
        0x210eaeea4d1344dL
    .end array-data

    :array_3c
    .array-data 8
        0x74cd900617fdfd94L    # 4.3347981312755755E254
        0x7675e7a94b8c1ce9L    # 4.311000232717699E262
    .end array-data

    :array_3d
    .array-data 8
        0x6822a10600901e90L    # 4.249684819694225E193
        0x60d7bf7a2244ae4aL    # 3.2604984430172075E158
    .end array-data

    :array_3e
    .array-data 8
        -0x647c50865b3e727aL    # -3.886314023176104E-176
        -0x5162a14f0df3809bL    # -3.7795796792292775E-84
    .end array-data

    :array_3f
    .array-data 8
        -0x4f826f54f0946aeaL    # -4.085268396731878E-75
        -0x74b5ba70f72c32e4L    # -2.799510344852038E-254
    .end array-data

    :array_40
    .array-data 8
        0x28f2daf6a7efa5c3L    # 1.960088418216055E-111
        -0x51d012393ecabbd6L    # -3.2100665793166346E-86
    .end array-data

    :array_41
    .array-data 8
        0x6083df6e21c20c0bL    # 8.526410876691517E156
        -0x553da866a7544e0cL    # -1.023676006717414E-102
    .end array-data

    :array_42
    .array-data 8
        0x97dac9c664a9467L
        0x63e0f68aa25d9ca6L    # 1.3110870880160002E173
    .end array-data

    :array_43
    .array-data 8
        -0x41e677bd0527af9bL    # -1.4861738327660049E-9
        -0x6a937aa41665a016L
    .end array-data

    :array_44
    .array-data 8
        -0x363020ac984a575L
        0x42baf45a199e7608L    # 2.963678597080603E13
    .end array-data

    :array_45
    .array-data 8
        0x3e6d6b30db08bc24L    # 5.479662535214045E-8
        -0x7ee5cb5b9387e647L
    .end array-data

    :array_46
    .array-data 8
        0x4ceb08df28a9cb28L    # 3.475441267818545E62
        0x65dd93bc3d13c837L    # 4.909223990577837E182
    .end array-data

    :array_47
    .array-data 8
        -0x3d134a011677f909L    # -2.5254393100703172E14
        0x1e81d1b4b974bf12L    # 9.901925609069133E-162
    .end array-data

    :array_48
    .array-data 8
        0x196c0f5d21a54815L    # 3.224486691312417E-186
        0x23d1cbbec707f730L    # 3.825616499456933E-136
    .end array-data

    :array_49
    .array-data 8
        0x7badaa853e303e16L    # 5.6465901828970986E287
        0x6c9f63ea7b4d195fL    # 1.6908003983389149E215
    .end array-data

    :array_4a
    .array-data 8
        -0x6b98735e7faafd4eL
        -0x70b547a6291eaf0cL    # -5.252327681658169E-235
    .end array-data

    :array_4b
    .array-data 8
        0x2b8e68a30c10c14dL    # 6.951360801307026E-99
        0x5e9832031efc232bL    # 4.834037144896635E147
    .end array-data

    :array_4c
    .array-data 8
        0x14ad71dece42ceabL
        0x7f09dd50b27bbb7fL    # 8.868495316011081E303
    .end array-data

    :array_4d
    .array-data 8
        -0x23d12843c5fb093cL    # -1.1208840124953891E136
        0x757ddf92494d9b6fL    # 8.970979877788874E257
    .end array-data

    :array_4e
    .array-data 8
        -0x53aa7c9e0c8703e7L    # -4.0287160929067134E-95
        -0x15a88d3ced3d7588L    # -1.837926912760053E204
    .end array-data

    :array_4f
    .array-data 8
        -0x5078ced94b1471d5L    # -9.779784867108241E-80
        -0xe0a5ea2533c526fL    # -9.014461879279086E240
    .end array-data

    :array_50
    .array-data 8
        0x105848b1fb9807b2L    # 6.256665457815114E-230
        0x1b5591463720018dL    # 5.322331425911521E-177
    .end array-data

    :array_51
    .array-data 8
        0x313e694ea124c6dL
        -0x5a5eead59316fca8L    # -1.97155007933814E-127
    .end array-data

    :array_52
    .array-data 8
        -0x30c05124f7e75e34L    # -5.5979067953422937E73
        0xf75a4c95b245995L
    .end array-data

    :array_53
    .array-data 8
        0x3c49535d12340712L    # 2.7458112717543848E-18
        -0x682ee9fc13911272L    # -5.851445120354342E-194
    .end array-data

    :array_54
    .array-data 8
        0x21985ed5e62e60e1L    # 7.623698227136601E-147
        0x166460c52aec59f8L
    .end array-data

    :array_55
    .array-data 8
        -0x3f59b8ce009dc0e3L    # -2851.5976515485804
        0x36c8346d4266361fL    # 8.479534522778508E-45
    .end array-data

    :array_56
    .array-data 8
        -0x6d18f52a35ef232aL
        -0x39712573475373adL    # -7.822344733702764E31
    .end array-data

    :array_57
    .array-data 8
        -0xaaeb6032056dd10L
        -0x45f35feb23890dfaL    # -4.516278903878324E-29
    .end array-data

    :array_58
    .array-data 8
        -0x7ca82fef820b15c4L
        0x7c2ca4f9f84cfb86L
    .end array-data

    :array_59
    .array-data 8
        0xde9bbf14d5e46fcL    # 1.206044495549986E-241
        -0x96bdd0461a7b295L
    .end array-data

    :array_5a
    .array-data 8
        0x40220923f56fe39eL    # 9.017852468403188
        0xa097424ef4ca238L
    .end array-data

    :array_5b
    .array-data 8
        -0x15e92606cb925fb1L    # -1.1194663020534676E203
        -0x4bf7de9b45cffb31L    # -4.805251739532294E-58
    .end array-data

    :array_5c
    .array-data 8
        0x4af8e59880c64f97L    # 1.4904032916924337E53
        0x4774a708cc6f3052L    # 1.7157407467066792E36
    .end array-data

    :array_5d
    .array-data 8
        -0x493bd62f1ea04039L    # -7.063715574566859E-45
        0x683d03fd929389bdL    # 1.3238189705409038E194
    .end array-data

    :array_5e
    .array-data 8
        0x5d02ebf208273c98L    # 1.1266454790145488E140
        0x3654bb00e300507bL    # 5.673748629714032E-47
    .end array-data

    :array_5f
    .array-data 8
        -0x1072160a33337c4bL    # -2.2676700005854927E229
        0x16bb4434277d0c31L
    .end array-data

    :array_60
    .array-data 8
        -0x1de97f854aded90cL    # -3.239487488043468E164
        -0x3d352a3e4ad511cfL    # -5.901076046383638E13
    .end array-data

    :array_61
    .array-data 8
        -0x809e31f9a559998L    # -7.30129424678447E269
        -0x3d2915ab821550bL
    .end array-data

    :array_62
    .array-data 8
        0x539739bdabaad14eL    # 4.8446752482630556E94
        0x612132b1aff6bf4cL    # 7.555901023963016E159
    .end array-data

    :array_63
    .array-data 8
        -0x322c617d4d27ef3aL    # -8.264563985138192E66
        -0x550ca832204d1c79L    # -8.636245359119064E-102
    .end array-data

    :array_64
    .array-data 8
        -0x30f1d37580fd1e39L    # -6.664102828887123E72
        -0x22f5b60ce29c6d09L    # -1.5653081698156784E140
    .end array-data

    :array_65
    .array-data 8
        0x6457083789c373aeL    # 2.2786151631102773E175
        0x48500992a4d35791L    # 2.1828969364391374E40
    .end array-data

    :array_66
    .array-data 8
        0xa402d12fd94c97cL
        -0x2c56c9df7e959372L    # -1.051783107468006E95
    .end array-data

    :array_67
    .array-data 8
        0x14b6af25560eeb4fL    # 6.899947493140957E-209
        0x4546f763da32620aL    # 5.552926900638197E25
    .end array-data

    :array_68
    .array-data 8
        -0x667323e7d4162af3L
        0x71c9bde8a2f0b72L
    .end array-data

    :array_69
    .array-data 8
        -0xcda2cb51cffce67L    # -4.768786842342552E246
        -0x243f2b3340ab399aL    # -9.557502886554711E133
    .end array-data

    :array_6a
    .array-data 8
        -0x15756561619f5aedL    # -1.6682215357000999E205
        -0x3a9c037d37be9043L    # -1.932963154642258E26
    .end array-data

    :array_6b
    .array-data 8
        -0x34bdd1da119bf3aL    # -5.023596581148637E292
        0x614c05e99bc33f08L    # 4.924745797051927E160
    .end array-data

    :array_6c
    .array-data 8
        0x7f41fbb713c0fd4cL    # 9.86584080616699E304
        -0x44b4636d54a82b6dL    # -4.5679581903294566E-23
    .end array-data

    :array_6d
    .array-data 8
        -0x4973daf2c2741171L    # -6.162370551235829E-46
        -0x15ce6ece8b15e35fL    # -3.4423788538107275E203
    .end array-data

    :array_6e
    .array-data 8
        0x2405ba62c6de9434L
        0x470a384254ecee9fL    # 1.7017598575201266E34
    .end array-data

    :array_6f
    .array-data 8
        0x16847d00cf20d4a8L    # 3.3457900172856E-200
        0x4344ad29f9ec68e0L    # 1.1639790664995264E16
    .end array-data

    :array_70
    .array-data 8
        -0x54bea28ddb707a9aL    # -2.481000282452066E-100
        -0x763b408ec878f73cL
    .end array-data

    :array_71
    .array-data 8
        -0x7487862e9bafc0b4L
        0x2760f5e856692c52L    # 5.254511295278651E-119
    .end array-data

    :array_72
    .array-data 8
        -0x6184b83908f1d39bL    # -7.579712837843893E-162
        0x2027c6735309013aL
    .end array-data

    :array_73
    .array-data 8
        -0x738c7226d0df7062L
        0x2662013cf7d85466L    # 8.511399469231287E-124
    .end array-data

    :array_74
    .array-data 8
        -0x33b021284ed8ac15L    # -4.0010847429602594E59
        0x32de2a5a57b4ae3dL    # 1.1457519550946823E-63
    .end array-data

    :array_75
    .array-data 8
        -0x44e576117ddc4bL
        -0x2be427f612b52993L    # -1.4868553143854327E97
    .end array-data

    :array_76
    .array-data 8
        -0x107a80b6f0a64160L
        -0x75b12505c9fae224L
    .end array-data

    :array_77
    .array-data 8
        0x21c3c9f8c319ea95L    # 4.95239079849583E-146
        -0x36511062f3bf52f3L    # -8.830664101270641E46
    .end array-data

    :array_78
    .array-data 8
        -0x1cd09bc26e1ebe2L    # -7.936686344955326E299
        -0x7a941bb823c2e4aaL    # -1.5005463000323127E-282
    .end array-data

    :array_79
    .array-data 8
        -0x57807f74dc5b1eb7L
        0x4cbc5b45215344beL    # 4.556717656417554E61
    .end array-data

    :array_7a
    .array-data 8
        -0x4db54464dd3588afL    # -1.983151989582795E-66
        0x74e7ee36d2642814L    # 1.4035844669063203E255
    .end array-data

    :array_7b
    .array-data 8
        0x2eda8df7a4b55396L    # 5.467645072105892E-83
        0x6e951f14bf74fe6eL    # 4.886295152289963E224
    .end array-data

    :array_7c
    .array-data 8
        0x121a832b99a28abaL
        0x4da69a6126d4e065L    # 1.1901892294525006E66
    .end array-data

    :array_7d
    .array-data 8
        0x48b6eacc67fe6a48L    # 1.996368066836094E42
        -0x5c7b4115d4a937a7L
    .end array-data

    :array_7e
    .array-data 8
        -0x11d06e5285a44c74L    # -5.705692622136443E222
        0xbac22a3191db567L
    .end array-data

    :array_7f
    .array-data 8
        0x469dd11255041408L    # 1.5118855949487753E32
        -0x18164db1b06451aeL    # -3.6637121635069543E192
    .end array-data

    :array_80
    .array-data 8
        0x2f9871cf0fa0341dL    # 2.061595606242041E-79
        0x58b612597b3142abL    # 2.2263510742994457E119
    .end array-data

    :array_81
    .array-data 8
        -0x4d2812155473410fL    # -9.088915131432605E-64
        -0x10e17e8f44039978L    # -1.806661108544945E227
    .end array-data

    :array_82
    .array-data 8
        -0x28b88fa72e85f21cL    # -2.818414062989579E112
        0x4cb02b2b335c8597L    # 2.598198335914365E61
    .end array-data

    :array_83
    .array-data 8
        0x2a929a771b2c2634L
        0x16c4dfec92b3ed11L    # 5.454226784583865E-199
    .end array-data

    :array_84
    .array-data 8
        -0x72d05893aa6e4657L    # -3.621780254160837E-245
        0x4ab7491b64d769e5L    # 8.71216765172002E51
    .end array-data

    :array_85
    .array-data 8
        -0x4c970c8e8052a1c5L    # -4.852192087550469E-61
        -0x4e57c8200b9b1e5aL    # -1.754502397660882E-69
    .end array-data

    :array_86
    .array-data 8
        -0x43652f91be091fe2L    # -9.303038339187801E-17
        -0x3367341b89b8def1L    # -9.961591646749881E60
    .end array-data

    :array_87
    .array-data 8
        0x4d0b0b466fe2ff74L    # 1.3906592776225779E63
        -0x72db21670702429cL
    .end array-data

    :array_88
    .array-data 8
        -0x4d3bdb7d070fbd88L    # -3.825312916722667E-64
        0x26e36ef78ae8a000L
    .end array-data

    :array_89
    .array-data 8
        0xc41dcc1feeaa468L
        0x7165749586563b04L    # 1.7463984454328561E238
    .end array-data

    :array_8a
    .array-data 8
        0x14d5389c59a9dadeL    # 2.581972616694764E-208
        -0x92303f909799cd6L
    .end array-data

    :array_8b
    .array-data 8
        -0x157b51e1e276689aL    # -1.2967632271231945E205
        0x622215e5432bcf6aL    # 5.207375246270785E164
    .end array-data

    :array_8c
    .array-data 8
        0x291203791a57e043L    # 7.490336259904755E-111
        0x3f8b6195f4573c4dL    # 0.01336972381514392
    .end array-data

    :array_8d
    .array-data 8
        -0x2b796d412ecc3590L    # -1.5429156518589094E99
        -0x6f88eb9cf1124282L
    .end array-data

    :array_8e
    .array-data 8
        -0x3630050a4d12ab52L    # -3.65150607181906E47
        0x61803c48809b42b8L    # 4.565126923388998E161
    .end array-data

    :array_8f
    .array-data 8
        0x6215a0d8212cf122L    # 3.1137231253174954E164
        -0x3f8fd22e8d35ef3dL    # -258.8636348622496
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

.method public static convertBoolArrayToByteArray([Z)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, 0x7

    .line 3
    .line 4
    div-int/lit8 v0, v0, 0x8

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    mul-int/lit8 v3, v2, 0x8

    .line 12
    .line 13
    invoke-static {p0, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readByte([ZI)B

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    aput-byte v3, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v1
.end method

.method private correctBits([Z)Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x2

    .line 12
    if-gt v2, v3, :cond_0

    .line 13
    .line 14
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 15
    .line 16
    const/4 v4, 0x6

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    if-gt v2, v4, :cond_1

    .line 27
    .line 28
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/16 v4, 0x16

    .line 38
    .line 39
    if-gt v2, v4, :cond_2

    .line 40
    .line 41
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 42
    .line 43
    const/16 v4, 0xa

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    .line 48
    const/16 v4, 0xc

    .line 49
    .line 50
    :goto_0
    iget-object v5, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    array-length v6, v0

    .line 57
    div-int/2addr v6, v4

    .line 58
    if-lt v6, v5, :cond_e

    .line 59
    .line 60
    array-length v7, v0

    .line 61
    rem-int/2addr v7, v4

    .line 62
    new-array v8, v6, [I

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    :goto_1
    if-ge v10, v6, :cond_3

    .line 67
    .line 68
    invoke-static {v0, v7, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    aput v11, v8, v10

    .line 73
    .line 74
    add-int/lit8 v10, v10, 0x1

    .line 75
    .line 76
    add-int/2addr v7, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :try_start_0
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 79
    .line 80
    invoke-direct {v0, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 81
    .line 82
    .line 83
    sub-int v2, v6, v5

    .line 84
    .line 85
    invoke-virtual {v0, v8, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount([II)I

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v7, 0x1

    .line 90
    shl-int v10, v7, v4

    .line 91
    .line 92
    add-int/lit8 v11, v10, -0x1

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    :goto_2
    if-ge v12, v5, :cond_7

    .line 97
    .line 98
    aget v14, v8, v12

    .line 99
    .line 100
    if-eqz v14, :cond_6

    .line 101
    .line 102
    if-eq v14, v11, :cond_6

    .line 103
    .line 104
    if-eq v14, v7, :cond_4

    .line 105
    .line 106
    add-int/lit8 v15, v10, -0x2

    .line 107
    .line 108
    if-ne v14, v15, :cond_5

    .line 109
    .line 110
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 111
    .line 112
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    throw v0

    .line 120
    :cond_7
    mul-int v11, v5, v4

    .line 121
    .line 122
    sub-int/2addr v11, v13

    .line 123
    new-array v11, v11, [Z

    .line 124
    .line 125
    const/4 v12, 0x0

    .line 126
    const/4 v13, 0x0

    .line 127
    :goto_3
    if-ge v12, v5, :cond_d

    .line 128
    .line 129
    aget v14, v8, v12

    .line 130
    .line 131
    if-eq v14, v7, :cond_a

    .line 132
    .line 133
    add-int/lit8 v15, v10, -0x2

    .line 134
    .line 135
    if-ne v14, v15, :cond_8

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_8
    add-int/lit8 v15, v4, -0x1

    .line 139
    .line 140
    :goto_4
    if-ltz v15, :cond_c

    .line 141
    .line 142
    add-int/lit8 v16, v13, 0x1

    .line 143
    .line 144
    shl-int v17, v7, v15

    .line 145
    .line 146
    and-int v17, v14, v17

    .line 147
    .line 148
    if-eqz v17, :cond_9

    .line 149
    .line 150
    const/16 v17, 0x1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_9
    const/16 v17, 0x0

    .line 154
    .line 155
    :goto_5
    aput-boolean v17, v11, v13

    .line 156
    .line 157
    add-int/lit8 v15, v15, -0x1

    .line 158
    .line 159
    move/from16 v13, v16

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_a
    :goto_6
    add-int v15, v13, v4

    .line 163
    .line 164
    sub-int/2addr v15, v7

    .line 165
    if-le v14, v7, :cond_b

    .line 166
    .line 167
    const/4 v14, 0x1

    .line 168
    goto :goto_7

    .line 169
    :cond_b
    const/4 v14, 0x0

    .line 170
    :goto_7
    invoke-static {v11, v13, v15, v14}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v14, v4, -0x1

    .line 174
    .line 175
    add-int/2addr v14, v13

    .line 176
    move v13, v14

    .line 177
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_d
    mul-int/lit8 v2, v2, 0x64

    .line 181
    .line 182
    div-int/2addr v2, v6

    .line 183
    new-instance v3, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;

    .line 184
    .line 185
    invoke-direct {v3, v11, v0, v2}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;-><init>([ZII)V

    .line 186
    .line 187
    .line 188
    return-object v3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    throw v0

    .line 195
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    throw v0
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/16 v4, 0xb

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v4, 0xe

    .line 23
    .line 24
    :goto_0
    mul-int/lit8 v5, v3, 0x4

    .line 25
    .line 26
    add-int/2addr v5, v4

    .line 27
    new-array v4, v5, [I

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    new-array v6, v6, [Z

    .line 34
    .line 35
    const/4 v8, 0x2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    :goto_1
    if-ge v9, v5, :cond_2

    .line 40
    .line 41
    aput v9, v4, v9

    .line 42
    .line 43
    add-int/lit8 v9, v9, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v9, v5, 0x1

    .line 47
    .line 48
    div-int/lit8 v10, v5, 0x2

    .line 49
    .line 50
    add-int/lit8 v11, v10, -0x1

    .line 51
    .line 52
    div-int/lit8 v11, v11, 0xf

    .line 53
    .line 54
    mul-int/lit8 v11, v11, 0x2

    .line 55
    .line 56
    add-int/2addr v11, v9

    .line 57
    div-int/2addr v11, v8

    .line 58
    const/4 v9, 0x0

    .line 59
    :goto_2
    if-ge v9, v10, :cond_2

    .line 60
    .line 61
    div-int/lit8 v12, v9, 0xf

    .line 62
    .line 63
    add-int/2addr v12, v9

    .line 64
    sub-int v13, v10, v9

    .line 65
    .line 66
    add-int/lit8 v13, v13, -0x1

    .line 67
    .line 68
    sub-int v14, v11, v12

    .line 69
    .line 70
    add-int/lit8 v14, v14, -0x1

    .line 71
    .line 72
    aput v14, v4, v13

    .line 73
    .line 74
    add-int v13, v10, v9

    .line 75
    .line 76
    add-int/2addr v12, v11

    .line 77
    add-int/lit8 v12, v12, 0x1

    .line 78
    .line 79
    aput v12, v4, v13

    .line 80
    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    :goto_3
    if-ge v9, v3, :cond_6

    .line 87
    .line 88
    sub-int v11, v3, v9

    .line 89
    .line 90
    mul-int/lit8 v11, v11, 0x4

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    const/16 v12, 0x9

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_3
    const/16 v12, 0xc

    .line 98
    .line 99
    :goto_4
    add-int/2addr v11, v12

    .line 100
    mul-int/lit8 v12, v9, 0x2

    .line 101
    .line 102
    add-int/lit8 v13, v5, -0x1

    .line 103
    .line 104
    sub-int/2addr v13, v12

    .line 105
    const/4 v14, 0x0

    .line 106
    :goto_5
    if-ge v14, v11, :cond_5

    .line 107
    .line 108
    mul-int/lit8 v15, v14, 0x2

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    :goto_6
    if-ge v7, v8, :cond_4

    .line 112
    .line 113
    add-int v16, v10, v15

    .line 114
    .line 115
    add-int v16, v16, v7

    .line 116
    .line 117
    add-int v17, v12, v7

    .line 118
    .line 119
    aget v8, v4, v17

    .line 120
    .line 121
    add-int v18, v12, v14

    .line 122
    .line 123
    aget v0, v4, v18

    .line 124
    .line 125
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    aput-boolean v0, v6, v16

    .line 130
    .line 131
    mul-int/lit8 v0, v11, 0x2

    .line 132
    .line 133
    add-int/2addr v0, v10

    .line 134
    add-int/2addr v0, v15

    .line 135
    add-int/2addr v0, v7

    .line 136
    aget v8, v4, v18

    .line 137
    .line 138
    sub-int v16, v13, v7

    .line 139
    .line 140
    move/from16 v18, v2

    .line 141
    .line 142
    aget v2, v4, v16

    .line 143
    .line 144
    invoke-virtual {v1, v8, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    aput-boolean v2, v6, v0

    .line 149
    .line 150
    mul-int/lit8 v0, v11, 0x4

    .line 151
    .line 152
    add-int/2addr v0, v10

    .line 153
    add-int/2addr v0, v15

    .line 154
    add-int/2addr v0, v7

    .line 155
    aget v2, v4, v16

    .line 156
    .line 157
    sub-int v8, v13, v14

    .line 158
    .line 159
    move/from16 v16, v3

    .line 160
    .line 161
    aget v3, v4, v8

    .line 162
    .line 163
    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    aput-boolean v2, v6, v0

    .line 168
    .line 169
    mul-int/lit8 v0, v11, 0x6

    .line 170
    .line 171
    add-int/2addr v0, v10

    .line 172
    add-int/2addr v0, v15

    .line 173
    add-int/2addr v0, v7

    .line 174
    aget v2, v4, v8

    .line 175
    .line 176
    aget v3, v4, v17

    .line 177
    .line 178
    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    aput-boolean v2, v6, v0

    .line 183
    .line 184
    add-int/lit8 v7, v7, 0x1

    .line 185
    .line 186
    move-object/from16 v0, p0

    .line 187
    .line 188
    move/from16 v3, v16

    .line 189
    .line 190
    move/from16 v2, v18

    .line 191
    .line 192
    const/4 v8, 0x2

    .line 193
    goto :goto_6

    .line 194
    :cond_4
    move/from16 v18, v2

    .line 195
    .line 196
    move/from16 v16, v3

    .line 197
    .line 198
    add-int/lit8 v14, v14, 0x1

    .line 199
    .line 200
    move-object/from16 v0, p0

    .line 201
    .line 202
    const/4 v8, 0x2

    .line 203
    goto :goto_5

    .line 204
    :cond_5
    move/from16 v18, v2

    .line 205
    .line 206
    move/from16 v16, v3

    .line 207
    .line 208
    mul-int/lit8 v11, v11, 0x8

    .line 209
    .line 210
    add-int/2addr v10, v11

    .line 211
    add-int/lit8 v9, v9, 0x1

    .line 212
    .line 213
    move-object/from16 v0, p0

    .line 214
    .line 215
    const/4 v8, 0x2

    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_6
    return-object v6
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    aget p0, v1, p0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p0, v1, :cond_4

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq p0, v1, :cond_3

    .line 15
    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-ne p0, v1, :cond_0

    .line 23
    .line 24
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    .line 25
    .line 26
    aget-object p0, p0, p1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v0, v0, [J

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 50
    .line 51
    aget-object p0, p0, p1

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 55
    .line 56
    aget-object p0, p0, p1

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 60
    .line 61
    aget-object p0, p0, p1

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 65
    .line 66
    aget-object p0, p0, p1

    .line 67
    .line 68
    return-object p0

    .line 69
    :array_0
    .array-data 8
        -0x2081a9cc9bce551bL    # -9.930393978982378E151
        -0x1fa57ed0ca57ae53L    # -1.4214757714377997E156
        -0x5aaeb952fc58a4a8L    # -6.230845861272202E-129
    .end array-data
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    array-length v4, v0

    .line 8
    sget-object v5, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 9
    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    array-length v7, v0

    .line 13
    const/4 v8, 0x5

    .line 14
    sub-int/2addr v7, v8

    .line 15
    const/4 v9, 0x4

    .line 16
    div-int/2addr v7, v9

    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 21
    .line 22
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    move-object v12, v10

    .line 28
    const/4 v13, 0x0

    .line 29
    move-object v10, v5

    .line 30
    :goto_0
    if-ge v13, v4, :cond_12

    .line 31
    .line 32
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 33
    .line 34
    const/16 v15, 0xb

    .line 35
    .line 36
    if-ne v5, v14, :cond_5

    .line 37
    .line 38
    sub-int v5, v4, v13

    .line 39
    .line 40
    if-ge v5, v8, :cond_0

    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_0
    invoke-static {v0, v13, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    add-int/lit8 v14, v13, 0x5

    .line 49
    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    sub-int v5, v4, v14

    .line 53
    .line 54
    if-ge v5, v15, :cond_1

    .line 55
    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_1
    invoke-static {v0, v14, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    add-int/lit8 v5, v5, 0x1f

    .line 63
    .line 64
    add-int/lit8 v14, v13, 0x10

    .line 65
    .line 66
    :cond_2
    const/4 v13, 0x0

    .line 67
    :goto_1
    if-ge v13, v5, :cond_4

    .line 68
    .line 69
    sub-int v15, v4, v14

    .line 70
    .line 71
    if-ge v15, v2, :cond_3

    .line 72
    .line 73
    move v13, v4

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {v0, v14, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    int-to-byte v15, v15

    .line 80
    invoke-virtual {v7, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    .line 82
    .line 83
    add-int/2addr v14, v2

    .line 84
    add-int/lit8 v13, v13, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    move v13, v14

    .line 88
    :goto_2
    move-object v5, v10

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 91
    .line 92
    if-ne v5, v14, :cond_6

    .line 93
    .line 94
    const/4 v14, 0x4

    .line 95
    goto :goto_3

    .line 96
    :cond_6
    const/4 v14, 0x5

    .line 97
    :goto_3
    sub-int v2, v4, v13

    .line 98
    .line 99
    if-ge v2, v14, :cond_7

    .line 100
    .line 101
    goto/16 :goto_7

    .line 102
    .line 103
    :cond_7
    invoke-static {v0, v13, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    add-int/2addr v13, v14

    .line 108
    invoke-static {v5, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v11, v3, [J

    .line 115
    .line 116
    fill-array-data v11, :array_0

    .line 117
    .line 118
    .line 119
    invoke-direct {v14, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-eqz v11, :cond_f

    .line 131
    .line 132
    sub-int v2, v4, v13

    .line 133
    .line 134
    if-ge v2, v1, :cond_8

    .line 135
    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :cond_8
    invoke-static {v0, v13, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    add-int/2addr v13, v1

    .line 143
    :try_start_0
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 155
    .line 156
    .line 157
    if-eqz v2, :cond_e

    .line 158
    .line 159
    const/4 v5, 0x7

    .line 160
    if-eq v2, v5, :cond_d

    .line 161
    .line 162
    sub-int v5, v4, v13

    .line 163
    .line 164
    mul-int/lit8 v11, v2, 0x4

    .line 165
    .line 166
    if-ge v5, v11, :cond_9

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_9
    const/4 v5, 0x0

    .line 170
    :goto_4
    add-int/lit8 v11, v2, -0x1

    .line 171
    .line 172
    if-lez v2, :cond_b

    .line 173
    .line 174
    invoke-static {v0, v13, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    add-int/2addr v13, v9

    .line 179
    if-lt v2, v3, :cond_a

    .line 180
    .line 181
    if-gt v2, v15, :cond_a

    .line 182
    .line 183
    mul-int/lit8 v5, v5, 0xa

    .line 184
    .line 185
    sub-int/2addr v2, v3

    .line 186
    add-int/2addr v5, v2

    .line 187
    move v2, v11

    .line 188
    goto :goto_4

    .line 189
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    throw v0

    .line 194
    :cond_b
    invoke-static {v5}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    if-eqz v2, :cond_c

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharset()Ljava/nio/charset/Charset;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    goto :goto_5

    .line 205
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    throw v0

    .line 210
    :cond_d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    throw v0

    .line 215
    :cond_e
    const/16 v2, 0x1d

    .line 216
    .line 217
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :goto_5
    move-object v5, v10

    .line 221
    const/4 v11, 0x0

    .line 222
    goto :goto_6

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 225
    .line 226
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    throw v1

    .line 230
    :cond_f
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v14, v3, [J

    .line 233
    .line 234
    fill-array-data v14, :array_1

    .line 235
    .line 236
    .line 237
    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    if-eqz v11, :cond_11

    .line 249
    .line 250
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    invoke-static {v10}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    const/4 v11, 0x6

    .line 259
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    const/16 v11, 0x4c

    .line 264
    .line 265
    if-ne v2, v11, :cond_10

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_10
    const/4 v11, 0x0

    .line 269
    move-object/from16 v16, v10

    .line 270
    .line 271
    move-object v10, v5

    .line 272
    move-object/from16 v5, v16

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_11
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 276
    .line 277
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    array-length v5, v2

    .line 282
    const/4 v11, 0x0

    .line 283
    invoke-virtual {v7, v2, v11, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 284
    .line 285
    .line 286
    move-object v5, v10

    .line 287
    :goto_6
    const/16 v2, 0x8

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_12
    :goto_7
    :try_start_1
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    .line 301
    .line 302
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    return-object v0

    .line 307
    :catch_1
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 309
    .line 310
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    throw v1

    .line 314
    nop

    .line 315
    :array_0
    .array-data 8
        0x6a9b98760d4cb553L    # 3.4607970779671357E205
        -0x465a71a501d5c0caL    # -5.3139829935568386E-31
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
    :array_1
    .array-data 8
        0x143b68bf72bd1832L
        0x3c54eb5afa54f11dL    # 4.536162453030033E-18
    .end array-data
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x44

    .line 6
    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0x50

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4c

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x4d

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 37
    .line 38
    return-object p0
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static readByte([ZI)B
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    sub-int/2addr v0, p1

    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :goto_0
    int-to-byte p0, p0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    shl-int/2addr p0, v1

    .line 19
    goto :goto_0
.end method

.method private static readCode([ZII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    :goto_0
    add-int v2, p1, p2

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    shl-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    aget-boolean v2, p0, v1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    :goto_0
    mul-int/lit8 v0, p0, 0x10

    add-int/2addr v0, p1

    mul-int v0, v0, p0

    return v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$000(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)[Z

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->convertBoolArrayToByteArray([Z)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$000(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)[Z

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/google/zxing/common/DecoderResult;

    .line 32
    .line 33
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    new-array v4, v4, [J

    .line 37
    .line 38
    fill-array-data v4, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$100(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x1

    .line 57
    new-array v5, v5, [Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    aput-object v4, v5, v6

    .line 61
    .line 62
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$000(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)[Z

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    array-length v0, v0

    .line 75
    invoke-virtual {v2, v0}, Lcom/google/zxing/common/DecoderResult;->setNumBits(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$200(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v2, p1}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        0x249e8f0e1461a40cL
        0x5ae7733b5e02130L
    .end array-data
.end method
