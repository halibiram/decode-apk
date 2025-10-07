.class public final Lcom/google/zxing/client/android/Intents$Scan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scan"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String;

.field public static final AZTEC_MODE:Ljava/lang/String;

.field public static final BARCODE_IMAGE_ENABLED:Ljava/lang/String;

.field public static final BEEP_ENABLED:Ljava/lang/String;

.field public static final CAMERA_ID:Ljava/lang/String;

.field public static final CHARACTER_SET:Ljava/lang/String;

.field public static final DATA_MATRIX_MODE:Ljava/lang/String;

.field public static final FORMATS:Ljava/lang/String;

.field public static final INVERTED_SCAN:I = 0x1

.field public static final MISSING_CAMERA_PERMISSION:Ljava/lang/String;

.field public static final MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE:Ljava/lang/String;

.field public static final MIXED_SCAN:I = 0x2

.field public static final MODE:Ljava/lang/String;

.field public static final NORMAL_SCAN:I

.field public static final ONE_D_MODE:Ljava/lang/String;

.field public static final ORIENTATION_LOCKED:Ljava/lang/String;

.field public static final PDF417_MODE:Ljava/lang/String;

.field public static final PRODUCT_MODE:Ljava/lang/String;

.field public static final PROMPT_MESSAGE:Ljava/lang/String;

.field public static final QR_CODE_MODE:Ljava/lang/String;

.field public static final RESULT:Ljava/lang/String;

.field public static final RESULT_BARCODE_IMAGE_PATH:Ljava/lang/String;

.field public static final RESULT_BYTES:Ljava/lang/String;

.field public static final RESULT_BYTE_SEGMENTS_PREFIX:Ljava/lang/String;

.field public static final RESULT_ERROR_CORRECTION_LEVEL:Ljava/lang/String;

.field public static final RESULT_FORMAT:Ljava/lang/String;

.field public static final RESULT_ORIENTATION:Ljava/lang/String;

.field public static final RESULT_UPC_EAN_EXTENSION:Ljava/lang/String;

.field public static final SCAN_TYPE:Ljava/lang/String;

.field public static final SHOW_MISSING_CAMERA_PERMISSION_DIALOG:Ljava/lang/String;

.field public static final TIMEOUT:Ljava/lang/String;

.field public static final TORCH_ENABLED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->ACTION:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->PRODUCT_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_3

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->ONE_D_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->QR_CODE_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_5

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->DATA_MATRIX_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->AZTEC_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_7

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->PDF417_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_8

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->FORMATS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_9

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->CAMERA_ID:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->TORCH_ENABLED:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_b

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->CHARACTER_SET:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->BEEP_ENABLED:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v4, v3, [J

    fill-array-data v4, :array_d

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->BARCODE_IMAGE_ENABLED:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x2

    new-array v4, v4, [J

    fill-array-data v4, :array_e

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->TIMEOUT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v5, v4, [J

    fill-array-data v5, :array_f

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->MISSING_CAMERA_PERMISSION:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_10

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->SHOW_MISSING_CAMERA_PERMISSION_DIALOG:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_11

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_12

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->ORIENTATION_LOCKED:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_13

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->PROMPT_MESSAGE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_14

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->RESULT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_15

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->RESULT_FORMAT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_16

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->RESULT_UPC_EAN_EXTENSION:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_17

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->RESULT_BYTES:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_18

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->RESULT_ORIENTATION:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_19

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->RESULT_ERROR_CORRECTION_LEVEL:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_1a

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->RESULT_BYTE_SEGMENTS_PREFIX:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_1b

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->RESULT_BARCODE_IMAGE_PATH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_1c

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->SCAN_TYPE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x170198919840493bL    # -5.6818308757400775E197
        0x1a09a2a8afcc58e3L    # 3.016563821649519E-183
        0x2d3dff0e03c777L
        0x6c1b6509d05047d9L    # 5.763989800648293E212
        0x65b814f7cb7e89d9L    # 9.992824408323327E181
        -0x134a31d8ce67b3fdL    # -4.698061429107697E215
    .end array-data

    :array_1
    .array-data 8
        -0x5b480b573d8ea8c8L    # -8.437441501075752E-132
        0x974418eb590fefbL
        -0x347d061cba1a2313L    # -5.816165132039358E55
    .end array-data

    :array_2
    .array-data 8
        0x64f9549e1b188387L    # 2.56614891942742E178
        0x3a39ff03cc204376L    # 3.281175641117043E-28
        -0x69ebdabac78e25bcL
    .end array-data

    :array_3
    .array-data 8
        -0x32cd816ebf71c9fcL    # -7.608156464170232E63
        0x7e39395906582c76L    # 1.055771438140391E300
        0x2911a0d5b61d01f3L    # 7.330119852411453E-111
    .end array-data

    :array_4
    .array-data 8
        -0x651b385a6cbe5908L    # -4.006225764414748E-179
        0x7ee93e69435562f2L    # 2.1639153770275287E303
        -0x679d93ee8bfff36cL
    .end array-data

    :array_5
    .array-data 8
        0x4105d4142668b45aL    # 178818.51875439548
        -0x4ef69c48e00990f3L    # -1.7962443892041366E-72
        -0x3a939946fdb2772aL    # -2.7468013715244137E26
    .end array-data

    :array_6
    .array-data 8
        0x3204bdf4b5f3944aL    # 9.617051313086325E-68
        0x498bb5a52536a368L    # 1.977419648542885E46
        -0x59f99a8b2fba4151L
    .end array-data

    :array_7
    .array-data 8
        -0x18fbe5cb37fcefc3L    # -1.749341196442481E188
        0xbdfa060232be69L
        -0x4d5a0c53a591306cL    # -1.0422263300956657E-64
    .end array-data

    :array_8
    .array-data 8
        0x458f3c7bd5bb0a99L    # 1.2083944559187761E27
        0x7669a1de43856acL
        0x6cb5106aa55eba37L    # 4.538375052690479E215
    .end array-data

    :array_9
    .array-data 8
        -0x37d831f9a1a40a85L    # -4.050174236963333E39
        -0x155c49c0a4349af0L    # -4.9441955263751295E205
        0x1efc397e6d81238fL
    .end array-data

    :array_a
    .array-data 8
        0x3f3056740c4b85f6L    # 2.4929364398759647E-4
        0x10350eee070a958dL
        -0x627a404c5bfd07c3L    # -1.844116705014522E-166
    .end array-data

    :array_b
    .array-data 8
        -0x69e0f2efa3368c3eL
        0x26a0ae8fa91ed352L    # 1.2617600002709557E-122
        0x63642b0536f242b1L    # 6.089076523031844E170
    .end array-data

    :array_c
    .array-data 8
        -0x81478cf46ff3f8bL    # -4.5446680999404715E269
        -0x5cfeed4476342c3cL
        0x6c94d05f07edfcf4L    # 1.1211182689386455E215
    .end array-data

    :array_d
    .array-data 8
        0x5d3e2eb19b1b025fL    # 1.4377114227122971E141
        -0x67b8801874380e3aL    # -1.030134037081212E-191
        -0xb3dcb8114023f38L
        0x418356c1315f47e2L    # 4.0556582171523824E7
    .end array-data

    :array_e
    .array-data 8
        0x490656806320d15eL    # 6.226896735809282E43
        0x23c333c1e404bf6cL
    .end array-data

    :array_f
    .array-data 8
        -0x6036c70cc8deede8L
        0x5e132664d6353c5eL    # 1.4945352568632861E145
        -0x3a9b810b796271faL    # -1.9822436219802778E26
        -0x3bca1d48e221a02bL    # -4.037181845621381E20
        -0x117a0816e0b9ad55L    # -2.541120341028801E224
    .end array-data

    :array_10
    .array-data 8
        0x7b137acf9048b6b7L    # 7.241671847719284E284
        -0x301203310cb46dd8L    # -1.0850997110569523E77
        -0x19cd6a46a176548cL    # -1.97422502203359E184
        0xebd8dd0bd845667L    # 1.134642923760358E-237
        -0xdc1698d74412735L    # -2.039591272583876E242
        -0x3333110a8b84a0aL
    .end array-data

    :array_11
    .array-data 8
        0x59fdd1cb65fb26bfL    # 3.153978396984599E125
        -0x48ea6c47d2ba8387L    # -2.4188686155425793E-43
        -0x49a9e343b06fcc43L    # -6.051925726219041E-47
        -0x4f629099b2a1a998L    # -1.6269245307867904E-74
        -0xd4c902586ecf77L
        0x63f87e02be237326L    # 3.786045573927222E173
    .end array-data

    :array_12
    .array-data 8
        -0x5f588709f9c1c135L
        -0x3cb3ddd3b95c09f4L    # -1.5837745813908504E16
        0x339e5ae8076030f7L    # 4.7225067399361035E-60
        -0x27dc3a681da6e088L    # -3.8952525483131546E116
    .end array-data

    :array_13
    .array-data 8
        -0x1578a81c542f1b6eL
        -0x15fa11fe6967c027L    # -5.371554941289758E202
        0x7851cfba6382ddf4L    # 3.763874075962451E271
    .end array-data

    :array_14
    .array-data 8
        -0x397b7723491556caL    # -5.206144125122355E31
        -0x2fcaaa7fc7b88753L    # -2.4703070109621697E78
        0x72e0fe145f90e813L    # 2.320511475608056E245
    .end array-data

    :array_15
    .array-data 8
        -0x38a4366d2d280ae5L    # -5.7712164830172E35
        0x3fb4df3418046838L    # 0.0815308149944095
        -0x2723a52cb7e4d19cL    # -1.1440491207915957E120
        0x701ee11f08679377L    # 1.1985198944312361E232
    .end array-data

    :array_16
    .array-data 8
        -0x444a490bf478d898L    # -4.59825839659419E-21
        0x73c2a6b841c67b99L    # 4.1730572589867534E249
        0x72fba4225f04503cL    # 7.5494024624468E245
        0x6782bfbf1e762ecbL    # 4.176818590747257E190
        0x549a9e0cd218e657L    # 3.6386806586920945E99
    .end array-data

    :array_17
    .array-data 8
        -0x2c02869d5938c01aL    # -3.9347766856189993E96
        -0x19750be2c7975866L    # -9.16228193894474E185
        0x35ffa508dba5f919L    # 1.3532599623940993E-48
        -0x54157b86789b2b38L    # -3.879570506754539E-97
    .end array-data

    :array_18
    .array-data 8
        0x1e6c92fb11e103d9L    # 3.969589220122154E-162
        -0x43b0d2996dac03f7L    # -3.3802546664861997E-18
        -0x61ee97b62fcb3175L    # -7.557108980488281E-164
        -0x164841e01479b8aaL    # -1.8173842524430205E201
    .end array-data

    :array_19
    .array-data 8
        -0x62f69aeddb62d509L    # -8.411188702999826E-169
        0x76d5586128e683cbL    # 2.6885437052035633E264
        -0xe69ad60062a313L
        0x7abf615a0b91eb28L    # 1.822773722489622E283
        0x34b3de19797b3acfL    # 8.102623988450025E-55
        0x8607ae20808c75eL
    .end array-data

    :array_1a
    .array-data 8
        0x17e213cf718c732aL
        -0x73070c118df49394L    # -3.568813357308409E-246
        -0x77f4231a04462a63L    # -6.592649228933139E-270
        0x1643a7fe936e8aa6L    # 2.00619478190884E-201
        0x78d8e719b16cd65bL    # 1.3471722630002767E274
    .end array-data

    :array_1b
    .array-data 8
        0x77b6fd5cdea21e41L    # 4.744270273219839E268
        0x214e57787f218990L
        0x2e0162946dc5aefeL    # 4.369662442584245E-87
        0x6ce1da3ea9a025edL    # 3.07713390386549E216
    .end array-data

    :array_1c
    .array-data 8
        -0x1a7e75a222b498d8L    # -9.098069510299147E180
        0x71f95a4ead92df9dL    # 1.0565786862900317E241
        -0xe5dd999575bda03L    # -2.363759536796495E239
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
