.class public Lcom/tknetwork/tunnel/activities/ServerActivity;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"


# static fields
.field public static final ASK_QUESTION_REQUEST:I = 0xfa3

.field private static final S_BIND_CALLED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final TIME_FORMAT_ISO:I = 0x2

.field public static final TIME_FORMAT_NONE:I = 0x0

.field public static final TIME_FORMAT_SHORT:I = 0x1

.field private static mPref:Landroid/content/SharedPreferences;


# instance fields
.field private a:Landroidx/appcompat/app/AlertDialog;

.field private category_type:Landroid/widget/RadioGroup;

.field private ckMultiCert:Landroid/widget/CheckBox;

.field private ckUseLogin:Landroid/widget/CheckBox;

.field private config:Lconfig/ConfigUtil;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private etAllowedIPs:Lcom/google/android/material/textfield/TextInputEditText;

.field private etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

.field private etEndpoint:Lcom/google/android/material/textfield/TextInputEditText;

.field private etPass:Lcom/google/android/material/textfield/TextInputEditText;

.field private etPreSharedKey:Lcom/google/android/material/textfield/TextInputEditText;

.field private etPrivateKey:Lcom/google/android/material/textfield/TextInputEditText;

.field private etPublicKey:Lcom/google/android/material/textfield/TextInputEditText;

.field private etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

.field private etServerAddress:Lcom/google/android/material/textfield/TextInputEditText;

.field private etServerCloudFront:Lcom/google/android/material/textfield/TextInputEditText;

.field private etServerHTTP:Lcom/google/android/material/textfield/TextInputEditText;

.field private etServerIP:Lcom/google/android/material/textfield/TextInputEditText;

.field private etTcpPort:Lcom/google/android/material/textfield/TextInputEditText;

.field private etUser:Lcom/google/android/material/textfield/TextInputEditText;

.field private exit:Landroidx/appcompat/widget/AppCompatImageView;

.field private fakeV2ray:Landroid/widget/CheckBox;

.field private listNetwork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public listProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private final mTimeFormat:I

.field private mValidade:J

.field private myPrefs:Landroid/content/SharedPreferences;

.field public networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

.field private openvpn_udp_port:Lcom/google/android/material/textfield/TextInputEditText;

.field private prefs:Lnet/openvpn/openvpn/PrefUtil;

.field private primary:Lcom/google/android/material/textfield/TextInputEditText;

.field private sName:Lcom/google/android/material/textfield/TextInputEditText;

.field private secondary:Lcom/google/android/material/textfield/TextInputEditText;

.field private selectedServerType:I

.field private serverType:Landroid/widget/Spinner;

.field public server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

.field private server_listview:Landroid/widget/ListView;

.field private v:Landroid/view/View;

.field private wire_full_conf:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/activities/ServerActivity;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x658444a36220dce5L
        -0x1532f0aa47f5b4d2L    # -2.9155546630019126E206
        -0x5890c42422816160L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 5
    .line 6
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 7
    .line 8
    const/16 v0, -0x64

    .line 9
    .line 10
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->mTimeFormat:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->mValidade:J

    .line 15
    .line 16
    return-void
.end method

.method private CategoryType()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->category_type:Landroid/widget/RadioGroup;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7f0a03ff

    .line 9
    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v0, v0, [J

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->category_type:Landroid/widget/RadioGroup;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const v2, 0x7f0a0401

    .line 35
    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->category_type:Landroid/widget/RadioGroup;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const v2, 0x7f0a0400

    .line 61
    .line 62
    .line 63
    if-ne v1, v2, :cond_2

    .line 64
    .line 65
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v0, v0, [J

    .line 68
    .line 69
    fill-array-data v0, :array_2

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_3

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0

    .line 95
    :array_0
    .array-data 8
        0xf58e2f8e09428e3L    # 9.783835315163452E-235
        -0x70a53b7c7a43b4a4L
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        0x14a80eca141c18ddL    # 3.658882040206413E-209
        0xb4557ae24ab15afL
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_2
    .array-data 8
        -0x339eb6645f03b840L    # -8.681247246053773E59
        -0x7632244f662fb9a0L
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_3
    .array-data 8
        -0x5eaaf2ad57094040L    # -4.116009618347801E-148
        -0x434334cfd7d5cbc7L    # -3.9959290828849267E-16
    .end array-data
.end method

.method private SaveFile()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f0d0042

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f0a0333

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, L뎹뎠돰될딟딄딞뒨돳딠딃도득딄땟뒨뒷둑둑됫땦듬딁듻딟뒐땦됨딽득땝땄땱땜딃땡딜땤땹뎬딸뎠뒋뒝딸땹땍따땐돳딹듸돷돨듬땣땜듨땝딄땱땁땤돸뒻디됴됴돳뎠땠땹땡딹둑뒬듸듻뒵돼딸땻땁땮딽듬딐돸땦듐둬됴돝딅됨땍뎽뎠뎰땝뒙돸딹둡뒻뒈득돼딌뎻듨돨땻땠땟돵돷되돨땦돠딸됩딜땀딐뎽딎뎻뒉;

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-direct {v3, v0, v4}, L뎹뎠돰될딟딄딞뒨돳딠딃도득딄땟뒨뒷둑둑됫땦듬딁듻딟뒐땦됨딽득땝땄땱땜딃땡딜땤땹뎬딸뎠뒋뒝딸땹땍따땐돳딹듸돷돨듬땣땜듨땝딄땱땁땤돸뒻디됴됴돳뎠땠땹땡딹둑뒬듸듻뒵돼딸땻땁땮딽듬딐돸땦듐둬됴돝딅됨땍뎽뎠뎰땝뒙돸딹둡뒻뒈득돼딌뎻듨돨땻땠땟돵돷되돨땦돠딸됩딜땀딐뎽딎뎻뒉;-><init>(Landroidx/appcompat/app/AlertDialog;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    const v2, 0x7f0a00c2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, L뎹뎠돰될딟딄딞뒨돳딠딃도득딄땟뒨뒷둑둑됫땦듬딁듻딟뒐땦됨딽득땝땄땱땜딃땡딜땤땹뎬딸뎠뒋뒝딸땹땍따땐돳딹듸돷돨듬땣땜듨땝딄땱땁땤돸뒻디됴됴돳뎠땠땹땡딹둑뒬듸듻뒵돼딸땻땁땮딽듬딐돸땦듐둬됴돝딅됨땍뎽뎠뎰땝뒙돸딹둡뒻뒈득돼딌뎻듨돨땻땠땟돵돷되돨땦돠딸됩딜땀딐뎽딎뎻뒉;

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    invoke-direct {v3, v0, v4}, L뎹뎠돰될딟딄딞뒨돳딠딃도득딄땟뒨뒷둑둑됫땦듬딁듻딟뒐땦됨딽득땝땄땱땜딃땡딜땤땹뎬딸뎠뒋뒝딸땹땍따땐돳딹듸돷돨듬땣땜듨땝딄땱땁땤돸뒻디됴됴돳뎠땠땹땡딹둑뒬듸듻뒵돼딸땻땁땮딽듬딐돸땦듐둬됴돝딅됨땍뎽뎠뎰땝뒙돸딹둡뒻뒈득돼딌뎻듨돨땻땠땟돵돷되돨땦돠딸됩딜땀딐뎽딎뎻뒉;-><init>(Landroidx/appcompat/app/AlertDialog;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private ServerList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private clipImport1()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x4

    .line 5
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v5, 0x3

    .line 8
    new-array v5, v5, [J

    .line 9
    .line 10
    fill-array-data v5, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroid/content/ClipboardManager;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :try_start_1
    invoke-static {v4}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    const v4, 0x7f130131

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p0, v4}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    move-exception v4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0, v4}, Lcom/tknetwork/tunnel/activities/ServerActivity;->processImportData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :goto_0
    :try_start_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v6, v3, [J

    .line 64
    .line 65
    fill-array-data v6, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    new-array v7, v2, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object v6, v7, v1

    .line 90
    .line 91
    aput-object v4, v7, v0

    .line 92
    .line 93
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {p0, v4}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_1
    move-exception v4

    .line 102
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v3, v3, [J

    .line 105
    .line 106
    fill-array-data v3, :array_2

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v5, v2, v1

    .line 131
    .line 132
    aput-object v4, v2, v0

    .line 133
    .line 134
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void

    .line 142
    nop

    .line 143
    :array_0
    .array-data 8
        -0x5687f95e9344f551L    # -6.393832504389027E-109
        0x66e2039c5a1f365eL    # 3.91904268398024E187
        -0xdefc8ae83683455L    # -2.7032275770643215E241
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_1
    .array-data 8
        -0x45991f753125207eL    # -2.309998598116066E-27
        0x7a402c02d8e66e1bL    # 7.338841605064943E280
        0x2621256c7a0ec680L    # 5.065931939038027E-125
        0x35bb8f10b9d5938L
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 8
        0x4d8c6d7be47c0d54L    # 3.742229066883739E65
        0xc2e1de6d25ce167L
        0x4dcdd62fb5867908L    # 6.2843352354912E66
        0x3cd81e7c8a386930L    # 1.3388783320033522E-15
    .end array-data
.end method

.method private dialogAddServer()V
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0028

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 14
    .line 15
    const v1, 0x7f0a032b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v4, v3, [J

    .line 30
    .line 31
    fill-array-data v4, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    new-array v6, v5, [J

    .line 45
    .line 46
    fill-array-data v6, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 68
    .line 69
    const v1, 0x7f0a032f

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v6, v3, [J

    .line 83
    .line 84
    fill-array-data v6, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v7, v5, [J

    .line 97
    .line 98
    fill-array-data v7, :array_3

    .line 99
    .line 100
    .line 101
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 124
    .line 125
    const v2, 0x7f0a0170

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->sName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 137
    .line 138
    const v2, 0x7f0a0167

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etServerAddress:Lcom/google/android/material/textfield/TextInputEditText;

    .line 148
    .line 149
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 150
    .line 151
    const v2, 0x7f0a0153

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etEndpoint:Lcom/google/android/material/textfield/TextInputEditText;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 163
    .line 164
    const v2, 0x7f0a0160

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etPublicKey:Lcom/google/android/material/textfield/TextInputEditText;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 176
    .line 177
    const v2, 0x7f0a015e

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etPrivateKey:Lcom/google/android/material/textfield/TextInputEditText;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 189
    .line 190
    const v2, 0x7f0a015d

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 198
    .line 199
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etPreSharedKey:Lcom/google/android/material/textfield/TextInputEditText;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 202
    .line 203
    const v2, 0x7f0a014e

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 211
    .line 212
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etAllowedIPs:Lcom/google/android/material/textfield/TextInputEditText;

    .line 213
    .line 214
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 215
    .line 216
    const v2, 0x7f0a0098

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Landroid/widget/RadioGroup;

    .line 224
    .line 225
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->category_type:Landroid/widget/RadioGroup;

    .line 226
    .line 227
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 228
    .line 229
    const v2, 0x7f0a0177

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 237
    .line 238
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etTcpPort:Lcom/google/android/material/textfield/TextInputEditText;

    .line 239
    .line 240
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 241
    .line 242
    const v4, 0x7f0a016e

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 250
    .line 251
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etServerIP:Lcom/google/android/material/textfield/TextInputEditText;

    .line 252
    .line 253
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 254
    .line 255
    const v4, 0x7f0a0169

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 263
    .line 264
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etServerCloudFront:Lcom/google/android/material/textfield/TextInputEditText;

    .line 265
    .line 266
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 267
    .line 268
    const v4, 0x7f0a016c

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 276
    .line 277
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etServerHTTP:Lcom/google/android/material/textfield/TextInputEditText;

    .line 278
    .line 279
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 286
    .line 287
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etTcpPort:Lcom/google/android/material/textfield/TextInputEditText;

    .line 288
    .line 289
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 290
    .line 291
    const v2, 0x7f0a0164

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 299
    .line 300
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    .line 301
    .line 302
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 303
    .line 304
    const v2, 0x7f0a02f8

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 312
    .line 313
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 314
    .line 315
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 316
    .line 317
    const v2, 0x7f0a034c

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 325
    .line 326
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 327
    .line 328
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 329
    .line 330
    const v2, 0x7f0a0150

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 338
    .line 339
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    .line 340
    .line 341
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 342
    .line 343
    const v2, 0x7f0a017d

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 351
    .line 352
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etUser:Lcom/google/android/material/textfield/TextInputEditText;

    .line 353
    .line 354
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 355
    .line 356
    const v2, 0x7f0a015b

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 364
    .line 365
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etPass:Lcom/google/android/material/textfield/TextInputEditText;

    .line 366
    .line 367
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 368
    .line 369
    const v2, 0x7f0a00b8

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Landroid/widget/CheckBox;

    .line 377
    .line 378
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckUseLogin:Landroid/widget/CheckBox;

    .line 379
    .line 380
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 381
    .line 382
    const v2, 0x7f0a0194

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    check-cast v0, Landroid/widget/CheckBox;

    .line 390
    .line 391
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->fakeV2ray:Landroid/widget/CheckBox;

    .line 392
    .line 393
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 394
    .line 395
    const v2, 0x7f0a041e

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Landroid/widget/CheckBox;

    .line 403
    .line 404
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->wire_full_conf:Landroid/widget/CheckBox;

    .line 405
    .line 406
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 407
    .line 408
    const v2, 0x7f0a00b6

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    check-cast v0, Landroid/widget/CheckBox;

    .line 416
    .line 417
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckMultiCert:Landroid/widget/CheckBox;

    .line 418
    .line 419
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 420
    .line 421
    const v2, 0x7f0a032c

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    check-cast v0, Landroid/widget/TextView;

    .line 429
    .line 430
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 431
    .line 432
    new-array v4, v3, [J

    .line 433
    .line 434
    fill-array-data v4, :array_4

    .line 435
    .line 436
    .line 437
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 448
    .line 449
    const v2, 0x7f0a0334

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v0, Landroid/widget/TextView;

    .line 457
    .line 458
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 459
    .line 460
    new-array v4, v5, [J

    .line 461
    .line 462
    fill-array-data v4, :array_5

    .line 463
    .line 464
    .line 465
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->fakeV2ray:Landroid/widget/CheckBox;

    .line 476
    .line 477
    const/4 v2, 0x1

    .line 478
    const/high16 v4, 0x41000000    # 8.0f

    .line 479
    .line 480
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 481
    .line 482
    .line 483
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->wire_full_conf:Landroid/widget/CheckBox;

    .line 484
    .line 485
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 486
    .line 487
    .line 488
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckUseLogin:Landroid/widget/CheckBox;

    .line 489
    .line 490
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 491
    .line 492
    .line 493
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckMultiCert:Landroid/widget/CheckBox;

    .line 494
    .line 495
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 496
    .line 497
    .line 498
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 499
    .line 500
    const v4, 0x7f0a02c6

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 508
    .line 509
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->openvpn_udp_port:Lcom/google/android/material/textfield/TextInputEditText;

    .line 510
    .line 511
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->category_type:Landroid/widget/RadioGroup;

    .line 512
    .line 513
    const v4, 0x7f0a03ff

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 520
    .line 521
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 522
    .line 523
    new-array v6, v5, [J

    .line 524
    .line 525
    fill-array-data v6, :array_6

    .line 526
    .line 527
    .line 528
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 539
    .line 540
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 541
    .line 542
    new-array v6, v3, [J

    .line 543
    .line 544
    fill-array-data v6, :array_7

    .line 545
    .line 546
    .line 547
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    .line 556
    .line 557
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 558
    .line 559
    const v4, 0x7f0a035e

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    check-cast v0, Landroid/widget/Spinner;

    .line 567
    .line 568
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->serverType:Landroid/widget/Spinner;

    .line 569
    .line 570
    new-instance v4, Lcom/tknetwork/tunnel/activities/ServerActivity$2;

    .line 571
    .line 572
    invoke-direct {v4, p0}, Lcom/tknetwork/tunnel/activities/ServerActivity$2;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 576
    .line 577
    .line 578
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckMultiCert:Landroid/widget/CheckBox;

    .line 579
    .line 580
    new-instance v4, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;

    .line 581
    .line 582
    const/4 v6, 0x0

    .line 583
    invoke-direct {v4, p0, v6}, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    .line 588
    .line 589
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckUseLogin:Landroid/widget/CheckBox;

    .line 590
    .line 591
    new-instance v4, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;

    .line 592
    .line 593
    invoke-direct {v4, p0, v2}, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    .line 598
    .line 599
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->fakeV2ray:Landroid/widget/CheckBox;

    .line 600
    .line 601
    new-instance v2, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;

    .line 602
    .line 603
    invoke-direct {v2, p0, v5}, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    .line 608
    .line 609
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->wire_full_conf:Landroid/widget/CheckBox;

    .line 610
    .line 611
    new-instance v2, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;

    .line 612
    .line 613
    invoke-direct {v2, p0, v3}, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    .line 618
    .line 619
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->sName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 620
    .line 621
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 629
    .line 630
    const v2, 0x7f0a0095

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    new-instance v2, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;

    .line 638
    .line 639
    const/4 v3, 0x4

    .line 640
    invoke-direct {v2, p0, v3}, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    .line 645
    .line 646
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 647
    .line 648
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    new-instance v1, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;

    .line 653
    .line 654
    const/4 v2, 0x5

    .line 655
    invoke-direct {v1, p0, v2}, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    .line 660
    .line 661
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 662
    .line 663
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 664
    .line 665
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 666
    .line 667
    .line 668
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 669
    .line 670
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 671
    .line 672
    .line 673
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 674
    .line 675
    const v1, 0x7f0a018b

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 683
    .line 684
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->exit:Landroidx/appcompat/widget/AppCompatImageView;

    .line 685
    .line 686
    new-instance v1, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;

    .line 687
    .line 688
    const/4 v2, 0x6

    .line 689
    invoke-direct {v1, p0, v2}, L땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    .line 694
    .line 695
    return-void

    .line 696
    nop

    .line 697
    :array_0
    .array-data 8
        -0x45063bbf5d35655dL    # -1.3321025806322085E-24
        0xe936134b9d9e748L
        -0x73476e1f90f9dbcL    # -7.448020230853763E273
    .end array-data

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :array_1
    .array-data 8
        -0x48fa221611ac0207L    # -1.2256793752094962E-43
        -0x1ac2f35cb858bf00L    # -4.7086249361281647E179
    .end array-data

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    :array_2
    .array-data 8
        0x3a103c62b21f0053L    # 5.123140706200845E-29
        0x59ebca836c57fb2aL
        0x4e85dd732232c55fL    # 1.8863368309744822E70
    .end array-data

    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    :array_3
    .array-data 8
        0x798c9f6622208d62L    # 3.171143513773576E277
        0x1b23cb3b14c0c1f7L    # 6.10581006541629E-178
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_4
    .array-data 8
        -0x5307457f0951f111L    # -4.741979165660963E-92
        -0x131aef9400f8f6cbL    # -3.630703593334396E216
        -0x74e9eb4c2d14f56dL    # -2.941168085061487E-255
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :array_5
    .array-data 8
        0x784e6be7a406c967L    # 3.2143027652043516E271
        -0x46433acef68d5470L    # -1.4184842953090128E-30
    .end array-data

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :array_6
    .array-data 8
        -0x7497ca9cdacb2fc4L
        -0x2d91d40887e759dL    # -7.308203285427688E294
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :array_7
    .array-data 8
        0x302c4d1475362b7fL    # 1.222065065003445E-76
        -0xc1ab9388e73fa6aL    # -1.90417215127485E250
        -0x5a35849236053b6L
    .end array-data
.end method

.method private getNetworkSelectedJson()Lorg/json/JSONObject;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lorg/json/JSONObject;

    .line 18
    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 39
    .line 40
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getNetworkSelectedName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lorg/json/JSONObject;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lorg/json/JSONObject;

    .line 69
    .line 70
    return-object v0

    .line 71
    :array_0
    .array-data 8
        -0x1a725bc7f6aabed8L    # -1.5374722868229954E181
        -0x5f4d50101c74130eL
    .end array-data
.end method

.method private getServer()Lorg/json/JSONObject;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getServerSelectedName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getServersArray(I)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ge v3, v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    new-array v6, v6, [J

    .line 29
    .line 30
    fill-array-data v6, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    return-object v4

    .line 51
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :array_0
    .array-data 8
        0x5b4c5c12c84f8417L    # 6.29055793978516E131
        0x6e9202821d309584L    # 4.1664446966563625E224
    .end array-data
.end method

.method private getServerSelectedJson()Lorg/json/JSONObject;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getServerSelectedName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getServersArray(I)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ge v3, v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    new-array v6, v6, [J

    .line 29
    .line 30
    fill-array-data v6, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    return-object v4

    .line 51
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :array_0
    .array-data 8
        0x31d92f19704f4221L    # 1.4595715720912605E-68
        -0xf1140a696ab3887L    # -9.776329713891586E235
    .end array-data
.end method

.method private static synthetic lambda$SaveFile$16(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$SaveFile$17(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$dialogAddServer$2(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckMultiCert:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0x7f0a0151

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private synthetic lambda$dialogAddServer$3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckUseLogin:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0x7f0a0001

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private synthetic lambda$dialogAddServer$4(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x2

    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->fakeV2ray:Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v0, v0, [J

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->fakeV2ray:Landroid/widget/CheckBox;

    .line 32
    .line 33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array p1, p1, [J

    .line 36
    .line 37
    fill-array-data p1, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->SaveFile()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->fakeV2ray:Landroid/widget/CheckBox;

    .line 55
    .line 56
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array p1, p1, [J

    .line 59
    .line 60
    fill-array-data p1, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v0, v0, [J

    .line 78
    .line 79
    fill-array-data v0, :array_3

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        0x2bafe9e3c5c6be0aL    # 2.9181502990857652E-98
        -0x2ee89297b60e6c1aL    # -4.4444949141733236E82
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        -0x694885fc86c3c725L
        0x77ae1fb482473f9aL    # 3.108254727836894E268
        0x1193f4cd1edcf0L
        0x782cfd7fd3f8e1cfL    # 7.657690445135298E270
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_2
    .array-data 8
        0x1ff85ae5df22ff30L
        -0x457f28c3297f883bL    # -6.801933667308546E-27
        0x74056e328a38c9abL    # 7.671810587642664E250
        -0x618034bd1b5b4d77L    # -8.833796031179562E-162
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_3
    .array-data 8
        -0x1ebac0cbcfa4a9b5L    # -3.733903395077582E160
        -0x6e6efc7fc81fee20L
    .end array-data
.end method

.method private synthetic lambda$dialogAddServer$5(Landroid/view/View;)V
    .locals 8

    .line 1
    const/4 p1, 0x3

    .line 2
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->wire_full_conf:Landroid/widget/CheckBox;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const v2, 0x7f0a016f

    .line 10
    .line 11
    .line 12
    const v3, 0x7f0a016a

    .line 13
    .line 14
    .line 15
    const v4, 0x7f0a01d3

    .line 16
    .line 17
    .line 18
    const v5, 0x7f0a041f

    .line 19
    .line 20
    .line 21
    const/16 v6, 0x8

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->wire_full_conf:Landroid/widget/CheckBox;

    .line 26
    .line 27
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array p1, p1, [J

    .line 30
    .line 31
    fill-array-data p1, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v7, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 72
    .line 73
    const v0, 0x7f0a016d

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->wire_full_conf:Landroid/widget/CheckBox;

    .line 94
    .line 95
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array p1, p1, [J

    .line 98
    .line 99
    fill-array-data p1, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {v7, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :goto_0
    return-void

    .line 149
    :array_0
    .array-data 8
        0x3395c4fa172ce1a5L    # 3.386789110569101E-60
        0x34b54900e5eb2a78L    # 8.680763412772704E-55
        0xff7f4d8532d03aeL    # 9.644181432936723E-232
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        -0xa7966a2940e4d05L    # -1.357303892510633E258
        0x2abbe9b66a895787L    # 7.78909622323137E-103
        -0x734d7a3e65f13060L    # -1.655704516654848E-247
    .end array-data
.end method

.method private synthetic lambda$dialogAddServer$6(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$dialogAddServer$7(Landroid/view/View;)V
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckUseLogin:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etUser:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_6

    :cond_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    const-wide v9, 0x18b8cee21357a0e0L

    aput-wide v9, v8, v3

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3
    :goto_0
    iget-object v8, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckUseLogin:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etPass:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v2, [J

    const-wide v10, -0x234f805ccbaceebeL    # -3.069903304858356E138

    aput-wide v10, v9, v3

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4
    :goto_1
    iget-object v9, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etServerIP:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5
    iget-object v10, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etServerCloudFront:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6
    iget-object v11, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etServerHTTP:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v11}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 7
    iget-object v12, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etServerAddress:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v12}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 8
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 9
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 10
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 11
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 12
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 13
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 14
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 15
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_10

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_11

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 17
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_12

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_13

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 18
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_14

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_15

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_16

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_17

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 20
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_18

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_19

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 21
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 22
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 23
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 24
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_20

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_21

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 25
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_22

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_23

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 26
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_24

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_25

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 27
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_26

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_27

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_28

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_29

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 29
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_2a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_2b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 30
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_2c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_2d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 31
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_2e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_2f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 32
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_30

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_31

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 33
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_32

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_33

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 34
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 35
    iget-object v13, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etEndpoint:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v13}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 36
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_34

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_35

    invoke-direct {v15, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v13, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_36

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_37

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 38
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_38

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_39

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 39
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_3a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_3b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 40
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_3c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_3d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 41
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_3e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_3f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 42
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_40

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_41

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 43
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_42

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_43

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 44
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_44

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_45

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 45
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_46

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_47

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 46
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_48

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_49

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 47
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_4a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_4b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 48
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_4c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_4d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 49
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_4e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_4f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 50
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_50

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_51

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 51
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_52

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_53

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 52
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_54

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_55

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 53
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_56

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_57

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 54
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_58

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_59

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 55
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_5a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_5b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 56
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_5c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_5d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 57
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_5e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_5f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 58
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_60

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_61

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 59
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_62

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_63

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 60
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_64

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_65

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 61
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_66

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_67

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 62
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 63
    iget-object v13, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etPublicKey:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v13}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 64
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_68

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_69

    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v13, v14, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_6a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_6b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 66
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_6c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_6d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 67
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_6e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_6f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 68
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_70

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_71

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 69
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_72

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_73

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 70
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_74

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_75

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 71
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_76

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_77

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 72
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_78

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_79

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 73
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_7a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_7b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 74
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_7c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_7d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 75
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_7e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_7f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 76
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_80

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_81

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 77
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_82

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_83

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 78
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_84

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_85

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 79
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_86

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_87

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 80
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_88

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_89

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 81
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_8a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_8b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 82
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_8c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_8d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 83
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_8e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_8f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 84
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_90

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_91

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 85
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_92

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_93

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 86
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_94

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_95

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 87
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_96

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_97

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 88
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_98

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_99

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 89
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_9a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_9b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 90
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 91
    iget-object v13, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etPrivateKey:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v13}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 92
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_9c

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_9d

    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v13, v14, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_9e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_9f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 94
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_a0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_a1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 95
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_a2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_a3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 96
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_a4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_a5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 97
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_a6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_a7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 98
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_a8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_a9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 99
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_aa

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_ab

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 100
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_ac

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_ad

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 101
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_ae

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_af

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 102
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_b0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_b1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 103
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_b2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_b3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 104
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_b4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_b5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 105
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_b6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_b7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 106
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_b8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_b9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 107
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_ba

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_bb

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 108
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_bc

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_bd

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 109
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_be

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_bf

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 110
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_c0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_c1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 111
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_c2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_c3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 112
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_c4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_c5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 113
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_c6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_c7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 114
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_c8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_c9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 115
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_ca

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_cb

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 116
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_cc

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_cd

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 117
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_ce

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_cf

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 118
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v13, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etPreSharedKey:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v13}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 120
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_d0

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v16, v2

    new-array v2, v5, [J

    fill-array-data v2, :array_d1

    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v13, v14, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_d2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_d3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 122
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_d4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_d5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 123
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_d6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_d7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 124
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_d8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_d9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 125
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_da

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_db

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 126
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_dc

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_dd

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 127
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_de

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_df

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 128
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_e0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_e1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 129
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_e2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_e3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 130
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_e4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_e5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 131
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_e6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_e7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 132
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_e8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_e9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 133
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_ea

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_eb

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 134
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_ec

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_ed

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 135
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_ee

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_ef

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 136
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_f0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_f1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 137
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_f2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_f3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 138
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_f4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_f5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 139
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_f6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_f7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 140
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_f8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_f9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 141
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_fa

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_fb

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 142
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_fc

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_fd

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 143
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_fe

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_ff

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 144
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_100

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_101

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 145
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_102

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_103

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 146
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v13, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etAllowedIPs:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v13}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 148
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_104

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v17, v2

    new-array v2, v5, [J

    fill-array-data v2, :array_105

    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v13, v14, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_106

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_107

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 150
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_108

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_109

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 151
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_10a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_10b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 152
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_10c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_10d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 153
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_10e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_10f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 154
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_110

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_111

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 155
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_112

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_113

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 156
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_114

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_115

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 157
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_116

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_117

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 158
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_118

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_119

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 159
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_11a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_11b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 160
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_11c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_11d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 161
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_11e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_11f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 162
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_120

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_121

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 163
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_122

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_123

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 164
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_124

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_125

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 165
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_126

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_127

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 166
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_128

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_129

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 167
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_12a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_12b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 168
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_12c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_12d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 169
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_12e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_12f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 170
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_130

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_131

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 171
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_132

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_133

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 172
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_134

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_135

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 173
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_136

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_137

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 174
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_138

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_139

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 176
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_13a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_13b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 177
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_13c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_13d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 178
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_13e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_13f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 179
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_140

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_141

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 180
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_142

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_143

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 181
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_144

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_145

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 182
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_146

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_147

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 183
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_148

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_149

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 184
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_14a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_14b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 185
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_14c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_14d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 186
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_14e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_14f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 187
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_150

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_151

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 188
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_152

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_153

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 189
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_154

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_155

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 190
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_156

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_157

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 191
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_158

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_159

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 192
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_15a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_15b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 193
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_15c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_15d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 194
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_15e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_15f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 195
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_160

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_161

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 196
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_162

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_163

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 197
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_164

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_165

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 198
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_166

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_167

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 199
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_168

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_169

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 200
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_16a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_16b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 201
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 202
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_16c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_16d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 203
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_16e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_16f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 204
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_170

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_171

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 205
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_172

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_173

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 206
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_174

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_175

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 207
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_176

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_177

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 208
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_178

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_179

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 209
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_17a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_17b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 210
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_17c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_17d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 211
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_17e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_17f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 212
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_180

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_181

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 213
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_182

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_183

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 214
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_184

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_185

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 215
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_186

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_187

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 216
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_188

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_189

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 217
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_18a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_18b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 218
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_18c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_18d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 219
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_18e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_18f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 220
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_190

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_191

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 221
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_192

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_193

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 222
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_194

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_195

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 223
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_196

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_197

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 224
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_198

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_199

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 225
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_19a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_19b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 226
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_19c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_19d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 227
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_19e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_19f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 228
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 229
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1a0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1a1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 230
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1a2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1a3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 231
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1a4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1a5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 232
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1a6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1a7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 233
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1a8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1a9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 234
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1aa

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1ab

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 235
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1ac

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1ad

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 236
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1ae

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1af

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 237
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1b0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1b1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 238
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1b2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1b3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 239
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1b4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1b5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 240
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1b6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1b7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 241
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1b8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1b9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 242
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1ba

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1bb

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 243
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1bc

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1bd

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 244
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1be

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1bf

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 245
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1c0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1c1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 246
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1c2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1c3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 247
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1c4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1c5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 248
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1c6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1c7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 249
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1c8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1c9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 250
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1ca

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1cb

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 251
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1cc

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1cd

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 252
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1ce

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1cf

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 253
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1d0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1d1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 254
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1d2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1d3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 255
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 256
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1d4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1d5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 257
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1d6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1d7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 258
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1d8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1d9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 259
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1da

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1db

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 260
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1dc

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1dd

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 261
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1de

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1df

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 262
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1e0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1e1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 263
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1e2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1e3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 264
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1e4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1e5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 265
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1e6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1e7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 266
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1e8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1e9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 267
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1ea

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1eb

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 268
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1ec

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1ed

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 269
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1ee

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1ef

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 270
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1f0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1f1

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 271
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1f2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1f3

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 272
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1f4

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1f5

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 273
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1f6

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1f7

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 274
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1f8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1f9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 275
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1fa

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1fb

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 276
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1fc

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1fd

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 277
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_1fe

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_1ff

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 278
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_200

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_201

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 279
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_202

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_203

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 280
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_204

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_205

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 281
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_206

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_207

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 282
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 283
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_208

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_209

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 284
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_20a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_20b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 285
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_20c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_20d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 286
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_20e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_20f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 287
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_210

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_211

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 288
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_212

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_213

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 289
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_214

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_215

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 290
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_216

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_217

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 291
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_218

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_219

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 292
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_21a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_21b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 293
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_21c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_21d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 294
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_21e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_21f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 295
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_220

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_221

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 296
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_222

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_223

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 297
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_224

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_225

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 298
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_226

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_227

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 299
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_228

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_229

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 300
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_22a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_22b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 301
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_22c

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_22d

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 302
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_22e

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_22f

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 303
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_230

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_231

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 304
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_232

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_233

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 305
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_234

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_235

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 306
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_236

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_237

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 307
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_238

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_239

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 308
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_23a

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_23b

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 309
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 310
    iget-object v13, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->serverType:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v13

    if-nez v13, :cond_2

    .line 311
    iget-object v13, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v13}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 312
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_3

    .line 313
    :cond_3
    invoke-static {v7}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 314
    invoke-static {v8}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 315
    :cond_4
    :goto_3
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v8, 0x1

    new-array v14, v8, [J

    const-wide v18, -0xa745743a3139d18L

    const/4 v8, 0x0

    aput-wide v18, v14, v8

    invoke-direct {v7, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    .line 316
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x1

    new-array v15, v14, [J

    const-wide v18, -0x300a44fe2828f2a4L    # -1.5726372707431473E77

    const/4 v14, 0x0

    aput-wide v18, v15, v14

    invoke-direct {v8, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 317
    :goto_4
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v15, 0x3

    new-array v5, v15, [J

    fill-array-data v5, :array_23c

    invoke-direct {v14, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v14, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->serverType:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v14

    invoke-virtual {v6, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x2

    new-array v15, v14, [J

    fill-array-data v15, :array_23d

    invoke-direct {v5, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v14, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->sName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v14}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x3

    new-array v15, v14, [J

    fill-array-data v15, :array_23e

    invoke-direct {v5, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x4

    new-array v9, v9, [J

    fill-array-data v9, :array_23f

    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x3

    new-array v10, v9, [J

    fill-array-data v10, :array_240

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x2

    new-array v10, v9, [J

    fill-array-data v10, :array_241

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->CategoryType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x3

    new-array v10, v9, [J

    fill-array-data v10, :array_242

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x3

    new-array v10, v9, [J

    fill-array-data v10, :array_243

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x3

    new-array v9, v7, [J

    fill-array-data v9, :array_244

    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x3

    new-array v8, v7, [J

    fill-array-data v8, :array_245

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 327
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x3

    new-array v8, v7, [J

    fill-array-data v8, :array_246

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckUseLogin:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 328
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x2

    new-array v8, v7, [J

    fill-array-data v8, :array_247

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->fakeV2ray:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 329
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x3

    new-array v8, v7, [J

    fill-array-data v8, :array_248

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->wire_full_conf:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 330
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x3

    new-array v8, v7, [J

    fill-array-data v8, :array_249

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etTcpPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x2

    new-array v8, v7, [J

    fill-array-data v8, :array_24a

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v13, :cond_5

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v8, 0x1

    new-array v9, v8, [J

    const-wide v10, -0x3dbc9463cfa3ef87L    # -1.668195534641287E11

    const/4 v8, 0x0

    aput-wide v10, v9, v8

    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x2

    new-array v8, v7, [J

    fill-array-data v8, :array_24b

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->primary:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x2

    new-array v8, v7, [J

    fill-array-data v8, :array_24c

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->secondary:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x2

    new-array v8, v7, [J

    fill-array-data v8, :array_24d

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->openvpn_udp_port:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x3

    new-array v8, v7, [J

    fill-array-data v8, :array_24e

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x3

    new-array v8, v7, [J

    fill-array-data v8, :array_24f

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x3

    new-array v7, v5, [J

    fill-array-data v7, :array_250

    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_251

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_252

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_253

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    iget-object v2, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_254

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->sName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    iget-object v3, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x3

    new-array v6, v5, [J

    fill-array-data v6, :array_255

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_256

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->sName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->loadServers()V

    .line 346
    iget-object v2, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lconfig/ConfigUtil;->setServerSelectedPosition(I)V

    .line 347
    iget-object v2, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    iget-object v4, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lconfig/ConfigUtil;->setServerSelectedName(Ljava/lang/String;)V

    .line 348
    iget-object v2, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_257

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setSelectedServer()V

    .line 350
    iget-object v2, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_258

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x2

    new-array v6, v5, [J

    fill-array-data v6, :array_259

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 351
    invoke-direct {v1, v2, v3}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setResult(IZ)V

    .line 352
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tknetwork/tunnel/activities/ActivityUi;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x7f160000

    const v4, 0x7f160001

    .line 353
    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 354
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->sName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x2

    new-array v4, v4, [J

    fill-array-data v4, :array_25a

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 356
    iget-object v2, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 357
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_7
    return-void

    :array_0
    .array-data 8
        0x6993ff248f4cb40cL    # 3.826611829302131E200
        0x73a6dab26f466ab6L    # 1.2783626521118624E249
    .end array-data

    :array_1
    .array-data 8
        0x185502ea962b5234L
        0x781d91ad1a8d467L
    .end array-data

    :array_2
    .array-data 8
        -0x212473bebd26bd42L    # -8.806146637029144E148
        0x1c10a1703de0e98cL
    .end array-data

    :array_3
    .array-data 8
        -0x1c1672774dc4f8b6L    # -1.9750002721519423E173
        0x4707ae26d21527c1L    # 1.53693803381174E34
    .end array-data

    :array_4
    .array-data 8
        -0xd60d1a4183209b3L
        0xc88a50fc2ddd96dL
    .end array-data

    :array_5
    .array-data 8
        0x421847bce86de6c0L    # 2.607069442747534E10
        0x11b7c104406f4e16L    # 2.566962062543194E-223
    .end array-data

    :array_6
    .array-data 8
        -0x2013566df436b5c8L
        0x26fb2e398ac6dd08L    # 6.578702392769617E-121
    .end array-data

    :array_7
    .array-data 8
        0x5c68864c31edc7ebL    # 1.4260343265996031E137
        -0x6e0f1cde89d80f30L
    .end array-data

    :array_8
    .array-data 8
        -0x82cce39f98c1959L
        -0x41c80360408708e8L    # -5.584865007575717E-9
    .end array-data

    :array_9
    .array-data 8
        0x4d6d65a7e8c008ddL    # 9.674610212844337E64
        -0x6b69e62cabe0a3fbL
    .end array-data

    :array_a
    .array-data 8
        0x2f76db646e1b380aL    # 4.819260619042653E-80
        -0x63079bb1849054e2L    # -4.039491487529752E-169
    .end array-data

    :array_b
    .array-data 8
        0x3ea8647364cb7795L    # 7.269497444802536E-7
        0x38b4709ce01c2ff8L    # 1.537726695037536E-35
    .end array-data

    :array_c
    .array-data 8
        0x1ea356f4740a717fL
        -0x64a02f7fa50202a1L    # -7.851038274934175E-177
    .end array-data

    :array_d
    .array-data 8
        0x4cfe55ed9daa4ce9L    # 7.799603407951678E62
        -0x1e1234070952dc47L    # -5.362123557429703E163
    .end array-data

    :array_e
    .array-data 8
        -0x64169be60f5c5a18L    # -3.208135335076354E-174
        -0x4f2c7cfb258e7ef5L    # -1.7255130263498678E-73
    .end array-data

    :array_f
    .array-data 8
        0x37a9ec495206c201L    # 1.487906872347647E-40
        0xcbd97f9d4a0afc6L
    .end array-data

    :array_10
    .array-data 8
        -0x20584c9f20ae6506L    # -6.2065310918452025E152
        0x7d3ec8d14948965aL    # 1.9661066609276427E295
    .end array-data

    :array_11
    .array-data 8
        -0x6f4635eabc408215L    # -4.252499921092003E-228
        -0x760452255dd583e0L
    .end array-data

    :array_12
    .array-data 8
        -0x459545e9da6201f9L    # -2.6987272795281334E-27
        -0x7815e7319ae72f8bL
    .end array-data

    :array_13
    .array-data 8
        -0x5669881e90979182L
        -0x3f966ccd3feaa8e1L    # -204.5999451081088
    .end array-data

    :array_14
    .array-data 8
        0x388857a2daaf831bL    # 2.2891415906165725E-36
        -0x44a2c55da8b70598L    # -9.671077961008773E-23
    .end array-data

    :array_15
    .array-data 8
        -0xe674f4bd0191219L    # -1.607763082019204E239
        0x3f48f6dc1f6ba06bL    # 7.618498628661046E-4
    .end array-data

    :array_16
    .array-data 8
        -0x1de0d315e44bfd2fL    # -4.4881807838264323E164
        0x95ec9aa39f7f571L
    .end array-data

    :array_17
    .array-data 8
        0x5d4f8a80d7b94485L    # 3.0048571759857453E141
        -0x7238b84e71919cbfL    # -2.727579795253563E-242
    .end array-data

    :array_18
    .array-data 8
        -0x7071067fca2650c1L    # -9.741801159125014E-234
        0x8a5b9274f2748c5L
    .end array-data

    :array_19
    .array-data 8
        0x205d58a6b4b9715eL    # 8.754986313746471E-153
        -0x3cde36b30c607345L    # -2.5032034730491815E15
    .end array-data

    :array_1a
    .array-data 8
        0x7b1498cc06f5acd2L    # 7.656970962899636E284
        0x1f546003c65877dL
    .end array-data

    :array_1b
    .array-data 8
        0x35b6c8762c13b3c4L    # 6.0893740485698105E-50
        -0x5e579c87703b41b5L
    .end array-data

    :array_1c
    .array-data 8
        -0x37600ac7dff48f90L    # -6.959811617333689E41
        -0x2159ddcb9e58247eL    # -8.844233021503003E147
    .end array-data

    :array_1d
    .array-data 8
        0x452ebfb67853050fL    # 1.8586556282183831E25
        -0x67b2ffaae4fae199L
    .end array-data

    :array_1e
    .array-data 8
        0x7cb08d3184ee22d3L    # 4.12927805472601E292
        0x6108f3180b5cfa26L    # 2.7403817137695093E159
    .end array-data

    :array_1f
    .array-data 8
        0x47916bf89ae8d61bL    # 5.789373500746222E36
        -0x31dd45e61b5e8711L    # -2.524388890289996E68
    .end array-data

    :array_20
    .array-data 8
        0x2de09b9e367e1aa7L    # 1.0435795116985392E-87
        0x23004beaa2658a70L
    .end array-data

    :array_21
    .array-data 8
        -0x578b413f5b95d897L    # -8.423988112270665E-114
        0x3ad9a478b446f299L    # 3.314211155473391E-25
    .end array-data

    :array_22
    .array-data 8
        -0x63d747be5227c8f4L
        0xdcea5059efa9d0dL
    .end array-data

    :array_23
    .array-data 8
        -0x5b20b86c6c99b462L
        -0x56e64da7eed9a4e2L
    .end array-data

    :array_24
    .array-data 8
        -0xf6331d80d1e97c2L    # -2.862127670695569E234
        -0x6254e1d7a57b17fbL    # -9.197438725878574E-166
    .end array-data

    :array_25
    .array-data 8
        -0x53706a150da56c12L    # -4.7319562481799244E-94
        0x76ace60747248a5dL    # 4.549904214668117E263
    .end array-data

    :array_26
    .array-data 8
        -0x358bb894bdeff0f4L    # -4.742042084153309E50
        0x659254c858d0910dL    # 1.9016381329757767E181
    .end array-data

    :array_27
    .array-data 8
        -0x183f7b9eec189124L    # -5.88736848579025E191
        -0x5e3bd41c6070bf87L    # -5.048112880612042E-146
    .end array-data

    :array_28
    .array-data 8
        -0x5bd9abab8221932fL    # -1.536063881453831E-134
        0x3bf4d2792e1cb3bfL    # 7.054822750417264E-20
    .end array-data

    :array_29
    .array-data 8
        -0x23d32a868b52d359L    # -1.0478791919751606E136
        -0x208047938ee74cd0L
    .end array-data

    :array_2a
    .array-data 8
        -0x2cb36c5a3f83faf4L    # -1.8627796353959753E93
        -0x5b8149a948bc150L
    .end array-data

    :array_2b
    .array-data 8
        -0x4c68a2d17c35ff66L    # -3.634861825104083E-60
        -0x3fde453982c7d9d3L    # -8.864795601944104
    .end array-data

    :array_2c
    .array-data 8
        0x6ec3a554aa4e9e60L    # 3.635942442658028E225
        0x549b9304772dec0cL    # 3.7694924364315487E99
    .end array-data

    :array_2d
    .array-data 8
        -0x5f971330cca3afdfL
        0x106dee14bc0b5ea2L
    .end array-data

    :array_2e
    .array-data 8
        0x42ed80bb966a7148L    # 2.5950992173146625E14
        0x4d0c3934fd804747L    # 1.4513074993612533E63
    .end array-data

    :array_2f
    .array-data 8
        0x7fbe5f3f96d066b3L    # 2.132798868030217E307
        0x7c946e323dbc45a3L    # 1.27424762103572E292
    .end array-data

    :array_30
    .array-data 8
        -0x63de8feb97a58931L    # -3.525205816160728E-173
        0x3696a304f50fcb1aL    # 9.912782880845673E-46
    .end array-data

    :array_31
    .array-data 8
        -0x1f2ee78cddbe650fL    # -2.3471439019412784E158
        0x22b79ba1f39df253L
    .end array-data

    :array_32
    .array-data 8
        -0x69d4462570ba505bL    # -7.07456920472774E-202
        0x4e6751bdee65fa0eL    # 5.029497617210595E69
    .end array-data

    :array_33
    .array-data 8
        -0x4702ab1949541a48L    # -3.530668388275371E-34
        0x3e767208ce27c6b3L    # 8.361580542523576E-8
    .end array-data

    :array_34
    .array-data 8
        -0x5b89d622a41273d0L    # -4.878888959735699E-133
        0x440b9ae4b93276fbL    # 6.365291742413556E19
    .end array-data

    :array_35
    .array-data 8
        -0x4c9804b810a97f83L    # -4.663676688436923E-61
        -0x117b653133599c85L    # -2.3833809416860133E224
    .end array-data

    :array_36
    .array-data 8
        0x6623057d01071c24L    # 1.0103008750302753E184
        -0x1e579c5c87d32cd4L    # -2.7431241808474665E162
    .end array-data

    :array_37
    .array-data 8
        -0x6c5cc0d681984c79L    # -4.4665271213703E-214
        -0x7f3c55c480f0c476L
    .end array-data

    :array_38
    .array-data 8
        0x5d8e6e054528ef3aL    # 4.6383830018964276E142
        0x29b981101c8acca0L
    .end array-data

    :array_39
    .array-data 8
        -0x63faf2eb52e4e4caL
        0x27b8a81a0ace4101L    # 2.444419411516433E-117
    .end array-data

    :array_3a
    .array-data 8
        0x302048604c2d9834L    # 7.031015456914044E-77
        -0x5d38040e72d4b612L
    .end array-data

    :array_3b
    .array-data 8
        -0x25fb25c275ddb085L    # -4.411094589988608E125
        0x38c0bc2f0541ce2fL    # 2.5180168533162017E-35
    .end array-data

    :array_3c
    .array-data 8
        -0x76995d1c6683ec53L
        -0x44283d7d75593ff7L    # -2.0125337152914487E-20
    .end array-data

    :array_3d
    .array-data 8
        0x5cb9a9eafb332afeL    # 4.775270741896388E138
        0x337143998d797dfdL    # 6.714657512367555E-61
    .end array-data

    :array_3e
    .array-data 8
        -0x6680962a015164acL    # -7.219679701781103E-186
        -0x1d66a8a455048e7fL    # -9.339540718734954E166
    .end array-data

    :array_3f
    .array-data 8
        -0x23bf9fda8f3da0L
        0x1aefebda8ac23165L
    .end array-data

    :array_40
    .array-data 8
        0x2bdfccf7b70194bfL    # 2.3262558402541698E-97
        -0x230b9b260a27fc07L    # -6.071547162856307E139
    .end array-data

    :array_41
    .array-data 8
        -0x3e8a6b2fae3a45aeL    # -2.2629637110773392E7
        -0x1d1836704bf5a14cL    # -2.8053925395985913E168
    .end array-data

    :array_42
    .array-data 8
        0xaaf944ae37a345aL
        0x37b36c785663bd8L
    .end array-data

    :array_43
    .array-data 8
        -0x18bdd8bab6f0f00aL    # -2.527582211085968E189
        -0x651cb30be8813f3L
    .end array-data

    :array_44
    .array-data 8
        -0x4fc143ebe2a60368L    # -2.654298935938257E-76
        0x8835a2fe5ad4c5aL
    .end array-data

    :array_45
    .array-data 8
        0x9253f0a6e9a1525L
        -0x78be4867b4411f6dL
    .end array-data

    :array_46
    .array-data 8
        -0x2c871e49e94161d6L    # -1.2975331045502425E94
        0x293dd6a09a2ffd64L    # 4.96291633615779E-110
    .end array-data

    :array_47
    .array-data 8
        -0x4cf9151aab4d155aL    # -6.963688343850992E-63
        0x1bae3ead02cd2d84L
    .end array-data

    :array_48
    .array-data 8
        -0x388c1e2c828dfe4eL    # -1.6517430150196102E36
        0x2a50928efb2da568L
    .end array-data

    :array_49
    .array-data 8
        0x7aa92235505c0834L    # 7.299634148772174E282
        -0x2f96607b5c91977cL    # -2.3735634605051603E79
    .end array-data

    :array_4a
    .array-data 8
        -0x56b38c98cdcdf140L    # -9.464244976678047E-110
        0x3894a57034e555f0L    # 3.883126794779325E-36
    .end array-data

    :array_4b
    .array-data 8
        -0x40877ceaeba57697L    # -0.00598438486273021
        0x23ce071981bfde3cL
    .end array-data

    :array_4c
    .array-data 8
        0x73fcf8fd549ccd22L    # 5.18589970035192E250
        0xbb5277ebafd87e3L
    .end array-data

    :array_4d
    .array-data 8
        -0x34787517366aab97L    # -7.215790364977636E55
        -0x2f52179036e0ec99L    # -4.432773986389114E80
    .end array-data

    :array_4e
    .array-data 8
        0x679a70e8cceaa7f9L    # 1.1780833083199625E191
        0x65a918040b25deaaL    # 5.206358116508012E181
    .end array-data

    :array_4f
    .array-data 8
        0x5815676eee87d848L    # 2.1084049405334254E116
        0x2f9e5799f608679cL    # 2.5589872378965993E-79
    .end array-data

    :array_50
    .array-data 8
        -0x72cbb7783236d448L    # -4.641545666813557E-245
        0x31179461e6e0dcfcL    # 3.3363978317670637E-72
    .end array-data

    :array_51
    .array-data 8
        0x197e6a9772c87126L    # 6.99053025495774E-186
        -0x777e515a94ef5024L
    .end array-data

    :array_52
    .array-data 8
        0x3a869cf9a2e7a012L    # 9.133392341608194E-27
        0x30f511374753a148L    # 7.452275494993928E-73
    .end array-data

    :array_53
    .array-data 8
        -0x589d93eb979347ebL    # -5.707328808511976E-119
        0x561d30282eba8f60L    # 6.694289708264237E106
    .end array-data

    :array_54
    .array-data 8
        -0x1781d64702267d2aL    # -2.2018688084491956E195
        0x6d63fc9f716d5d44L    # 8.819222581705535E218
    .end array-data

    :array_55
    .array-data 8
        -0x7590f610918141fbL
        0x7d2c599d5efc464cL    # 9.053150019018882E294
    .end array-data

    :array_56
    .array-data 8
        -0x622296f233b71fb7L    # -7.979998792640601E-165
        -0x7b93d1763861c0a7L
    .end array-data

    :array_57
    .array-data 8
        -0x3dd51b59618b2bcfL    # -5.775263724241444E10
        -0x76ae8d241cf3d00aL    # -8.658169407481987E-264
    .end array-data

    :array_58
    .array-data 8
        -0x79da54bde952b92L    # -7.757185730465475E271
        0x728011d4c61a7d25L    # 3.428885683511051E243
    .end array-data

    :array_59
    .array-data 8
        -0x66d3f300f1f8bb7dL
        -0x256bfe1a2aba769L
    .end array-data

    :array_5a
    .array-data 8
        -0x48a6a0515ca749d2L    # -4.551194731767191E-42
        -0x5fe8625a2a129cf1L    # -4.403369257795728E-154
    .end array-data

    :array_5b
    .array-data 8
        0x6340c3e600ef1e58L
        0x176cdf8c09a0b486L    # 7.72517293274541E-196
    .end array-data

    :array_5c
    .array-data 8
        -0x205d74435e01aad6L    # -4.856624125986747E152
        0x33dbf7ba13d9411L    # 4.65780942769208E-293
    .end array-data

    :array_5d
    .array-data 8
        -0x29f8ea88db611cddL    # -2.647138812882699E106
        0x4b339b3804fd2b82L    # 1.8779127123210655E54
    .end array-data

    :array_5e
    .array-data 8
        -0x154692d79f080723L    # -1.275504166723658E206
        -0xbacc6a1acd02114L
    .end array-data

    :array_5f
    .array-data 8
        0xb42aab4484251f9L
        0x3d25b5c35ca2ac67L    # 3.856472871776239E-14
    .end array-data

    :array_60
    .array-data 8
        -0x65a24c4fb6179f28L
        0x708582ceabab7a41L    # 1.0686772468613188E234
    .end array-data

    :array_61
    .array-data 8
        0x56f055c823257a1cL    # 6.138182873108391E110
        0x7473679144dc31beL    # 8.891605444298221E252
    .end array-data

    :array_62
    .array-data 8
        0x6d31572c16be4fd5L    # 9.564425903428482E217
        0x52be954d3f8bfdd8L    # 3.8936936855853325E90
    .end array-data

    :array_63
    .array-data 8
        0x276a58bdb5e16ea7L    # 8.162384276019107E-119
        -0x7040fc2017d110caL
    .end array-data

    :array_64
    .array-data 8
        0x79d63b48b05a640aL    # 7.881815965397098E278
        -0x4d375a2e44a88f52L    # -4.680884085385522E-64
    .end array-data

    :array_65
    .array-data 8
        0x6cf70021c38652eL
        0x2264fe2e16ec857fL    # 5.379777501565537E-143
    .end array-data

    :array_66
    .array-data 8
        0x4bd83a849ebb804eL    # 2.3763328123166805E57
        0x22aa6d3cf5be4b54L
    .end array-data

    :array_67
    .array-data 8
        -0x74f315112d3df42dL
        -0x3ad5b74564f14defL    # -1.5887761982104097E25
    .end array-data

    :array_68
    .array-data 8
        0x4bdf2ba37a1a2b1eL    # 3.0571901361139022E57
        0x6b1819ae7e6dc8bfL    # 7.73748487779362E207
    .end array-data

    :array_69
    .array-data 8
        0xc5921ad10cb98c5L
        -0x3c624a84f830174aL    # -5.3518811784191526E17
    .end array-data

    :array_6a
    .array-data 8
        -0x70ea01f6f5b4245aL    # -5.403741453801569E-236
        -0x6c13222f3a3c29eL
    .end array-data

    :array_6b
    .array-data 8
        -0x2fa14df77f16b5c3L    # -1.4217157554627375E79
        -0x379da50639fd6127L    # -4.996808017792023E40
    .end array-data

    :array_6c
    .array-data 8
        -0x703cfa60f8e0a23bL    # -9.572129704725095E-233
        0x7674763ea19ffd49L    # 4.027003892844302E262
    .end array-data

    :array_6d
    .array-data 8
        0x75c3cce1a335ce80L    # 1.902735619424397E259
        -0x57550f48eafac6adL    # -8.751730978011763E-113
    .end array-data

    :array_6e
    .array-data 8
        0x5a2431e82dd0ff7bL    # 1.708798923397281E126
        -0x1e913c978cb96ec5L    # -2.1625232989011885E161
    .end array-data

    :array_6f
    .array-data 8
        -0x7617492dfd401253L    # -6.278838402637076E-261
        0x255ac0ea28431950L
    .end array-data

    :array_70
    .array-data 8
        -0x6a6fcf594880609aL    # -8.068466189086804E-205
        0x1a9092adc82fc4b1L    # 9.984878913846296E-181
    .end array-data

    :array_71
    .array-data 8
        -0x63059ed833edefb6L    # -4.368669871490265E-169
        0x63d6e5a8d2049d15L    # 8.848673011535373E172
    .end array-data

    :array_72
    .array-data 8
        -0x68e716b108cca5aeL
        0x295b037730da61daL
    .end array-data

    :array_73
    .array-data 8
        -0x521cd3c221dec9a1L    # -1.2047508555820517E-87
        0x6dd28ac5e3bf959eL    # 1.0472619710104492E221
    .end array-data

    :array_74
    .array-data 8
        -0x3519e5e27c035c41L    # -6.615475814524992E52
        0x44a2b8401f533963L    # 4.420070905223241E22
    .end array-data

    :array_75
    .array-data 8
        -0x7177f52291181291L
        0x6130c26e88862c08L    # 1.472647299020025E160
    .end array-data

    :array_76
    .array-data 8
        0x7ba25cc8187e4ddbL    # 3.495070878780956E287
        -0x14e8d7fe51ae28dL
    .end array-data

    :array_77
    .array-data 8
        0x3bd9d2704de4f5e8L    # 2.187210689463507E-20
        0x2c2130955228b8c4L    # 4.023848967140675E-96
    .end array-data

    :array_78
    .array-data 8
        -0x506b9f243cc0128L
        0x7307460c4c3660bfL    # 1.2713072098742296E246
    .end array-data

    :array_79
    .array-data 8
        -0x5ac2c38c91247964L
        -0x4151db2862a1b91bL    # -8.98358673439271E-7
    .end array-data

    :array_7a
    .array-data 8
        -0x71530b6b61e4a7a2L    # -5.558311707430683E-238
        0x1489cf6092611668L    # 9.813460260992739E-210
    .end array-data

    :array_7b
    .array-data 8
        0x4b4421e41061216L
        -0x158cc5ec3960d823L    # -6.028170522806845E204
    .end array-data

    :array_7c
    .array-data 8
        0x1a659e42a79585beL
        -0x30d6371cc69a1061L    # -2.2778825920722918E73
    .end array-data

    :array_7d
    .array-data 8
        -0x3453586cbb109bf6L    # -3.513042622470565E56
        0x3bd3439b6148a4bdL    # 1.631731864161685E-20
    .end array-data

    :array_7e
    .array-data 8
        0x71c3336bc5eee111L    # 1.000247134342373E240
        -0x60123f1989024551L    # -6.934745776811096E-155
    .end array-data

    :array_7f
    .array-data 8
        -0x3ca61b50a5e870adL    # -2.9153264798678348E16
        0x3b5348c089d29443L    # 6.380602544666589E-23
    .end array-data

    :array_80
    .array-data 8
        -0x904dcd8ad3e8ad5L
        -0x6040e5c015b5b37dL    # -9.061457979784101E-156
    .end array-data

    :array_81
    .array-data 8
        0x13d79c011a0b5a51L    # 4.383165591556756E-213
        -0x210666e6aff04001L    # -3.2731403075418217E149
    .end array-data

    :array_82
    .array-data 8
        0x1729f2eba6bf28L
        0x506f9e77b100556dL    # 2.9289853382814132E79
    .end array-data

    :array_83
    .array-data 8
        -0x3552fbbc53ed7828L    # -5.428210250909006E51
        -0x5eea750c1408fc22L    # -2.632473423535882E-149
    .end array-data

    :array_84
    .array-data 8
        -0x11bda1532adbe9b1L    # -1.3280420202688985E223
        -0x34a985c0381c824L    # -5.340081803875824E292
    .end array-data

    :array_85
    .array-data 8
        -0x607c13d77c13c198L    # -7.255309697794032E-157
        0x113d60bc4defd32L
    .end array-data

    :array_86
    .array-data 8
        0x6efe3c5c8ea125a8L    # 4.4767004808129993E226
        0x3a7b5e9b68757bfeL    # 5.527238389983168E-27
    .end array-data

    :array_87
    .array-data 8
        0x6f9d4f45b1c49324L    # 4.4437278403909447E229
        0x7bbc1ae52346bf5fL    # 1.0698930623106365E288
    .end array-data

    :array_88
    .array-data 8
        -0x29118cab45c05168L    # -5.721145850828694E110
        -0x2ced86a211453009L    # -1.5052954014729476E92
    .end array-data

    :array_89
    .array-data 8
        0xdb5609dd41df4b8L
        0x3d4c51ec1cc1f74eL    # 2.012257669883158E-13
    .end array-data

    :array_8a
    .array-data 8
        0xb3af63e9a2fee49L
        -0x3b6dc67675643c6bL    # -2.151599300226234E22
    .end array-data

    :array_8b
    .array-data 8
        0x10df2314d5681af6L
        0x1f49ab75ac368d53L    # 5.842707781583992E-158
    .end array-data

    :array_8c
    .array-data 8
        0xd82cf8c5b1d739dL
        -0x2bae922e5b17118aL    # -1.4891230273823813E98
    .end array-data

    :array_8d
    .array-data 8
        0x265c55668ae3d36fL    # 6.697049224709913E-124
        0x4fd70df134de5ddaL    # 4.1711317101847945E76
    .end array-data

    :array_8e
    .array-data 8
        -0x508421d1ceca3cfcL    # -5.8757767456389844E-80
        0x37dec1dcd7804b7eL    # 1.412304852271111E-39
    .end array-data

    :array_8f
    .array-data 8
        0x7bb4ed41a1f6855fL    # 7.966330816554776E287
        -0x71515e8cdd6e70baL    # -5.879898600368063E-238
    .end array-data

    :array_90
    .array-data 8
        -0x602779ac36a3b98eL
        -0x51c5bb5bcdd0f615L    # -5.281902897242874E-86
    .end array-data

    :array_91
    .array-data 8
        0x28c4897d9181dcb4L    # 2.668641020616809E-112
        -0x48729d93754653beL
    .end array-data

    :array_92
    .array-data 8
        0x7e8f77bdb4b34a85L    # 4.214744072283366E301
        0x11c3d5f48d7fe940L    # 4.287085337685E-223
    .end array-data

    :array_93
    .array-data 8
        -0x5c09e2557d53d97fL
        0x2826f675a8878a23L
    .end array-data

    :array_94
    .array-data 8
        0xcb44628bf03ede2L
        0x757f20fe4355f720L    # 9.348023542181827E257
    .end array-data

    :array_95
    .array-data 8
        -0x15eeb0465aeac970L    # -8.480665819640146E202
        0x4d1c4a5d241ae94bL    # 2.909507493070005E63
    .end array-data

    :array_96
    .array-data 8
        -0x5fa9dfdbde48e180L    # -6.600796026197252E-153
        0x412e5c492c4fe5eeL    # 994852.5865470746
    .end array-data

    :array_97
    .array-data 8
        0x120202e9a263c567L    # 6.228452151653532E-222
        0x5a229ba47917d6e5L    # 1.574517144891913E126
    .end array-data

    :array_98
    .array-data 8
        0x3b66834188830668L    # 1.4897667560912084E-22
        0x5d412b823dbfecdfL    # 1.635750899668506E141
    .end array-data

    :array_99
    .array-data 8
        -0x28ebc3726f96af5L
        -0xf6427786e0d9f02L    # -2.766792782511364E234
    .end array-data

    :array_9a
    .array-data 8
        -0x2123023548b4993L
        -0x12f856460f983d4aL    # -1.6314605425402115E217
    .end array-data

    :array_9b
    .array-data 8
        -0x1a5e6495ba2d8edaL
        -0x32a32748f60540fbL    # -4.746711789248812E64
    .end array-data

    :array_9c
    .array-data 8
        0x745c713eb4bd71e1L    # 3.2582324124600375E252
        0x5230aff5366da421L    # 8.298999646939769E87
    .end array-data

    :array_9d
    .array-data 8
        -0x85518b4bc1337e2L
        -0x15c7712d3ee3192cL    # -4.812252115843005E203
    .end array-data

    :array_9e
    .array-data 8
        -0x6724f6e686451531L
        -0x3f034fabf90ec87bL    # -117509.25169488609
    .end array-data

    :array_9f
    .array-data 8
        0x2bb0a0040f0ca4c4L
        0x52eda2bdef99ac6L
    .end array-data

    :array_a0
    .array-data 8
        -0x678195105441af20L    # -1.066717474671067E-190
        -0x61742bca050078d1L
    .end array-data

    :array_a1
    .array-data 8
        0x5652e4d0a9059478L    # 6.933267931026397E107
        0x6f2c2c3fe762fea9L    # 3.337010153567148E227
    .end array-data

    :array_a2
    .array-data 8
        -0xa4ab932f67b76ecL
        -0x18a5c2d5974a1c76L    # -7.3067353829495E189
    .end array-data

    :array_a3
    .array-data 8
        0x56930d3a59b5fbcdL    # 1.118591551048653E109
        0x599ec10ee857af00L    # 5.082550915432404E123
    .end array-data

    :array_a4
    .array-data 8
        0x4a5cebe2c677593dL    # 1.6907486373467434E50
        -0x7272da0e20144043L
    .end array-data

    :array_a5
    .array-data 8
        0x2ff62f53450566e1L    # 1.1974514240132188E-77
        -0x4c93eb073723266eL    # -5.4610695112755836E-61
    .end array-data

    :array_a6
    .array-data 8
        0x6960f6908476a966L    # 4.057639476493982E199
        0xf019edb5cde2498L
    .end array-data

    :array_a7
    .array-data 8
        -0x726ebded9c7f11ecL    # -2.5275300019150585E-243
        -0xe678bd786a9f82aL    # -1.592362387562574E239
    .end array-data

    :array_a8
    .array-data 8
        0x463e6fb5b841c3ccL    # 2.4114173972200295E30
        -0x6b3f6a0cbddf3ac3L
    .end array-data

    :array_a9
    .array-data 8
        -0x30f0de8b741163aL    # -6.764169368708099E293
        -0x2f7489580cb2e088L    # -1.0176179418252073E80
    .end array-data

    :array_aa
    .array-data 8
        -0x6d7780018bfc1fedL
        -0x69d4383da8e5f280L    # -7.088428980925368E-202
    .end array-data

    :array_ab
    .array-data 8
        -0x464e018f639e6171L    # -8.8716805138324E-31
        0x1761dd2e938f1248L    # 4.779597725281417E-196
    .end array-data

    :array_ac
    .array-data 8
        0x5c883fefe2730784L    # 5.640211306587386E137
        -0x63f33a2a0b61c433L
    .end array-data

    :array_ad
    .array-data 8
        -0x5e50480e03c00505L
        0x6692edd8a043d9c9L    # 1.2869065108751645E186
    .end array-data

    :array_ae
    .array-data 8
        0x7e31db0cf472d29fL    # 7.473632914930988E299
        0x3adf404cf7b3fd3L
    .end array-data

    :array_af
    .array-data 8
        -0x325e83a279c55d72L    # -9.207349437249518E65
        0x5f21b062dab77704L    # 1.8094698110169025E150
    .end array-data

    :array_b0
    .array-data 8
        -0x2a56fc3e65b8e67bL    # -4.482118566964944E104
        0x6646df065bde8dd9L    # 4.859103345384557E184
    .end array-data

    :array_b1
    .array-data 8
        0x10ec83846783b3faL    # 3.761382100836238E-227
        -0x4a5b2b7f2cde2edcL    # -2.783696567812354E-50
    .end array-data

    :array_b2
    .array-data 8
        0x67301c2657375620L    # 1.121532226568949E189
        -0xc18a0149ed10a92L    # -2.091954275289802E250
    .end array-data

    :array_b3
    .array-data 8
        -0x78e85c38916ca2d8L
        -0x39089dc26a75d8d7L    # -7.588461442853464E33
    .end array-data

    :array_b4
    .array-data 8
        0x7c7742b133548e16L    # 3.626896576737041E291
        0xf9ee0c624bcf366L
    .end array-data

    :array_b5
    .array-data 8
        -0x473f4102aea34569L    # -2.519665983007006E-35
        -0x26f9dbe7d5c467f2L    # -7.146697294423476E120
    .end array-data

    :array_b6
    .array-data 8
        0x3985269e1460ca70L    # 1.3035217472072822E-31
        -0x73a601f3ddbaefdfL    # -3.63035858105435E-249
    .end array-data

    :array_b7
    .array-data 8
        -0x293f3819f9521a9aL    # -7.882109883670701E109
        -0x63e92b71e358db03L    # -2.307671572107152E-173
    .end array-data

    :array_b8
    .array-data 8
        -0x6edd20874f051102L    # -3.983388977760699E-226
        -0x6411f3673555d538L
    .end array-data

    :array_b9
    .array-data 8
        0x916ca327b81501aL
        0x4e0469590655750aL    # 6.878666832783292E67
    .end array-data

    :array_ba
    .array-data 8
        -0x76c4962690c724bbL
        -0x76ca88d12db12208L    # -2.662845701794063E-264
    .end array-data

    :array_bb
    .array-data 8
        -0x6326220d8eca4d30L
        0x45fa25e61fe56c64L    # 1.294788358936406E29
    .end array-data

    :array_bc
    .array-data 8
        0x410522fe58e94175L    # 173151.79341364992
        -0x68ea01592cbdb19fL    # -1.8389992343952737E-197
    .end array-data

    :array_bd
    .array-data 8
        -0x3d0ae83b48eca5cbL    # -3.710692602157153E14
        0xd63d639b0833489L
    .end array-data

    :array_be
    .array-data 8
        0x25a203b4211b45d6L
        0x69b093eda49f1f2dL    # 1.2689519950601468E201
    .end array-data

    :array_bf
    .array-data 8
        -0x215f97131a245035L    # -6.557116361179376E147
        0x2f95bbbcafc5e41fL    # 1.8329380424955988E-79
    .end array-data

    :array_c0
    .array-data 8
        0x13fdfdc98e9bc929L
        0x1579e1e5a29fc601L
    .end array-data

    :array_c1
    .array-data 8
        -0x4a31b8ed552f3414L    # -1.6184995439916013E-49
        -0x6e20a0931a47121bL    # -1.356113004628177E-222
    .end array-data

    :array_c2
    .array-data 8
        -0x64a44179d163c58cL
        0x7b985ad796f6b81bL    # 2.3178289236715794E287
    .end array-data

    :array_c3
    .array-data 8
        0x4e85fc61e898fac5L    # 1.8967611352513583E70
        -0xd3c63f1337639f6L
    .end array-data

    :array_c4
    .array-data 8
        0x3097260406fc899eL    # 1.2794517679570841E-74
        0x76e2b196bdb3ae00L    # 4.709140226754126E264
    .end array-data

    :array_c5
    .array-data 8
        0x211c7ea013b8c098L    # 3.481971264048831E-149
        -0x16c8984f93b5b70eL    # -6.998201844984546E198
    .end array-data

    :array_c6
    .array-data 8
        -0x2fe547a227e0358aL    # -7.734964231802143E77
        -0x47537df220cb8c58L    # -1.0723526836143654E-35
    .end array-data

    :array_c7
    .array-data 8
        -0x5fa2aef0bfb4199eL
        0x205ba6fb89e90ea8L    # 8.249603759433412E-153
    .end array-data

    :array_c8
    .array-data 8
        -0x18f0fe3d38361c25L    # -2.6982696775605458E188
        0x8000faba08b72bbL
    .end array-data

    :array_c9
    .array-data 8
        -0x554bb67874a31d99L    # -5.661143017537909E-103
        0x1b7104c9f29abea2L    # 1.679921922751231E-176
    .end array-data

    :array_ca
    .array-data 8
        0x729c882315c807f3L    # 1.2176022819129077E244
        0x7cc4a31016510a30L
    .end array-data

    :array_cb
    .array-data 8
        0x5bc40e9ba91e0dfaL    # 1.1389257703534741E134
        0x6f6e734ab8377040L    # 5.77084144032082E228
    .end array-data

    :array_cc
    .array-data 8
        -0x2eef26cf3bbcff29L    # -3.196373367435143E82
        -0x28899a58707b4c87L    # -2.154517092356779E113
    .end array-data

    :array_cd
    .array-data 8
        0xd09c1771e6b2d2fL
        -0x516d68b9e0961f89L    # -2.392444977632034E-84
    .end array-data

    :array_ce
    .array-data 8
        0x510c6638f081c286L    # 2.6938695782837586E82
        -0x550459b93f94090dL
    .end array-data

    :array_cf
    .array-data 8
        -0x5613ffb6e0ed578L
        -0x4abc111eafeb6160L    # -4.162230812510984E-52
    .end array-data

    :array_d0
    .array-data 8
        0x6070d27e971d5e69L    # 3.608790688618299E156
        -0x3c953d123dc2d4cdL    # -6.0261406530427288E16
    .end array-data

    :array_d1
    .array-data 8
        0x6b3aaddad30e3a03L    # 3.426166948906911E208
        0x44e35509a7bf80f3L    # 7.303490572481326E23
    .end array-data

    :array_d2
    .array-data 8
        0x3d6c04cf31f76a91L    # 7.963418098475365E-13
        0x6fcf0fb4a1c9c84eL    # 3.7674459225024126E230
    .end array-data

    :array_d3
    .array-data 8
        -0x3fa14f67b8399612L    # -122.75929445625636
        -0x4c0aa52e6851a748L    # -2.1262560262707325E-58
    .end array-data

    :array_d4
    .array-data 8
        0x189730e22d9d4e62L
        0x7c49b4364a8f6fcfL    # 5.00986194800226E290
    .end array-data

    :array_d5
    .array-data 8
        0x722599a71701dc34L    # 7.201524214419183E241
        -0x513ceb86cb474c37L    # -1.964305346348794E-83
    .end array-data

    :array_d6
    .array-data 8
        -0x2c338d8262f5f910L    # -4.747102562349524E95
        -0x3197229caa1ee4eL
    .end array-data

    :array_d7
    .array-data 8
        -0x561355a45b228e44L    # -9.764510496605615E-107
        0xa76c82ee8b10530L
    .end array-data

    :array_d8
    .array-data 8
        -0x3cae3716952adcc9L    # -2.0023917797477596E16
        0x4fdc9edf460e0b60L    # 5.1781850298708384E76
    .end array-data

    :array_d9
    .array-data 8
        -0x11285f1e4ece5faeL    # -8.746048563840971E225
        0x1fe6d2673f032da5L    # 5.319169255321499E-155
    .end array-data

    :array_da
    .array-data 8
        -0x23142901bd6af35bL    # -4.144139718455454E139
        0x279d0937d95d306dL    # 7.196455137378808E-118
    .end array-data

    :array_db
    .array-data 8
        -0x2888446c144258aeL    # -2.2830005144841516E113
        -0x496c83b4e37825b6L    # -8.532822127390013E-46
    .end array-data

    :array_dc
    .array-data 8
        0x41e8b5941750045cL    # 3.316424890500532E9
        0x7b8e9bcfb1ecf9ebL    # 1.4564979884561751E287
    .end array-data

    :array_dd
    .array-data 8
        0x5b0dad6ed4ebb5a7L    # 4.11429141716928E130
        0x3df2449e40d1fddeL    # 2.658349658633471E-10
    .end array-data

    :array_de
    .array-data 8
        -0x72f5b04f6c3d2f8eL    # -7.526198375555714E-246
        0x1bad27df9ee321e7L
    .end array-data

    :array_df
    .array-data 8
        -0x3f0ddcb175b49a7L    # -3.792586268663799E289
        0x16f41cc82820ff9dL    # 4.204045318750449E-198
    .end array-data

    :array_e0
    .array-data 8
        -0x7995353a9cd086c8L    # -9.446269924344289E-278
        0x2fba25cd67bb91baL    # 8.82092368938142E-79
    .end array-data

    :array_e1
    .array-data 8
        0x565069b6ca1d6f47L    # 6.02289080822797E107
        0x577fcacadb4a07b1L    # 3.0582880870278043E113
    .end array-data

    :array_e2
    .array-data 8
        0xd8de08b8a81864bL    # 2.187823999535976E-243
        0xb67cdfc014c413bL
    .end array-data

    :array_e3
    .array-data 8
        -0x684e4787442fc64eL
        -0x4c0a705ec996619fL    # -2.1467962611562786E-58
    .end array-data

    :array_e4
    .array-data 8
        0x7763eecf07038fc5L    # 1.2854509020091504E267
        -0x7d37054424f6ef1fL
    .end array-data

    :array_e5
    .array-data 8
        0x77c52d667bba6ff5L    # 8.740527780239752E268
        0x109cd969664aee7L
    .end array-data

    :array_e6
    .array-data 8
        -0x702231777bb19ed9L    # -2.9998413071232198E-232
        0x153680f87917dd82L
    .end array-data

    :array_e7
    .array-data 8
        0xe9d35a1b8dbef6aL
        -0x5377a4014ecf9eafL    # -3.649363728757813E-94
    .end array-data

    :array_e8
    .array-data 8
        -0x2e47112d16f076aL    # -4.400158335352911E294
        0x116f221263e42a0fL
    .end array-data

    :array_e9
    .array-data 8
        -0x25c02876229003efL    # -5.388623203462936E126
        0x4053aed44b2d697L
    .end array-data

    :array_ea
    .array-data 8
        -0x5b7d0d82a05ef067L    # -8.341757219140397E-133
        -0x280bacb3170e0c5eL    # -5.005382709065062E115
    .end array-data

    :array_eb
    .array-data 8
        0x413efb44eac7d002L    # 2030404.9171113973
        0x30d779a16fcf8a4cL    # 2.0760073168830016E-73
    .end array-data

    :array_ec
    .array-data 8
        -0x5975601785ca461L    # -4.477031812881701E281
        0x6437a2b29d8ab66bL    # 5.84578709136353E174
    .end array-data

    :array_ed
    .array-data 8
        0x15790c85fcbe38a5L
        0x4ce3e1d03652b53bL    # 2.5559420863727985E62
    .end array-data

    :array_ee
    .array-data 8
        -0x336b8ed9e6445c1fL    # -8.212251900824036E60
        0x1fd3cdb3e0d74456L    # 2.307835068738393E-155
    .end array-data

    :array_ef
    .array-data 8
        0x531fbfa41dd8ba16L    # 2.5869214505555252E92
        0x182013c558cd6a81L
    .end array-data

    :array_f0
    .array-data 8
        -0x35c2cc95d48d15a5L    # -4.267707367583124E49
        0x36afa90aad5f0adcL    # 2.772847289701801E-45
    .end array-data

    :array_f1
    .array-data 8
        0x3dbd3c8d7b48d6edL    # 2.6590472623491587E-11
        -0x6d143f84b5005972L
    .end array-data

    :array_f2
    .array-data 8
        0x1e58c1464006c7e7L    # 1.719510760820766E-162
        0x3b2f9b0a1fd3832dL    # 1.307177939377461E-23
    .end array-data

    :array_f3
    .array-data 8
        -0x3802ec6286373148L    # -6.183913520821931E38
        -0x44eefe90330dd862L    # -3.516678177312695E-24
    .end array-data

    :array_f4
    .array-data 8
        -0x42264d9889c36413L    # -9.348474560368476E-11
        0x7835e3861bbd06f1L    # 1.1563714885643173E271
    .end array-data

    :array_f5
    .array-data 8
        -0x542e033252badfd1L    # -1.3158080635673195E-97
        0x72fdc84040ecd5a8L    # 8.134178503319314E245
    .end array-data

    :array_f6
    .array-data 8
        -0x2126c158c56aee1dL    # -8.069911350325321E148
        0x3f84373f2989bb75L    # 0.009870999770297687
    .end array-data

    :array_f7
    .array-data 8
        -0x6d4132bc77f196faL    # -2.18142064089114E-218
        -0x8ab740b16f67cceL    # -6.625190612104894E266
    .end array-data

    :array_f8
    .array-data 8
        -0x69f1bdb4a1d3294cL
        0x12dfb3c34c05ca21L    # 8.980748454846773E-218
    .end array-data

    :array_f9
    .array-data 8
        0x48261baa94755ca4L    # 3.7614934648538885E39
        0x248609171b83002L
    .end array-data

    :array_fa
    .array-data 8
        0x179ef4e90339966dL    # 6.626088057852487E-195
        -0x1ff489800724188cL    # -4.602714462427069E154
    .end array-data

    :array_fb
    .array-data 8
        0x6c4fe1de00eb5f71L    # 5.366566336304312E213
        -0x4cb698987de6420aL    # -1.2350703276678628E-61
    .end array-data

    :array_fc
    .array-data 8
        0x7d1e0a4cdc5ffbeL
        0x2b33de36de031646L
    .end array-data

    :array_fd
    .array-data 8
        -0x4df12cfa8aa0fc85L    # -1.4291711339589144E-67
        0x357affb22738f3ccL
    .end array-data

    :array_fe
    .array-data 8
        -0x75e0928508eebdb3L    # -6.387571392755726E-260
        -0x425a300d246f3e0fL    # -9.919085398030044E-12
    .end array-data

    :array_ff
    .array-data 8
        0x4cec0117ceea6a86L    # 3.6000900894345376E62
        -0x1c1497f6f6763b66L    # -2.118260288014369E173
    .end array-data

    :array_100
    .array-data 8
        0x721ad05be0ae9afcL    # 4.4698871287601265E241
        -0x1fca2e1b45049f21L    # -2.925569799676809E155
    .end array-data

    :array_101
    .array-data 8
        -0x269ef483b8870fa0L    # -3.521128066104541E122
        -0x6f59f62693b2a6c0L    # -1.8169995366845556E-228
    .end array-data

    :array_102
    .array-data 8
        -0x7b59d50f0c5dc3b2L
        -0x65c6b2d891858a6L
    .end array-data

    :array_103
    .array-data 8
        0x34fc3495da437f9L
        0x2a4adebbd446795cL
    .end array-data

    :array_104
    .array-data 8
        0x7a7d828ee21ff54eL    # 1.0713344275591497E282
        0x86854f3b5b9dbf1L
    .end array-data

    :array_105
    .array-data 8
        0x7053f65709142b05L    # 1.23967113754676E233
        0x2dd50959d7c2aca5L    # 6.609297787395655E-88
    .end array-data

    :array_106
    .array-data 8
        0x6784b6b3fdff6575L    # 4.614499660738628E190
        0x40342135d8d1c37fL    # 20.12972788926299
    .end array-data

    :array_107
    .array-data 8
        -0x39cee023f6679069L    # -1.356738807040515E30
        -0x57b490f2d3b05c05L
    .end array-data

    :array_108
    .array-data 8
        -0x4c67aab6ab1df4eeL    # -3.7856391364861704E-60
        -0xf2dbb314c7fdaf9L    # -2.904331257514968E235
    .end array-data

    :array_109
    .array-data 8
        -0x6e642a074dba65b0L    # -7.520164637498966E-224
        0x5fb3f803ac47ac87L    # 1.0458512345404703E153
    .end array-data

    :array_10a
    .array-data 8
        -0xa2d8ace30a67900L    # -3.547447775481962E259
        0x33e7d63e14721a75L    # 1.1866983844830665E-58
    .end array-data

    :array_10b
    .array-data 8
        -0x7277ac81164e1884L
        -0xacd24c63dc43ba3L    # -3.539109138546716E256
    .end array-data

    :array_10c
    .array-data 8
        -0x5c7710080a7bf61cL
        0x6f3f632ef42ca2c6L    # 7.435540928906578E227
    .end array-data

    :array_10d
    .array-data 8
        -0x4b4c0c921d9060L
        -0x5d2ee40635150b73L    # -5.612208263329169E-141
    .end array-data

    :array_10e
    .array-data 8
        -0xca7d052f2e45febL
        0x30bb7037f60dfa6cL    # 6.066233578227543E-74
    .end array-data

    :array_10f
    .array-data 8
        0x7360b8a6a33e94aeL    # 5.845696956984644E247
        0x3bfd8b7a0f9835feL    # 1.001017819652866E-19
    .end array-data

    :array_110
    .array-data 8
        -0x4715add596f9f9c0L    # -1.5841351348299482E-34
        0x795d03e49555e512L    # 4.0182939636481953E276
    .end array-data

    :array_111
    .array-data 8
        -0x64b82df45c80b0e6L    # -2.939160180167872E-177
        -0x6a99722c40da7eeaL
    .end array-data

    :array_112
    .array-data 8
        -0x6f14e61301601f86L    # -3.575056957941337E-227
        0x432eb7a6576dd600L    # 4.323087180294912E15
    .end array-data

    :array_113
    .array-data 8
        0xec6b6c2576060b4L
        0x6543500785ab1090L    # 6.260780914086601E179
    .end array-data

    :array_114
    .array-data 8
        0x334d392d732945fbL    # 1.4207605626921253E-61
        -0x55918f98d1639d28L
    .end array-data

    :array_115
    .array-data 8
        -0x2b7bd577730a6850L    # -1.3783880520955886E99
        0xf726ede5126c01bL    # 2.89868674798485E-234
    .end array-data

    :array_116
    .array-data 8
        0x4318e2eb99d4213dL    # 1.7512252417659672E15
        0x7d3073fe5e330070L    # 1.0508083325013806E295
    .end array-data

    :array_117
    .array-data 8
        0x4ac468aabe155c9dL    # 1.5271718641700275E52
        -0x3f2ee2779259aef3L    # -17526.131692485
    .end array-data

    :array_118
    .array-data 8
        0x46c27ad36b960aceL    # 7.496292801863192E32
        -0x45d1c9cb18bcd66aL    # -1.9066291443968745E-28
    .end array-data

    :array_119
    .array-data 8
        -0x11d32ff7f3db21b8L    # -5.207503933291563E222
        0xb3f79ccbef57db5L
    .end array-data

    :array_11a
    .array-data 8
        -0x49091311a1654b57L    # -6.425097016534972E-44
        0x1c5e456d42edbd13L
    .end array-data

    :array_11b
    .array-data 8
        0x583332d76876f891L    # 7.564633311903518E116
        -0x745ab03b21a3260fL    # -1.453415061835879E-252
    .end array-data

    :array_11c
    .array-data 8
        0x64b7682dfec9abc4L    # 1.4820482032334737E177
        -0x19ffa68d4550d480L    # -2.170947788390996E183
    .end array-data

    :array_11d
    .array-data 8
        -0x10ecd794bde0ada8L    # -1.1346040956821338E227
        0x2414de875bd1c5e7L    # 7.178089241740833E-135
    .end array-data

    :array_11e
    .array-data 8
        -0x737f147f4d0b3405L
        -0x5753267861ee93bcL    # -9.372022478836343E-113
    .end array-data

    :array_11f
    .array-data 8
        0x5c6a92082625b040L    # 1.5449937935773195E137
        0x5eaf48a1f4c7e4ebL    # 1.2500468669010095E148
    .end array-data

    :array_120
    .array-data 8
        0x15ac03e586dfcae1L    # 2.792331698216171E-204
        -0x3bb1ff20c1461af3L    # -1.1069303201984515E21
    .end array-data

    :array_121
    .array-data 8
        0x6458a2e3a1de6478L
        0xc32aabba146fe3eL
    .end array-data

    :array_122
    .array-data 8
        -0x1622920edd1df51eL    # -9.010718365743874E201
        -0x268a2f49499e32b4L    # -9.01320395233014E122
    .end array-data

    :array_123
    .array-data 8
        0x78e52ce17c332ce8L    # 2.291057345050185E274
        -0x4bca8e27c125dadcL    # -3.416338749748701E-57
    .end array-data

    :array_124
    .array-data 8
        0x7c10855611e92c07L    # 4.0250204525397184E289
        -0x1c6120f59a8ad8afL    # -7.456444576580202E171
    .end array-data

    :array_125
    .array-data 8
        -0x76aac0a344d5cfccL
        -0x44933db6be3d4b61L    # -1.9031063672975014E-22
    .end array-data

    :array_126
    .array-data 8
        -0x77b6784a9fad64e0L    # -9.665105287846834E-269
        0xc65a4a9ef5b627cL    # 6.045823000419169E-249
    .end array-data

    :array_127
    .array-data 8
        0x5f6e199db8079e69L    # 4.926463151335498E151
        0x3d957bc4884c7616L    # 4.884774988725091E-12
    .end array-data

    :array_128
    .array-data 8
        0x1fa9f70d84f8b2beL
        0x3e8cb6174d67c9dL    # 7.95076221620866E-290
    .end array-data

    :array_129
    .array-data 8
        0x6c4ff7a7723bb1abL    # 5.3808915834852897E213
        0x630daf13c153b6c8L    # 1.4003238133759936E169
    .end array-data

    :array_12a
    .array-data 8
        0x555ba5457b701231L    # 1.5479767031422112E103
        -0x496bd27b970a0dL
    .end array-data

    :array_12b
    .array-data 8
        -0x1d915b953a6b102fL    # -1.4116542479791837E166
        0x71c28c2b08e4c8adL    # 9.662125686724352E239
    .end array-data

    :array_12c
    .array-data 8
        0x3651a966dc160ef8L    # 4.833857263929502E-47
        -0xc41aeda34c5699aL
    .end array-data

    :array_12d
    .array-data 8
        -0x6702ebd5985374fdL    # -2.610590696807994E-188
        0x42320826f179c8c4L    # 7.744618124178424E10
    .end array-data

    :array_12e
    .array-data 8
        0x2618d8270c6b6ccdL    # 3.670197021589468E-125
        -0x5bbc0a3e88f14aa4L    # -5.492272941844138E-134
    .end array-data

    :array_12f
    .array-data 8
        0x7fc4a48ae424c906L    # 2.899165604153747E307
        0x768d6279faa536a6L    # 1.1566104324885337E263
    .end array-data

    :array_130
    .array-data 8
        -0x68bfee03815faeaaL
        -0x30ecbe52d21f7b80L    # -8.505844161379601E72
    .end array-data

    :array_131
    .array-data 8
        0x1f1df2b00803375aL    # 8.520598495975918E-159
        -0x16e27538cb665f4dL    # -2.2083024766103306E198
    .end array-data

    :array_132
    .array-data 8
        0x5d93a284ed67e7eeL    # 5.985843343391654E142
        0x5c55d44ea5d2d30eL    # 6.346559514270621E136
    .end array-data

    :array_133
    .array-data 8
        -0x2d87005a22ffd553L    # -1.9891835045175082E89
        -0x6dbc533916887f57L
    .end array-data

    :array_134
    .array-data 8
        0x33f748bad5158daaL    # 2.3183570436965072E-58
        0xe631d7b0044923fL    # 2.293355335616995E-239
    .end array-data

    :array_135
    .array-data 8
        -0x1854cc24f6825adbL    # -2.4240247884063403E191
        0x4e38c1abf55e1c84L    # 6.6743473191404E68
    .end array-data

    :array_136
    .array-data 8
        0x10227f3e5243b2deL    # 5.957110834970664E-231
        0x1154bbc2e3d9c0f6L
    .end array-data

    :array_137
    .array-data 8
        0x3dcee938330cb2e6L    # 5.622680652774044E-11
        0x6deb4e9c1f48cd79L    # 3.0846218442114087E221
    .end array-data

    :array_138
    .array-data 8
        0x582cbe193729edf6L    # 5.6625750509998254E116
        -0x77eb51c90254815eL    # -9.78645687948783E-270
    .end array-data

    :array_139
    .array-data 8
        -0x42e5dcc3962d2ef5L    # -2.321488830940056E-14
        -0x2f678eb56645f207L    # -1.8113621128009626E80
    .end array-data

    :array_13a
    .array-data 8
        0x1f47845d44de1902L
        0x51f435887037a681L    # 6.281538467979594E86
    .end array-data

    :array_13b
    .array-data 8
        -0xc54a3459d907417L
        -0x594939f64047b3c7L    # -3.445031484728168E-122
    .end array-data

    :array_13c
    .array-data 8
        0x4b9b71cd9f50edbaL    # 1.6823456396453438E56
        0x44254be7e4ac7f56L    # 1.964256086249436E20
    .end array-data

    :array_13d
    .array-data 8
        0x78b6773835de8e12L    # 3.0383378472380323E273
        -0x5c21a943254139cL    # -6.7834655010002256E280
    .end array-data

    :array_13e
    .array-data 8
        0x27117a9c307104c5L
        -0x2eb0ea4427b74302L    # -4.7177862077695846E83
    .end array-data

    :array_13f
    .array-data 8
        0x290c0ee3eee03260L    # 5.833522549407441E-111
        -0x48da420ada630c86L    # -4.874729902897539E-43
    .end array-data

    :array_140
    .array-data 8
        -0x3b3ccab8230e1536L    # -1.814156377801843E23
        0x5e047bb03612bf03L    # 7.992908411701533E144
    .end array-data

    :array_141
    .array-data 8
        -0x364caf44d069d9a4L    # -1.1027119045185926E47
        -0x40f63ae4bd399d7dL    # -4.915227359276067E-5
    .end array-data

    :array_142
    .array-data 8
        0x38f9e650c30cbe36L    # 3.1175593545880813E-34
        0x5c4ca5cb42f5b6f3L    # 4.164441772097053E136
    .end array-data

    :array_143
    .array-data 8
        0x7599e21a570dd574L    # 3.1090986851479264E258
        0x2b5d1d6adbe120eL
    .end array-data

    :array_144
    .array-data 8
        -0x625d81dea39b92c6L    # -6.272095192188289E-166
        -0x5c4d878e89f1f89L    # -6.161355513548954E280
    .end array-data

    :array_145
    .array-data 8
        -0x4cde651d6443c32bL    # -2.139771681645852E-62
        0x68c598e28481c09L
    .end array-data

    :array_146
    .array-data 8
        -0x207455958ab52ac3L    # -1.8112119946822618E152
        0x440a159d5929f762L    # 6.014660562492092E19
    .end array-data

    :array_147
    .array-data 8
        0xce0daada031a30aL    # 1.205263508099956E-246
        -0x5318e27aaab9fa60L    # -2.2163133887634008E-92
    .end array-data

    :array_148
    .array-data 8
        -0x6d80f39933ad1765L
        -0x53fd24dad1d6bb32L
    .end array-data

    :array_149
    .array-data 8
        0x5fdd92195398cc03L    # 6.19497268607988E153
        -0x2ab8e60393dd09b0L    # -6.467685109805154E102
    .end array-data

    :array_14a
    .array-data 8
        -0x4fb4612d2e36dc7cL
        0x6f2ce3afba7f4ff7L    # 3.421883881767128E227
    .end array-data

    :array_14b
    .array-data 8
        0x15a52015cd1cc7cbL    # 2.105603090312358E-204
        0x5f8d348090bcddd9L    # 1.9119931335385774E152
    .end array-data

    :array_14c
    .array-data 8
        -0x7e0a461018fe57e8L    # -3.244220975761926E-299
        0x51dca863415d4b12L    # 2.2269019058494685E86
    .end array-data

    :array_14d
    .array-data 8
        0x25cfaab1a0e341adL
        -0x173d1da06e5aa334L    # -4.411308235652801E196
    .end array-data

    :array_14e
    .array-data 8
        0x279d083a1eacc7c7L    # 7.195495576969919E-118
        0x4a80ee4572e117eeL    # 7.91818072306085E50
    .end array-data

    :array_14f
    .array-data 8
        0x6fb41382a2dcf673L    # 1.2175266605500556E230
        -0x7ade11676780ecd2L    # -6.029526572023628E-284
    .end array-data

    :array_150
    .array-data 8
        -0x4e5411a427b36000L    # -2.0234798222653507E-69
        0x70f143ff0b529be8L    # 1.097939867467961E236
    .end array-data

    :array_151
    .array-data 8
        0x849b54b6c13f1b8L
        -0x67aeeb9d81c7c289L
    .end array-data

    :array_152
    .array-data 8
        0x535bd0ce5a46a893L    # 3.62633453372777E93
        0x484f95a28010dc3aL    # 2.1495304190992728E40
    .end array-data

    :array_153
    .array-data 8
        0x5a70c4dbb8f303f3L    # 4.540511354141509E127
        -0x12f12a77b9cd8370L    # -2.1258779009218192E217
    .end array-data

    :array_154
    .array-data 8
        0x55ddf7228befbL
        -0x4dea4a8879a433f7L    # -2.013065467294225E-67
    .end array-data

    :array_155
    .array-data 8
        0x65e5d1d4dc082e8aL    # 7.243279594203951E182
        0x1c3c4edd0689cc99L
    .end array-data

    :array_156
    .array-data 8
        0x62d47084166e201dL    # 1.2052806791813947E168
        -0x5dc412c9061de809L    # -8.945826247274347E-144
    .end array-data

    :array_157
    .array-data 8
        0x4e698ddb6616e938L    # 5.511503641840329E69
        0x2e80449a168e0bd2L    # 1.046754304284207E-84
    .end array-data

    :array_158
    .array-data 8
        0x1bf7a361e1695689L    # 5.973338737201437E-174
        -0x6a260cf696237ff5L    # -2.069138830297031E-203
    .end array-data

    :array_159
    .array-data 8
        0x787453661d8dc22bL    # 1.718079485054894E272
        0x33639b7b56f2ec54L    # 3.813026355011026E-61
    .end array-data

    :array_15a
    .array-data 8
        -0x229e540b86640b30L    # -6.734204245763574E141
        0x540f74c3e35cd5f7L    # 8.398731467257919E96
    .end array-data

    :array_15b
    .array-data 8
        -0x126a0c3de6e07109L    # -7.749158002757542E219
        -0x422f336a8250ddc3L    # -6.111497369030044E-11
    .end array-data

    :array_15c
    .array-data 8
        -0x5d3310e059e8c200L
        -0x410d2dd6c5ec295cL    # -1.7949048587837177E-5
    .end array-data

    :array_15d
    .array-data 8
        -0x1505f698f41787faL    # -2.0897938682082896E207
        0x4430adeecd3b7785L    # 3.0768108564766346E20
    .end array-data

    :array_15e
    .array-data 8
        0x16d621ebd70ddc5aL
        -0x21951419437611e2L    # -6.723369667833354E146
    .end array-data

    :array_15f
    .array-data 8
        0x3fe56d9d6ecf99bfL    # 0.6696307338977973
        -0x7f112a73b16ba463L
    .end array-data

    :array_160
    .array-data 8
        0x3dab4eaff18960b4L    # 1.2417955160704458E-11
        -0x3c2f1c928f14dee3L    # -4.867746624274986E18
    .end array-data

    :array_161
    .array-data 8
        0x1f32dfc17505f55L
        0x3f4bc36305053b37L    # 8.472665304369635E-4
    .end array-data

    :array_162
    .array-data 8
        0x6183bf1b7dc24d5L
        0x2cf9aa539dce05a4L    # 4.921622849702003E-92
    .end array-data

    :array_163
    .array-data 8
        -0x1d967c1844c9745cL    # -1.1754591364281696E166
        0x4661fef43e0d28bL
    .end array-data

    :array_164
    .array-data 8
        -0x1145b6a724cb4a47L    # -2.432482576480582E225
        0x6f1ef7dc5c32ecc3L    # 1.8340568687102166E227
    .end array-data

    :array_165
    .array-data 8
        -0x4faafb7732807c5bL    # -7.260500292339675E-76
        -0x754af86bd3fa4c87L    # -4.376781038727373E-257
    .end array-data

    :array_166
    .array-data 8
        0x79980041a5899976L    # 5.318208833127892E277
        -0x1aa8aeb2f7083278L    # -1.5118229428071406E180
    .end array-data

    :array_167
    .array-data 8
        -0x426bee85e6de0ddfL    # -4.562996155137937E-12
        -0x50f10f62a761d18eL    # -5.0964774962095334E-82
    .end array-data

    :array_168
    .array-data 8
        -0x59913c744381b5b1L
        -0x62aa158ec836ce60L
    .end array-data

    :array_169
    .array-data 8
        -0x7527ca541359a73L    # -1.995726224632449E273
        0x3d3c5d60dbcfe3c7L    # 1.0077186798998494E-13
    .end array-data

    :array_16a
    .array-data 8
        -0x4108bb456933cd5eL    # -2.2190544245725482E-5
        0x3f19e5ff9c57cbe5L    # 9.879467605582134E-5
    .end array-data

    :array_16b
    .array-data 8
        0x37032c031925862dL    # 1.0746234096968256E-43
        -0x7941c7c961531191L
    .end array-data

    :array_16c
    .array-data 8
        -0x788f1a35a7144f7eL    # -7.808892536129361E-273
        -0x1566f071c3a483fcL    # -3.1429058298977964E205
    .end array-data

    :array_16d
    .array-data 8
        -0x74864fddcbabf533L    # -2.189849773541349E-253
        0x3cadf8d44f23eba0L    # 2.0797245578748874E-16
    .end array-data

    :array_16e
    .array-data 8
        -0x228b663fd4dc5d04L    # -1.5700648758055034E142
        0x37fd486351c290cL
    .end array-data

    :array_16f
    .array-data 8
        0x11163276eecdcf2fL    # 2.342502383775983E-226
        -0x191371f9125e243fL    # -6.212212963093264E187
    .end array-data

    :array_170
    .array-data 8
        0x1fab317dedf3cc5fL    # 3.961271566623271E-156
        0x8680644de27be6fL
    .end array-data

    :array_171
    .array-data 8
        -0xf936d6ec644e075L    # -3.5487493908306576E233
        -0x5d72a0fe34923953L
    .end array-data

    :array_172
    .array-data 8
        0x5398e0a788c50a3dL    # 5.189271278462868E94
        -0x1a546c16c1eb9352L    # -5.7217209060429996E181
    .end array-data

    :array_173
    .array-data 8
        -0x736b48126abe69f6L    # -4.630002665096098E-248
        0x5f45fcc91fe176b6L    # 8.99668655112857E150
    .end array-data

    :array_174
    .array-data 8
        0x4b9730cd44b9f270L    # 1.4215816142771327E56
        0x7282d7073d3b2289L    # 4.0200027710371754E243
    .end array-data

    :array_175
    .array-data 8
        0x5888e4eeaff49b2fL    # 3.1388290103154635E118
        -0xea8233269cd20caL    # -9.711643948329772E237
    .end array-data

    :array_176
    .array-data 8
        -0x580f9b9aa1d424a3L    # -2.600148655667172E-116
        0x2175de0e0899e07fL
    .end array-data

    :array_177
    .array-data 8
        0x6b184661e2c30d3eL    # 7.793544719517603E207
        -0x566167a8e7d7f93eL
    .end array-data

    :array_178
    .array-data 8
        0x5b401616715319L
        0x4eabfb1b976da144L    # 9.655850185132033E70
    .end array-data

    :array_179
    .array-data 8
        0x4618f998f80151a9L    # 4.946806489209148E29
        0x1838870168b11db0L    # 5.375930845910507E-192
    .end array-data

    :array_17a
    .array-data 8
        -0x12b13846316e595fL    # -3.3954552724104074E218
        0x1788319aa30ff8adL
    .end array-data

    :array_17b
    .array-data 8
        -0x4cab6c3dd64b4662L    # -2.0008142887864573E-61
        0x1cc9e4d8d058e3a9L    # 5.360317122072178E-170
    .end array-data

    :array_17c
    .array-data 8
        -0x64e96c54282f2573L    # -3.482136146917093E-178
        0x2e186bd76c630c7aL    # 1.2276349696783983E-86
    .end array-data

    :array_17d
    .array-data 8
        -0x4c95fdb4e77fa19eL    # -5.05794204047333E-61
        -0x720e26852820ad82L    # -1.673055269013517E-241
    .end array-data

    :array_17e
    .array-data 8
        -0x1c3fe0cae0a00b89L    # -3.115185212430082E172
        0x4b12977a7ff21725L    # 4.451830811017918E53
    .end array-data

    :array_17f
    .array-data 8
        0x51453f8d44121ccbL    # 3.224868197089388E83
        -0x51ebe7369ca689d8L    # -1.0102495453143936E-86
    .end array-data

    :array_180
    .array-data 8
        0x2897877f05489786L
        0x609f1201425d0b52L    # 2.6661442556526832E157
    .end array-data

    :array_181
    .array-data 8
        -0x1713f7f1657fe78cL    # -2.6192267309143928E197
        0x1b96fbbe0f9755c4L
    .end array-data

    :array_182
    .array-data 8
        -0x7074911a42f3cba9L    # -8.627992067214504E-234
        -0xc0762ee94700ec8L    # -4.405656308513172E250
    .end array-data

    :array_183
    .array-data 8
        0x1fc88b88bacfb0c3L
        0x1a502f5419a275a4L
    .end array-data

    :array_184
    .array-data 8
        0x78a860fb0b4c03fbL    # 1.6485379708156238E273
        0x33c93e0e3fa20c00L
    .end array-data

    :array_185
    .array-data 8
        -0x34339ea5d9b59feeL    # -1.3917649709676235E57
        -0xe1c652f6560a649L    # -4.085147695081538E240
    .end array-data

    :array_186
    .array-data 8
        0x5e65d9ce1053c838L    # 5.457016391152802E146
        0x219c376320d0fc23L    # 8.826795313780536E-147
    .end array-data

    :array_187
    .array-data 8
        0xba574fe0bea5ba8L
        0x3e89f911de70d0L
    .end array-data

    :array_188
    .array-data 8
        -0x36bc89a39e63b89aL    # -8.680496884726966E44
        0x52e8b3c832629fafL    # 2.515970991958821E91
    .end array-data

    :array_189
    .array-data 8
        -0x362a40e6ee0d3dfbL    # -4.966017297393964E47
        0xabd0469e583c112L
    .end array-data

    :array_18a
    .array-data 8
        0x29077d656190a0b1L    # 4.883727789899822E-111
        -0x374b59d0ba8c4f3L    # -8.510566330692785E291
    .end array-data

    :array_18b
    .array-data 8
        0x439428ff2a710050L    # 3.6317285939413504E17
        -0x26f5d5af4b0601d6L    # -8.445665902027124E120
    .end array-data

    :array_18c
    .array-data 8
        0x24e661a22ba42ecfL    # 6.306360172503671E-131
        -0x5cddba69cfa9d407L
    .end array-data

    :array_18d
    .array-data 8
        0x702fe52fc4ecfe72L
        -0x141ab9b5e21951d3L    # -5.595356060122497E211
    .end array-data

    :array_18e
    .array-data 8
        0x1feea14ffc75f0ffL    # 7.139060058841477E-155
        0x5f33b00d2289def1L    # 4.027845853465444E150
    .end array-data

    :array_18f
    .array-data 8
        0x3b338c3ee37083bdL    # 1.616958979964906E-23
        0x581bfacf918adba9L    # 2.756143711899803E116
    .end array-data

    :array_190
    .array-data 8
        0x5ceb90af25472f6bL    # 4.1032570515824467E139
        0x1eb80446b0ba1dd4L
    .end array-data

    :array_191
    .array-data 8
        -0x70757de6a9e5c50L    # -5.335463016286174E274
        -0x4687da58c98ee1a4L    # -7.440894346576509E-32
    .end array-data

    :array_192
    .array-data 8
        0x6d06bde7e1a11daeL    # 1.5679496009434048E217
        0x53b362934291c75L
    .end array-data

    :array_193
    .array-data 8
        0x4441809deed443c7L    # 6.457249509133966E20
        0x4c5391ad7d2dae44L    # 4.91347758280025E59
    .end array-data

    :array_194
    .array-data 8
        -0x43f3c9223196f819L    # -1.9118768251632357E-19
        0x358ae8db438e31cdL    # 8.990377219201549E-51
    .end array-data

    :array_195
    .array-data 8
        -0x2160b9e563e209b4L    # -6.248260845728014E147
        0x450918cb41e09ebL
    .end array-data

    :array_196
    .array-data 8
        -0x6cc8939bcbcb65fcL    # -4.246715143246139E-216
        -0x37cdc3412fa128a7L    # -6.205827046982401E39
    .end array-data

    :array_197
    .array-data 8
        -0x6b896a0a0e4acba5L    # -4.293764359506627E-210
        0x47f579e2836bfe9eL    # 4.5674640109197394E38
    .end array-data

    :array_198
    .array-data 8
        -0x3a2bb24965f61038L    # -2.5134599187006833E28
        0x76f5164b7bc46a32L
    .end array-data

    :array_199
    .array-data 8
        -0x967a87cbf499cadL    # -1.91623931947353E263
        0x4bcb596822b50427L    # 1.3412030836883968E57
    .end array-data

    :array_19a
    .array-data 8
        -0xbc2705c916a2615L    # -8.465971453259825E251
        -0xff29c6509a4336L
    .end array-data

    :array_19b
    .array-data 8
        -0x5c1dca0946f91dacL    # -7.829623740732475E-136
        0x7881d0fb4f45b857L    # 3.0119270966028254E272
    .end array-data

    :array_19c
    .array-data 8
        0x1ed1f19bed4ba774L
        -0xf1b0c415939b623L    # -6.661848591475252E235
    .end array-data

    :array_19d
    .array-data 8
        -0x2669ecaaa100bec7L    # -3.6482887979499605E123
        -0x11cab5dccfb0d55fL    # -7.695632126156727E222
    .end array-data

    :array_19e
    .array-data 8
        -0x68145b6a89de33caL
        0x64e5294c7945b26bL    # 1.0718901349357386E178
    .end array-data

    :array_19f
    .array-data 8
        0x33589e44ca1c4c52L    # 2.393744779117267E-61
        0x2f40b780d23c20cdL    # 4.405797843426177E-81
    .end array-data

    :array_1a0
    .array-data 8
        -0x65739487a2c348e1L    # -8.561181688046982E-181
        0x4ac439f759847abcL    # 1.5135212186978773E52
    .end array-data

    :array_1a1
    .array-data 8
        -0x639536dfbf6e66L
        0x54f12cea0189cadfL    # 1.502680237711029E101
    .end array-data

    :array_1a2
    .array-data 8
        -0x498c020f01d5df52L    # -2.1886484966543427E-46
        -0x29c31f06eb419155L    # -2.6493395751741794E107
    .end array-data

    :array_1a3
    .array-data 8
        -0x1bce23f02fbc5fdfL    # -4.4172260684838576E174
        -0x5e7f90274ed7654bL    # -2.57094062839651E-147
    .end array-data

    :array_1a4
    .array-data 8
        0x71477ade49517b4dL    # 4.77797467949434E237
        -0x37d6f99ca2b5adbL    # -5.789202885679016E291
    .end array-data

    :array_1a5
    .array-data 8
        0x7339b381bbb4e8ecL
        0x74b28071c36629d7L    # 1.3564657573749817E254
    .end array-data

    :array_1a6
    .array-data 8
        -0x17f4329cda775ca6L    # -1.5855789487279437E193
        0x93da093df743b96L
    .end array-data

    :array_1a7
    .array-data 8
        -0x9167c013a248304L
        0x207fc7377b795586L
    .end array-data

    :array_1a8
    .array-data 8
        -0x520e66b849148e86L    # -2.2116841269490393E-87
        0x5a35582d7d825fe4L    # 3.61212728071565E126
    .end array-data

    :array_1a9
    .array-data 8
        -0x255d2ec722de944cL    # -4.076100400871099E128
        0x70233e0267d2638cL    # 1.4936950607837792E232
    .end array-data

    :array_1aa
    .array-data 8
        0x5e535809eddb1a38L    # 2.415471859404396E146
        0x254d6fe5cb4c29e9L    # 5.308439767021302E-129
    .end array-data

    :array_1ab
    .array-data 8
        -0x656fd78055d28c91L    # -9.734990591889937E-181
        -0x543f43dba1f5173eL    # -6.120900446268888E-98
    .end array-data

    :array_1ac
    .array-data 8
        -0x372024958e5eef27L    # -1.1100576761616617E43
        -0x309eca38c0e46584L    # -2.432605146642318E74
    .end array-data

    :array_1ad
    .array-data 8
        -0x2c99084c8fd6dae5L    # -5.988581162438932E93
        0x8ec9c97f5fed2c6L
    .end array-data

    :array_1ae
    .array-data 8
        0x20297ecb8943beb9L    # 9.507629192260621E-154
        0x1749ae73505c429L
    .end array-data

    :array_1af
    .array-data 8
        -0x72ecb176f0c66783L
        0xed3de8f656304eL
    .end array-data

    :array_1b0
    .array-data 8
        0x5a9879e2eb42c15aL    # 2.6509450278389375E128
        -0x17b2d4ea4f103903L    # -2.661572708777005E194
    .end array-data

    :array_1b1
    .array-data 8
        -0x5a6a6450f1b1e823L
        0x1b6aa8c51a007398L
    .end array-data

    :array_1b2
    .array-data 8
        -0x37893501ea92f8c2L    # -1.2409656648607968E41
        0x49cd094085fcfa50L    # 3.315341196815954E47
    .end array-data

    :array_1b3
    .array-data 8
        0x3a740d99336c7323L    # 4.049695113139292E-27
        0x27bbedcad37e7de5L    # 2.768822781372731E-117
    .end array-data

    :array_1b4
    .array-data 8
        0x578cee6bbcfd7c39L    # 5.566174322581353E113
        0x60ceaf95e8f86c8cL    # 2.1065236543120913E158
    .end array-data

    :array_1b5
    .array-data 8
        -0x1097df3a141201beL    # -4.57265474238585E228
        -0x15a4657b0e2e1427L    # -2.1636283460065988E204
    .end array-data

    :array_1b6
    .array-data 8
        0x23095e7ba9d36727L    # 6.65727731023416E-140
        0x6217306a48c07c64L    # 3.3384275137715077E164
    .end array-data

    :array_1b7
    .array-data 8
        -0x2ae2a35499a80dd0L    # -1.0275525548935362E102
        0x5e4d27af22823a7fL    # 1.820292584577931E146
    .end array-data

    :array_1b8
    .array-data 8
        -0x21aac966a8728f92L    # -2.648900708005075E146
        0x1830101697451a53L    # 3.52066932065002E-192
    .end array-data

    :array_1b9
    .array-data 8
        0x7fad5772c83b94d7L    # 1.0302184420534699E307
        0x5df75a45c91bbe2cL    # 4.556314409715507E144
    .end array-data

    :array_1ba
    .array-data 8
        -0x7f7d11a0e9f1f26bL
        -0x5d31fec126a74ce4L    # -4.921117367487282E-141
    .end array-data

    :array_1bb
    .array-data 8
        0xb4a940bde2497dfL
        0x62859795bdce107eL    # 3.97890049289356E166
    .end array-data

    :array_1bc
    .array-data 8
        -0x151336152fbafe50L    # -1.1553396662439488E207
        0x24fa4a638b3e91a9L
    .end array-data

    :array_1bd
    .array-data 8
        -0x5f75897a8f813affL
        0x6c2def9c2b83a6e4L    # 1.2597384469212157E213
    .end array-data

    :array_1be
    .array-data 8
        0x551ae6a39ad0feedL    # 9.414253950855557E101
        0x153ea19880e019aeL
    .end array-data

    :array_1bf
    .array-data 8
        -0xfc87236386bba3aL    # -3.656779404572185E232
        0xa45670ce028e9c8L    # 3.4799985562336804E-259
    .end array-data

    :array_1c0
    .array-data 8
        -0x17020a5d231ddee7L    # -5.598761542928373E197
        0x3fcf9e6d1c1d5befL    # 0.247022284248231
    .end array-data

    :array_1c1
    .array-data 8
        -0x6ee169cc696ca2cbL
        -0x2d15a2c928829f9L    # -9.786884731911528E294
    .end array-data

    :array_1c2
    .array-data 8
        0x78d682a2350c7e1aL    # 1.2177471309680837E274
        -0x4efe08b17e5c0e77L    # -1.2710524032374728E-72
    .end array-data

    :array_1c3
    .array-data 8
        0x4210f8db8ef6ac84L    # 1.8223653821668472E10
        -0x31a028b5267c2659L    # -3.4337251230316513E69
    .end array-data

    :array_1c4
    .array-data 8
        0x30f13704bd1f8e57L    # 6.089560749539388E-73
        -0x12b360415c760d44L    # -3.1576009018514336E218
    .end array-data

    :array_1c5
    .array-data 8
        0x7b36c6cba785e735L    # 3.38691075604523E285
        0x29ad960a6ba169aaL    # 6.298820536655055E-108
    .end array-data

    :array_1c6
    .array-data 8
        0x695f2c4221d94fcL
        0x729dfb6801ebac65L    # 1.27949299621573E244
    .end array-data

    :array_1c7
    .array-data 8
        0x5e06a5a5ea6f90d3L    # 8.837304481355595E144
        0x3044b3cff328c81bL    # 3.575786903772024E-76
    .end array-data

    :array_1c8
    .array-data 8
        0x639f365e8c81f506L    # 7.5388384043596985E171
        0x256bc8870ddc29a6L
    .end array-data

    :array_1c9
    .array-data 8
        0x3fff5963b2da52beL    # 1.9593235956610182
        -0x2ece19bb8de906d5L    # -1.358311198049812E83
    .end array-data

    :array_1ca
    .array-data 8
        -0x28282f6c4707f95dL    # -1.4661704489270971E115
        -0x7607e53c086d9756L
    .end array-data

    :array_1cb
    .array-data 8
        0x28d2f5037788c517L    # 4.926666442829095E-112
        0x7c97fa3ee8bd86L
    .end array-data

    :array_1cc
    .array-data 8
        -0x5be8df010614224eL
        0x1bf1b17270791e71L    # 4.471031550936719E-174
    .end array-data

    :array_1cd
    .array-data 8
        0x6592b78fc27ce2d2L    # 1.941665947097296E181
        -0x73eb70573c799b16L
    .end array-data

    :array_1ce
    .array-data 8
        0x69cf0646a5e6e14eL    # 4.7495462882057434E201
        -0x719bac0e251c4724L
    .end array-data

    :array_1cf
    .array-data 8
        -0xfbd42ee5ba04856L    # -5.818387718448483E232
        0x1f124f4609aac768L
    .end array-data

    :array_1d0
    .array-data 8
        0x8d9990e02907710L
        -0xd69af03ffa2ac45L    # -9.52356557610236E243
    .end array-data

    :array_1d1
    .array-data 8
        -0x4e919122a4e5b0f0L    # -1.377960355673374E-70
        0x705c4b881612013fL    # 1.7571427875947977E233
    .end array-data

    :array_1d2
    .array-data 8
        0x4230caaf7ed54635L    # 7.211997563727425E10
        0x667e1fb7b7d88d64L    # 5.1199827915849434E185
    .end array-data

    :array_1d3
    .array-data 8
        0x4c810804fe8123d3L    # 3.42103575283553E60
        0x5f007d8d2d457fcaL    # 4.217159100134052E149
    .end array-data

    :array_1d4
    .array-data 8
        -0x5cf77ea3af2d8621L    # -6.430612082566067E-140
        0x179f683ae98f68ebL    # 6.72250807155747E-195
    .end array-data

    :array_1d5
    .array-data 8
        0x32c0e43561332edL
        -0x4042ec2812ba2874L    # -0.11358403723519767
    .end array-data

    :array_1d6
    .array-data 8
        -0x5bc22f01e228a2e5L    # -4.1021999123664544E-134
        -0x6277105d9be6be8eL    # -2.114367348326912E-166
    .end array-data

    :array_1d7
    .array-data 8
        -0x6d61159643afe374L    # -5.473711594421241E-219
        -0xf8c6b7ffb8e7c8L
    .end array-data

    :array_1d8
    .array-data 8
        0x402503cb95d1bc6dL    # 10.507412607052368
        0x490a1ffb391795e8L    # 7.282566784852962E43
    .end array-data

    :array_1d9
    .array-data 8
        0x402457f2a25b70faL    # 10.17177302709796
        -0x12ca2f56457ee7e9L    # -1.2032444971125405E218
    .end array-data

    :array_1da
    .array-data 8
        -0x6e2e670a918a4937L    # -7.606661099125808E-223
        -0x4e628115f76f727eL    # -1.06841649508208E-69
    .end array-data

    :array_1db
    .array-data 8
        0x2262ce365ae03150L
        0x2741151399de5959L
    .end array-data

    :array_1dc
    .array-data 8
        -0x5d0e3de8403a0fadL
        -0x3881725e499e07edL    # -2.5382646030245376E36
    .end array-data

    :array_1dd
    .array-data 8
        -0x3f42a323ff01acb1L    # -7516.859390158977
        -0x3dbb2bf57f9a55baL    # -1.7891360788333026E11
    .end array-data

    :array_1de
    .array-data 8
        -0x4d840f01b5215205L    # -1.6582454284485608E-65
        0x581b0b999ffc2434L    # 2.6640989642592475E116
    .end array-data

    :array_1df
    .array-data 8
        0x5008e3295e72ac22L    # 3.6021978136367054E77
        -0x9703038e50aabbL
    .end array-data

    :array_1e0
    .array-data 8
        0xffc59dec93bb730L
        0x63934182da9fabbcL    # 4.650947461731388E171
    .end array-data

    :array_1e1
    .array-data 8
        -0x8aa5ec16858e649L    # -6.974449128444406E266
        0x6349663098b745f3L    # 1.9171109451919937E170
    .end array-data

    :array_1e2
    .array-data 8
        -0x2a546609e277bd5cL    # -4.94560933359E104
        0x2df1d5322098c67dL    # 2.241097291812265E-87
    .end array-data

    :array_1e3
    .array-data 8
        0x2d8c426174f36cfdL    # 2.7745508573889403E-89
        -0x663e9d555a3e829eL    # -1.278609017415918E-184
    .end array-data

    :array_1e4
    .array-data 8
        0x164ee65638b1a0c0L
        0x155910b1ecf5da2bL    # 7.807183865453313E-206
    .end array-data

    :array_1e5
    .array-data 8
        -0x4bffd8180072bc01L    # -3.217225967374254E-58
        -0x2b46d01449e9be67L    # -1.3772675124613799E100
    .end array-data

    :array_1e6
    .array-data 8
        -0x718f5e23e2f31d98L
        0x79ccb49a02adb127L    # 5.0885113132553053E278
    .end array-data

    :array_1e7
    .array-data 8
        0x6e5f6982e6094944L
        0x79219cf63ef3c27fL    # 3.049036687170118E275
    .end array-data

    :array_1e8
    .array-data 8
        0xd9f76ab11c7f70bL
        0x42576500292d79a7L    # 4.019150286619008E11
    .end array-data

    :array_1e9
    .array-data 8
        -0x4b04214e19e69e37L    # -1.8185959617797675E-53
        -0x2de9e467dd0bdbbbL    # -2.748679439221045E87
    .end array-data

    :array_1ea
    .array-data 8
        -0x6ed45b24217fc076L    # -5.834636897724174E-226
        -0x4e45d2ee08c4dc6cL    # -3.7926713139353527E-69
    .end array-data

    :array_1eb
    .array-data 8
        0x3d96ae9f2ba04682L    # 5.1573161380878656E-12
        0x4b3be88b3c90006eL    # 2.6730912249339244E54
    .end array-data

    :array_1ec
    .array-data 8
        0xf207813fb0805e0L    # 8.093233686396085E-236
        -0x1a6f2d1f4aba774fL    # -1.7452594085179364E181
    .end array-data

    :array_1ed
    .array-data 8
        0x326dae442640b7acL    # 8.807354923699596E-66
        -0x41f891425517c179L    # -6.819778819916538E-10
    .end array-data

    :array_1ee
    .array-data 8
        0x5e09bcc2577739f2L
        0xc50aada8607c31cL
    .end array-data

    :array_1ef
    .array-data 8
        0x4a7ff9781d3dbe0fL    # 7.476922895341296E50
        0x206ebe181ce8ad5L
    .end array-data

    :array_1f0
    .array-data 8
        -0x3f426694e53b973fL    # -7577.418377185416
        -0x5d215bfd30a0f17aL
    .end array-data

    :array_1f1
    .array-data 8
        -0x4e26ff46f8d43b24L    # -1.4490722809612729E-68
        0x1d301c1ffee59e72L    # 4.268686701687237E-168
    .end array-data

    :array_1f2
    .array-data 8
        0x7e1515c9e2c5c302L    # 2.206335816336577E299
        -0x5a6da685d4010dbeL    # -1.058879561949011E-127
    .end array-data

    :array_1f3
    .array-data 8
        0x1272ad9389cf6d03L    # 8.267501851631898E-220
        -0x23df09317a1f196fL    # -6.165078327599847E135
    .end array-data

    :array_1f4
    .array-data 8
        0x32dcaeda4b80be73L    # 1.0894461781009113E-63
        -0x3dacca0c65dec3d8L    # -3.3003814310893994E11
    .end array-data

    :array_1f5
    .array-data 8
        -0x43a457f8046eec13L    # -5.9970196790411216E-18
        0xd1c7331cefc488aL
    .end array-data

    :array_1f6
    .array-data 8
        0x1daf90614073ddebL
        0x5b61accdec086678L    # 1.5682234980104595E132
    .end array-data

    :array_1f7
    .array-data 8
        -0x81c27bc071f3d7bL    # -3.276216417226994E269
        0x6fc8523456b8277eL    # 2.949919144361515E230
    .end array-data

    :array_1f8
    .array-data 8
        0x7a27f788fc43bbbeL
        0x1667cb7a379a328cL    # 9.714390863182303E-201
    .end array-data

    :array_1f9
    .array-data 8
        0x411b0a3cf9ac1176L    # 443023.2438204506
        0xd4e4b8f6f146f7cL
    .end array-data

    :array_1fa
    .array-data 8
        -0x74ed3e61f55505d2L    # -2.498338425638046E-255
        0x7a838701deff1740L    # 1.4178482807058142E282
    .end array-data

    :array_1fb
    .array-data 8
        0x46161cd97388f630L    # 4.37987009522578E29
        0x7dfe7609d194b65aL    # 7.968583312697272E298
    .end array-data

    :array_1fc
    .array-data 8
        -0x1fb0d15fb4b4c3c9L    # -8.361681107882972E155
        0x6acedd9bc7bcae26L    # 3.0967246471045178E206
    .end array-data

    :array_1fd
    .array-data 8
        0x77b8dae84494558aL    # 5.129225352221644E268
        0x46be61fa19cc34b3L    # 6.162348223133695E32
    .end array-data

    :array_1fe
    .array-data 8
        0x5277eaed9aa0c0caL    # 1.903171524518809E89
        0x733cf31a65cb7be0L
    .end array-data

    :array_1ff
    .array-data 8
        0x3033c0911a8610d7L    # 1.7058345035011186E-76
        0x4e027aae5f792f95L    # 6.227485905754115E67
    .end array-data

    :array_200
    .array-data 8
        0x64ddf1bbfe621160L    # 7.583876617810895E177
        -0x6f81ab304f8cb2c6L
    .end array-data

    :array_201
    .array-data 8
        0x70895413c36689e4L    # 1.2583308956725117E234
        0x21f99471c84dda55L    # 5.121300765005217E-145
    .end array-data

    :array_202
    .array-data 8
        0x1c2bf20b98bce7c8L
        0x1ea76ba631a32c81L    # 5.205813166727253E-161
    .end array-data

    :array_203
    .array-data 8
        0xaf347891f7c480fL
        0x3d5a259d8b1354f1L    # 3.715702969405679E-13
    .end array-data

    :array_204
    .array-data 8
        -0x6b79aa6a9a929b66L    # -8.491914001132611E-210
        0x30e01f81ec775465L    # 2.851668048567624E-73
    .end array-data

    :array_205
    .array-data 8
        -0x241a197677e68c49L    # -4.9744242799343154E134
        0x4f7cdc2a4d6fca65L    # 8.158598797261304E74
    .end array-data

    :array_206
    .array-data 8
        0x7f2ee012ae1cda5cL    # 4.2346411091893464E304
        0x1811e78969d04f00L    # 9.810780025242902E-193
    .end array-data

    :array_207
    .array-data 8
        0x2bf68d9d7bb08bd4L    # 6.599169339830491E-97
        0x2b880779e4eaa927L    # 5.493015372153008E-99
    .end array-data

    :array_208
    .array-data 8
        0x78751bf5a143fa65L    # 1.7843014038029717E272
        0x1402781e3541ed29L
    .end array-data

    :array_209
    .array-data 8
        -0x5b1ff7e59045ae28L
        0x349bbbd439da7f29L    # 2.8276700406772337E-55
    .end array-data

    :array_20a
    .array-data 8
        0x686b4e9833c8fd61L    # 9.966928897324005E194
        -0x2fba40441fa72a47L    # -5.036715153700644E78
    .end array-data

    :array_20b
    .array-data 8
        -0x1b501ca582899cc2L    # -1.0095227464048995E177
        0x29655f17495cb706L
    .end array-data

    :array_20c
    .array-data 8
        -0x66c9304f09ebc939L    # -3.276669411261442E-187
        -0x2f6839df27921defL    # -1.7618137787670303E80
    .end array-data

    :array_20d
    .array-data 8
        0x14e60b08a87c772eL    # 5.363962002611191E-208
        0x4ece61d4459ce3adL    # 4.193797201466587E71
    .end array-data

    :array_20e
    .array-data 8
        0x1c473cc6e83eab61L
        -0x53b5482ca100643bL    # -2.501707039183695E-95
    .end array-data

    :array_20f
    .array-data 8
        0x1408a7351333ada1L    # 3.661554875874847E-212
        -0xeb0f1c3d2a7e426L    # -6.319556495053538E237
    .end array-data

    :array_210
    .array-data 8
        0x6755472eb925cf7cL    # 5.925285040670126E189
        0x391d8536cc8b5b9fL    # 1.4213539894141286E-33
    .end array-data

    :array_211
    .array-data 8
        -0x321f9978df7333e1L    # -1.3817393390913417E67
        0x1000b22bc09e2decL    # 1.344266146691757E-231
    .end array-data

    :array_212
    .array-data 8
        -0x21aeeee16a34720bL    # -2.1311394346243184E146
        0x5fc16a9376d12abaL    # 1.8243326133669745E153
    .end array-data

    :array_213
    .array-data 8
        -0x67ddf1319fb3c20cL
        -0x2145312c2b4fbd01L    # -2.1424021687183194E148
    .end array-data

    :array_214
    .array-data 8
        -0x43bf879e851fee36L    # -1.785706719913731E-18
        -0xc860071b315605L
    .end array-data

    :array_215
    .array-data 8
        -0x657b9027baef733L
        0x5e6c02c2160fa08cL    # 6.9954074552178E146
    .end array-data

    :array_216
    .array-data 8
        -0x64ff7643cf64126L
        -0x17e1bcf10d784292L    # -3.4517083845210062E193
    .end array-data

    :array_217
    .array-data 8
        -0x456538448b09fedfL    # -2.1632876605582712E-26
        0x2dfbb5182e0235aL
    .end array-data

    :array_218
    .array-data 8
        0x38be3159355f52b5L    # 2.2714513656957613E-35
        0x2909d71e021df6caL    # 5.372410480283734E-111
    .end array-data

    :array_219
    .array-data 8
        -0x1cd7ea93ec60a1fcL    # -4.544545238165544E169
        -0x78b77f40eca4332dL
    .end array-data

    :array_21a
    .array-data 8
        0x68dc63da4c792de6L    # 1.3263658598187599E197
        0x66352cc9f8579d81L    # 2.2493648125600805E184
    .end array-data

    :array_21b
    .array-data 8
        -0x1bbc9a2a67a0c13L    # -1.692009355550025E300
        0xe5ee30e9ac9edfbL
    .end array-data

    :array_21c
    .array-data 8
        0x251bdc736aef87edL    # 6.28030454585016E-130
        0x4d709108a1cb1b3eL    # 1.0904125487485606E65
    .end array-data

    :array_21d
    .array-data 8
        -0x5319d2ba1f143ca3L    # -2.126332367302455E-92
        0x16dabcb3107a6f7bL
    .end array-data

    :array_21e
    .array-data 8
        0x58f91f5fa8a39624L    # 4.054544401240945E120
        -0x3a28700006285b19L    # -2.9168961721308133E28
    .end array-data

    :array_21f
    .array-data 8
        -0x4bee0abdd0b07eeeL    # -7.152202523965143E-58
        -0x7166c35d5e5846cbL
    .end array-data

    :array_220
    .array-data 8
        -0x241f72aa5c7ad856L    # -3.7595932880370725E134
        -0x67a1606beb0d435dL
    .end array-data

    :array_221
    .array-data 8
        -0xca46c1700c76723L    # -4.820539672315747E247
        -0x872447391ce685dL    # -7.669714881575958E267
    .end array-data

    :array_222
    .array-data 8
        0x2205be2e8bb72380L
        0xb02c86217910909L
    .end array-data

    :array_223
    .array-data 8
        -0x3f43ca4f680aeab9L    # -7221.68981868524
        0x627a073bd8c7def9L    # 2.398185148291159E166
    .end array-data

    :array_224
    .array-data 8
        -0x557b4308f6d5f1acL
        -0x6ce0e91f93b7fcb0L
    .end array-data

    :array_225
    .array-data 8
        -0x336da62b40cef031L    # -7.372190847126889E60
        -0x6a941743b5c2ad09L
    .end array-data

    :array_226
    .array-data 8
        -0x2dbd57706e53001fL    # -1.8558552220411856E88
        0x2b124a4dc7939a91L
    .end array-data

    :array_227
    .array-data 8
        0x4a151f3d344f6ef3L    # 7.717469500042566E48
        0x385bca077e6a3732L    # 3.266602039699047E-37
    .end array-data

    :array_228
    .array-data 8
        -0x6da6dc861bcbb291L
        0x33d719bba83eb61dL    # 5.750195473749834E-59
    .end array-data

    :array_229
    .array-data 8
        -0x5fe0df564cf8c30fL    # -5.804004198321158E-154
        -0x9c67c5b879dcdf0L
    .end array-data

    :array_22a
    .array-data 8
        -0x69b25726e0fb3497L
        0x365c1ffc6596dfc2L    # 7.697547317539713E-47
    .end array-data

    :array_22b
    .array-data 8
        -0x1f1f96c55bed4e96L    # -4.506341790989245E158
        0x7d9b2cee98323c61L    # 1.110794026872925E297
    .end array-data

    :array_22c
    .array-data 8
        -0x3c17e2e203ef239bL    # -1.3900623997493783E19
        0x2fb5f0e770e82a8fL    # 7.401814312243053E-79
    .end array-data

    :array_22d
    .array-data 8
        -0x144f0bff1ab180e3L    # -5.573488334381713E210
        -0x6c0cf2ab06c8e0c5L    # -1.414833769808688E-212
    .end array-data

    :array_22e
    .array-data 8
        0x292c935e0146bbd4L    # 2.376444990708274E-110
        0xc0320498b95327dL    # 8.34796360652904E-251
    .end array-data

    :array_22f
    .array-data 8
        -0x35d2d36110b09d75L    # -2.1319143720551716E49
        -0x6ad6fbf26e0189aaL    # -9.739752932324732E-207
    .end array-data

    :array_230
    .array-data 8
        -0x47c49ebdeae71b23L    # -8.046233730921834E-38
        -0x6679d47157f07acaL
    .end array-data

    :array_231
    .array-data 8
        -0x1c0760f00364bf04L    # -3.806003334540964E173
        -0x642387bb94b18c39L
    .end array-data

    :array_232
    .array-data 8
        0x607a6dab22976e69L    # 5.669548982483681E156
        0x7441587c4958c7c4L    # 9.935206048382653E251
    .end array-data

    :array_233
    .array-data 8
        0x38d67c3d7d37a7fcL    # 6.766427827573458E-35
        0x4025f0eee3e554eeL    # 10.97057258772335
    .end array-data

    :array_234
    .array-data 8
        -0x606f1d45e5f2acfaL
        -0x62f95a4422d39666L    # -7.501200090642363E-169
    .end array-data

    :array_235
    .array-data 8
        0x4aaf8066e5d3a94eL    # 5.89306832290199E51
        -0x1dd896ae4544c747L    # -6.740856668467112E164
    .end array-data

    :array_236
    .array-data 8
        0xe0f42d223001f20L    # 5.860256311411554E-241
        -0x6be6122e475636dL
    .end array-data

    :array_237
    .array-data 8
        0x2e8365c799f3a8a3L    # 1.248126803986742E-84
        0x20d7b3095627e6bdL    # 1.8100010091389005E-150
    .end array-data

    :array_238
    .array-data 8
        -0x823a0a202ebbf94L
        -0x2ff46310a619ff97L    # -3.996712638364081E77
    .end array-data

    :array_239
    .array-data 8
        -0x50f26e6b154c486eL    # -4.870607220150169E-82
        -0x52956ab705bb103L    # -5.265305342252778E283
    .end array-data

    :array_23a
    .array-data 8
        -0x49db63e3da2ea300L    # -7.050900243208372E-48
        -0x62a441d849b8093eL    # -2.940441937111873E-167
    .end array-data

    :array_23b
    .array-data 8
        -0x5def63470b361e04L
        -0x331011c39e857012L    # -4.104840809390412E62
    .end array-data

    :array_23c
    .array-data 8
        0x57b30d3a2c6e1470L    # 2.932320220174493E114
        -0x77f2cd99ed66c2b5L    # -6.908284177739553E-270
        0x499fea6341225b3bL    # 4.5551433638080933E46
    .end array-data

    :array_23d
    .array-data 8
        0x49dbaa7161a32bfcL    # 6.317750176343452E47
        0xd416755945e551eL
    .end array-data

    :array_23e
    .array-data 8
        0x6b6ba58ba50091a9L    # 2.8403359305035944E209
        0x75e6e59c2f993b0bL    # 8.801227295874785E259
        0x74f5fd9089b4fd2L
    .end array-data

    :array_23f
    .array-data 8
        -0x4d121112779130c2L    # -2.2738703329519487E-63
        -0x76a454955ba69ae3L
        -0x1d989abb7e1da594L
        0x7adcb468c9f373eaL    # 6.669439041990566E283
    .end array-data

    :array_240
    .array-data 8
        0x6bdf5e83a62ea33aL    # 4.1251558923762227E211
        0x61e4215269e8ba62L    # 3.622554861257955E163
        0x30a01756603abc0eL    # 1.7787646086089747E-74
    .end array-data

    :array_241
    .array-data 8
        -0x42dd42a3795d12cdL    # -3.3288381977226403E-14
        0x4a76d97e5f2f52a1L    # 5.343152832674227E50
    .end array-data

    :array_242
    .array-data 8
        -0x6a7cb8c143d8b58cL    # -4.80376461225129E-205
        -0x1238cdc80160a461L    # -6.550629914259613E220
        -0x3dbc781e66878d9L    # -9.852840947325406E289
    .end array-data

    :array_243
    .array-data 8
        0x56688ebd9eb0f1eeL    # 1.802328887587182E108
        -0x79b4e683c94ae553L
        -0x90f0676eea65b86L    # -8.55223312141996E264
    .end array-data

    :array_244
    .array-data 8
        0x76d39e5d634b4f62L    # 2.471066876579748E264
        -0x300cb3830b214681L    # -1.3966539069175752E77
        -0x12208921b955c7bcL    # -1.777114095161349E221
    .end array-data

    :array_245
    .array-data 8
        0x26b90cdb572965a4L
        0x35b7aba3bbaff9fbL    # 6.326558918882084E-50
        0x6cd580b456d7fb22L
    .end array-data

    :array_246
    .array-data 8
        0x465d021dc1857b81L    # 9.193086622644499E30
        0x7b0dee2596f0ca6bL    # 5.563350536144022E284
        0x659ace1ad2ae939cL    # 2.7807041609860177E181
    .end array-data

    :array_247
    .array-data 8
        -0x7216398bff55f95L    # -1.655971607291633E274
        -0x441fb3833baba726L    # -2.761120527365494E-20
    .end array-data

    :array_248
    .array-data 8
        -0x24616db4a516a064L    # -2.169972917801456E133
        0x4a29a0f680d24b7dL    # 1.8728238330927732E49
        -0x927c0dedbecab0cL
    .end array-data

    :array_249
    .array-data 8
        0x42c01d0c5f792610L    # 3.5433895359052125E13
        -0x57523f471bcc294fL    # -9.665399008021457E-113
        0x46c51c02cfb681e3L    # 8.56299720613231E32
    .end array-data

    :array_24a
    .array-data 8
        -0xf4add72ae91730eL    # -8.399979906285643E234
        -0x4063e076f712dacaL    # -0.02746404759389983
    .end array-data

    :array_24b
    .array-data 8
        -0x22a4b8e3f491ec31L    # -5.1974087029842304E141
        -0x5245813592ced888L    # -2.081084602652372E-88
    .end array-data

    :array_24c
    .array-data 8
        -0x1739d5d878b462b1L    # -5.177598508520409E196
        0x1803a447090a972aL    # 5.381360153232989E-193
    .end array-data

    :array_24d
    .array-data 8
        -0x35bde872496acd11L    # -5.288299313992802E49
        -0x4f9f1934f72cd29aL
    .end array-data

    :array_24e
    .array-data 8
        0x34caafb5742a280bL    # 2.1767080069035727E-54
        0x178d786f7d9cf66dL
        -0x38a2a450289eea7L
    .end array-data

    :array_24f
    .array-data 8
        0x5fdf0ac4376c8e79L    # 6.5032176820865064E153
        0x183063fa1af8010cL    # 3.592492796820573E-192
        0x6443908f1e8ebf35L    # 9.677882211851631E174
    .end array-data

    :array_250
    .array-data 8
        -0x1a3aab310bf438b9L    # -1.7702898063717903E182
        0x27da868e51d05863L
        0x5499ecbfa92d2eefL    # 3.5440022827116314E99
    .end array-data

    :array_251
    .array-data 8
        -0x443b4e5715be4e18L
        -0x50c0a69dd32bc10cL    # -4.131112372599339E-81
        0x69cde6114bb36ff8L
    .end array-data

    :array_252
    .array-data 8
        0x168f85fc5e5309L    # 3.137442894697E-308
        -0x272ce9a5cd97ab8bL    # -7.701283393990206E119
        0x6917e0141e0bd950L
    .end array-data

    :array_253
    .array-data 8
        -0x589e9f7a9fe652beL    # -5.383533265136538E-119
        -0x612851c2ff8332c4L
        -0xa1e37ddea4d5893L    # -6.835043236482072E259
    .end array-data

    :array_254
    .array-data 8
        0x4a937cc6918af4f1L    # 1.8227759482230163E51
        -0x1a667f6729df56eaL    # -2.6455581021826945E181
        0x7be383cf96683c22L    # 5.943084210540104E288
    .end array-data

    :array_255
    .array-data 8
        -0x543e5a44faaf8f94L    # -6.45463631959517E-98
        0x70f049949f1c73a0L
        0xf8aac87271a3053L    # 8.389199131296393E-234
    .end array-data

    :array_256
    .array-data 8
        0xca9c73f78d09effL
        -0x1da4c391e0c74eeL    # -4.541826440540538E299
        0x7076a9130c21e8ffL    # 5.628920604250676E233
    .end array-data

    :array_257
    .array-data 8
        -0x2a20f5a7b8c72a54L
        0x3c0654aa4bcd67ffL    # 1.513188684076488E-19
        0x43b4117f905d704eL    # 1.44607721338229914E18
    .end array-data

    :array_258
    .array-data 8
        -0xee5f33c9ab15554L    # -6.626160397776322E236
        0x4356b1af6a7a3c6dL    # 2.5551265805693364E16
        -0x379342a4613581aaL    # -7.823684867734126E40
    .end array-data

    :array_259
    .array-data 8
        0x4c45c2fb42f5e213L    # 2.7320013735731114E59
        0x76125888c267baaeL    # 5.641489546654186E260
    .end array-data

    :array_25a
    .array-data 8
        0x7d678254584f9566L
        -0x28aa3ae8ec19910aL    # -5.23545581152426E112
    .end array-data
.end method

.method private synthetic lambda$dialogAddServer$8(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onCreate$0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_listview:Landroid/widget/ListView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lconfig/ConfigUtil;->setServerSelectedName(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Lconfig/ConfigUtil;->setServerSelectedPosition(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 20
    .line 21
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 p3, 0x3

    .line 24
    new-array p3, p3, [J

    .line 25
    .line 26
    fill-array-data p3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setSelectedServer()V

    .line 40
    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setResult(IZ)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Landroid/content/Intent;

    .line 48
    .line 49
    const-class p2, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 50
    .line 51
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    const/high16 p2, 0x7f160000

    .line 55
    .line 56
    const p3, 0x7f160001

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x59eb53e4cb7f1c6dL    # -3.053869002058673E-125
        -0x6c2835177f034365L    # -4.417180726881991E-213
        0x37738930c3ad42a0L    # 1.401632109506958E-41
    .end array-data
.end method

.method private synthetic lambda$onPrepareOptionsMenu$10()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lconfig/ConfigUtil;->setServerSelectedPosition(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->loadServers()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lconfig/ConfigUtil;->setServerSelectedName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 24
    .line 25
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    new-array v3, v3, [J

    .line 29
    .line 30
    fill-array-data v3, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setSelectedServer()V

    .line 44
    .line 45
    .line 46
    const/4 v0, -0x1

    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, v0, v2}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setResult(IZ)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Landroid/content/Intent;

    .line 52
    .line 53
    const-class v2, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 54
    .line 55
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    const/high16 v2, 0x7f160000

    .line 59
    .line 60
    const v3, 0x7f160001

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v2, 0x4

    .line 72
    new-array v2, v2, [J

    .line 73
    .line 74
    fill-array-data v2, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        -0xe95dff93d9d59b4L    # -2.1264961522382104E238
        0x390cdff56e476c04L    # 6.951364567830298E-34
        -0x66c8b3bc4009f623L    # -3.346567939866686E-187
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 8
        0x11d7702b19c4e53L
        0x3333f4220d912a66L    # 4.850462314117436E-62
        -0x1b7722a4731effeeL    # -1.967933069095827E176
        0x3be14b6ddbd2ec1fL    # 2.929826835468263E-20
    .end array-data
.end method

.method private synthetic lambda$onPrepareOptionsMenu$11(Landroid/view/MenuItem;)Z
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v4, v3, [J

    .line 22
    .line 23
    const-wide v5, 0x94aff1bf2613de0L    # 6.69794534118299E-264

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    aput-wide v5, v4, v7

    .line 30
    .line 31
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v0, v2}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v1, v1, [J

    .line 46
    .line 47
    fill-array-data v1, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v2, v3, [J

    .line 60
    .line 61
    const-wide v4, 0xc38ab083d6a398eL

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    aput-wide v4, v2, v7

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v0, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    new-instance v0, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    .line 81
    .line 82
    const/4 v1, 0x7

    .line 83
    invoke-direct {v0, p0, v1}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v1, 0x3e8

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    return v3

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        0x5a9fab651fc2186cL    # 3.430042794599873E128
        -0x28c40bae995c0857L    # -1.6806917494097374E112
        0x2bedfc6ca914b201L    # 4.387028181080175E-97
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 8
        0x51c831914ceaff5L    # 4.793506599923203E-284
        0x5111ebb87efc397dL    # 3.3998192848590645E82
        -0x6f4e692bf05c6ef7L    # -2.900338737410993E-228
    .end array-data
.end method

.method private synthetic lambda$onPrepareOptionsMenu$12(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->isTunnelActive()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->showLINK()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return v0

    .line 39
    :array_0
    .array-data 8
        -0x75192a08a3f92e57L    # -3.802156920997072E-256
        -0x6724160fbbfab644L    # -6.265013957934727E-189
        0x1369762f5562b2ddL
        0x5770e880dd6cb409L    # 1.626507920718507E113
    .end array-data
.end method

.method private synthetic lambda$onPrepareOptionsMenu$9(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->dialogAddServer()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->reload()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1
.end method

.method private static synthetic lambda$reload$15(Landroid/widget/ListView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$showLINK$13(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v1, v1, [J

    .line 27
    .line 28
    fill-array-data v1, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p2, v0}, Lconfig/ConfigUtil;->setCustomS(Z)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->clipImport1()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 8
        -0x31f20f3a547b5d15L    # -1.0089934000828101E68
        0x7c8671279bdcdbcL
        -0x2b273946b1c090baL    # -5.419190366595562E100
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x5c5f9fa06e24a8efL    # -4.400600711882867E-137
        -0x65ec78ea261c77e9L    # -4.595716517141349E-183
        -0x69018a97431e143bL    # -6.366682884775233E-198
    .end array-data
.end method

.method private static synthetic lambda$showLINK$14(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadAppColors(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->setStatusBarColor(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->setNavBarColor(I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a03df

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private processImportData(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 37
    .line 38
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v3, v0, [J

    .line 41
    .line 42
    fill-array-data v3, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2, p1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v1}, Lconfig/ConfigUtil;->setServerSelectedPosition(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v3, v0, [J

    .line 71
    .line 72
    fill-array-data v3, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p1, v2}, Lconfig/ConfigUtil;->setServerSelectedName(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->loadServers()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Lconfig/ConfigUtil;->setServerSelectedName(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lconfig/ConfigUtil;->setServerSelectedPosition(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 107
    .line 108
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v0, v0, [J

    .line 111
    .line 112
    fill-array-data v0, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setSelectedServer()V

    .line 126
    .line 127
    .line 128
    const/4 p1, -0x1

    .line 129
    invoke-direct {p0, p1, v1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setResult(IZ)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Landroid/content/Intent;

    .line 133
    .line 134
    const-class v0, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 135
    .line 136
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .line 138
    .line 139
    const/high16 v0, 0x7f160000

    .line 140
    .line 141
    const v1, 0x7f160001

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    const p1, 0x7f13012f

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :array_0
    .array-data 8
        0x5802d27ed5c6b3d6L    # 9.2704290799387E115
        -0x278e71eaee22e889L    # -1.106724117390738E118
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
    .array-data 8
        -0x1ff0a35dd2f9776cL    # -5.256170698323598E154
        -0x30443d823034eb9eL    # -1.2556083562704288E76
        -0x28eafd2587daedfdL    # -3.1581165616124955E111
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        -0xcd3e37671fb3906L
        -0x117d6fc19541b3f6L
        -0x6967fdcac6b14fa2L    # -7.841337907968167E-200
    .end array-data

    :array_3
    .array-data 8
        -0x1559b1bb1364020aL    # -5.594788531304858E205
        0x5b8d31088919315fL    # 1.0360126535197499E133
        -0xe8b494ab547451eL    # -3.372052633315996E238
    .end array-data
.end method

.method private reload()V
    .locals 5

    .line 1
    const v0, 0x7f0a035d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ListView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 16
    .line 17
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getServerSelectedPosition()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v3, L딠딁땔땸두듬돳들득딅딌딄땥된듽돳딻땤땁도땃땤땠돷땵땫됩땸딻듻뒘됐된돷땣딜돝딜돨딤딜땮득따돶뎹딎딄땐되되따뎽든딁들뎠디듸든됫뒛뎠따딌뒐듸땳딤땱뒻듻땮땣땨뒀땪뒹딨뒙된뒀뎠둠됩딠돼딀돤딨딝땳따땹들돵뒻돨땩뒋디뒨됴딠땜딅돸딤뒻됐딽땻뎹돴딌뒋될뒷뒈듸딽득땔뒙땅딞둔됐딻뒙;

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-direct {v3, v0, v1, v4}, L딠딁땔땸두듬돳들득딅딌딄땥된듽돳딻땤땁도땃땤땠돷땵땫됩땸딻듻뒘됐된돷땣딜돝딜돨딤딜땮득따돶뎹딎딄땐되되따뎽든딁들뎠디듸든됫뒛뎠따딌뒐듸땳딤땱뒻듻땮땣땨뒀땪뒹딨뒙된뒀뎠둠됩딠돼딀돤딨딝땳따땹들돵뒻돨땩뒋디뒨됴딠땜딅돸딤뒻됐딽땻뎹돴딌뒋될뒷뒈듸딽득땔뒙땅딞둔됐딻뒙;-><init>(Landroid/widget/ListView;II)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0x1f4

    .line 33
    .line 34
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private setResult(IZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        0x40eab8d783c3e6bbL    # 54726.73483462395
        0x2de33779147019d4L    # 1.2075076300222707E-87
        -0x2ad7b5127c372957L    # -1.700294290086583E102
    .end array-data
.end method

.method private setSelectedNetwork(Z)V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const v2, 0x7f0a03fc

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Landroid/widget/ImageView;

    .line 11
    .line 12
    const v3, 0x7f0a03fd

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/widget/TextView;

    .line 20
    .line 21
    const v4, 0x7f0a03f2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/widget/TextView;

    .line 29
    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->getNetworkSelectedJson()Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v7, v1, [J

    .line 37
    .line 38
    fill-array-data v7, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v8, v1, [J

    .line 55
    .line 56
    fill-array-data v8, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->getIcon(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->getNetworkSelectedJson()Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v4, v0, [J

    .line 96
    .line 97
    fill-array-data v4, :array_2

    .line 98
    .line 99
    .line 100
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    sget v3, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 112
    .line 113
    iput v3, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 114
    .line 115
    const v3, 0x7f0a03f0

    .line 116
    .line 117
    .line 118
    if-nez v2, :cond_1

    .line 119
    .line 120
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 121
    .line 122
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    .line 132
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/TextView;

    .line 137
    .line 138
    const v2, 0x7f13029a

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :catch_0
    move-exception p1

    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_0
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 150
    .line 151
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 152
    .line 153
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/TextView;

    .line 158
    .line 159
    const v2, 0x7f130248

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :cond_1
    const/4 v4, 0x1

    .line 168
    const v5, 0x7f13024b

    .line 169
    .line 170
    .line 171
    if-ne v2, v4, :cond_3

    .line 172
    .line 173
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 174
    .line 175
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    .line 185
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/widget/TextView;

    .line 190
    .line 191
    const v2, 0x7f13029b

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_2
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 200
    .line 201
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 202
    .line 203
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/widget/TextView;

    .line 208
    .line 209
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :cond_3
    if-ne v2, v1, :cond_5

    .line 215
    .line 216
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 217
    .line 218
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_4

    .line 227
    .line 228
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Landroid/widget/TextView;

    .line 233
    .line 234
    const v2, 0x7f13029c

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :cond_4
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 243
    .line 244
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 245
    .line 246
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/widget/TextView;

    .line 251
    .line 252
    const v2, 0x7f13024c

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_5
    if-ne v2, v0, :cond_7

    .line 261
    .line 262
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 263
    .line 264
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_6

    .line 273
    .line 274
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Landroid/widget/TextView;

    .line 279
    .line 280
    const v2, 0x7f13029e

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_6
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 289
    .line 290
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 291
    .line 292
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Landroid/widget/TextView;

    .line 297
    .line 298
    const v2, 0x7f13024e

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_7
    const/4 v0, 0x4

    .line 307
    if-ne v2, v0, :cond_9

    .line 308
    .line 309
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 310
    .line 311
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_8

    .line 320
    .line 321
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Landroid/widget/TextView;

    .line 326
    .line 327
    const v2, 0x7f13029f

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_8
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 336
    .line 337
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 338
    .line 339
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_1

    .line 349
    .line 350
    :cond_9
    const/4 v0, 0x5

    .line 351
    if-ne v2, v0, :cond_b

    .line 352
    .line 353
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 354
    .line 355
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_a

    .line 364
    .line 365
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Landroid/widget/TextView;

    .line 370
    .line 371
    const v2, 0x7f13029d

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :cond_a
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 380
    .line 381
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 382
    .line 383
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Landroid/widget/TextView;

    .line 388
    .line 389
    const v2, 0x7f13024d

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :cond_b
    const/4 v0, 0x6

    .line 398
    if-ne v2, v0, :cond_c

    .line 399
    .line 400
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Landroid/widget/TextView;

    .line 405
    .line 406
    const v2, 0x7f130299

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 410
    .line 411
    .line 412
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->HYSTERIA_UDP:I

    .line 413
    .line 414
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 415
    .line 416
    goto/16 :goto_1

    .line 417
    .line 418
    :cond_c
    const/4 v0, 0x7

    .line 419
    if-ne v2, v0, :cond_e

    .line 420
    .line 421
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 422
    .line 423
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_d

    .line 432
    .line 433
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Landroid/widget/TextView;

    .line 438
    .line 439
    const v2, 0x7f13031b

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 443
    .line 444
    .line 445
    goto :goto_0

    .line 446
    :cond_d
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 447
    .line 448
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 449
    .line 450
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    check-cast v0, Landroid/widget/TextView;

    .line 455
    .line 456
    const v2, 0x7f13024a

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 460
    .line 461
    .line 462
    :goto_0
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 463
    .line 464
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 465
    .line 466
    goto :goto_1

    .line 467
    :cond_e
    const/16 v0, 0x8

    .line 468
    .line 469
    if-ne v2, v0, :cond_f

    .line 470
    .line 471
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    check-cast v0, Landroid/widget/TextView;

    .line 476
    .line 477
    const v2, 0x7f13032c

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 481
    .line 482
    .line 483
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->V2RAY:I

    .line 484
    .line 485
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 486
    .line 487
    goto :goto_1

    .line 488
    :cond_f
    const/16 v0, 0x9

    .line 489
    .line 490
    if-ne v2, v0, :cond_10

    .line 491
    .line 492
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    check-cast v0, Landroid/widget/TextView;

    .line 497
    .line 498
    const v2, 0x7f130249

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 502
    .line 503
    .line 504
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->DNSTT:I

    .line 505
    .line 506
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 507
    .line 508
    goto :goto_1

    .line 509
    :cond_10
    const/16 v0, 0xa

    .line 510
    .line 511
    if-ne v2, v0, :cond_11

    .line 512
    .line 513
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    check-cast v0, Landroid/widget/TextView;

    .line 518
    .line 519
    const v2, 0x7f13019e

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 523
    .line 524
    .line 525
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->DNSTT:I

    .line 526
    .line 527
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 528
    .line 529
    goto :goto_1

    .line 530
    :cond_11
    const/16 v0, 0xb

    .line 531
    .line 532
    if-ne v2, v0, :cond_12

    .line 533
    .line 534
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    check-cast v0, Landroid/widget/TextView;

    .line 539
    .line 540
    const v2, 0x7f13033e

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 544
    .line 545
    .line 546
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->WIREGUARD:I

    .line 547
    .line 548
    iput v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    .line 549
    .line 550
    goto :goto_1

    .line 551
    :cond_12
    const/16 v0, 0xc

    .line 552
    .line 553
    if-ne v2, v0, :cond_13

    .line 554
    .line 555
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    check-cast v0, Landroid/widget/TextView;

    .line 560
    .line 561
    const v2, 0x7f1301ce

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 565
    .line 566
    .line 567
    :cond_13
    :goto_1
    if-eqz p1, :cond_14

    .line 568
    .line 569
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 570
    .line 571
    const/4 v0, 0x0

    .line 572
    invoke-virtual {p1, v0}, Lconfig/ConfigUtil;->setServerSelectedPosition(I)V

    .line 573
    .line 574
    .line 575
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 576
    .line 577
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 578
    .line 579
    new-array v1, v1, [J

    .line 580
    .line 581
    fill-array-data v1, :array_3

    .line 582
    .line 583
    .line 584
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {p1, v0}, Lconfig/ConfigUtil;->setServerSelectedName(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :cond_14
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->loadServers()V

    .line 595
    .line 596
    .line 597
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setSelectedServer()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .line 599
    .line 600
    goto :goto_3

    .line 601
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 602
    .line 603
    .line 604
    :goto_3
    return-void

    .line 605
    :array_0
    .array-data 8
        0x49e92090c79119d9L    # 1.1476080415614914E48
        -0x69331faf5363f6eaL    # -7.54489815845424E-199
    .end array-data

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :array_1
    .array-data 8
        0x141bd7b3872b69a1L    # 8.270515620667376E-212
        0x4ef4fd38fd98e16cL    # 2.3177887240762665E72
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    :array_2
    .array-data 8
        0x5249d32e9acde375L    # 2.5686675417296906E88
        0x2ba142a752f1edbfL    # 1.5782704256179915E-98
        0x68b5b27cad73278aL    # 2.5342017197559425E196
    .end array-data

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    :array_3
    .array-data 8
        0x6569929a39b056f4L    # 3.3160679638078323E180
        0x3587442c48999039L    # 7.77316843534899E-51
    .end array-data
.end method

.method private setSelectedServer()V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f0a0355

    .line 1
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0356

    .line 2
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a03f1

    .line 3
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a02a8

    .line 4
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->getServerSelectedJson()Lorg/json/JSONObject;

    move-result-object v6

    .line 6
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_0

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v1, [J

    fill-array-data v9, :array_1

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    invoke-virtual {v3, v7}, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->getFlag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    const v3, 0x7f080160

    .line 12
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v4, 0x7f06003c

    if-eqz v3, :cond_1

    const v0, 0x7f13003c

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 17
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_3

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v6, 0x7f060044

    const v7, 0x7f130246

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 20
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_4

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 23
    :cond_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_5

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 26
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_6

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 29
    :cond_5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_7

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 30
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 32
    :cond_6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_8

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 33
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 35
    :cond_7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_9

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 36
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 38
    :cond_8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_a

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 39
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 41
    :cond_9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_b

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v6, 0x7f060037

    const v7, 0x7f13005f

    if-eqz v3, :cond_a

    .line 42
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 44
    :cond_a
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_c

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 45
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 47
    :cond_b
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_d

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 48
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 50
    :cond_c
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_e

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v6, 0x7f060056

    const v7, 0x7f130244

    if-eqz v3, :cond_d

    .line 51
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 53
    :cond_d
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_f

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 54
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 56
    :cond_e
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_10

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 57
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 59
    :cond_f
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_11

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 60
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 62
    :cond_10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_12

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 63
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 65
    :cond_11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_13

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 66
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 68
    :cond_12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_14

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 69
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 71
    :cond_13
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_15

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 72
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 74
    :cond_14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_16

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 75
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 77
    :cond_15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_17

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 78
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 80
    :cond_16
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_18

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v6, 0x7f060330

    if-eqz v3, :cond_17

    const v0, 0x7f130187

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 83
    :cond_17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_19

    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v7, 0x7f130021

    if-eqz v3, :cond_18

    .line 84
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 86
    :cond_18
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_1a

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v6, 0x7f060019

    if-eqz v3, :cond_19

    .line 87
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 89
    :cond_19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_1b

    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const v7, 0x7f1300ae

    if-eqz v3, :cond_1a

    .line 90
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 92
    :cond_1a
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_1c

    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 93
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 95
    :cond_1b
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1d

    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 96
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 98
    :cond_1c
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_1e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const v3, 0x7f1301f6

    if-eqz v0, :cond_1d

    .line 99
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 101
    :cond_1d
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x4

    new-array v6, v6, [J

    fill-array-data v6, :array_1f

    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f13031f

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 104
    :cond_1e
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_20

    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 105
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 107
    :cond_1f
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_21

    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 108
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 110
    :cond_20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_22

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x7f130245

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 113
    :cond_21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_23

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const v0, 0x7f1300a2

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 116
    :cond_22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_24

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x7f130093

    .line 117
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_23
    const v0, 0x7f130024

    .line 118
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 119
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    :array_0
    .array-data 8
        -0x44e010272099c023L    # -6.604396739218594E-24
        -0x3a4c4a0e65859a14L    # -6.100171699896478E27
    .end array-data

    :array_1
    .array-data 8
        0x4ed9328bf0657e69L    # 6.956255732201249E71
        0xc6b65be0c2abd4eL
    .end array-data

    :array_2
    .array-data 8
        0x4001c3a3ff5e0835L    # 2.2205276442118937
        0x13a57522d10d180L
        0x601f6dbbc467934fL    # 1.0534731344032821E155
    .end array-data

    :array_3
    .array-data 8
        0x2f072839ae882e42L    # 3.8144851543668685E-82
        0x5a22b47653bed49cL    # 1.5827207643931285E126
    .end array-data

    :array_4
    .array-data 8
        0x57caf32ea8d543b3L    # 8.295947946285827E114
        -0x5f9405b5a5240303L
    .end array-data

    :array_5
    .array-data 8
        -0xe7bf812c0b33f6eL    # -6.521814262505242E238
        0x582a6820d4812d61L    # 5.202394822302394E116
        0x4f82415af32672c7L    # 1.0321380057745906E75
    .end array-data

    :array_6
    .array-data 8
        -0x307cb9d30266579cL    # -1.0897417414380458E75
        -0x3aa3c4a5ece0c622L    # -1.3652081662619679E26
    .end array-data

    :array_7
    .array-data 8
        0x71fb1b06da1fe778L    # 1.1296272125149347E241
        -0xb8f3252f3aadc5bL    # -7.699705298557691E252
        0x15576cc3fea3869eL
    .end array-data

    :array_8
    .array-data 8
        -0x7da9475c9ad90488L
        0x60a990e6a0b14e78L    # 4.387638702329256E157
    .end array-data

    :array_9
    .array-data 8
        -0x400b8de3845559c9L    # -1.27785919482484
        0x29bbb5d08264ee23L
    .end array-data

    :array_a
    .array-data 8
        0x1372ef7a51cada31L    # 5.49286555257139E-215
        -0x6dd533c71ce2852bL    # -3.706733933996141E-221
    .end array-data

    :array_b
    .array-data 8
        0x59c36863e00b39e3L    # 2.56592496531161E124
        -0x408dc7e5941f83d0L    # -0.0044480354390819404
    .end array-data

    :array_c
    .array-data 8
        0x5e30f9089a907891L    # 5.29847748761672E145
        0x2bb453158a0d3768L    # 3.716912228268626E-98
        0xd576bfa802ab63dL
    .end array-data

    :array_d
    .array-data 8
        0x706408c856881b6bL    # 2.488289916241747E233
        -0x564fbc4a50f40f2aL    # -6.925354960012496E-108
    .end array-data

    :array_e
    .array-data 8
        -0x6c34fdd0e8564f59L
        -0x31bda329a961fc4fL    # -9.901118890491597E68
        0x32ba3eab25715d29L    # 2.4920926673303014E-64
    .end array-data

    :array_f
    .array-data 8
        -0x233f23862613ff74L
        0x67fab052ad5b2c81L    # 7.610368109117532E192
        0x3dcb1a7f5a60e343L    # 4.930098976399204E-11
    .end array-data

    :array_10
    .array-data 8
        -0x1661be85c54c2dd6L    # -5.789823952207254E200
        -0x188c16655d6ceb6dL    # -2.2180095423896284E190
    .end array-data

    :array_11
    .array-data 8
        0x56100cca86223400L    # 3.6810573134297355E106
        0x773642f56986ca6eL    # 1.794534136921213E266
    .end array-data

    :array_12
    .array-data 8
        0x546fdcae3a46b58fL    # 5.444551240009729E98
        -0x76432aa8df54e484L    # -9.156701274731983E-262
    .end array-data

    :array_13
    .array-data 8
        -0x1ddd811160b10112L    # -5.325512855874338E164
        -0x6af74a4b0827bf2eL
    .end array-data

    :array_14
    .array-data 8
        0x74c54bf0152c40d8L    # 3.122750469689327E254
        0x35031fc7cf7115f6L    # 2.4958170648521745E-53
    .end array-data

    :array_15
    .array-data 8
        0x2c06213392fa63b4L    # 1.2950507679039858E-96
        0x368d33e328421169L    # 6.394012108919455E-46
    .end array-data

    :array_16
    .array-data 8
        -0x4c3dc7b9f3be592cL    # -2.2676442207425073E-59
        -0x70ea6f856758db0L    # -3.7538749200294E274
        -0x7ab1f56ba00d509bL
    .end array-data

    :array_17
    .array-data 8
        0x271b820b9e85107fL
        0x415d7dac19eb6062L    # 7730864.404991241
    .end array-data

    :array_18
    .array-data 8
        -0x7edd2a567202902dL    # -3.433137532515878E-303
        0x4754be3bbd34f463L    # 4.308173120546552E35
    .end array-data

    :array_19
    .array-data 8
        -0x19a9051e52077eacL    # -9.764443450623068E184
        -0x53c77162555bcd7fL    # -1.149683630468058E-95
        0x63226dfba69c864dL    # 3.4776348837121074E169
    .end array-data

    :array_1a
    .array-data 8
        -0x8992c63ab716e4bL
        0x58c147cad9a0755eL    # 3.4861258979049644E119
    .end array-data

    :array_1b
    .array-data 8
        -0x111ae36c622cd10dL    # -1.5628902231515234E226
        0x6638886f4a4e9f0aL    # 2.606076168146138E184
    .end array-data

    :array_1c
    .array-data 8
        -0x2e7232bd5757ea86L    # -7.2368783313295034E84
        0x46a03c9375bf72e1L    # 1.6465894002706918E32
        -0x3372a581c349cc15L    # -5.896154720716793E60
    .end array-data

    :array_1d
    .array-data 8
        0x7298938f726edb16L    # 1.0488053787879363E244
        -0xb4343892cc46c8fL
        -0x36b5c6bce9dd60cfL    # -1.169615207602546E45
    .end array-data

    :array_1e
    .array-data 8
        -0x3a0c85396045d612L    # -9.645827378574355E28
        0x4360b75847cdd375L    # 3.7641515336375208E16
    .end array-data

    :array_1f
    .array-data 8
        -0x73487fcff8690916L
        -0x3f0f09df4b8c3b0aL    # -69474.04405571878
        0x5635b1ec7574a847L    # 1.9902994131422292E107
        -0xba1788e2c7daf8L
    .end array-data

    :array_20
    .array-data 8
        -0x37456440755e4428L    # -2.3179178034630237E42
        0x5931bffd171fe619L    # 4.583482068922646E121
    .end array-data

    :array_21
    .array-data 8
        0xeb09de9ef551596L
        0x4f25d2c453db5a75L    # 1.9279224036937896E73
    .end array-data

    :array_22
    .array-data 8
        0x6f86e9d96c6d8f1L    # 4.4104675279998346E-275
        0x49f5ae6abf969118L    # 1.980454959171574E48
    .end array-data

    :array_23
    .array-data 8
        0x60653e687212a456L
        0x611a50488b38a847L    # 5.7804027932757276E159
    .end array-data

    :array_24
    .array-data 8
        -0x2e7e76656a89b38eL    # -4.258698107630993E84
        -0x24894ed52584b27fL    # -4.0267255969249716E132
    .end array-data
.end method

.method private showLINK()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    const v1, 0x7f140002

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f08012e

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f130024

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/16 v2, 0x9

    .line 28
    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    new-array v3, v2, [J

    .line 48
    .line 49
    fill-array-data v3, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v3, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;

    .line 60
    .line 61
    const/4 v4, 0x5

    .line 62
    invoke-direct {v3, p0, v4}, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;-><init>(Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    const/4 v4, -0x1

    .line 66
    invoke-virtual {v0, v4, v1, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v2, v2, [J

    .line 72
    .line 73
    fill-array-data v2, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, L뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨;

    .line 84
    .line 85
    const/4 v3, 0x7

    .line 86
    invoke-direct {v2, v3}, L뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨;-><init>(I)V

    .line 87
    .line 88
    .line 89
    const/4 v3, -0x2

    .line 90
    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :array_0
    .array-data 8
        -0x5d7d45581e40c0eL
        0xb7d2414dd2446b0L
        -0x33c807493d91aa1eL    # -1.5047178710209965E59
        -0xc5a52f5b64a02b4L
        0x6f5096bed8607baeL
        -0x55a90cb777858584L    # -1.0006688191374203E-104
        -0x3dd2b465407c420cL    # -6.2911242177871E10
        -0x7571b009f154a1c5L    # -7.885937067748921E-258
        0x3c1a1b005419e49cL    # 3.537951420926441E-19
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        -0x1f15b6e36f1a88bdL    # -7.217810854677859E158
        -0x117f7316499425a1L    # -1.9144162054023943E224
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 8
        0x5c4b8bc10d9d5778L    # 4.0042874720786285E136
        0x528ea1dcb90285d4L    # 4.8749253597525314E89
    .end array-data
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$onCreate$0(I)V

    return-void
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$dialogAddServer$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$onPrepareOptionsMenu$9(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$onPrepareOptionsMenu$11(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$dialogAddServer$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$SaveFile$16(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$showLINK$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Landroid/widget/ListView;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$reload$15(Landroid/widget/ListView;I)V

    return-void
.end method

.method public static synthetic 뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$SaveFile$17(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$dialogAddServer$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$onPrepareOptionsMenu$12(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$dialogAddServer$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$dialogAddServer$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$dialogAddServer$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎰딎땻듔땥땣듽땩땲땱딞둠듌뎸듰땋뒻됩두땤뒝땰도됐돰땠뒘듌뎡땩둔뒨뒻됐딝땪뒨딨딤땔뎡뒙땅땋돸돴딟딄땠땮뎬듰뎡딻뎹뒐뎰땝둡둠딟뒷듌땧듔뒘땵득딠땧돰된뒐딹되듸딃땄땮딄딅땹들뎹뒵딌듼된돤딝돷뒛된뒵땜돴딟땧땀땜땤득땤듸딎돼뒙땔디땮돸뒈딟뎻득땭땡돴된돛땔돝득됫뎠듽뒛돛땡둥(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$onCreate$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic 뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$showLINK$13(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎸듸뒼둥딝땣득뒋땔땁딝듟땬딄땤뎹뒉딃돴듨뒙뒝뒉뒈뒤땄딤땻됫땳됴될뎹듸딸돛둬듼뎻땄땥듨딹들둥땃들둑들뎬듟뒐뎡뒼듰돴땔딌뒼뎠뒬돤딝땸듼듸든듟드둡됴딽딤땨땐돛땬돠되되땫뒋디땲딅땡돸뒘둡딨든땍됴땡뎨딌듬돰듻돵듰땰땵땩됐땋됐돛뒾딀됩땁둘딅딜도뒻뎡돼돛땲딃뎡땥땲듬딎뎠땜듰(Lcom/tknetwork/tunnel/activities/ServerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$dialogAddServer$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎸딀듽땐땱딨둘됴듨돛땐둔되땔돳된듨됩땨따듬땮뒐든듸뒹딝땟땬땋뎰뒵딽땩땵드땍딻뒛땰땮딐뒤땄돸뒐돤땻땵뎡딎땭딸뎡듻뎸뒛땟뎰뒉땡돨딄땄딤뎠둣뒈땠땭뒉땀뒀뒘딃땤뎡뒘뎡땪돳됫돤뎸땡됴땪돳땭딤딹뒹듌뒬둑땸듨땰둠뒋땬딻땥돶딎땥두뒵뒝딅딝뒹뒾딃뒝땣뒵뎬딹땄딁돷뎬땅땃뒾뒼뎨땸땥(Lcom/tknetwork/tunnel/activities/ServerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->lambda$onPrepareOptionsMenu$10()V

    return-void
.end method

.method public static bridge synthetic 뎸딜둠딎뎬딻돰딃뒨땀듌딤뒋뎻땍뒵될뒼땸둘땤듰딌딻둔땱땁따땮땬뒀뒛땫딻땮땮드땹땥땬땠듬땯득땐땐땋딐뒉돴땬뒨듌땯뎹땱될듟땭땮뒹돸딞딐돨뒘딃듰되뎰듐뒵디딨디땜땋뎠뒬디딤듬딠듼뒬뒹뒵딤땥둘둘땄딠뎹듽듔뒻뎻뎻돝딨따땟둣듻딄뒙돶땭땄듽딟땯뒾디딄둬뒀딅뒐듽뎠듬돛땤디둥딨딤땮(Lcom/tknetwork/tunnel/activities/ServerActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->ckMultiCert:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎸딞돵뎡뎬땃뒵딸돵땱둘뒹득뒛땩뒵뒾듸듟딅땫돝돛땔뒵땱둡딁땔되땄듔뒷딠땐듬뎬땱딀딄땰둘땡땡됩뒹돵뒈땥딽뒉땬땧딽둔듔뒀땠딨딜땭뒻돠딜땤도둬된땭됐드도땔땦땻디됨돰뒼땟듻뎬뎡뎽땍뒬딠뎬땦두뒛돴돴둑됫드둣든땥디땧됩됨두딠딨땃둠돵뎸뒨뎸뎹땡뒙땨딝되땁됨돼땲돼뎽땮땠딄딁땄땸(Lcom/tknetwork/tunnel/activities/ServerActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static bridge synthetic 뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬(Lcom/tknetwork/tunnel/activities/ServerActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->etTcpPort:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static bridge synthetic 뎹뎠돰될딟딄딞뒨돳딠딃도득딄땟뒨뒷둑둑됫땦듬딁듻딟뒐땦됨딽득땝땄땱땜딃땡딜땤땹뎬딸뎠뒋뒝딸땹땍따땐돳딹듸돷돨듬땣땜듨땝딄땱땁땤돸뒻디됴됴돳뎠땠땹땡딹둑뒬듸듻뒵돼딸땻땁땮딽듬딐돸땦듐둬됴돝딅됨땍뎽뎠뎰땝뒙돸딹둡뒻뒈득돼딌뎻듨돨땻땠땟돵돷되돨땦돠딸됩딜땀딐뎽딎뎻뒉(Lcom/tknetwork/tunnel/activities/ServerActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->openvpn_udp_port:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static bridge synthetic 뎹뎹땀둔땯됨뒋딝듟땁딞땭땠뒷뎡듼딠됩뒋땃돶두됴돨땨딤땄뎰딀뎡듼땀뒀돝땲땋뒵뎠돳득딤땪땔딁듸돤뒵돷땦될듔땧돼되든딄뒨둬땱돳딨듻듽뒛뎸듬땜뒝뒉도땄땪따딃뒻듌뒘땭듰딐뒹두딞뒨딸됩듻땋땪딎든뒾둬땣딻딜듨땡뒷땭둡딅들뒾땲땧딐땃뒻딤돛딄둣두둣돵듟돛땥딄돷돴뒵뒈됐뒛땍뒤땱뒨(Lcom/tknetwork/tunnel/activities/ServerActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->v:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic 뎹돠듰뎽돼땃딄따듨뎬땻딽뎡듽딸뒝둡따땦돝딟뒉딸딞디듻뎬딨딅뒀딹됩돷뒤득딹뒻땔딀될딠딨듰땯뎽땦땄땄뒻뒀뎠뎹딻돷땦뒈뒷땭뎻뒾뒝땲땦뒛땍딐듌돳됩땫따땱땥듨딀뒹뒋되땀딜듬땁땸딜든듬뒝딅두땜뒈되땤됴땦돷뒻듰땡땧땮뒈든둣딌뒉돰딐뎰땹디득뒨딤땍듨뎻뒹됩땜돛되뒼땧뎹딜뎨뎨뒤딞(Lcom/tknetwork/tunnel/activities/ServerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ServerActivity;->ServerList(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic 뎹뒙땀듻돰땜뒐딽뒝딟뎹듰뎻뒻땀따뒻듟돝뒤땣뒐돸땪둥둠땟듟땡땬뒼듸될돨땨땹딞뒝돵돼든돨딹땍됐땔땯딜디땬둥딀땍뎡땪뒨땮뒘딎땨뒝뒬뎹된뒝뒷득들땧뒝딌딨땟돶딄딝뒵땫듸돛돼딄됫뎠돛듟땔딅돵따따땜뎰딃뒹둔듨돶땵듟뎸듰둘뒼땟돼땸뒤땧땲뒨땨땐땠디됩딞됨듻뒷됩땃딐듼됐땲딄딸뒐돨(Lcom/tknetwork/tunnel/activities/ServerActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setResult(IZ)V

    return-void
.end method


# virtual methods
.method public loadNetworks()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getNetworksArray()Lorg/json/JSONArray;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge v3, v4, :cond_1

    .line 26
    .line 27
    iget-object v4, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 40
    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v4, v0, [J

    .line 44
    .line 45
    fill-array-data v4, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    invoke-static {v2}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 80
    .line 81
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v0, v0, [J

    .line 84
    .line 85
    fill-array-data v0, :array_1

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_3

    .line 104
    .line 105
    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v2, Lorg/json/JSONObject;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    .line 120
    .line 121
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lorg/json/JSONObject;

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    new-array v2, v2, [J

    .line 150
    .line 151
    fill-array-data v2, :array_2

    .line 152
    .line 153
    .line 154
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void

    .line 169
    :array_0
    .array-data 8
        -0x61dd497048251fc9L    # -1.62479587782531E-163
        0x6ee248df2e6bec3fL    # 1.3536099643409792E226
        0x5f25b78e333b0f60L    # 2.2215083809835758E150
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        -0x3e8e059f46cdca84L    # -1.8851339574758038E7
        -0x4ef62fbd9d7177aeL    # -1.8262413219786114E-72
        -0x517ed58f7d14bf5cL    # -1.1045229681475636E-84
    .end array-data

    :array_2
    .array-data 8
        -0x264e02a4e9e446bbL    # -1.189217946883777E124
        -0x51bde73c982bf7e2L    # -7.277653778317188E-86
    .end array-data
.end method

.method public loadServers()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 3
    :cond_0
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    const-wide v7, 0x315cc2f44887ae8cL    # 6.511381893998646E-71

    aput-wide v7, v6, v3

    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v7, 0x7f120000

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 6
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 7
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_1
    move-object v6, v8

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    if-eqz v7, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_5
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 10
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v8, v6

    .line 11
    :goto_4
    iget v0, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->selectedServerType:I

    invoke-virtual {v1, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getServersArray(I)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v6, 0x0

    .line 12
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 13
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 14
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v5, [J

    fill-array-data v10, :array_0

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v6, :cond_2

    .line 15
    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 16
    :cond_2
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v2, [J

    fill-array-data v11, :array_1

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tknetwork/tunnel/utils/VPNUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 17
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_2

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_3

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_4

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_5

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 19
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_6

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_7

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 20
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_8

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_9

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_a

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_b

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_c

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_d

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_e

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_f

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_10

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_11

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 25
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_12

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_13

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_14

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_15

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 27
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_16

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_17

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_18

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_19

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 29
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_1a

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_1b

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_1c

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_1d

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 31
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_1e

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_1f

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 32
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_20

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_21

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 33
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_22

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_23

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_24

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_25

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 35
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_26

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_27

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 36
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_28

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_29

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 37
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_2a

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_2b

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 38
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_2c

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_2d

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 39
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_2e

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_2f

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 40
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_30

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_31

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 41
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_32

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_33

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 42
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v5, [J

    fill-array-data v12, :array_34

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_35

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 43
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 44
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v2, [J

    fill-array-data v12, :array_36

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_37

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v4, [J

    const-wide v15, -0x6ce62c53a433e31L    # -6.098435396115759E275

    aput-wide v15, v14, v3

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 46
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v12, v8

    .line 47
    :cond_3
    new-instance v13, Ljava/io/StringReader;

    invoke-direct {v13, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v12, Lcom/tknetwork/tunnel/core/ConfigParser;

    invoke-direct {v12}, Lcom/tknetwork/tunnel/core/ConfigParser;-><init>()V

    .line 49
    invoke-virtual {v12, v13}, Lcom/tknetwork/tunnel/core/ConfigParser;->parseConfig(Ljava/io/Reader;)V

    .line 50
    invoke-virtual {v12}, Lcom/tknetwork/tunnel/core/ConfigParser;->convertProfile()Lcom/tknetwork/tunnel/core/VpnProfile;

    move-result-object v12

    .line 51
    iget-object v13, v12, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnections:[Lcom/tknetwork/tunnel/core/Connection;

    aget-object v13, v13, v3

    .line 52
    iput-object v10, v13, Lcom/tknetwork/tunnel/core/Connection;->mServerName:Ljava/lang/String;

    .line 53
    iput-object v11, v13, Lcom/tknetwork/tunnel/core/Connection;->mServerPort:Ljava/lang/String;

    .line 54
    iput-boolean v4, v13, Lcom/tknetwork/tunnel/core/Connection;->mUseCustomConfig:Z

    .line 55
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_38

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    fill-array-data v13, :array_39

    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v9, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-virtual {v12, v1, v4}, Lcom/tknetwork/tunnel/core/VpnProfile;->getConfigFile(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v10

    .line 57
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 59
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 60
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 61
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 62
    iget-object v9, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_3a

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    add-int/2addr v6, v4

    goto/16 :goto_5

    .line 64
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_3b

    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 8
        0x454b5de33c04ba8L
        -0x318bd83fb3dad69cL    # -8.694163508758351E69
    .end array-data

    :array_1
    .array-data 8
        -0x47aca249d4f3bb21L    # -2.2764695203810235E-37
        0x6a64a88d8fff3b38L    # 3.2385004904691154E204
        -0x7847125b71804811L
    .end array-data

    :array_2
    .array-data 8
        0x514dfcc61922edfeL    # 4.5512175582305836E83
        -0x6145a95c0c7b1c5fL
    .end array-data

    :array_3
    .array-data 8
        -0x335a1452a788bc84L    # -1.7612534129129536E61
        0x9a7103e352fb8e6L
    .end array-data

    :array_4
    .array-data 8
        -0xfad55e2c15b8f0fL    # -1.1590795000268326E233
        0x6caad607a96637b0L    # 2.890983285761992E215
    .end array-data

    :array_5
    .array-data 8
        0x54e28c6d12105a7L
        0x2b89df890f7f8e74L
    .end array-data

    :array_6
    .array-data 8
        -0x126f09f71f36dc36L    # -5.987288352243885E219
        -0x6e0a926300627a11L
    .end array-data

    :array_7
    .array-data 8
        0x241b1506147e449bL    # 9.315038920935358E-135
        0x71ea8d9fe70a78c3L    # 5.533039437234034E240
    .end array-data

    :array_8
    .array-data 8
        0x2e9e7eb054b9bc0eL    # 3.9243535296912684E-84
        0x5c94c2cf9182a634L    # 9.657525779912782E137
    .end array-data

    :array_9
    .array-data 8
        -0x16fb775fc92a635L    # -4.361939004779871E301
        -0x63af7c8b1bede9ebL
    .end array-data

    :array_a
    .array-data 8
        -0x4451845e13b93fe8L    # -3.2275067605177144E-21
        0x2cec5adb098022b3L    # 2.7186890151089292E-92
    .end array-data

    :array_b
    .array-data 8
        0x632441748eaf3be5L    # 3.822209661341265E169
        -0x284fb0b2e0ec2662L    # -2.51030343535272E114
    .end array-data

    :array_c
    .array-data 8
        0x74e6e5fcc61efa2L
        -0x7d69d64ea9c6ab13L
    .end array-data

    :array_d
    .array-data 8
        0x4cf8fdd25b531e36L    # 6.42556443735239E62
        0x570d49c22fdd0d88L    # 2.2011006516516694E111
    .end array-data

    :array_e
    .array-data 8
        -0x9ed49cbdb31104cL    # -5.75400556654928E260
        -0x38d5a89cd70ea9f3L    # -6.8386072108335E34
    .end array-data

    :array_f
    .array-data 8
        -0x2716352e9e6f6229L    # -2.0813141728909216E120
        0x654ebaa12beb28e6L    # 9.961762055013687E179
    .end array-data

    :array_10
    .array-data 8
        -0x6f63548a04df8ccL
        -0x6023c0197be22060L
    .end array-data

    :array_11
    .array-data 8
        -0xe5df86b9a0b3596L    # -2.348079828430456E239
        0x73be094c923ab148L    # 3.3601852158388164E249
    .end array-data

    :array_12
    .array-data 8
        -0xe589234ebe6e352L    # -3.0512521458394977E239
        -0x249350360891f9eaL    # -2.5452376263780488E132
    .end array-data

    :array_13
    .array-data 8
        0x549849a2d376c23eL    # 3.320197493442416E99
        0x5d91bdc8630528cbL    # 5.408593654547127E142
    .end array-data

    :array_14
    .array-data 8
        -0x58a9856266cde1c0L
        0x790dbc63dae8ddd6L    # 1.2869068918609522E275
    .end array-data

    :array_15
    .array-data 8
        0x1a9387206f075423L
        0x4e5487739d2b7821L    # 2.2138546141456995E69
    .end array-data

    :array_16
    .array-data 8
        -0x2b55e7ea807b0376L    # -7.134286386913232E99
        -0x36179f8da669359aL    # -1.1133328905999446E48
    .end array-data

    :array_17
    .array-data 8
        0x68da299e2a78a231L    # 1.2222993461706935E197
        0x36e7255adff00248L    # 3.243433919286964E-44
    .end array-data

    :array_18
    .array-data 8
        -0x597156266c8b5e96L    # -5.798199706974045E-123
        0x39a0661a6f377de2L    # 4.042626388582277E-31
    .end array-data

    :array_19
    .array-data 8
        0x2d87fa8f55fbc3L
        -0x4213a31ca0cc321fL    # -2.063668538148344E-10
    .end array-data

    :array_1a
    .array-data 8
        0x31998bba358aac31L    # 9.253386314312426E-70
        0x18c9762b83e62662L
    .end array-data

    :array_1b
    .array-data 8
        -0x77800f49823cbb77L    # -9.673478020525505E-268
        -0x3146d62ea8cc3b09L    # -1.7367106262499033E71
    .end array-data

    :array_1c
    .array-data 8
        -0x383e451961414342L    # -4.713464135063978E37
        0x3b5a152e0abb0d4aL    # 8.630052686676562E-23
    .end array-data

    :array_1d
    .array-data 8
        -0x65ae3fdd216031a3L    # -6.683962476166013E-182
        -0x150aac9d704aeb61L    # -1.71167296569072E207
    .end array-data

    :array_1e
    .array-data 8
        -0x2439d8ab311fd564L    # -1.2579782696008847E134
        0x782a41bef9aa4d2bL    # 6.935667285049397E270
    .end array-data

    :array_1f
    .array-data 8
        -0x61670159d1bc5efcL
        -0x365286b070a3fa7L
    .end array-data

    :array_20
    .array-data 8
        0x42414f8afc8ed57L
        0x6aa833e60dc7d2c3L    # 6.07059689602153E205
    .end array-data

    :array_21
    .array-data 8
        -0x6b174b4663c497cL
        -0x1f61895d871a3487L    # -2.6140648900055544E157
    .end array-data

    :array_22
    .array-data 8
        -0x5d94b509c133b00dL    # -6.994239149057629E-143
        0x467d27f3e6c5c397L    # 3.6959703793012128E31
    .end array-data

    :array_23
    .array-data 8
        0x3cf9d59c50ae597eL    # 5.736392789681245E-15
        -0x5534d666597473beL
    .end array-data

    :array_24
    .array-data 8
        0x4f5e6619abe88c1eL    # 2.1484032869382858E74
        -0x2c1f5977b51bc15eL    # -1.1114152747945873E96
    .end array-data

    :array_25
    .array-data 8
        -0x55f1a37c573daaa5L
        0x25f250ac344a0cfdL    # 6.764127271001935E-126
    .end array-data

    :array_26
    .array-data 8
        0x19fe15ffbd68cc8cL
        -0x7d8f3cc83df29a6aL    # -6.407739929999641E-297
    .end array-data

    :array_27
    .array-data 8
        0x2dc9b54f0c748eb9L    # 4.03853249295913E-88
        -0x3a62eb7c9e78b7e0L    # -2.2499660575757018E27
    .end array-data

    :array_28
    .array-data 8
        0x614fda501d4b6664L    # 5.597770843853196E160
        0x23eba1a4a0ad21a7L
    .end array-data

    :array_29
    .array-data 8
        0x4a24de34b5e72e1cL    # 1.5249302091240772E49
        -0x2de50fbae8d16fa3L    # -3.34929224448476E87
    .end array-data

    :array_2a
    .array-data 8
        -0x3e65eefa14cd2b2dL    # -1.0933081079963998E8
        -0x3bf5e3a6735dbb97L    # -6.020727055637474E19
    .end array-data

    :array_2b
    .array-data 8
        0x246dc7dcdcd07ec9L
        -0x5928abe03b1a95ebL    # -1.411596648984384E-121
    .end array-data

    :array_2c
    .array-data 8
        -0x4dccff546eac6005L    # -7.048462724975407E-67
        -0x2a3fd9f49ba99badL    # -1.1574005540384298E105
    .end array-data

    :array_2d
    .array-data 8
        -0x79cca0a8c519dadaL    # -8.537839905088101E-279
        0x6eead72d9de28034L    # 1.9870006397343405E226
    .end array-data

    :array_2e
    .array-data 8
        -0x23cf6e7c3efe9320L    # -1.2042566825405737E136
        -0x6751fd65c3e06900L    # -8.419399970091209E-190
    .end array-data

    :array_2f
    .array-data 8
        0x2f255c40bee9aa97L    # 1.4074073391972905E-81
        0x3c5467e187d1d171L    # 4.4247993014877215E-18
    .end array-data

    :array_30
    .array-data 8
        0x141e29fe37cb4dd2L
        -0x1a071fba9f7432d4L    # -1.6515774799825896E183
    .end array-data

    :array_31
    .array-data 8
        0x4ddff572cce5e5c3L    # 1.3462610691856267E67
        0x1cd0f8bfe830d2bL
    .end array-data

    :array_32
    .array-data 8
        0x27604d5cdba0bc54L
        -0x3a988ae33551c07eL    # -2.2686673474517402E26
    .end array-data

    :array_33
    .array-data 8
        0x48b88572a416419bL    # 2.1361048011423458E42
        0x30e4ba6875e7c3a3L    # 3.6661627467258466E-73
    .end array-data

    :array_34
    .array-data 8
        -0x6ac064c314306de1L    # -2.461149483474258E-206
        0x7efdafce969d00e2L    # 5.089536623816678E303
    .end array-data

    :array_35
    .array-data 8
        0x1d3af3debf16e855L    # 7.141729184616116E-168
        0x60610bddd5d43d3bL    # 1.828433889192382E156
    .end array-data

    :array_36
    .array-data 8
        0x6ed24419b934fd3dL    # 6.761150993558178E225
        0x6492bd1aa4516aadL    # 2.96617418872617E176
        0x45a225052bb3d42L
    .end array-data

    :array_37
    .array-data 8
        -0x6be15eb468014aa4L    # -9.098523157265502E-212
        -0x7a455026393860eeL
    .end array-data

    :array_38
    .array-data 8
        -0x2cfd10cd654aaa2fL    # -7.713996909871622E91
        -0x2ebae57256cb38a8L    # -3.202933458601223E83
    .end array-data

    :array_39
    .array-data 8
        -0x68f752fed780a540L    # -1.031582770783712E-197
        0x3dd6adde58ddb550L    # 8.25063543670734E-11
    .end array-data

    :array_3a
    .array-data 8
        -0x8236a5c4417f20aL
        0x357c0ba8803eebc8L    # 4.6849455776026225E-51
    .end array-data

    :array_3b
    .array-data 8
        -0x7dab934db018df3cL
        0x41c87a2fc11cbe77L    # 8.213216022245625E8
        -0x4808b290c72ea5ddL    # -4.279989324205078E-39
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d004c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v1, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 23
    .line 24
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    new-array v4, v3, [J

    .line 28
    .line 29
    fill-array-data v4, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    new-array v4, v4, [J

    .line 42
    .line 43
    fill-array-data v4, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    .line 58
    const v1, 0x7f140002

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 78
    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    new-instance p1, Lnet/openvpn/openvpn/PrefUtil;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 88
    .line 89
    invoke-direct {p1, v1}, Lnet/openvpn/openvpn/PrefUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 93
    .line 94
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 95
    .line 96
    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Landroid/os/Handler;

    .line 111
    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->mHandler:Landroid/os/Handler;

    .line 120
    .line 121
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 126
    .line 127
    const p1, 0x7f0a03df

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 155
    .line 156
    new-instance p1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listNetwork:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {p1, p0, v1}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

    .line 164
    .line 165
    new-instance p1, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    .line 171
    .line 172
    new-instance p1, Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->listProfiles:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {p1, p0, v1}, Lcom/tknetwork/tunnel/adapter/ServerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    .line 180
    .line 181
    const p1, 0x7f0a035d

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Landroid/widget/ListView;

    .line 189
    .line 190
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_listview:Landroid/widget/ListView;

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->loadServers()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->loadNetworks()V

    .line 196
    .line 197
    .line 198
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setSelectedServer()V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/activities/ServerActivity;->setSelectedNetwork(Z)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->config:Lconfig/ConfigUtil;

    .line 205
    .line 206
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getServerSelectedPosition()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_listview:Landroid/widget/ListView;

    .line 211
    .line 212
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->mHandler:Landroid/os/Handler;

    .line 216
    .line 217
    new-instance v2, L돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧;

    .line 218
    .line 219
    invoke-direct {v2, p0, p1, v3}, L돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧;-><init>(Ljava/lang/Object;II)V

    .line 220
    .line 221
    .line 222
    const-wide/16 v3, 0x1f4

    .line 223
    .line 224
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_listview:Landroid/widget/ListView;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->server_listview:Landroid/widget/ListView;

    .line 235
    .line 236
    new-instance v1, L딠땄따딀딜땬딹땩땍됩뎽돤딻딻두뒐땵도드따됴땤땨듌돵뎸딞땨땡땁땦뒤땦뎸돼땸든됩돰뒉땥뒾디뒝땟딌들둣땍둑돠뎸딄디듽둡뒐땧돸돛뒝뎬땵듟뎹땻땀땧돤뒙땋뎠둣땭됫땹듟될들딜땥뒙땫뒵듬딜땝딽돵땫뒉뎹들땫딽땅도땪될딄땋뒬따뒙득딃땠땯땥딻딄됩딨뒈돝뎠땝딁땋땮딌땤뎰듽됐땧돛돰땬뎨;

    .line 237
    .line 238
    invoke-direct {v1, p0, v0}, L딠땄따딀딜땬딹땩땍됩뎽돤딻딻두뒐땵도드따됴땤땨듌돵뎸딞땨땡땁땦뒤땦뎸돼땸든됩돰뒉땥뒾디뒝땟딌들둣땍둑돠뎸딄디듽둡뒐땧돸돛뒝뎬땵듟뎹땻땀땧돤뒙땋뎠둣땭됫땹듟될들딜땥뒙땫뒵듬딜땝딽돵땫뒉뎹들땫딽땅도땪될딄땋뒬따뒙득딃땠땯땥딻딄됩딨뒈돝뎠땝딁땋땮딌땤뎰듽됐땧돛돰땬뎨;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    new-instance v1, Lcom/tknetwork/tunnel/activities/ServerActivity$1;

    .line 249
    .line 250
    invoke-direct {v1, p0, v0}, Lcom/tknetwork/tunnel/activities/ServerActivity$1;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :array_0
    .array-data 8
        -0x41d04ff1accb133eL    # -3.688935956749473E-9
        -0x16a094786364a565L    # -3.757888180697998E199
        -0x562e2f867bc8b1b5L    # -3.03411218937768E-107
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_1
    .array-data 8
        -0x316bba19da1e0bd7L    # -3.497985016673482E70
        -0xa46e17719790b7eL
        -0xffb1eb53a302398L    # -4.052081378996003E231
        0x46d7c39dafc69c19L    # 1.9279748568829536E33
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0f0012

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0340

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0a0055

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, p0, v3}, L땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a0112

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, L땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v2, p0, v3}, L땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    const v1, 0x7f0a02db

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v1, L땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃;

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    invoke-direct {v1, p0, v2}, L땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    new-instance v0, Lcom/tknetwork/tunnel/activities/ServerActivity$3;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/activities/ServerActivity$3;-><init>(Lcom/tknetwork/tunnel/activities/ServerActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    const/4 p1, 0x0

    .line 76
    return p1
.end method

.method public onResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ServerActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    fill-array-data v3, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/activities/ServerActivity;->loadAppColors(I)V

    .line 42
    .line 43
    .line 44
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x438465f4b3826ed4L
        0xbe3245f332a8dbfL
        -0x1f81060135024d6bL    # -6.6452408540780416E156
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x15288df96ee3780fL    # 9.56017025556266E-207
        0x6c08c97c4d0c83a6L    # 2.6076653404570108E212
    .end array-data
.end method
