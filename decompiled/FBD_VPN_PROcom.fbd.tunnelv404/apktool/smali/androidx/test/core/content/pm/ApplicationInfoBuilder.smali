.class public final Landroidx/test/core/content/pm/ApplicationInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private flags:I

.field private name:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->flags:I

    .line 6
    .line 7
    return-void
.end method

.method public static newBuilder()Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Mandatory field \'packageName\' missing."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->flags:I

    .line 14
    .line 15
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->name:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method public setFlags(I)Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->flags:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
