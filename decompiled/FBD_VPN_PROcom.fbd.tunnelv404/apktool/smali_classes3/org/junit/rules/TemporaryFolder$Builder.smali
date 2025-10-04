.class public Lorg/junit/rules/TemporaryFolder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/TemporaryFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private assureDeletion:Z

.field private parentFolder:Ljava/io/File;


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

.method public static synthetic access$000(Lorg/junit/rules/TemporaryFolder$Builder;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->parentFolder:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lorg/junit/rules/TemporaryFolder$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->assureDeletion:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public assureDeletion()Lorg/junit/rules/TemporaryFolder$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->assureDeletion:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public build()Lorg/junit/rules/TemporaryFolder;
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/rules/TemporaryFolder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/junit/rules/TemporaryFolder;-><init>(Lorg/junit/rules/TemporaryFolder$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public parentFolder(Ljava/io/File;)Lorg/junit/rules/TemporaryFolder$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/rules/TemporaryFolder$Builder;->parentFolder:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method
