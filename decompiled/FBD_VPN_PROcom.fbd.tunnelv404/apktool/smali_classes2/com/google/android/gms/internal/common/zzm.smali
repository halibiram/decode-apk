.class abstract Lcom/google/android/gms/internal/common/zzm;
.super Lcom/google/android/gms/internal/common/zzk;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzk;-><init>()V

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzm;->zza:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x1e7d79ab2e242f04L    # -5.20882319975217E161
        -0x61b7bf810bd4f3e9L    # -8.422844611957179E-163
        -0x7db61a560fb8210dL
        -0x61849536469b2fdbL    # -7.617711135126633E-162
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzm;->zza:Ljava/lang/String;

    return-object v0
.end method
