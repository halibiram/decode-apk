.class public final Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/viewmodel/MainViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "ctx",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1\n+ 2 _Ext.kt\ncom/v2ray/ang/extension/_ExtKt\n*L\n1#1,505:1\n190#2,4:506\n*S KotlinDebug\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1\n*L\n492#1:506,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;


# direct methods
.method public constructor <init>(Lcom/v2ray/ang/viewmodel/MainViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final onReceive$lambda$0(Landroid/content/Intent;Lcom/v2ray/ang/viewmodel/MainViewModel;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v2, v1, [J

    .line 25
    .line 26
    fill-array-data v2, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {p0, v0, v3, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const/4 v0, 0x1

    .line 43
    if-ne p0, v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->clearAllTestDelay()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->removeAllServer()I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->removeInvalidServer()I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->removeDuplicateServer()I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/v2ray/ang/service/V2RayServiceManager;->stopVService(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x70046e4d9f734da4L    # 3.96491228924455E231
        0x30a57efb4f5315a2L
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        -0x7ae4614627d99836L    # -4.643528782701541E-284
        -0x1406a0320801da42L    # -1.3347193282608475E212
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/Intent;Lcom/v2ray/ang/viewmodel/MainViewModel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->onReceive$lambda$0(Landroid/content/Intent;Lcom/v2ray/ang/viewmodel/MainViewModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    new-array v2, p1, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v0

    .line 30
    :goto_0
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/16 v3, 0xb

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning()Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_9

    .line 53
    .line 54
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/16 v3, 0xc

    .line 62
    .line 63
    if-ne v2, v3, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning()Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_9

    .line 77
    .line 78
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/16 v3, 0x1f

    .line 86
    .line 87
    if-ne v2, v3, :cond_6

    .line 88
    .line 89
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning()Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_9

    .line 101
    .line 102
    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    const/16 v3, 0x20

    .line 110
    .line 111
    if-ne v2, v3, :cond_8

    .line 112
    .line 113
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning()Landroidx/lifecycle/MutableLiveData;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_8
    :goto_4
    if-nez v1, :cond_9

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    const/16 v3, 0x29

    .line 134
    .line 135
    if-ne v2, v3, :cond_a

    .line 136
    .line 137
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning()Landroidx/lifecycle/MutableLiveData;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_a
    :goto_5
    if-nez v1, :cond_b

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/16 v3, 0x3d

    .line 158
    .line 159
    if-ne v2, v3, :cond_c

    .line 160
    .line 161
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getUpdateTestResultAction()Landroidx/lifecycle/MutableLiveData;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array p1, p1, [J

    .line 170
    .line 171
    fill-array-data p1, :array_1

    .line 172
    .line 173
    .line 174
    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    new-instance p1, Landroid/os/Handler;

    .line 189
    .line 190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 198
    .line 199
    new-instance v1, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    invoke-direct {v1, p2, v0, v2}, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    const-wide/16 v2, 0x64

    .line 206
    .line 207
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning()Landroidx/lifecycle/MutableLiveData;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    goto :goto_9

    .line 222
    :cond_c
    :goto_6
    if-nez v1, :cond_d

    .line 223
    .line 224
    goto :goto_9

    .line 225
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    const/16 v2, 0x47

    .line 230
    .line 231
    if-ne v1, v2, :cond_11

    .line 232
    .line 233
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array p1, p1, [J

    .line 236
    .line 237
    fill-array-data p1, :array_2

    .line 238
    .line 239
    .line 240
    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 248
    .line 249
    const/16 v2, 0x21

    .line 250
    .line 251
    if-lt v1, v2, :cond_e

    .line 252
    .line 253
    invoke-static {p2, p1}, L뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    goto :goto_8

    .line 258
    :cond_e
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    instance-of p2, p1, Lkotlin/Pair;

    .line 263
    .line 264
    if-nez p2, :cond_f

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_f
    move-object v0, p1

    .line 268
    :goto_7
    move-object p1, v0

    .line 269
    check-cast p1, Lkotlin/Pair;

    .line 270
    .line 271
    :goto_8
    check-cast p1, Lkotlin/Pair;

    .line 272
    .line 273
    if-nez p1, :cond_10

    .line 274
    .line 275
    return-void

    .line 276
    :cond_10
    sget-object p2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 277
    .line 278
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Ljava/lang/Number;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 291
    .line 292
    .line 293
    move-result-wide v1

    .line 294
    invoke-virtual {p2, v0, v1, v2}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerTestDelayMillis(Ljava/lang/String;J)V

    .line 295
    .line 296
    .line 297
    iget-object p2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 298
    .line 299
    invoke-virtual {p2}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getUpdateListAction()Landroidx/lifecycle/MutableLiveData;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 304
    .line 305
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getPosition(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_11
    :goto_9
    return-void

    .line 323
    :array_0
    .array-data 8
        0x748a5337e466eecaL    # 2.4125478275835318E253
        0x62febc7f29a5c0aaL    # 7.24985620019113E168
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_1
    .array-data 8
        -0x511e421de71d57b6L    # -7.306126655185407E-83
        -0x64d29ddb03af8926L    # -9.063882699251322E-178
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_2
    .array-data 8
        0x11634c3c05f6044bL    # 6.51689679911418E-225
        0x276b8ec2ea0c6a29L    # 8.537566217525611E-119
    .end array-data
.end method
