.class Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/jenkins/SFTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SFTPOutputStream"
.end annotation


# instance fields
.field private final h:Lcom/trilead/ssh2/SFTPv3FileHandle;

.field private offset:J

.field final synthetic this$0:Lcom/trilead/ssh2/jenkins/SFTPClient;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/jenkins/SFTPClient;Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->this$0:Lcom/trilead/ssh2/jenkins/SFTPClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->offset:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->this$0:Lcom/trilead/ssh2/jenkins/SFTPClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->closeFile(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public write(I)V
    .locals 2

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->this$0:Lcom/trilead/ssh2/jenkins/SFTPClient;

    iget-object v1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->h:Lcom/trilead/ssh2/SFTPv3FileHandle;

    iget-wide v2, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->offset:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/SFTPv3Client;->write(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)V

    .line 3
    iget-wide p1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->offset:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;->offset:J

    return-void
.end method
