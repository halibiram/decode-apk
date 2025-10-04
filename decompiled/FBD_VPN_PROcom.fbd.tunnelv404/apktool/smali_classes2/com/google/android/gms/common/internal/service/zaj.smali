.class public abstract Lcom/google/android/gms/common/internal/service/zaj;
.super Lcom/google/android/gms/internal/base/zab;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/service/zak;


# direct methods
.method public constructor <init>()V
    .locals 2

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0xd0c3ee00011ab46L
        0x6d139db6a0b37455L    # 2.704885236524507E217
        -0x37c334b669cc180fL    # -9.798121641075147E39
        0x149f62d7c674b50bL    # 2.386714378181925E-209
        -0x5d4dd502d6efa0f7L    # -1.48986660292206E-141
        -0x25ecc2063a925664L    # -8.140864044886296E125
        0x12efa9c7640d221cL
        -0x2ce8b4242766b36cL    # -1.8982179499968286E92
        -0x5f1e35cb3cf191fcL
    .end array-data
.end method


# virtual methods
.method public final zaa(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/internal/service/zak;->zab(I)V

    .line 9
    .line 10
    .line 11
    return p3

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method
