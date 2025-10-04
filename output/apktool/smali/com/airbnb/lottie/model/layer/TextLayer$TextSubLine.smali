.class Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/TextLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextSubLine"
.end annotation


# instance fields
.field private text:Ljava/lang/String;

.field private width:F


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, -0x2f35b8822a14ca08L    # -1.5579806027345783E81

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/airbnb/lottie/model/layer/TextLayer$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public set(Ljava/lang/String;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 4
    .line 5
    return-void
.end method
