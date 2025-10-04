.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbj;->zza:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->zza()Lcom/google/android/ump/FormError;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbj;->zza:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;->onConsentFormDismissed(Lcom/google/android/ump/FormError;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        -0x69316d7a433c200fL    # -7.988067805729395E-199
        0x7013fccc3e1c8e1cL    # 7.757735541464355E231
        0x22e93d8bd3339a77L
        -0x4bb96d027ba421ffL    # -7.192548986604823E-57
        0x490788da4fd41c67L    # 6.560483726490839E43
        -0x6bed2eb4d28e1b66L    # -5.589670625943138E-212
        0x4fcbc12a264608b7L    # 2.510747860090081E76
        0x72b7cbd8fb9cf658L    # 4.0620527648435E244
        0x6c332405e2ed584eL    # 1.6109241792835943E213
    .end array-data
.end method
