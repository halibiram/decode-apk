.class Landroidx/constraintlayout/core/dsl/HGuideline;
.super Landroidx/constraintlayout/core/dsl/Guideline;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/dsl/Guideline;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    sget-object v0, Landroidx/constraintlayout/core/dsl/Helper;->typeMap:Ljava/util/Map;

    sget-object v1, Landroidx/constraintlayout/core/dsl/Helper$Type;->HORIZONTAL_GUIDELINE:Landroidx/constraintlayout/core/dsl/Helper$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Landroidx/constraintlayout/core/dsl/Helper$HelperType;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->type:Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/dsl/Guideline;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Landroidx/constraintlayout/core/dsl/Helper;->config:Ljava/lang/String;

    .line 5
    new-instance p1, Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    sget-object p2, Landroidx/constraintlayout/core/dsl/Helper;->typeMap:Ljava/util/Map;

    sget-object v0, Landroidx/constraintlayout/core/dsl/Helper$Type;->HORIZONTAL_GUIDELINE:Landroidx/constraintlayout/core/dsl/Helper$Type;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Landroidx/constraintlayout/core/dsl/Helper$HelperType;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->type:Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    .line 6
    invoke-virtual {p0}, Landroidx/constraintlayout/core/dsl/Helper;->convertConfigToMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->configMap:Ljava/util/Map;

    return-void
.end method
