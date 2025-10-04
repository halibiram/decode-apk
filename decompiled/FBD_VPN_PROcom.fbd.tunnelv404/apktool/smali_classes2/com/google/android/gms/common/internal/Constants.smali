.class public final Lcom/google/android/gms/common/internal/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final ACTION_LOAD_IMAGE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EXTRA_PRIORITY:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EXTRA_URI:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final KEY_GMS_ERROR_CODE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final KEY_NETWORK_TO_USE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/Constants;->KEY_GMS_ERROR_CODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/Constants;->KEY_NETWORK_TO_USE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/Constants;->ACTION_LOAD_IMAGE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v3, v2, [J

    fill-array-data v3, :array_3

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/Constants;->EXTRA_URI:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/Constants;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/Constants;->EXTRA_PRIORITY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x4b3b2082afce9290L    # 2.598249845517161E54
        -0x6ff5ed98188b845aL
        -0x6d0694864d23d67aL
    .end array-data

    :array_1
    .array-data 8
        0x39d99254d144176L
        -0x6eee50758b093b41L
        0x2f18c91b7a0d8781L    # 8.165451349585161E-82
    .end array-data

    :array_2
    .array-data 8
        0x13385f30b14ab526L    # 4.418668106097155E-216
        0x3179a4ad08bab9a5L    # 2.322171810068847E-70
        -0x6dfca7086f8b5e0fL    # -6.690501580684433E-222
        -0x31424f2bd351fc7fL    # -2.0491793925635794E71
        -0x6d7c431b8741070fL
        0x36ed648b90899003L    # 4.118802186472727E-44
        -0x2286ec1eeb90c77L
    .end array-data

    :array_3
    .array-data 8
        0x29322024af6dcfc9L
        0x48f695f0f0f3742bL    # 3.1479882063648144E43
        -0x21d3b778187bd570L    # -4.414671243543915E145
        0x7b201d5f1459519eL    # 1.1981439515370874E285
        -0x61d97fbb2fbd7456L
        0x27a34128366fcf48L    # 9.544306928752404E-118
    .end array-data

    :array_4
    .array-data 8
        0x212967f30c4bc2bfL    # 6.209109858714039E-149
        -0x79e7794e1c1a6871L
        -0x7a542d71fab7f334L
        -0x732424cd221e6778L    # -9.960155903227294E-247
        0x5e012ae6a6058827L    # 6.699109245284178E144
        0x5360a78452b922ddL    # 4.342468642524721E93
        0x226c1daaeaed1d2L
    .end array-data

    :array_5
    .array-data 8
        -0x5f6d7288715f97cdL    # -8.855785831799622E-152
        0x78c0d44fcfb89300L    # 4.552115085979684E273
        -0x953368bf3edc145L    # -4.532330064925214E263
        -0x32b9ad8de581dc1eL    # -1.8365520448187355E64
        0xd353a8881315403L
        0x20906be6ef283612L    # 7.838533540891347E-152
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
