.class public Lcom/google/android/gms/actions/ReserveIntents;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_RESERVE_TAXI_RESERVATION:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ReserveIntents;->ACTION_RESERVE_TAXI_RESERVATION:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x105e455ae1d0ada3L    # 7.799179449377827E-230
        0x4bd9f1c8121e4b7cL    # 2.5446251431778476E57
        -0xa81db9546674addL    # -9.05173901458858E257
        -0x2a6becd04712b3aaL    # -1.7985102739395226E104
        -0x4dcc0aa235954ea8L    # -7.403005142692213E-67
        0x148eda2190d3254eL    # 1.173052379243186E-209
        0x56cd1f58bf01f55L
        -0x235c5d1fce781cdL    # -8.576275558430569E297
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
