.class final Lcom/google/android/gms/internal/consent_sdk/zzdg;
.super Lcom/google/android/gms/internal/consent_sdk/zzdd;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/consent_sdk/zzdd;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzdg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdg;-><init>([Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzb:[Ljava/lang/Object;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzc:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzc:I

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->zza(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzb:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object p1, v0, p1

    .line 24
    .line 25
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :array_0
    .array-data 8
        -0x4989b625e1706401L    # -2.440063990983567E-46
        -0x6e6b5442e6ff8f33L    # -5.584466080002198E-224
    .end array-data
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzc:I

    return v0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzb:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzc:I

    .line 5
    .line 6
    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzc:I

    .line 10
    .line 11
    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzc:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zzb:[Ljava/lang/Object;

    return-object v0
.end method
