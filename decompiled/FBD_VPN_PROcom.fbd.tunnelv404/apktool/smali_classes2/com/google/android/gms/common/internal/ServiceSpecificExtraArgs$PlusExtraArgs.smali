.class public interface abstract Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$PlusExtraArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlusExtraArgs"
.end annotation


# static fields
.field public static final PLUS_AUTH_PACKAGE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$PlusExtraArgs;->PLUS_AUTH_PACKAGE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x51cfabf106538fb1L    # 1.2305504482377495E86
        0x72ebd1358daf2233L    # 3.7987460543734263E245
        -0x180650b84e61c808L    # -7.324053903942342E192
    .end array-data
.end method
