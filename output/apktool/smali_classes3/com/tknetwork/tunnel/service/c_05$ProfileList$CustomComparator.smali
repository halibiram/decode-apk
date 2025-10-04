.class Lcom/tknetwork/tunnel/service/c_05$ProfileList$CustomComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05$ProfileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tknetwork/tunnel/service/c_05$Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tknetwork/tunnel/service/c_05$ProfileList;


# direct methods
.method private constructor <init>(Lcom/tknetwork/tunnel/service/c_05$ProfileList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProfileList$CustomComparator;->this$1:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tknetwork/tunnel/service/c_05$ProfileList;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05$ProfileList$CustomComparator;-><init>(Lcom/tknetwork/tunnel/service/c_05$ProfileList;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tknetwork/tunnel/service/c_05$Profile;Lcom/tknetwork/tunnel/service/c_05$Profile;)I
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$Profile;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$Profile;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/tknetwork/tunnel/service/c_05$Profile;

    check-cast p2, Lcom/tknetwork/tunnel/service/c_05$Profile;

    invoke-virtual {p0, p1, p2}, Lcom/tknetwork/tunnel/service/c_05$ProfileList$CustomComparator;->compare(Lcom/tknetwork/tunnel/service/c_05$Profile;Lcom/tknetwork/tunnel/service/c_05$Profile;)I

    move-result p1

    return p1
.end method
