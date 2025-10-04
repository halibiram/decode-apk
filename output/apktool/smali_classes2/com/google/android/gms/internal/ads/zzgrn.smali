.class public final Lcom/google/android/gms/internal/ads/zzgrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgqm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgqm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrn;->zza:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 15
    .line 16
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x11e3c9114ffe80ccL    # -2.549707730567726E222
        0x14dd5195b05c11bcL    # 3.567200953912278E-208
        -0x1cdcec9b054c3b4bL    # -3.599559992468369E169
        0x5fffbe9bac4147ccL    # 2.6601562619272507E154
        0x78a87bea57f9f97bL    # 1.6556527150186046E273
        0x799aeb566fc70ddbL    # 5.964850772465851E277
        0x450ada1d72b8a72eL    # 4.0577613031706264E24
        0x176d6108e41bbcd8L    # 7.860505217014002E-196
        0x29bb6e6e392a5dfbL
        0x472fd023360a9873L    # 8.259136676141346E34
    .end array-data
.end method
