.class public interface abstract Lcom/google/android/gms/common/internal/constants/ListAppsActivityContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final ACTION_APPS:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EXTRA_PRESELECTED_FILTER:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PRESELECTED_FILTER_FITNESS_APPS:I = 0x2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/constants/ListAppsActivityContract;->ACTION_APPS:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/constants/ListAppsActivityContract;->EXTRA_PRESELECTED_FILTER:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x66ccb1f1065b574L
        -0x348e0ab4d3cff584L    # -2.7520828156050303E55
        -0x39c1a96e85029297L    # -2.403636461320031E30
        -0x232ebb9b96e060c7L    # -1.2851648994617957E139
        -0x33236477907f321cL    # -1.838822455936512E62
        -0x52e1cb779b410858L    # -2.316877818368262E-91
        -0x1a9e0b68668aeb93L    # -2.328324076757255E180
    .end array-data

    :array_1
    .array-data 8
        0x4b4f66803853275aL    # 6.015120469898191E54
        -0x242ac7772640479dL    # -2.410019835467043E134
        -0x7547eb640ad12f3cL
        0x682d02ab27a986cdL    # 6.6179168662882165E193
        0x6663b86aa0c463eL
        -0x41924b0c5df242aL    # -6.960796907651573E288
        0x236a56d881e092dfL    # 4.4235939686000534E-138
    .end array-data
.end method
