.class public Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
