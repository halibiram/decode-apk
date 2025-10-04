.class public final Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConditionalUserProperty"
.end annotation


# static fields
.field public static final ACTIVE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final CREATION_TIMESTAMP:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EXPIRED_EVENT_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EXPIRED_EVENT_PARAMS:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final ORIGIN:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final TIMED_OUT_EVENT_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final TIMED_OUT_EVENT_PARAMS:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final TIME_TO_LIVE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final TRIGGERED_EVENT_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final TRIGGERED_EVENT_PARAMS:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final TRIGGERED_TIMESTAMP:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final TRIGGER_EVENT_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final TRIGGER_TIMEOUT:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final VALUE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->ORIGIN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->VALUE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_3

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->TRIGGER_EVENT_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_4

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->TRIGGER_TIMEOUT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_5

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->TIMED_OUT_EVENT_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_6

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->TIMED_OUT_EVENT_PARAMS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_7

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->TRIGGERED_EVENT_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_8

    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->TRIGGERED_EVENT_PARAMS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_9

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->TIME_TO_LIVE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->EXPIRED_EVENT_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_b

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->EXPIRED_EVENT_PARAMS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->CREATION_TIMESTAMP:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_d

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->ACTIVE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;->TRIGGERED_TIMESTAMP:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x13426e2d35f47e3L
        -0x49d7da1fc0d429fbL    # -8.261349959261653E-48
    .end array-data

    :array_1
    .array-data 8
        -0x7f639ec7fe626192L
        -0x472bae198b385b1aL    # -6.114804321468545E-35
    .end array-data

    :array_2
    .array-data 8
        -0x3bd0b37f7eac8bb7L    # -2.886808072121654E20
        -0x57262c964959ec80L
    .end array-data

    :array_3
    .array-data 8
        -0x381c22b6197b83c0L    # -2.112346272402422E38
        0x325643eef190338eL    # 3.3034731136497405E-66
        0x7833d47aa54e18ccL    # 1.0476078663881064E271
        0x6e50b9003b0f48e3L    # 2.4179212604347267E223
    .end array-data

    :array_4
    .array-data 8
        -0x136760b0d1544e4fL    # -1.3262505431386304E215
        0x61784b47500eff2bL    # 3.415527115447564E161
        0x7395c5f5c0065698L    # 6.08948149786129E248
    .end array-data

    :array_5
    .array-data 8
        -0x987eb5c5e16454eL    # -4.739187963650763E262
        -0x7a4846d07b22142bL    # -4.084140258603138E-281
        -0x79451073feacdf62L
        -0x32164a7dd9617f5bL    # -2.1659804138358434E67
    .end array-data

    :array_6
    .array-data 8
        -0x75d665b09976a41bL
        -0x35da3463761674c5L    # -1.5926975220265602E49
        -0x70daf93226919fb1L
        0x1cf879344f3e0fb9L    # 4.053010416400287E-169
    .end array-data

    :array_7
    .array-data 8
        -0x4e212234d2a0431fL    # -1.788902688551156E-68
        0x33dba2a0437a9cb3L    # 6.87898529182002E-59
        -0x52014972e54e75cdL    # -3.859799866033228E-87
        0x2d020a7dc1be01b6L    # 6.91912999073851E-92
    .end array-data

    :array_8
    .array-data 8
        -0x7f79a4e52f42cadfL    # -3.979478363561269E-306
        -0x66b0d425f3dbdff6L    # -8.95504059619254E-187
        -0x3b6ee77c873fc937L    # -2.0183106399927676E22
        -0x7ff023020bf1ca0fL
    .end array-data

    :array_9
    .array-data 8
        0x3646f9245c99b7e8L    # 3.143781778825676E-47
        -0x667be46da59557d1L    # -9.242620526216458E-186
        0x17f7c3db897715c7L    # 3.25553122359778E-193
    .end array-data

    :array_a
    .array-data 8
        -0x15b504dfa2b18013L    # -1.057412698809101E204
        -0x5d243eae4c20fc48L    # -9.104281189010849E-141
        -0x3635c24275c6e31eL    # -2.996212335109078E47
        0x7042310aba95b75cL    # 5.648548297806476E232
    .end array-data

    :array_b
    .array-data 8
        -0x2a3a29aec02510dcL
        0x73a128d741b7a771L    # 9.598247294050526E248
        0x58186f03ea6e8b3cL    # 2.406837416478706E116
        -0x4ad4587bb0038d5cL    # -1.44362509072362E-52
    .end array-data

    :array_c
    .array-data 8
        -0x639c2faabde70eb8L
        -0x61b61a5f607ba28fL    # -8.994178701679756E-163
        -0x5ae2eb9644e82a4eL    # -6.554995169937309E-130
        0x4c75f92ee7d39215L    # 2.2068654614269062E60
    .end array-data

    :array_d
    .array-data 8
        0x4adee08d6e897b6fL    # 4.6210065496882E52
        0x358c855d74814ddcL    # 9.52872600836574E-51
    .end array-data

    :array_e
    .array-data 8
        -0x612a10d9183ccb32L
        -0x5fc3424675ce0dafL    # -2.143610089973125E-153
        -0x260c6b53f70158bcL    # -2.071035470803075E125
        -0x7f849a68ea34ca52L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
