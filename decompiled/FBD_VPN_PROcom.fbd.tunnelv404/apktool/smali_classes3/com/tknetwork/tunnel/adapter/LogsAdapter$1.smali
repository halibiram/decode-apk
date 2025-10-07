.class Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/adapter/LogsAdapter;->onBindViewHolder(Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

.field final synthetic val$position:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/adapter/LogsAdapter;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;->this$0:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;->val$position:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;->val$text:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;->this$0:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/adapter/LogsAdapter;)Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;->this$0:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/adapter/LogsAdapter;)Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;->val$position:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$1;->val$text:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, p1, v1, v2}, Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
