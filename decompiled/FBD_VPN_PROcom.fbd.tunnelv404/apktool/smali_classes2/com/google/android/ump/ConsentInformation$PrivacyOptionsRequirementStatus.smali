.class public final enum Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/ump/ConsentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrivacyOptionsRequirementStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->UNKNOWN:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    new-array v6, v5, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v6, 0x1

    .line 42
    invoke-direct {v1, v4, v6}, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 46
    .line 47
    new-instance v4, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 48
    .line 49
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v8, v2, [J

    .line 52
    .line 53
    fill-array-data v8, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-direct {v4, v7, v2}, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 67
    .line 68
    new-array v5, v5, [Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 69
    .line 70
    aput-object v0, v5, v3

    .line 71
    .line 72
    aput-object v1, v5, v6

    .line 73
    .line 74
    aput-object v4, v5, v2

    .line 75
    .line 76
    sput-object v5, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->zza:[Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 8
        -0x69491afbde2f8ad2L    # -2.990995993012663E-199
        0x14aa394e7e7b8b3L
    .end array-data

    .line 80
    :array_1
    .array-data 8
        0x39b14eb0127750c0L    # 8.533194273141419E-31
        0x47c234b59111f540L    # 4.839957194110371E37
        -0x6f7bedfc5e0f0e15L    # -4.136839222081423E-229
    .end array-data

    :array_2
    .array-data 8
        -0x1d21829541b144baL    # -1.7979339807810868E168
        0x69cb6033142bffdbL    # 4.1909609006792493E201
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->zza:[Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 8
    .line 9
    return-object v0
.end method
