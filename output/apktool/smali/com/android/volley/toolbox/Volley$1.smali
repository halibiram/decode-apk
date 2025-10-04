.class Lcom/android/volley/toolbox/Volley$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/Network;)Lcom/android/volley/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private cacheDir:Ljava/io/File;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/Volley$1;->val$appContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/volley/toolbox/Volley$1;->cacheDir:Ljava/io/File;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->cacheDir:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/volley/toolbox/Volley$1;->val$appContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->cacheDir:Ljava/io/File;

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->cacheDir:Ljava/io/File;

    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x4f93caf76d530f17L    # 2.2381387272240667E75
        0x27998597325f4db5L    # 6.325482545099854E-118
    .end array-data
.end method
