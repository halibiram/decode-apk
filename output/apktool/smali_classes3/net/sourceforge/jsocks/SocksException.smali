.class public Lnet/sourceforge/jsocks/SocksException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field static final UNASSIGNED_ERROR_MESSAGE:Ljava/lang/String; = "Unknown error message"

.field static final localErrorMessage:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x5539ded35b5a9b15L

.field static final serverReplyMessage:[Ljava/lang/String;


# instance fields
.field public errCode:I

.field errString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, "Command not supported"

    .line 2
    .line 3
    const-string v8, "Address type not supported"

    .line 4
    .line 5
    const-string v0, "Succeeded"

    .line 6
    .line 7
    const-string v1, "General SOCKS server failure"

    .line 8
    .line 9
    const-string v2, "Connection not allowed by ruleset"

    .line 10
    .line 11
    const-string v3, "Network unreachable"

    .line 12
    .line 13
    const-string v4, "Host unreachable"

    .line 14
    .line 15
    const-string v5, "Connection refused"

    .line 16
    .line 17
    const-string v6, "TTL expired"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "Authentication failed"

    .line 26
    .line 27
    const-string v6, "General SOCKS fault"

    .line 28
    .line 29
    const-string v1, "SOCKS server not specified"

    .line 30
    .line 31
    const-string v2, "Unable to contact SOCKS server"

    .line 32
    .line 33
    const-string v3, "IO error"

    .line 34
    .line 35
    const-string v4, "None of Authentication methods are supported"

    .line 36
    .line 37
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 2
    iput p1, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    shr-int/lit8 v0, p1, 0x10

    .line 3
    const-string v1, "Unknown error message"

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    array-length v2, v0

    if-gt p1, v2, :cond_0

    aget-object v1, v0, p1

    .line 5
    :cond_0
    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 6
    sget-object p1, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    array-length v2, p1

    if-gt v0, v2, :cond_2

    aget-object v1, p1, v0

    .line 7
    :cond_2
    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 9
    iput p1, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 10
    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
