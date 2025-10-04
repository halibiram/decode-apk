.class public interface abstract Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$RemovedParam;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Indicator;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->NULL:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x7f343c6eec812608L
        -0x2755101f07c4892aL    # -1.3585572936174374E119
        0x3a246e776b97d5ecL
        -0x2c646e814d045a2fL    # -5.750548420764935E94
        -0x7966f7b25aa7e4ceL    # -7.060689137927843E-277
    .end array-data
.end method
