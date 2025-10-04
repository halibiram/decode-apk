.class Lcom/tknetwork/tunnel/view/GraphHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/view/GraphHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/view/GraphHelper;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/view/GraphHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/GraphHelper$1;->this$0:Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper$1;->this$0:Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/view/GraphHelper;->getGraphView()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/tknetwork/tunnel/view/GraphHelper;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-wide/16 v1, 0x3e8

    .line 11
    .line 12
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
