.class public final Lcom/google/android/gms/appset/zze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/google/android/gms/appset/zze;->zza:Lcom/google/android/gms/common/Feature;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object v0, v1, v2

    .line 30
    .line 31
    sput-object v1, Lcom/google/android/gms/appset/zze;->zzb:[Lcom/google/android/gms/common/Feature;

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x2ad7f77cd7b1ff4dL    # -1.6821358826541311E102
        0x58b0d21d8d18b522L    # 1.6966958702120886E119
        0x398858e93ad04c03L    # 1.5005187548719153E-31
    .end array-data
.end method
