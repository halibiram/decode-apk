.class public Lcom/trilead/ssh2/crypto/PEMStructure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field data:[B

.field dekInfo:[Ljava/lang/String;

.field pemType:I

.field procType:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 2
    .line 3
    return-object v0
.end method
