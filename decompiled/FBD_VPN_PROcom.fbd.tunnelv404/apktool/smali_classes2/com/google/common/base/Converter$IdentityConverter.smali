.class final Lcom/google/common/base/Converter$IdentityConverter;
.super Lcom/google/common/base/Converter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdentityConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Converter$IdentityConverter<",
            "*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/Converter$IdentityConverter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/base/Converter$IdentityConverter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/base/Converter$IdentityConverter;->INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/Converter$IdentityConverter;->INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public doAndThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter<",
            "TT;TS;>;)",
            "Lcom/google/common/base/Converter<",
            "TT;TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/common/base/Converter;

    .line 21
    .line 22
    return-object p1

    .line 23
    :array_0
    .array-data 8
        -0x6aad3d4dc04273eeL    # -5.843433857973599E-206
        -0x130dd8e64455e3ccL    # -6.257761352246834E216
        -0x309d69c7f0926d10L    # -2.6272016399842685E74
    .end array-data
.end method

.method public doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public reverse()Lcom/google/common/base/Converter$IdentityConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter$IdentityConverter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic reverse()Lcom/google/common/base/Converter;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/base/Converter$IdentityConverter;->reverse()Lcom/google/common/base/Converter$IdentityConverter;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0xe2666b109a8a7d5L    # -2.667087115691949E240
        -0x4580acf08b0da062L    # -6.325923228981516E-27
        0x752e9511bf243f92L
        -0x3b4aefcd01955393L    # -9.946851853707668E22
    .end array-data
.end method
