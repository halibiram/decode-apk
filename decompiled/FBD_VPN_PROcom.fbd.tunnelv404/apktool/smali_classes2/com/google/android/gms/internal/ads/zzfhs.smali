.class final Lcom/google/android/gms/internal/ads/zzfhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfht;

.field final synthetic zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfht;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfhs;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhs;->zza:Lcom/google/android/gms/internal/ads/zzfht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x620459305e9a05d6L
        -0x688aada16aef4f99L
        -0x544d6905736c000bL    # -3.399657911320432E-98
        -0x17fdbb17bf86cdf0L    # -1.0418999769666876E193
        0x41d0636ea9107878L    # 1.0998073962573528E9
        0x7ed5320e6e3adb57L    # 9.084478285891035E302
        0x67c62f3a30c27fc3L    # 7.907451580796137E191
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfhs;->zzb:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhs;->zza:Lcom/google/android/gms/internal/ads/zzfht;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfht;->zzb(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
