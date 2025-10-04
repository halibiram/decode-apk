.class public Lcom/trilead/ssh2/SFTPv3FileHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final client:Lcom/trilead/ssh2/SFTPv3Client;

.field final fileHandle:[B

.field isClosed:Z


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/SFTPv3Client;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->client:Lcom/trilead/ssh2/SFTPv3Client;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getClient()Lcom/trilead/ssh2/SFTPv3Client;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->client:Lcom/trilead/ssh2/SFTPv3Client;

    .line 2
    .line 3
    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 2
    .line 3
    return v0
.end method
