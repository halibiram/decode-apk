.class Lcom/android/volley/toolbox/DiskBasedCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/DiskBasedCache;

.field final synthetic val$rootDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/DiskBasedCache;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$1;->this$0:Lcom/android/volley/toolbox/DiskBasedCache;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$1;->val$rootDirectory:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$1;->val$rootDirectory:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method
