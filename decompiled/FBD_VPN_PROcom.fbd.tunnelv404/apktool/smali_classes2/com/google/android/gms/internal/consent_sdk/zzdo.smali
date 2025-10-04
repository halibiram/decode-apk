.class public final Lcom/google/android/gms/internal/consent_sdk/zzdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdn;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/consent_sdk/zzdo;


# instance fields
.field private final zzb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdo;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzdo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdo;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdn;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzdo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzdo;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x7bc3cb0bfd91bda9L    # -2.894401171313318E-288
        -0x58f653d104bec7cL    # -6.028131656571136E281
        0x613211c24644a07bL    # 1.5877449384028086E160
        0x61788117b0991547L    # 3.445080878363008E161
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdo;->zzb:Ljava/lang/Object;

    return-object v0
.end method
