.class public final Landroidx/activity/ComponentActivity$activityResultRegistry$1;
.super Landroidx/activity/result/ActivityResultRegistry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JG\u0010\u0002\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\t2\u0006\u0010\n\u001a\u0002H\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/activity/ComponentActivity$activityResultRegistry$1",
        "Landroidx/activity/result/ActivityResultRegistry;",
        "onLaunch",
        "",
        "I",
        "O",
        "requestCode",
        "",
        "contract",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "input",
        "options",
        "Landroidx/core/app/ActivityOptionsCompat;",
        "(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->this$0:Landroidx/activity/ComponentActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/activity/result/ActivityResultRegistry;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final onLaunch$lambda$0(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final onLaunch$lambda$1(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0, p2}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->onLaunch$lambda$1(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroid/content/IntentSender$SendIntentException;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->onLaunch$lambda$0(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    return-void
.end method


# virtual methods
.method public onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "contract"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->this$0:Landroidx/activity/ComponentActivity;

    .line 7
    .line 8
    invoke-virtual {p2, v1, p3}, Landroidx/activity/result/contract/ActivityResultContract;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance p2, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    new-instance p3, L뎻뒤뒙듐뎠딝땨뒙돼딎든둥됨딞돛땁돠땋땔듼듽딀뎬들땝땱땻땳돳땻땃땁따딅딸둡될땩뒬둥딻뎻됩뎠됴뎸돵돤땲땨딞땥돷둔땡땰땲둡땀땍됩뒤뎠딐뒀땜뒀뒹됩뒤든뎰돵두땫땻땐딽땰든돵뎡뒈뎡돸듨됐돼딽돝듸딞땠뎠뎠듰돨딞딐둬딠뒛돛딽땯돳뎸돴뒼땀뎬땮뒋뒬땡뎸땱땧뎡뒵돝딝드둬돤둑땤땍듨땳;

    .line 24
    .line 25
    const/4 p4, 0x1

    .line 26
    invoke-direct {p3, p0, p1, v0, p4}, L뎻뒤뒙듐뎠딝땨뒙돼딎든둥됨딞돛땁돠땋땔듼듽딀뎬들땝땱땻땳돳땻땃땁따딅딸둡될땩뒬둥딻뎻됩뎠됴뎸돵돤땲땨딞땥돷둔땡땰땲둡땀땍됩뒤뎠딐뒀땜뒀뒹됩뒤든뎰돵두땫땻땐딽땰든돵뎡뒈뎡돸듨됐돼딽돝듸딞땠뎠뎠듰돨딞딐둬딠뒛돛딽땯돳뎸돴뒼땀뎬땮뒋뒬땡뎸땱땧뎡뒵돝딝드둬돤둑땤땍듨땳;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {p2, v1, p3}, Landroidx/activity/result/contract/ActivityResultContract;->createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    if-nez p3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v8, p4

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    if-eqz p4, :cond_3

    .line 81
    .line 82
    invoke-virtual {p4}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    :goto_0
    move-object v8, p3

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 p3, 0x0

    .line 89
    goto :goto_0

    .line 90
    :goto_1
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-eqz p3, :cond_5

    .line 101
    .line 102
    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    if-nez p2, :cond_4

    .line 109
    .line 110
    const/4 p2, 0x0

    .line 111
    new-array p2, p2, [Ljava/lang/String;

    .line 112
    .line 113
    :cond_4
    invoke-static {v1, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-eqz p3, :cond_6

    .line 128
    .line 129
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    .line 136
    .line 137
    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    const/4 v7, 0x0

    .line 157
    move v3, p1

    .line 158
    invoke-static/range {v1 .. v8}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catch_0
    move-exception p2

    .line 163
    new-instance p3, Landroid/os/Handler;

    .line 164
    .line 165
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 166
    .line 167
    .line 168
    move-result-object p4

    .line 169
    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    .line 171
    .line 172
    new-instance p4, L뎻뒤뒙듐뎠딝땨뒙돼딎든둥됨딞돛땁돠땋땔듼듽딀뎬들땝땱땻땳돳땻땃땁따딅딸둡될땩뒬둥딻뎻됩뎠됴뎸돵돤땲땨딞땥돷둔땡땰땲둡땀땍됩뒤뎠딐뒀땜뒀뒹됩뒤든뎰돵두땫땻땐딽땰든돵뎡뒈뎡돸듨됐돼딽돝듸딞땠뎠뎠듰돨딞딐둬딠뒛돛딽땯돳뎸돴뒼땀뎬땮뒋뒬땡뎸땱땧뎡뒵돝딝드둬돤둑땤땍듨땳;

    .line 173
    .line 174
    const/4 v0, 0x2

    .line 175
    invoke-direct {p4, p0, p1, p2, v0}, L뎻뒤뒙듐뎠딝땨뒙돼딎든둥됨딞돛땁돠땋땔듼듽딀뎬들땝땱땻땳돳땻땃땁따딅딸둡될땩뒬둥딻뎻됩뎠됴뎸돵돤땲땨딞땥돷둔땡땰땲둡땀땍됩뒤뎠딐뒀땜뒀뒹됩뒤든뎰돵두땫땻땐딽땰든돵뎡뒈뎡돸듨됐돼딽돝듸딞땠뎠뎠듰돨딞딐둬딠뒛돛딽땯돳뎸돴뒼땀뎬땮뒋뒬땡뎸땱땧뎡뒵돝딝드둬돤둑땤땍듨땳;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    invoke-static {v1, p2, p1, v8}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 183
    .line 184
    .line 185
    :goto_2
    return-void
.end method
