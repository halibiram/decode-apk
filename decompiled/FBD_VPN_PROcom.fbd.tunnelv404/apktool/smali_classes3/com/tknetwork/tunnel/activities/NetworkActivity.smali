.class public Lcom/tknetwork/tunnel/activities/NetworkActivity;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"


# static fields
.field public static final ASK_QUESTION_REQUEST:I = 0xfa3

.field private static final S_BIND_CALLED:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final UDP_CLI:Ljava/lang/String;

.field private a:Landroidx/appcompat/app/AlertDialog;

.field private btnPayloadGen:Landroidx/appcompat/widget/AppCompatImageView;

.field private ckMultiCert:Landroid/widget/CheckBox;

.field private ckUseDefProxy:Landroid/widget/CheckBox;

.field private config:Lconfig/ConfigUtil;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

.field private etNetworkBackQuery:Lcom/google/android/material/textfield/TextInputEditText;

.field private etNetworkFrontQuery:Lcom/google/android/material/textfield/TextInputEditText;

.field private etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

.field private etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

.field private etNetworkPayload:Lcom/google/android/material/textfield/TextInputEditText;

.field private etSSLInfo:Lcom/google/android/material/textfield/TextInputEditText;

.field private etSSLName:Lcom/google/android/material/textfield/TextInputEditText;

.field private etSSLPayload:Lcom/google/android/material/textfield/TextInputEditText;

.field private etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

.field private etSSLSNI:Lcom/google/android/material/textfield/TextInputEditText;

.field private etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

.field private etSquidProxy:Lcom/google/android/material/textfield/TextInputEditText;

.field private exit:Landroidx/appcompat/widget/AppCompatImageView;

.field private isFake:Landroid/widget/CheckBox;

.field private isReplace:Landroid/widget/CheckBox;

.field private l_add:Landroid/widget/RelativeLayout;

.field private l_info:Lcom/google/android/material/card/MaterialCardView;

.field private l_pro:Landroid/widget/RelativeLayout;

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

.field private mPref:Landroid/content/SharedPreferences;

.field private myPrefs:Landroid/content/SharedPreferences;

.field public networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

.field private p_layout:Landroid/widget/LinearLayout;

.field private payload_type:Landroid/widget/RadioGroup;

.field private prefs:Lnet/openvpn/openvpn/PrefUtil;

.field private proto_spin:Landroid/widget/Spinner;

.field private proto_type:Landroid/widget/Spinner;

.field private r_b:Landroid/widget/RadioButton;

.field private searchBar:Lcom/google/android/material/search/SearchBar;

.field private selectedServerType:I

.field public server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

.field private server_type:Landroid/widget/RadioGroup;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private udp:Landroid/widget/CheckBox;

.field private v:Landroid/view/View;


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

    sput-object v0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x3d20df133beacef4L    # 2.996960411098972E-14
        -0x6cf6aab4fa1a141cL    # -5.741201312718444E-217
        -0x65b90821548a8017L    # -4.324345411465844E-182
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
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/16 v1, 0x28

    .line 11
    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->UDP_CLI:Ljava/lang/String;

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        0x2717d745708b9e1eL
        -0x12ca7094d8a9dbf7L    # -1.1891872469135165E218
        -0x6ff7a8ee4e1e0d94L
        0x7ee137a4cf2b8319L    # 1.4758838294639285E303
        0x7e915a8a720dbf3dL    # 4.648653035155523E301
        0x62740687d45e6350L    # 1.845105533086521E166
        0x12e3a86ea09c0ac3L
        0x1ba9d8280f4c45a7L
        0x3f6f04ab3d223d73L    # 0.003786405993259906
        0x73f9d5eec14435f2L    # 4.6244087231526354E250
        -0x28ff944580097badL    # -1.2340794280048082E111
        0x4540bdacca08a927L    # 4.047705555429778E25
        0x54007d4fb9b64462L    # 4.402669181495757E96
        -0x1019b8aa2817782dL    # -1.0808754003520427E231
        -0xa73bdee0b4e1f3fL
        0x332644581b9849aeL    # 2.7064002125244333E-62
        -0x418444b9a6d50dbaL    # -1.0330804504471642E-7
        0x5aa2601e26c80c8bL    # 3.980396973914522E128
        0x54247e40cd508cc7L    # 2.188657945104154E97
        0x7dafaaab60629fcL
        -0x7519e0af1471000cL    # -3.683363120917812E-256
        0xe82200162eaeb33L    # 8.698251672817692E-239
        -0x4c73502973741d31L    # -2.2314851847094548E-60
        0x259d27c51ead59f1L
        -0x3533bc11f6e18441L    # -2.1150646578509445E52
        0x56fd3f20eb8308d3L    # 1.0989900203020939E111
        0x1ebd011f7622abc0L
        -0x43ce499892d76a5aL    # -9.601973980260868E-19
        -0x494fa92e613f6f90L    # -2.862000781781778E-45
        0x1119de4f115d6bdfL    # 2.729937699662215E-226
        0x6892d619d2994207L    # 5.500137217582536E195
        0x7286c3defab4ad6aL    # 4.857541003427826E243
        -0x34a80751dccf7df5L    # -9.184018632507665E54
        0x614005f92e845ee8L    # 2.8159217165138354E160
        0x3a9660e2facd4951L    # 1.8077178801167616E-26
        -0x2fb9529efed5d9bbL    # -5.2516949564584785E78
        0x64caf123657bfa3fL    # 3.41174395332243E177
        0x6429d8f48c1bed0bL    # 3.1964339876980246E174
        -0x2d58a5bdb7c7d413L    # -1.4865635357226495E90
        0x49997924a0a55009L    # 3.6356587536707157E46
    .end array-data
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
    invoke-direct {p0, v4}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->processImportData(Ljava/lang/String;)V
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
        0x15aa0002382bac0bL    # 2.591474062736381E-204
        0x508e36dbbc24cf70L    # 1.1195442588706834E80
        -0x18cab5d85e2510c0L    # -1.4821295555400736E189
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
        -0x32a2f422db4737cL
        0x6c750f54b3344a30L    # 2.8359133010865765E214
        0x7e6c869a891068e9L    # 9.551761071848438E300
        0x5cc37f12702baf4eL    # 7.255408845711507E138
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
        0x774abf4362a5dbccL    # 4.312243121247436E266
        0xc43128acefa9649L
        -0x441d134a00411ca2L    # -3.205960766170673E-20
        0x684fcb82f979a8e2L
    .end array-data
.end method

.method private dialogAddPayload()V
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0027

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

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
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->myPrefs:Landroid/content/SharedPreferences;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->myPrefs:Landroid/content/SharedPreferences;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 124
    .line 125
    const v2, 0x7f0a00b6

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/CheckBox;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 137
    .line 138
    const v2, 0x7f0a0150

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    .line 148
    .line 149
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 150
    .line 151
    const v2, 0x7f0a0211

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->l_pro:Landroid/widget/RelativeLayout;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 163
    .line 164
    const v2, 0x7f0a0210

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->l_info:Lcom/google/android/material/card/MaterialCardView;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 176
    .line 177
    const v2, 0x7f0a0301

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/Spinner;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_type:Landroid/widget/Spinner;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 189
    .line 190
    const v2, 0x7f0a0300

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroid/widget/Spinner;

    .line 198
    .line 199
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 202
    .line 203
    const v2, 0x7f0a035f

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Landroid/widget/RadioGroup;

    .line 211
    .line 212
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->server_type:Landroid/widget/RadioGroup;

    .line 213
    .line 214
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 215
    .line 216
    const v2, 0x7f0a020f

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 224
    .line 225
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->l_add:Landroid/widget/RelativeLayout;

    .line 226
    .line 227
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 228
    .line 229
    const v2, 0x7f0a0166

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLSNI:Lcom/google/android/material/textfield/TextInputEditText;

    .line 239
    .line 240
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 241
    .line 242
    const v2, 0x7f0a0164

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 250
    .line 251
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    .line 252
    .line 253
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 254
    .line 255
    const v2, 0x7f0a02e2

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Landroid/widget/RadioGroup;

    .line 263
    .line 264
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->payload_type:Landroid/widget/RadioGroup;

    .line 265
    .line 266
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 267
    .line 268
    const v2, 0x7f0a02d1

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Landroid/widget/LinearLayout;

    .line 276
    .line 277
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->p_layout:Landroid/widget/LinearLayout;

    .line 278
    .line 279
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 280
    .line 281
    const v2, 0x7f0a0158

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 289
    .line 290
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 291
    .line 292
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 293
    .line 294
    const v2, 0x7f0a0159

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 302
    .line 303
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkPayload:Lcom/google/android/material/textfield/TextInputEditText;

    .line 304
    .line 305
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 306
    .line 307
    const v2, 0x7f0a0157

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 315
    .line 316
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    .line 317
    .line 318
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 319
    .line 320
    const v2, 0x7f0a00b7

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/CheckBox;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    .line 330
    .line 331
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 332
    .line 333
    const v2, 0x7f0a0176

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 341
    .line 342
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidProxy:Lcom/google/android/material/textfield/TextInputEditText;

    .line 343
    .line 344
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 345
    .line 346
    const v2, 0x7f0a0175

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 354
    .line 355
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    .line 356
    .line 357
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 358
    .line 359
    const v2, 0x7f0a0156

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 367
    .line 368
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkFrontQuery:Lcom/google/android/material/textfield/TextInputEditText;

    .line 369
    .line 370
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 371
    .line 372
    const v2, 0x7f0a0155

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 380
    .line 381
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkBackQuery:Lcom/google/android/material/textfield/TextInputEditText;

    .line 382
    .line 383
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 384
    .line 385
    const v2, 0x7f0a008d

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 393
    .line 394
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->btnPayloadGen:Landroidx/appcompat/widget/AppCompatImageView;

    .line 395
    .line 396
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 397
    .line 398
    const v2, 0x7f0a01f7

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    check-cast v0, Landroid/widget/CheckBox;

    .line 406
    .line 407
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    .line 408
    .line 409
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 410
    .line 411
    const v2, 0x7f0a02d0

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Landroid/widget/TextView;

    .line 419
    .line 420
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 421
    .line 422
    new-array v4, v3, [J

    .line 423
    .line 424
    fill-array-data v4, :array_4

    .line 425
    .line 426
    .line 427
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    .line 438
    .line 439
    const/4 v2, 0x1

    .line 440
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 441
    .line 442
    .line 443
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidProxy:Lcom/google/android/material/textfield/TextInputEditText;

    .line 444
    .line 445
    const/4 v4, 0x0

    .line 446
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 447
    .line 448
    .line 449
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->server_type:Landroid/widget/RadioGroup;

    .line 450
    .line 451
    const v6, 0x7f0a009f

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 455
    .line 456
    .line 457
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->payload_type:Landroid/widget/RadioGroup;

    .line 458
    .line 459
    const v6, 0x7f0a02cf

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 463
    .line 464
    .line 465
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 466
    .line 467
    new-array v6, v5, [J

    .line 468
    .line 469
    fill-array-data v6, :array_5

    .line 470
    .line 471
    .line 472
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 480
    .line 481
    new-array v7, v3, [J

    .line 482
    .line 483
    fill-array-data v7, :array_6

    .line 484
    .line 485
    .line 486
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 494
    .line 495
    new-array v8, v3, [J

    .line 496
    .line 497
    fill-array-data v8, :array_7

    .line 498
    .line 499
    .line 500
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 508
    .line 509
    new-array v9, v3, [J

    .line 510
    .line 511
    fill-array-data v9, :array_8

    .line 512
    .line 513
    .line 514
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 522
    .line 523
    new-array v10, v3, [J

    .line 524
    .line 525
    fill-array-data v10, :array_9

    .line 526
    .line 527
    .line 528
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    filled-new-array {v0, v6, v7, v8, v9}, [Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    new-instance v6, Landroid/widget/ArrayAdapter;

    .line 540
    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    const v8, 0x109000a

    .line 546
    .line 547
    .line 548
    invoke-direct {v6, v7, v8, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_type:Landroid/widget/Spinner;

    .line 552
    .line 553
    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 554
    .line 555
    .line 556
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_type:Landroid/widget/Spinner;

    .line 557
    .line 558
    new-instance v6, Lcom/tknetwork/tunnel/activities/NetworkActivity$2;

    .line 559
    .line 560
    invoke-direct {v6, p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity$2;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    .line 567
    .line 568
    new-instance v6, Lcom/tknetwork/tunnel/activities/NetworkActivity$3;

    .line 569
    .line 570
    invoke-direct {v6, p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity$3;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 574
    .line 575
    .line 576
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    .line 577
    .line 578
    new-instance v6, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;

    .line 579
    .line 580
    const/4 v7, 0x4

    .line 581
    invoke-direct {v6, p0, v7}, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    .line 586
    .line 587
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    .line 588
    .line 589
    new-instance v6, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;

    .line 590
    .line 591
    const/4 v7, 0x5

    .line 592
    invoke-direct {v6, p0, v7}, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    .line 597
    .line 598
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->btnPayloadGen:Landroidx/appcompat/widget/AppCompatImageView;

    .line 599
    .line 600
    new-instance v6, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;

    .line 601
    .line 602
    invoke-direct {v6, p0, v4}, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    .line 607
    .line 608
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 609
    .line 610
    const v4, 0x7f0a0095

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    new-instance v4, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;

    .line 618
    .line 619
    invoke-direct {v4, p0, v2}, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    .line 624
    .line 625
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    new-instance v1, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;

    .line 632
    .line 633
    invoke-direct {v1, p0, v5}, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    .line 638
    .line 639
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 640
    .line 641
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 644
    .line 645
    .line 646
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 647
    .line 648
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 649
    .line 650
    .line 651
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    .line 652
    .line 653
    const v1, 0x7f0a018b

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 661
    .line 662
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->exit:Landroidx/appcompat/widget/AppCompatImageView;

    .line 663
    .line 664
    new-instance v1, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;

    .line 665
    .line 666
    invoke-direct {v1, p0, v3}, L딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    .line 671
    .line 672
    return-void

    .line 673
    :array_0
    .array-data 8
        -0x5ceca8c71c4d6afcL
        -0x55dad31216da356eL
        0x372e0f8b99076aa5L    # 6.7398473852115535E-43
    .end array-data

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_1
    .array-data 8
        0x20d097d546eb175cL
        -0x334d7ef739beeae8L    # -2.973484606893847E61
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    :array_2
    .array-data 8
        0x489d64b596967b80L    # 6.4013147521926324E41
        0x378461cb2158b4dcL    # 2.924674394917279E-41
        -0x691c67d50172b9f1L
    .end array-data

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
    .line 714
    .line 715
    .line 716
    .line 717
    :array_3
    .array-data 8
        0x350f035e1b7b7b07L    # 4.047405540472154E-53
        -0x6968a97b08a8d4a0L    # -7.622297547534011E-200
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :array_4
    .array-data 8
        -0x1bc424df777d29e5L    # -6.8896270484085044E174
        0x442c8c6c5c523dc5L    # 2.6331369901747775E20
        -0x35a03013ce34fdeaL    # -1.8597431664106993E50
    .end array-data

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
    .line 742
    .line 743
    .line 744
    .line 745
    :array_5
    .array-data 8
        -0x1e26e0146fd1acb0L
        -0x4d9ee27d91bccd46L    # -5.07872561501435E-66
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    :array_6
    .array-data 8
        0x593cd804d1379cafL    # 7.448195973057363E121
        0x303704b9a6794cf6L    # 1.987912814269523E-76
        -0x390f65f3c1f3a0acL    # -5.387575672281104E33
    .end array-data

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
    .line 770
    .line 771
    .line 772
    .line 773
    :array_7
    .array-data 8
        -0x249b9010018a68a3L    # -1.8133043103253323E132
        0x31e0e26b0ffa77c1L    # 1.9571216088713555E-68
        -0x10ca3cc92676c39bL    # -5.15545065988498E227
    .end array-data

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_8
    .array-data 8
        -0x67bbdabd65992757L    # -8.831039884805533E-192
        0x46d967c2aff6249dL    # 2.0611239745862492E33
        0x48a2c9c20a515c85L    # 8.183379131635746E41
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_9
    .array-data 8
        0x38cb024dcbc2b893L    # 4.0638625815112726E-35
        0xace16a9bdf187bL
        -0x5967f5368fbcea52L    # -9.092322489704974E-123
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
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
        0x219421b75cc6ba18L    # 6.297710083204539E-147
        0x43772cf60f7fee44L    # 1.04373756767429696E17
    .end array-data
.end method

.method private getServer()Lorg/json/JSONObject;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getServerSelectedName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

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
        -0x5c32c181147ebb98L
        -0x35df0e25ed1a92e9L    # -1.2382378090803543E49
    .end array-data
.end method

.method private synthetic lambda$dialogAddPayload$2(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

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

.method private synthetic lambda$dialogAddPayload$3(Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidProxy:Lcom/google/android/material/textfield/TextInputEditText;

    .line 12
    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidProxy:Lcom/google/android/material/textfield/TextInputEditText;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidProxy:Lcom/google/android/material/textfield/TextInputEditText;

    .line 38
    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v3, p1, [J

    .line 42
    .line 43
    const-wide v4, 0xd38fd89898e129aL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    aput-wide v4, v3, v0

    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidProxy:Lcom/google/android/material/textfield/TextInputEditText;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

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
        0x7c6d743f20ca6ce3L    # 2.2963147119644402E291
        -0x627a3f52f79a9b03L
        -0x5ef038d0b12a8b85L    # -1.94159936399227E-149
    .end array-data
.end method

.method private synthetic lambda$dialogAddPayload$4(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkPayload:Lcom/google/android/material/textfield/TextInputEditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$dialogAddPayload$5(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_0

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_1

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5
    invoke-virtual/range {p4 .. p4}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 6
    invoke-virtual/range {p5 .. p5}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 7
    invoke-virtual/range {p6 .. p6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 8
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v3, [J

    fill-array-data v13, :array_2

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v3, [J

    fill-array-data v14, :array_3

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    .line 10
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v2, [J

    const-wide v16, 0x4d3090cf918ab2fL    # 2.000161583385978E-285

    aput-wide v16, v15, v0

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 11
    invoke-virtual/range {p7 .. p7}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 12
    invoke-virtual/range {p8 .. p8}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 13
    iget-object v3, v1, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkPayload:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x28

    new-array v2, v2, [J

    fill-array-data v2, :array_4

    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v0, v16

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const/4 v5, 0x2

    aput-object v7, v0, v5

    const/4 v5, 0x3

    aput-object v4, v0, v5

    const/4 v4, 0x4

    aput-object v8, v0, v4

    const/4 v4, 0x5

    aput-object v9, v0, v4

    const/4 v4, 0x6

    aput-object v10, v0, v4

    const/4 v4, 0x7

    aput-object v12, v0, v4

    const/16 v4, 0x8

    aput-object v13, v0, v4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x9

    aput-object v4, v0, v5

    const/16 v4, 0xa

    aput-object v14, v0, v4

    const/16 v4, 0xb

    aput-object v11, v0, v4

    const/16 v4, 0xc

    aput-object v15, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :array_0
    .array-data 8
        -0x429bc2c02850a1a5L    # -5.752342363376994E-13
        0x1379326882797a3dL    # 7.309208337011249E-215
    .end array-data

    :array_1
    .array-data 8
        -0x52c34e47f1dd4d10L    # -8.803911370212054E-91
        0x326a16c59cb5139dL    # 7.741544341767762E-66
    .end array-data

    :array_2
    .array-data 8
        0x54ccf8bf510a21d5L    # 3.16841522925113E100
        0x1b726461c66bd092L
        -0x4d8ca755faa5441cL    # -1.14815326912272E-65
    .end array-data

    :array_3
    .array-data 8
        -0x5b5f15aa83a71d6L
        -0x85d9c0b69e5b713L
        -0x111046f6e44c1fa6L
    .end array-data

    :array_4
    .array-data 8
        0x19b751ab4b7e47aaL    # 8.574977041502344E-185
        -0x5b88aee6c68fcbc1L    # -5.132757045307426E-133
        0x4dccb5a683147ec8L    # 6.046941644913204E66
        0x77df4ea11c5a553cL    # 2.584280303228726E269
        0x7cad0fcfb4b6ffddL    # 3.6251648901704258E292
        0x4971abb99f07c0beL    # 6.305152526315818E45
        -0x5b56f44580ebb268L
        0x1d4d545dae59ee62L
        0x27c60b674b4e7f8bL
        -0x3aee4ae88f3bd127L    # -5.351729916908234E24
        -0x45e27d4a0266bb29L    # -9.311900124898143E-29
        -0x6b455ed83774558bL    # -8.100022902718454E-209
        -0x67bb1d39c33cb64eL    # -9.155554718372257E-192
        0x6a245f5c4a7831acL    # 1.9960502006203135E203
        -0x236c30a38fc3329bL    # -9.215154058399315E137
        -0xee8924b62005985L    # -5.959389668305231E236
        0x7adf159e1249c81L
        0x97b55dc303c2803L
        0x4d7da8764f9514f6L    # 1.952098605019616E65
        -0x35f6b6c51b385512L    # -4.619451329038602E48
        0x3338e0d5a1bde494L    # 6.047569944900423E-62
        -0x7380743d6681c76dL
        0x7c81e40f1841840L
        0x13a5da4a7c9039b9L    # 5.071286854512596E-214
        0x318dcc84c06c4cedL    # 5.396985620045415E-70
        -0x6d00a1536ff318d9L    # -3.554636321941267E-217
        -0x184dde78e2724b45L    # -3.2313072110545666E191
        -0x17fe927aa0be1730L    # -9.939172147098938E192
        0x5e17f8577bce4196L    # 1.8707144442232116E145
        -0x4d03576e90cc4241L    # -4.3540549652489315E-63
        -0x3b89bd8a06107755L    # -6.569878051321183E21
        -0xb03e272595f0156L
        0x379bc840bc3a4bcL
        0x4d59250389d62b37L    # 4.1375529607775394E64
        -0x3adfb7b2545aea79L    # -9.84212813410499E24
        0x27e5086835085751L
        -0x704d2551d75b7f9cL    # -4.743860767349416E-233
        0x411a3d82b780aab4L    # 429920.6792017624
        -0x5e19940c1c9d57fbL
        -0x3112dfdbd85cf368L    # -1.608137359187637E72
    .end array-data
.end method

.method private synthetic lambda$dialogAddPayload$6(Landroid/view/View;)V
    .locals 19

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    iget-object v2, v11, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, v11, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eq v2, v0, :cond_1

    .line 21
    .line 22
    iget-object v2, v11, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eq v2, v1, :cond_1

    .line 29
    .line 30
    iget-object v2, v11, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v4, 0x4

    .line 37
    if-eq v2, v4, :cond_1

    .line 38
    .line 39
    iget-object v2, v11, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v4, 0x5

    .line 46
    if-ne v2, v4, :cond_0

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object v2, v11, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/4 v4, 0x6

    .line 57
    if-ne v2, v4, :cond_2

    .line 58
    .line 59
    new-instance v12, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 60
    .line 61
    invoke-direct {v12, v11}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const v4, 0x7f0d00b6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    const v2, 0x7f0a0179

    .line 76
    .line 77
    .line 78
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    move-object v4, v2

    .line 83
    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 84
    .line 85
    const v2, 0x7f0a0171

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 93
    .line 94
    const v5, 0x7f0a0162

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    move-object v6, v5

    .line 102
    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 103
    .line 104
    const v5, 0x7f0a0163

    .line 105
    .line 106
    .line 107
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    move-object v7, v5

    .line 112
    check-cast v7, Lcom/google/android/material/textfield/TextInputEditText;

    .line 113
    .line 114
    const v5, 0x7f0a0174

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    .line 122
    .line 123
    const v8, 0x7f0a016b

    .line 124
    .line 125
    .line 126
    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    .line 131
    .line 132
    const v9, 0x7f0a0173

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    .line 140
    .line 141
    const v10, 0x7f0a0172

    .line 142
    .line 143
    .line 144
    invoke-virtual {v13, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 149
    .line 150
    iget-object v14, v11, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mPref:Landroid/content/SharedPreferences;

    .line 151
    .line 152
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array v3, v1, [J

    .line 155
    .line 156
    fill-array-data v3, :array_0

    .line 157
    .line 158
    .line 159
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v0, v0, [J

    .line 169
    .line 170
    const-wide v16, -0x3ded46181d3f2792L    # -2.0107098288211357E10

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    const/16 v18, 0x0

    .line 176
    .line 177
    aput-wide v16, v0, v18

    .line 178
    .line 179
    invoke-direct {v15, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v14, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array v3, v1, [J

    .line 196
    .line 197
    fill-array-data v3, :array_1

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const/4 v3, 0x0

    .line 208
    invoke-virtual {v12, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 209
    .line 210
    .line 211
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    new-array v1, v1, [J

    .line 214
    .line 215
    fill-array-data v1, :array_2

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    new-instance v15, L뎻됩듌뎡듼둔땁뒷땨땱땀땪뒹듌뒼둣딁딐둑뒨땬뒙딨땹듻땦두땮된뒙딎딄딸둣뎡듸둣뒐돤뒀뎰뎡될땋땳뒵뒀땳땱뒹땣땥딀듔둡둘땟듬뒷돳뒷딟뒵둥땫땨땅딨땅듨땅돵땵뒐됐땹땠득둬드땭딌돷땍뒐땀땲땭뎡뎰땄됫뒨땡뎹땜딨뎹뒐돠디돛딤딨뎰딁땟딤됴땸뎬뒾듐뒹돸뒤듐돵땸땨뎹뒈뎽따됨돵둔돴듻땸;

    .line 226
    .line 227
    const/16 v16, 0x1

    .line 228
    .line 229
    move-object v0, v15

    .line 230
    move-object/from16 v1, p0

    .line 231
    .line 232
    move-object v3, v4

    .line 233
    move-object v4, v5

    .line 234
    move-object v5, v8

    .line 235
    move-object v8, v9

    .line 236
    move-object v9, v10

    .line 237
    move/from16 v10, v16

    .line 238
    .line 239
    invoke-direct/range {v0 .. v10}, L뎻됩듌뎡듼둔땁뒷땨땱땀땪뒹듌뒼둣딁딐둑뒨땬뒙딨땹듻땦두땮된뒙딎딄딸둣뎡듸둣뒐돤뒀뎰뎡될땋땳뒵뒀땳땱뒹땣땥딀듔둡둘땟듬뒷돳뒷딟뒵둥땫땨땅딨땅듨땅돵땵뒐됐땹땠득둬드땭딌돷땍뒐땀땲땭뎡뎰땄됫뒨땡뎹땜딨뎹뒐돠디돛딤딨뎰딁땟딤됴땸뎬뒾듐뒹돸뒤듐돵땸땨뎹뒈뎽따됨돵둔돴듻땸;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v12, v14, v15}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 243
    .line 244
    .line 245
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    const/4 v1, 0x3

    .line 248
    new-array v1, v1, [J

    .line 249
    .line 250
    fill-array-data v1, :array_3

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v12, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_1
    :goto_0
    new-instance v0, Lcom/tknetwork/tunnel/utils/gen;

    .line 275
    .line 276
    invoke-direct {v0, v11}, Lcom/tknetwork/tunnel/utils/gen;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 280
    .line 281
    new-array v3, v1, [J

    .line 282
    .line 283
    fill-array-data v3, :array_4

    .line 284
    .line 285
    .line 286
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    const/4 v3, 0x0

    .line 294
    invoke-virtual {v0, v2, v3}, Lcom/tknetwork/tunnel/utils/gen;->setCancelListener(Ljava/lang/CharSequence;Lcom/tknetwork/tunnel/utils/gen$OnCancelListener;)V

    .line 295
    .line 296
    .line 297
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 298
    .line 299
    new-array v1, v1, [J

    .line 300
    .line 301
    fill-array-data v1, :array_5

    .line 302
    .line 303
    .line 304
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    new-instance v2, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 312
    .line 313
    const/16 v3, 0x13

    .line 314
    .line 315
    invoke-direct {v2, v11, v3}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/tknetwork/tunnel/utils/gen;->setGenerateListener(Ljava/lang/CharSequence;Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/utils/gen;->show()V

    .line 322
    .line 323
    .line 324
    :cond_2
    :goto_1
    return-void

    .line 325
    :array_0
    .array-data 8
        -0x3b0bd75654c7e18L    # -6.092756176319314E290
        -0x284067b72c423f9bL    # -4.862894214404251E114
    .end array-data

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
    .line 336
    .line 337
    :array_1
    .array-data 8
        -0x3cf830462ab0de07L    # -8.377901898721911E14
        0xd78021f427ac6e5L
    .end array-data

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
    .line 348
    .line 349
    :array_2
    .array-data 8
        0x33137c0946594d91L    # 1.1841058984326927E-62
        -0x4b90cca0697e6752L    # -3.9764437310219444E-56
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_3
    .array-data 8
        -0x34a44dcca42d3b2aL    # -1.0611035970492197E55
        0x2497d84cf1ba6e70L
        0x5851865001b1219eL    # 2.7620267803310836E117
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_4
    .array-data 8
        0x502c5339744bcce6L    # 1.6399109890030538E78
        0xfdd9bed96a9a6c4L
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_5
    .array-data 8
        -0x59f4834edc78b57dL    # -2.030300821851874E-125
        0x71ea12ec0b748e1eL
    .end array-data
.end method

.method private synthetic lambda$dialogAddPayload$7(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$dialogAddPayload$8(Landroid/view/View;)V
    .locals 14

    const/4 p1, 0x3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkPayload:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidProxy:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x2

    new-array v5, v4, [J

    fill-array-data v5, :array_0

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_1

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_2

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_3

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_4

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_5

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_6

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_7

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_8

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_9

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_a

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_b

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_c

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_d

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_e

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_f

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_10

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_11

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_12

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_13

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_14

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_15

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_16

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_17

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_18

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_19

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_1a

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_1b

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_1c

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_1d

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_1e

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_1f

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_20

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_21

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_22

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_23

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_24

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_25

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_26

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_27

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_28

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_29

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_2a

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_2b

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_2c

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_2d

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_2e

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_2f

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_30

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_31

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_32

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_33

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_34

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_35

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_36

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_37

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_38

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_39

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_3a

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_3b

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_3c

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_3d

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_3e

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_3f

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_40

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_41

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_42

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_43

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_44

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_45

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_46

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_47

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_48

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_49

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_4a

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_4b

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_4c

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_4d

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_4e

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_4f

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_50

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_51

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_52

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_53

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_54

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_55

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_56

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_57

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_58

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_59

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_5a

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_5b

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_5c

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_5d

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_5e

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_5f

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_60

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_61

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_62

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_63

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_64

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_65

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_66

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_67

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 59
    iget-object v5, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_3

    .line 61
    :try_start_0
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 62
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_68

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_69

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_6a

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_6b

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_6c

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x25b5ff9afaa43e5aL    # 5.077782433775139E-127

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_6d

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x6631f697a9a2289dL

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_6e

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x6dc5cf104247a863L    # 6.15884737828529E220

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_6f

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_70

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 71
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_71

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x51f77af59a8b27a2L    # -6.162915808583153E-87

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_72

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x66ace0ed470cfb06L

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_73

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_74

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_75

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_76

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_77

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, -0x707c30c5bcf2e110L    # -6.230264916128025E-234

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_78

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_79

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_7a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 84
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_7b

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 86
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 87
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 88
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_7c

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_1
    add-int/2addr p1, v9

    goto :goto_1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_7d

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_27

    .line 94
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 95
    :cond_3
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 96
    :try_start_1
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 97
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_7e

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_7f

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_80

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_81

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_82

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x3f748620aa09634dL    # -879.2340506807872

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_83

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x551f0b7c1f8ce422L    # -3.785060181260264E-102

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_84

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_85

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_86

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 106
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_87

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x5e17c0645538ebb4L

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_88

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x27355e96a71f2a56L    # -5.372393813118523E119

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_89

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 109
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_8a

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 110
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_8b

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_8c

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_8d

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, -0x5ec0a986bfc3d93bL

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_8e

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_8f

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_90

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 119
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_91

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 121
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 122
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 123
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 124
    :goto_4
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_92

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_5
    add-int/2addr p1, v9

    goto :goto_4

    .line 127
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_93

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_27

    .line 129
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 130
    :cond_7
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v4, :cond_b

    .line 131
    :try_start_2
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 132
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_94

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_95

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_96

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_97

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_98

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLSNI:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_99

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_9a

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_9b

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_9c

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_9d

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkFrontQuery:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_9e

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkBackQuery:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_9f

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_a0

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_a1

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_a2

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 147
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_a3

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :catch_2
    move-exception p1

    goto/16 :goto_8

    :cond_8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, 0xa856e4ff341089aL

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_a4

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_a5

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_a6

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 154
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_a7

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 156
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 157
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 158
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 159
    :goto_7
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 160
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_a8

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_9
    add-int/2addr p1, v9

    goto :goto_7

    .line 162
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_a9

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 163
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_27

    .line 164
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 165
    :cond_b
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, p1, :cond_f

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 167
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_aa

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_ab

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_ac

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_ad

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_ae

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLSNI:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_af

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_b0

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v9, [J

    const-wide v11, -0x65053cab973ebcacL

    aput-wide v11, v10, v8

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_b1

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_b2

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 176
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_b3

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v9, [J

    const-wide v11, -0x1896109638a8963L

    aput-wide v11, v10, v8

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_b4

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v9, [J

    const-wide v11, 0x267f91ae949f2452L    # 2.984719867556157E-123

    aput-wide v11, v10, v8

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_b5

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 179
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_b6

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v9, [J

    const-wide v11, -0x1b8fbb1cf261b3fcL    # -6.438144722709812E175

    aput-wide v11, v10, v8

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_b7

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v9, [J

    const-wide v11, -0x6f34f0d84ecb4caL

    aput-wide v11, v10, v8

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_b8

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 182
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_b9

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :catch_3
    move-exception p1

    goto/16 :goto_b

    :cond_c
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, -0x5d9f0a50f1605416L

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_ba

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_bb

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_bc

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 189
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_bd

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 191
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 192
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 193
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 194
    :goto_a
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 195
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_be

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 196
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_d
    add-int/2addr p1, v9

    goto :goto_a

    .line 197
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_bf

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 198
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_27

    .line 199
    :goto_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 200
    :cond_f
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/4 v10, 0x4

    if-ne v6, v10, :cond_13

    .line 201
    :try_start_4
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 202
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_c0

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_c1

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_c2

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_c3

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_c4

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLSNI:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_c5

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_c6

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_c7

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_c8

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 211
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_c9

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x3452c61a70f7d222L    # -3.583116672197615E56

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_ca

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x301db80ffa7c6117L    # 6.4164559961966134E-77

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_cb

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 214
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_cc

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_cd

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_ce

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 217
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_cf

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :catch_4
    move-exception p1

    goto/16 :goto_e

    :cond_10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, 0x502994ccc53991caL    # 1.4810531652602719E78

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_d0

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_d1

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_d2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 224
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_d3

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 226
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 227
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 228
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 229
    :goto_d
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 230
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_d4

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 231
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_11
    add-int/2addr p1, v9

    goto :goto_d

    .line 232
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_d5

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 233
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_27

    .line 234
    :goto_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 235
    :cond_13
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/4 v10, 0x5

    if-ne v6, v10, :cond_17

    .line 236
    :try_start_5
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 237
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_d6

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_d7

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_d8

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_d9

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_da

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLSNI:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_db

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_dc

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_dd

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_de

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 246
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_df

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0xcf641ef35c02adaL

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_e0

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x723af11ade5ab764L

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_e1

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 249
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_e2

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_e3

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_e4

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 252
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_e5

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :catch_5
    move-exception p1

    goto/16 :goto_11

    :cond_14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, -0x3cc4bf0e2ba2f6d8L    # -7.671231765350696E15

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_f
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_e6

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_e7

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_e8

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 259
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_e9

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 261
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 262
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 263
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 264
    :goto_10
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 265
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_ea

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 266
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_15
    add-int/2addr p1, v9

    goto :goto_10

    .line 267
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_eb

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 268
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_27

    .line 269
    :goto_11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 270
    :cond_17
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/4 v10, 0x6

    if-ne v6, v10, :cond_1b

    .line 271
    :try_start_6
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 272
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_ec

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_ed

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_ee

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_ef

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_f0

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x5e4f9124a0db7c90L    # 1.9708825541632708E146

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_f1

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x12780f6f2151f6f3L

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_f2

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_f3

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_f4

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 281
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_f5

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x2981737bb07efb4dL    # 9.288263617742301E-109

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_f6

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x7150c7bcfbcfa74fL    # -5.99298476564263E-238

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_f7

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_f8

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_f9

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_fa

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 287
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_fb

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :catch_6
    move-exception p1

    goto/16 :goto_14

    :cond_18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, -0x40f506200a06453aL    # -5.145277714012834E-5

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_fc

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_fd

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_fe

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 294
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_ff

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 296
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 297
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 298
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 299
    :goto_13
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1a

    .line 300
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_100

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 301
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_19
    add-int/2addr p1, v9

    goto :goto_13

    .line 302
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_101

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 303
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_27

    .line 304
    :goto_14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 305
    :cond_1b
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/4 v10, 0x7

    if-ne v6, v10, :cond_1f

    .line 306
    :try_start_7
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 307
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_102

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_103

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_104

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_105

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_106

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0xbed203bd75c535fL

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_107

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x7a86cc5e32646632L    # 1.6553455038642854E282

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_108

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x6fae94e19a79a7fbL    # -4.48778861937966E-230

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_109

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_10a

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_10b

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x5cc6132378edb7bfL    # 8.214932689312806E138

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_10c

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x42463df27c7cd10dL    # 1.910571645376332E11

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_10d

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 319
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_10e

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_10f

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_110

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 322
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_111

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :catch_7
    move-exception p1

    goto/16 :goto_17

    :cond_1c
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, 0x5aa1e3f21ffa84f6L    # 3.875328650401706E128

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_15
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_112

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_113

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_114

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 329
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_115

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 331
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 332
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 333
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 334
    :goto_16
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1e

    .line 335
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_116

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 336
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_1d
    add-int/2addr p1, v9

    goto :goto_16

    .line 337
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_117

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 338
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_27

    .line 339
    :goto_17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 340
    :cond_1f
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/16 v10, 0x8

    if-ne v6, v10, :cond_23

    .line 341
    :try_start_8
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 342
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_118

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_119

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_11a

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_11b

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_11c

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x739fea85cf44afacL    # -4.492880250637033E-249

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_11d

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x4bc1d2b83678f7c9L    # -4.8074538072048144E-57

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_11e

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x6729ab26a9a341d3L    # 8.934881194054517E188

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_11f

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_120

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 351
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_121

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x353d657e962d1d06L    # 3.0691339217352958E-52

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_122

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x49b237d7edf793d5L    # -4.075515300933478E-47

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_123

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 354
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_124

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_125

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_126

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 357
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_127

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :catch_8
    move-exception p1

    goto/16 :goto_1a

    :cond_20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, -0x7fca469754aecc11L

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_18
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_128

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_129

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_12a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 363
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 364
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_12b

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 366
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 367
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 368
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 369
    :goto_19
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_22

    .line 370
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_12c

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 371
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_21
    add-int/2addr p1, v9

    goto :goto_19

    .line 372
    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_12d

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 373
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_27

    .line 374
    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 375
    :cond_23
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/16 v10, 0x9

    if-ne v6, v10, :cond_27

    .line 376
    :try_start_9
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 377
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_12e

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_12f

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 379
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_130

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_131

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_132

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x3409424184596451L    # -8.921796833868427E57

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_133

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_134

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_135

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_136

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 386
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_137

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x55f71044feb21e2aL

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_138

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x285ce6aef0d7fa49L    # -1.4697943454558818E114

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_139

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 389
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_13a

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_13b

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_13c

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 392
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_13d

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :catch_9
    move-exception p1

    goto/16 :goto_1d

    :cond_24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, 0x62c39ce1746b1d2bL    # 5.782658397170593E167

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1b
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_13e

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_13f

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_140

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 398
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 399
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_141

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 401
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 402
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 403
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 404
    :goto_1c
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_26

    .line 405
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_142

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 406
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_25
    add-int/2addr p1, v9

    goto :goto_1c

    .line 407
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_143

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 408
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_27

    .line 409
    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 410
    :cond_27
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/16 v10, 0xa

    if-ne v6, v10, :cond_2b

    .line 411
    :try_start_a
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 412
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_144

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_145

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 414
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_146

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_147

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_148

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x373f69808f459fb9L    # -2.890016654438347E42

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_149

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSSLPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_14a

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_14b

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_14c

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 421
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_14d

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x20bc60750abadae5L    # 5.418079698734483E-151

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_14e

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x32394f7c56c00656L    # 9.388182893325982E-67

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_14f

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 424
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_150

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_151

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_152

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 427
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_153

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :catch_a
    move-exception p1

    goto/16 :goto_20

    :cond_28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, 0x5c27f07983252af4L    # 8.70002480827812E135

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_154

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_155

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_156

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 432
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 433
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 434
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_157

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 436
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 437
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 438
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 439
    :goto_1f
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 440
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_158

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 441
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_29
    add-int/2addr p1, v9

    goto :goto_1f

    .line 442
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_159

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 443
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_27

    .line 444
    :goto_20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 445
    :cond_2b
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/16 v10, 0xb

    if-ne v6, v10, :cond_2f

    .line 446
    :try_start_b
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 447
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_15a

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_15b

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 449
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_15c

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_15d

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_15e

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x567f9a3ef77dfd86L    # 4.63874198032347E108

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_15f

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x510f834c85a89763L    # 2.9892140665861007E82

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_160

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x3286cb996ef89241L    # -1.6589772931259516E65

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_161

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_162

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 456
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_163

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x47aadf2c5191b08fL    # -2.4836115009500865E-37

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_164

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x3d84cbd7ecc62ffbL    # -1.8694265373730012E12

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_165

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 459
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_166

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_167

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_168

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 462
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_169

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :catch_b
    move-exception p1

    goto/16 :goto_23

    :cond_2c
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, -0x5e2883001dd647cfL

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_21
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_16a

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_16b

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_16c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 467
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 469
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_16d

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 471
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 472
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 473
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 474
    :goto_22
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2e

    .line 475
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_16e

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 476
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_2d
    add-int/2addr p1, v9

    goto :goto_22

    .line 477
    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_16f

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 478
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_27

    .line 479
    :goto_23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 480
    :cond_2f
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    const/16 v10, 0xc

    if-ne v6, v10, :cond_33

    .line 481
    :try_start_c
    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_spin:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 482
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v4, [J

    fill-array-data v11, :array_170

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, p1, [J

    fill-array-data v11, :array_171

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 484
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_172

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_173

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mProtoType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_174

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x5b2dcc00a3c2b7e8L    # 1.6523383871147953E131

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_175

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x7807c0e07e01ed9eL    # 1.568600597062154E270

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_176

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x2c11eca58845876dL    # -2.007534060638966E96

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_177

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_178

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->isReplace:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 491
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_179

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, 0x75fcee57891c4e61L    # 2.2241294689434309E260

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_17a

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v9, [J

    const-wide v12, -0x7d50523c6a339c5bL    # -9.68774105605052E-296

    aput-wide v12, v11, v8

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, p1, [J

    fill-array-data v10, :array_17b

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckUseDefProxy:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 494
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    fill-array-data v10, :array_17c

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_17d

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etSquidPort:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_17e

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 497
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_17f

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etCertificate:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :catch_c
    move-exception p1

    goto/16 :goto_26

    :cond_30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v9, [J

    const-wide v10, 0x70c82e9b031af3c8L

    aput-wide v10, v6, v8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_24
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_180

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, p1, [J

    fill-array-data v6, :array_181

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, p1, [J

    fill-array-data v3, :array_182

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 502
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 503
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    invoke-virtual {v0, v8}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 504
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p1, [J

    fill-array-data p1, :array_183

    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 506
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 507
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 508
    invoke-direct {p0, v7, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    const/4 p1, 0x0

    .line 509
    :goto_25
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_32

    .line 510
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_184

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 511
    invoke-direct {p0, v9}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    :cond_31
    add-int/2addr p1, v9

    goto :goto_25

    .line 512
    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_185

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 513
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_27

    .line 514
    :goto_26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_33
    :goto_27
    return-void

    :array_0
    .array-data 8
        -0x204cdec201aff91L    # -7.114339933318014E298
        0x20ed1bb3f7010cc8L
    .end array-data

    :array_1
    .array-data 8
        0x512cb87a53d85346L    # 1.0897392260884537E83
        -0x6d4a382746c3e2e6L    # -1.542531376102416E-218
    .end array-data

    :array_2
    .array-data 8
        -0x4847c9009172ab2cL    # -2.7797267425167698E-40
        0x73df10b6a863d6a9L    # 1.3901183960940669E250
    .end array-data

    :array_3
    .array-data 8
        0x7a5e48df1154d5f2L    # 2.7486445424331338E281
        -0x2787979d8f107a46L    # -1.5387430387219449E118
    .end array-data

    :array_4
    .array-data 8
        -0x29209016c85df470L    # -2.9532596403047265E110
        -0x516df4584ae78276L
    .end array-data

    :array_5
    .array-data 8
        0xd43d0a03e1eaa22L    # 9.06872865213031E-245
        -0x262fad72f935143fL    # -4.316025005242877E124
    .end array-data

    :array_6
    .array-data 8
        0x551d71041702e3bfL    # 1.0303339785299499E102
        0x66c24d2aa17989fcL    # 9.953879779397421E186
    .end array-data

    :array_7
    .array-data 8
        0x1e7aa31757b5fa56L    # 7.400973920202441E-162
        -0x77ed454d9aac08e9L    # -8.863088438474799E-270
    .end array-data

    :array_8
    .array-data 8
        -0x3913d657734ee820L    # -4.569663897063165E33
        -0x6b5f930000bf3ed0L
    .end array-data

    :array_9
    .array-data 8
        0x6cdf2b65511b95c9L    # 2.686253194011087E216
        -0x35ef8e8f346694a5L    # -6.00791439346493E48
    .end array-data

    :array_a
    .array-data 8
        0x13afe03f5c113327L    # 7.397354935855295E-214
        0x16029feb91c63c69L
    .end array-data

    :array_b
    .array-data 8
        -0x4d78b56d5fe56c2bL    # -2.7645514423232754E-65
        -0xf8b6dad76d88bc7L    # -5.1100380088285955E233
    .end array-data

    :array_c
    .array-data 8
        0x4d5f90dc5a874debL    # 5.1941770318990356E64
        -0x1acb8e8667a15c83L    # -3.313657518608083E179
    .end array-data

    :array_d
    .array-data 8
        -0x45385077aab1c005L    # -1.5306508088129504E-25
        0x1d776e1b2b36d552L    # 9.933369514850627E-167
    .end array-data

    :array_e
    .array-data 8
        0x182f6c095e73a1fcL
        0x559c95c8e5945895L    # 2.5609328008055302E104
    .end array-data

    :array_f
    .array-data 8
        0x1405ea7a0648eadeL
        -0x112f6fb9e5b7390dL    # -6.130991364534635E225
    .end array-data

    :array_10
    .array-data 8
        -0x3dab99803a06e12bL    # -3.5047598282048175E11
        0x37dc1f6fe78330d1L    # 1.2913357042121108E-39
    .end array-data

    :array_11
    .array-data 8
        0x40fe8cc6bddcfef4L    # 125132.42135333625
        0x1af6cc9f373864d6L
    .end array-data

    :array_12
    .array-data 8
        -0x3eb3be496c96469bL    # -3703661.1516639465
        0xb82608985a7d8a8L
    .end array-data

    :array_13
    .array-data 8
        0x5ce0569e57a79037L    # 2.4320712903422186E139
        -0x10779792517adb9bL    # -1.8502804199391272E229
    .end array-data

    :array_14
    .array-data 8
        0x53696f39fb11f70aL    # 6.631801302322484E93
        0x3823e755926afe29L    # 2.924578439717402E-38
    .end array-data

    :array_15
    .array-data 8
        -0x5c7ecb2507d43e6bL
        0x3bf4595421b73187L    # 6.894489047964653E-20
    .end array-data

    :array_16
    .array-data 8
        -0x36eac1392de5dc5fL    # -1.1844606651979101E44
        -0x394c8528861fda04L    # -3.950983049117685E32
    .end array-data

    :array_17
    .array-data 8
        -0x69d706e72f719b52L    # -6.372124346565166E-202
        0x6a50472fc145ec3aL    # 1.275910037952023E204
    .end array-data

    :array_18
    .array-data 8
        0x726bfe50bfc4dcb9L    # 1.4932842091319326E243
        -0x661d699569fbe0e7L    # -5.468083425552615E-184
    .end array-data

    :array_19
    .array-data 8
        -0x87c8dba4b292189L    # -5.016315509126514E267
        0x7b1cd2927f12914L
    .end array-data

    :array_1a
    .array-data 8
        0x245f0764c71d6e22L
        0x6a1037221f625155L    # 7.943717813073656E202
    .end array-data

    :array_1b
    .array-data 8
        0x62618d4e5b2e0ca4L    # 8.08599868039746E165
        -0xf732dc5b69207b9L    # -1.4318539958610115E234
    .end array-data

    :array_1c
    .array-data 8
        -0x2ea50a4bd748e107L    # -8.183426007830541E83
        0x395a06ecf5a37f79L    # 2.0050512460698108E-32
    .end array-data

    :array_1d
    .array-data 8
        -0x668882b1adbff349L    # -5.398536267081059E-186
        0x72e1cd974679d8e2L    # 2.4312065622325563E245
    .end array-data

    :array_1e
    .array-data 8
        0x32b9c84cf4f8fc29L    # 2.448187563007064E-64
        -0x4067d7281f96b76bL    # -0.023593304702736424
    .end array-data

    :array_1f
    .array-data 8
        -0x7229420863c0a606L
        -0x7e82bc826e48083aL
    .end array-data

    :array_20
    .array-data 8
        -0x386049d9783ff5d2L    # -1.0537961846096509E37
        0x16c63c2796939d92L    # 5.809645056235422E-199
    .end array-data

    :array_21
    .array-data 8
        0x7ce6cdb2c73c2fbbL    # 4.551216283982967E293
        -0x1b28c77c6f233de9L    # -5.881036066660109E177
    .end array-data

    :array_22
    .array-data 8
        -0x164b38ebe335444dL    # -1.590426343192818E201
        -0x32e6d0acf9bdff43L    # -2.590112681055785E63
    .end array-data

    :array_23
    .array-data 8
        -0x71bc07ded463fdbfL    # -5.989565961613517E-240
        0x7b0c6ea04dff9001L    # 5.284882917605645E284
    .end array-data

    :array_24
    .array-data 8
        0x22f8f57904dd64b7L
        0x55910f9bccce5b30L    # 1.528488809992173E104
    .end array-data

    :array_25
    .array-data 8
        0x29ce3d37614c13fL
        -0x6653bf6b8187b727L
    .end array-data

    :array_26
    .array-data 8
        0x2261bda2c0c684e2L
        0x6297ca6c350b1d63L    # 8.768091721391488E166
    .end array-data

    :array_27
    .array-data 8
        -0x7a4e6a61c2c960a4L
        -0x5d747bec8b011ffdL    # -2.820565097743157E-142
    .end array-data

    :array_28
    .array-data 8
        0x29ac66b5b5a1f720L
        0x5012a656d87e3a3cL    # 5.398737455410954E77
    .end array-data

    :array_29
    .array-data 8
        -0x1b7a9b0dcc1b686L    # -2.03730159297336E300
        0x3b7bb737547902ebL    # 3.668140766777399E-22
    .end array-data

    :array_2a
    .array-data 8
        -0x11b7b9054d932c36L    # -1.7551188254066627E223
        -0x8c855425f115ef0L
    .end array-data

    :array_2b
    .array-data 8
        0x1e2c0a22807f1809L
        0x30b977c112446cb4L    # 5.630569607932693E-74
    .end array-data

    :array_2c
    .array-data 8
        -0x6fb8ddc426a71b8eL
        -0x724727e02a22a326L
    .end array-data

    :array_2d
    .array-data 8
        -0x50140cc0a55d3ed9L    # -7.543203523261427E-78
        -0x5aa70f356bd8cd9fL    # -8.995154077995097E-129
    .end array-data

    :array_2e
    .array-data 8
        0x7cf27bd8feed5fe2L    # 7.378134576758846E293
        0x8343f464f30e7acL
    .end array-data

    :array_2f
    .array-data 8
        -0x561af44147f72405L    # -7.169000568644479E-107
        0x58fab8ca777dfa97L    # 4.312654157931529E120
    .end array-data

    :array_30
    .array-data 8
        -0x3560a5b6dd77d7efL    # -2.9326074169075846E51
        -0x420c154109d35788L    # -2.8983015134963E-10
    .end array-data

    :array_31
    .array-data 8
        0x292f81f4ce31ccd0L    # 2.620278768491156E-110
        0x156f2eccf2e29788L
    .end array-data

    :array_32
    .array-data 8
        -0x567234d8a4875036L
        -0x51742dbcc819cc10L    # -1.790149255623139E-84
    .end array-data

    :array_33
    .array-data 8
        -0x66f6e30963d3e13dL
        -0x61811001b8ce7253L    # -8.595817551398117E-162
    .end array-data

    :array_34
    .array-data 8
        -0x75e46c2536e77717L    # -5.605050738359734E-260
        -0x64bcd7f28c70ca8fL
    .end array-data

    :array_35
    .array-data 8
        -0x373ef51b9686bf67L    # -2.9692305922852644E42
        -0x4b72e0588b5abf8fL    # -1.4846927845674027E-55
    .end array-data

    :array_36
    .array-data 8
        0x7ed0b0bf503a68bL
        -0x50290ecb171dffd6L    # -3.095825368317663E-78
    .end array-data

    :array_37
    .array-data 8
        0x725200339bcd53b6L    # 4.801180430065588E242
        0x5d4648a08aabcbd9L    # 2.1229280745171055E141
    .end array-data

    :array_38
    .array-data 8
        0x58ea7d17d71db224L    # 2.1375093870021674E120
        -0x7364f139b912fb19L    # -6.046647716914031E-248
    .end array-data

    :array_39
    .array-data 8
        -0xf834d4a12268684L    # -7.128688262122114E233
        0x33bc5c6a6124d429L    # 1.7649092523006498E-59
    .end array-data

    :array_3a
    .array-data 8
        0x41cdface12434817L    # 1.0059520365256375E9
        0x5650a20609a59af9L    # 6.103606998976512E107
    .end array-data

    :array_3b
    .array-data 8
        -0x5b3172cf44150737L    # -2.152111632461143E-131
        0x21e9fa51d1ff8f81L    # 2.600486810524586E-145
    .end array-data

    :array_3c
    .array-data 8
        -0x4120349e1b417276L    # -7.580390569392353E-6
        -0xdc53029cb5651aL
    .end array-data

    :array_3d
    .array-data 8
        -0x290abd05225d372fL    # -7.98941886037239E110
        0x65d2c395d22b2079L    # 3.114461208159035E182
    .end array-data

    :array_3e
    .array-data 8
        0x23c24120dee24cedL    # 1.962093602016639E-136
        0x14ae616d4fd01cecL
    .end array-data

    :array_3f
    .array-data 8
        0x9df80425a3df7e1L
        -0xa89082852517a07L    # -6.897346324038631E257
    .end array-data

    :array_40
    .array-data 8
        -0x21609a3faf44b572L    # -6.2729595639699975E147
        0x742f9bebe9a7d433L    # 4.526245377529918E251
    .end array-data

    :array_41
    .array-data 8
        -0x198794afa55dc68eL    # -4.150387885328934E185
        0x4215c49df870f735L    # 2.3373250076241413E10
    .end array-data

    :array_42
    .array-data 8
        0x37762287154e526cL    # 1.5880993040835373E-41
        -0x753f4f14bd715697L    # -6.947657495798166E-257
    .end array-data

    :array_43
    .array-data 8
        -0x3ecfe7e23579e364L    # -1054749.791108883
        0x638a232d1c2d01d9L    # 3.156530949856038E171
    .end array-data

    :array_44
    .array-data 8
        -0x2e55d7d81db0b503L    # -2.5407057742687773E85
        0xe66d379615fce34L    # 2.738574860291679E-239
    .end array-data

    :array_45
    .array-data 8
        0x66e47f5ae1273f94L    # 4.459311362032474E187
        -0x5850d0d2a5dbecbbL    # -1.545779365590619E-117
    .end array-data

    :array_46
    .array-data 8
        -0x492f209669f3938cL    # -1.182184770917474E-44
        0x3d2c0b899f09b3bL
    .end array-data

    :array_47
    .array-data 8
        -0x48dfbe4b2fb2047cL    # -3.644870407520107E-43
        -0x2a7363bb6d52b1d5L    # -1.2816008153679076E104
    .end array-data

    :array_48
    .array-data 8
        -0x3741ee470b14e516L    # -2.61939922783062E42
        0x1c4af0bb38e8bf90L
    .end array-data

    :array_49
    .array-data 8
        0x1bdf82ed9ad265c5L
        0x1c4a47c67d91101dL    # 2.125122695638197E-172
    .end array-data

    :array_4a
    .array-data 8
        -0x22827ea1298941aeL    # -2.2487376483321332E142
        0x5d88511469ba86ecL    # 3.7065760895939905E142
    .end array-data

    :array_4b
    .array-data 8
        0x11130cb8552d12c1L    # 2.010347478252127E-226
        -0x776486095cfe41deL
    .end array-data

    :array_4c
    .array-data 8
        -0x793bef452a702980L
        0x3e1297ab95471cc5L    # 1.0822237178554584E-9
    .end array-data

    :array_4d
    .array-data 8
        0x508ecde02d567593L    # 1.1414025272739484E80
        -0x5bd0e670f18b87a9L    # -2.139390629507131E-134
    .end array-data

    :array_4e
    .array-data 8
        0x5b6fbc31cc1d673fL    # 2.815713492119022E132
        0x56935e9b3417ef6dL    # 1.1372556602883553E109
    .end array-data

    :array_4f
    .array-data 8
        0x5dfbbf6137d3d10bL    # 5.413809927299717E144
        0x14d5a1b7cb85a06eL    # 2.631927222459627E-208
    .end array-data

    :array_50
    .array-data 8
        0x15a92a7506299a74L    # 2.508329145772584E-204
        -0x7093160438eaefdL    # -4.93522097962081E274
    .end array-data

    :array_51
    .array-data 8
        0x77443e0826b78852L    # 3.263520099701235E266
        0x5e34280e38d01d78L    # 6.292342166596969E145
    .end array-data

    :array_52
    .array-data 8
        -0x4c3a897ac92b0055L    # -2.6712878276630767E-59
        -0x7f8b426df9e519ecL
    .end array-data

    :array_53
    .array-data 8
        -0x68820bf2fb6cc9aeL
        0x31b979984b2a24b9L    # 3.69109190428948E-69
    .end array-data

    :array_54
    .array-data 8
        -0x3f614873e0932546L    # -1965.8868386276722
        -0x4f51dd88f3f20f60L    # -3.3311710145740342E-74
    .end array-data

    :array_55
    .array-data 8
        -0x63bc9026c40035fcL
        -0x3ce63e23da26833dL    # -1.8125064224356328E15
    .end array-data

    :array_56
    .array-data 8
        -0x71f4b618427997f1L    # -5.115595617243496E-241
        -0x4fabb15e43b02ea6L    # -7.015040672658297E-76
    .end array-data

    :array_57
    .array-data 8
        0x1517c8063e9cce2dL    # 4.629556731489907E-207
        -0x6728111601bc5cdcL
    .end array-data

    :array_58
    .array-data 8
        -0x6f29858998e37488L
        0x25f9f2bb7f76e784L    # 9.583157240530672E-126
    .end array-data

    :array_59
    .array-data 8
        0x2ac9f28efea454bbL
        -0x6f797f182f0b7c23L
    .end array-data

    :array_5a
    .array-data 8
        -0x3060d6efe0b1e00cL    # -3.5235625769161427E75
        -0x3f165a51218574b4L    # -52525.46465804297
    .end array-data

    :array_5b
    .array-data 8
        0x5e49d1ab010817f6L
        0xd372a7031716743L
    .end array-data

    :array_5c
    .array-data 8
        0x3cb1c1af5df881c6L    # 2.464220791195394E-16
        0x366b0077773a3fd2L
    .end array-data

    :array_5d
    .array-data 8
        0x37580b2b0bf0de9cL    # 4.312613838796169E-42
        -0x1d7d6ba7a9eba741L    # -3.423741826823422E166
    .end array-data

    :array_5e
    .array-data 8
        0x227543e36287df03L
        0x452e4a87196edcaL
    .end array-data

    :array_5f
    .array-data 8
        -0x12ae2351f9f2bdd1L    # -3.940829933770588E218
        0x2bc4ba7df320e901L    # 7.581566797205794E-98
    .end array-data

    :array_60
    .array-data 8
        -0x456c4c8727bd5902L    # -1.5914391706873146E-26
        0x47be67b8faeab321L    # 4.041539829302031E37
    .end array-data

    :array_61
    .array-data 8
        -0x12e9302cc329b8c2L    # -3.1455512488713385E217
        0x1a50b26b7fb91842L    # 6.287237226155444E-182
    .end array-data

    :array_62
    .array-data 8
        -0x1248fd7afc779124L    # -3.2490057680725565E220
        -0x358ce836d94ef9b2L    # -4.464691794768997E50
    .end array-data

    :array_63
    .array-data 8
        0x3516162c225276c3L    # 5.764874440025436E-53
        0x3d7e1786b0f3f1daL    # 1.7105264177501831E-12
    .end array-data

    :array_64
    .array-data 8
        0x5f2dff0557895a25L    # 3.068412449184258E150
        -0x60dc1627339fdcd3L
    .end array-data

    :array_65
    .array-data 8
        0x5183bf833cb16f73L    # 4.795501537798025E84
        0x3486d6ab88230dc1L    # 1.1642853446747809E-55
    .end array-data

    :array_66
    .array-data 8
        -0x82c77ef52a723f8L
        0x4fd89b4ed7d6fd31L    # 4.4519655265134453E76
    .end array-data

    :array_67
    .array-data 8
        -0x756d1f4c5015a8cbL    # -9.822312839443828E-258
        0xde7f04dd518063dL
    .end array-data

    :array_68
    .array-data 8
        -0x41652bac7c3ffa0dL    # -3.9978920418634336E-7
        0x4556da43b09d9ef5L    # 1.1050837033257304E26
    .end array-data

    :array_69
    .array-data 8
        0x465c1eb6f3975ea3L    # 8.911577102082179E30
        -0x67d51404a60abcd0L
        0x5ebf8450ea448288L    # 2.51872540094991E148
    .end array-data

    :array_6a
    .array-data 8
        0x7e085804219b7e31L    # 1.2736623633928568E299
        0x19c307fb26f4bffdL
        -0x478e9bb7a6474b9dL    # -8.177551667105499E-37
    .end array-data

    :array_6b
    .array-data 8
        -0x53bb068e2c4b4abeL    # -1.9639064057123898E-95
        -0x5f7ae43a3c5d20c9L    # -5.03789708267111E-152
        0x4eb25646d7af3be0L
    .end array-data

    :array_6c
    .array-data 8
        0x73ce8691f29acf5fL    # 6.829856033025726E249
        -0x5021e1faddfcb8adL    # -4.0640278757975506E-78
    .end array-data

    :array_6d
    .array-data 8
        -0x6cc47576f14b6961L    # -4.993272330609912E-216
        0x2a16766ee69c8fd2L    # 6.121278413825408E-106
        -0x49bde74eef12b08bL    # -2.4764189587417117E-47
    .end array-data

    :array_6e
    .array-data 8
        -0x1943c6b72c89770bL    # -7.67524618893701E186
        0x3f212f526276e887L    # 1.3111000701632546E-4
    .end array-data

    :array_6f
    .array-data 8
        -0x3532a212ac52cd55L    # -2.1974925409357202E52
        0x61ff24b9785476f4L    # 1.1208937562086597E164
    .end array-data

    :array_70
    .array-data 8
        0x2c79a79ccfefce6aL    # 1.9217147732568468E-94
        0x794769900092e9e8L    # 1.6211795432427227E276
        0x49bc81749c208068L    # 1.627386958660973E47
    .end array-data

    :array_71
    .array-data 8
        -0x7a474d26794ac941L
        -0x13a443fa5146c456L    # -9.336770415478388E213
        -0x248b3e1c8914aeddL    # -3.683414423563329E132
    .end array-data

    :array_72
    .array-data 8
        -0x26139a169a6d0527L    # -1.5018182893523392E125
        -0x57733ac58f39253cL    # -2.336565125207696E-113
        -0x1c6c8a85da3ab13eL    # -4.699976885518314E171
    .end array-data

    :array_73
    .array-data 8
        0x5d252f360a458877L    # 5.04550378664659E140
        -0x47e0489dbe9e7114L
        0x6576e76900c60d37L    # 5.940017524189086E180
    .end array-data

    :array_74
    .array-data 8
        0x22b0e6dbc163999L
        0x189f9691d38ff400L
    .end array-data

    :array_75
    .array-data 8
        0x49399cffa3e4946aL    # 5.711951364232022E44
        -0x4c34fc81d69a4f18L
    .end array-data

    :array_76
    .array-data 8
        0x735308696155baf6L    # 3.326905461576042E247
        -0x2a527f9131ea8a5eL    # -5.286100539476181E104
        -0xf0625ae824c7d90L    # -1.644009430252531E236
    .end array-data

    :array_77
    .array-data 8
        -0x731654e8cc20147eL
        0x639483e6615a7d19L    # 4.9551182420775915E171
        -0x5c2ae19877da3ad5L    # -4.539944386125207E-136
    .end array-data

    :array_78
    .array-data 8
        -0x1b6e1dab16f307adL    # -2.8309015318907635E176
        -0x372c502d047f8f28L    # -6.859853162661296E42
    .end array-data

    :array_79
    .array-data 8
        0x7865fd120e4330bcL    # 9.293147426385975E271
        0x5c5471e55334f872L    # 5.944059604707313E136
        -0x2f2bcdd7fcbd2b9fL    # -2.394652798530601E81
    .end array-data

    :array_7a
    .array-data 8
        -0x2a0b3d00f4616e15L    # -1.1904234952774814E106
        -0x37f78e3794a329b1L    # -1.0397525258213837E39
        -0x4638ec6144c7715cL    # -2.275532468662298E-30
    .end array-data

    :array_7b
    .array-data 8
        -0x2bce44a0d7ad415fL    # -3.787515281922563E97
        -0x7f3f44726a0f7e85L    # -4.765610977841228E-305
        -0x4ff674e098c01fdL    # -3.084903101580946E284
    .end array-data

    :array_7c
    .array-data 8
        -0xc94dae5bb0896dbL    # -9.489759545619693E247
        -0x9061929b8c2a6a6L    # -1.304982206564941E265
    .end array-data

    :array_7d
    .array-data 8
        0x2abd0be2fc5fdbcaL    # 8.105396937659029E-103
        0x5b8d77a8c1bd3b9aL    # 1.0458037631938385E133
    .end array-data

    :array_7e
    .array-data 8
        -0x7569b0ff04569ebaL    # -1.160743357858761E-257
        -0x702bc45152dc1facL    # -2.036322293882822E-232
    .end array-data

    :array_7f
    .array-data 8
        -0x40dc59a5281718f1L    # -1.4991625717347036E-4
        0x710ade2c8620aef4L    # 3.4171166257008E236
        -0x47e1d2f9afd4ceecL    # -2.2169733517350756E-38
    .end array-data

    :array_80
    .array-data 8
        -0x770f0f36995c038dL    # -1.313445123302142E-265
        0x17a1d0a9db4043b7L    # 7.626422806418303E-195
        -0x44da0cadac7f153L    # -6.993749224041744E287
    .end array-data

    :array_81
    .array-data 8
        -0x5d1acae765b26f22L
        -0x24fd6ef75ad4f6a6L
        -0x65e1bca9cc6f0fc6L    # -7.122215527962276E-183
    .end array-data

    :array_82
    .array-data 8
        -0x161e9dfe9f1bef1fL    # -1.0644559136416549E202
        -0x3a0624f2be637251L    # -1.280310816178038E29
    .end array-data

    :array_83
    .array-data 8
        0x3bac532149b05cbaL    # 2.998997090228853E-21
        -0x4cf6dd2277ab0a93L    # -7.63783749688177E-63
        0x32a22b2289a8b465L    # 8.626009113506261E-65
    .end array-data

    :array_84
    .array-data 8
        -0x543420e008ccbef0L    # -1.0194197195936651E-97
        0x52c4f080d7985104L    # 5.331805689656143E90
    .end array-data

    :array_85
    .array-data 8
        0x23010b5a5e0bf5dL
        -0x73a4ab5d5651280dL    # -3.817269978700693E-249
    .end array-data

    :array_86
    .array-data 8
        -0x1817145c53c74778L    # -3.5530670997195634E192
        -0x521b58643d751864L    # -1.2978682013140369E-87
        0x5994e30de2d3c613L    # 3.4518575413639205E123
    .end array-data

    :array_87
    .array-data 8
        -0x306a08cd8bc19338L    # -2.48383231662353E75
        0x6ccd9b24e8bead95L    # 1.2757545083301073E216
        -0x79a5773e0597f203L    # -4.677676409020412E-278
    .end array-data

    :array_88
    .array-data 8
        0x4eb4510bcd01f5b9L    # 1.4021992538631676E71
        -0xc53119fd9ba1c0dL    # -1.618274526476353E249
        0x45a43863051fb537L    # 3.128933825562819E27
    .end array-data

    :array_89
    .array-data 8
        -0x67a65264de923c50L    # -2.251264225172285E-191
        0x4e1f2bd1436d5dd1L    # 2.1009321529697281E68
        0x5ae97f3c9437e704L    # 8.836851176145952E129
    .end array-data

    :array_8a
    .array-data 8
        -0x14ba59d94717e1c9L    # -5.560392152600777E208
        -0x4dc07facabe48b02L    # -1.168447099751051E-66
        0x40c76979bf21efd5L    # 11986.951145403009
    .end array-data

    :array_8b
    .array-data 8
        0x2daa99e14dbc2d08L    # 1.0446980581570981E-88
        -0x457c98a4db3bfc90L    # -7.837105948366826E-27
    .end array-data

    :array_8c
    .array-data 8
        0x49daf46c4519b838L    # 6.155382940416499E47
        0x58bf869537d22a30L    # 3.1799715676488298E119
    .end array-data

    :array_8d
    .array-data 8
        0x21272514f516d8e9L    # 5.656483764182197E-149
        -0x69de2cea04f3056eL    # -4.548116636494827E-202
        0x4bc5e9410fec3606L    # 1.074519621406189E57
    .end array-data

    :array_8e
    .array-data 8
        0x5b96dbcd9e750bf3L    # 1.622511738614594E133
        0x2c59bbc0eb3b1688L    # 4.81902034527177E-95
    .end array-data

    :array_8f
    .array-data 8
        0x32cf1a85c01f8e19L    # 5.9069274588145E-64
        0x6ed6ad041f48f6fbL    # 8.39344460985502E225
        -0x228fb57cf0863d2bL    # -1.2416162156344773E142
    .end array-data

    :array_90
    .array-data 8
        0x1647b82ba7c4f552L
        -0x762b65feeef7d343L
        -0x3cff794da97a68fdL    # -5.814625176583364E14
    .end array-data

    :array_91
    .array-data 8
        -0x1e477cb354cedeb8L    # -5.514068638236294E162
        -0x79d48ee44d41cd71L
        0x547e8f62e3186faeL    # 1.0444157291357643E99
    .end array-data

    :array_92
    .array-data 8
        -0x4d46720d9feffb79L    # -2.4265429227534477E-64
        -0x2b725ebe3b67f436L    # -2.025251301927621E99
    .end array-data

    :array_93
    .array-data 8
        -0x45b9cdc08a546690L    # -5.603129017011273E-28
        0x7a927e6113b5cf78L    # 2.685585758956984E282
    .end array-data

    :array_94
    .array-data 8
        0x218fa9ba887cc2a1L    # 4.952497038134584E-147
        -0x4cfbcf821c1b6d8eL    # -6.134720454671076E-63
    .end array-data

    :array_95
    .array-data 8
        0x7e5f2ee98812386dL    # 5.2208002731749665E300
        -0x58e93e629fd0fdcaL    # -2.203147321835973E-120
        -0x75c85b86c9cd6d9dL    # -1.922103087917364E-259
    .end array-data

    :array_96
    .array-data 8
        -0x489c24393f6943d4L    # -7.12388802890062E-42
        -0x457df483737df2f0L    # -7.288264634040982E-27
        -0x410beede67981003L    # -1.9137305139679806E-5
    .end array-data

    :array_97
    .array-data 8
        -0x2b1dffde0c48bac4L    # -7.874329237545048E100
        0x57b31004135794f5L    # 2.9339968494224966E114
        0x5035bd4bdb0a4815L    # 2.5172550276553764E78
    .end array-data

    :array_98
    .array-data 8
        0x3be773709d5b4069L    # 3.97274327583317E-20
        0x71692b666a5ed62eL    # 2.0487158108136815E238
    .end array-data

    :array_99
    .array-data 8
        0x2abf0ea96537032dL    # 8.666521145069996E-103
        -0x66a9cc31ad8dbfe4L
        0x7774c2b9dcd3e222L    # 2.677670186921409E267
    .end array-data

    :array_9a
    .array-data 8
        0x4cf46fb18e042b32L    # 5.254379649221935E62
        0xc6c305a988bca1fL
    .end array-data

    :array_9b
    .array-data 8
        -0x7f91da35245524bfL
        0xf8ae66cd05e32a9L    # 8.460328725118033E-234
    .end array-data

    :array_9c
    .array-data 8
        -0x7851e56144c54f34L
        0xff50dd13f151d98L    # 8.47573620934536E-232
        -0x2f94518a48a1e74dL    # -2.5642374653792178E79
    .end array-data

    :array_9d
    .array-data 8
        0x7a73e01a8f84d551L    # 7.215591728157247E281
        -0x63a8243ebd70fdd3L
        -0x4d5a097423afbf8fL    # -1.0427591715746537E-64
    .end array-data

    :array_9e
    .array-data 8
        0x7a76754b8f2d54f8L    # 8.153246979735039E281
        0x5646d8175b06083bL    # 4.191434108839965E107
        -0x6f7e9632d8284805L    # -3.589170241644736E-229
    .end array-data

    :array_9f
    .array-data 8
        0x5cd2fc2ad6e0fcb0L    # 1.4130231320828875E139
        0x6056d161d38da244L
        -0x6e6780efca425417L    # -6.617964836916392E-224
    .end array-data

    :array_a0
    .array-data 8
        0x4ac863ed4f693cf9L    # 1.8251019047191842E52
        -0x365ef54b83f08b3L
    .end array-data

    :array_a1
    .array-data 8
        0xb2529ab3b01928eL
        0xcbed861fee1f513L
    .end array-data

    :array_a2
    .array-data 8
        0x7bd4c59e682e54feL    # 3.1629556137996666E288
        -0x64205d49ce86d88eL
        -0x6198e2935d4050a2L
    .end array-data

    :array_a3
    .array-data 8
        0x6a666bf0378830f1L    # 3.514911021755003E204
        -0x211293039dcdc9c4L
        -0x2cc6e4feef8b5b57L    # -8.182524180349504E92
    .end array-data

    :array_a4
    .array-data 8
        -0x228794b49be382bdL    # -1.8610925227648884E142
        0x70c0d3283ca16f7dL    # 1.3373878881605288E235
    .end array-data

    :array_a5
    .array-data 8
        -0x3c225daff2a66986L    # -8.5414287663794688E18
        -0x771bfcb83dff3e06L    # -7.75821819391061E-266
        0x59ed4926998dbb29L    # 1.5487613351244154E125
    .end array-data

    :array_a6
    .array-data 8
        0x32b8fba8f1b6414bL    # 2.3722821180593086E-64
        0x3edfcba250148460L    # 7.580624925369433E-6
        0x11a9a5bf0e1fc03cL
    .end array-data

    :array_a7
    .array-data 8
        -0x3766c72274383b62L    # -5.492893615024219E41
        0x68529ba89c1c5c1fL    # 3.395923379906851E194
        0x59657691f8d7a31L    # 9.61557767954361E-282
    .end array-data

    :array_a8
    .array-data 8
        0x4e4264c860933483L    # 9.917853991870142E68
        0x5a27cb558f7e4756L    # 2.0133564222726584E126
    .end array-data

    :array_a9
    .array-data 8
        -0x5e04a5ae718d31feL
        0x795cf3fd8efd6960L
    .end array-data

    :array_aa
    .array-data 8
        -0x180a52467ac551dbL    # -6.181711264275935E192
        0x1956b18d3f2b39aaL    # 1.30390321444089E-186
    .end array-data

    :array_ab
    .array-data 8
        -0x1c2ff44e8a3f9eb5L    # -6.200911920319288E172
        0x22e0020c6ced99acL
        -0x1578384265e6a6e8L    # -1.4911565492362568E205
    .end array-data

    :array_ac
    .array-data 8
        0x3577c579f06c55fcL
        -0x336e3856ac2862f8L    # -7.142810474044614E60
        0x46c0cf21172fe4acL    # 6.818580486713338E32
    .end array-data

    :array_ad
    .array-data 8
        -0x2eb4b638fc10b54aL    # -4.1415565339217637E83
        -0x6a8235507a9cb320L    # -3.711751098430241E-205
        -0x4690283312bd8648L    # -4.906186460799947E-32
    .end array-data

    :array_ae
    .array-data 8
        0x41270bd44deb1d6fL    # 755178.1521844099
        -0x4fee6b5029190aaeL    # -3.795770551566388E-77
    .end array-data

    :array_af
    .array-data 8
        0x359da26ec38af645L    # 1.9801513202342292E-50
        0x3a89b81bd92bee3L
        0x1a901f17b553ea39L    # 9.712853972056918E-181
    .end array-data

    :array_b0
    .array-data 8
        -0x39f35e90e0f2e0dL
        0x42b6d3cded1c957cL    # 2.5098948779157484E13
    .end array-data

    :array_b1
    .array-data 8
        -0x57c74aa1f7335f20L    # -6.27086498527422E-115
        0x7e2b7b1ba8f82d45L    # 5.751174030201941E299
    .end array-data

    :array_b2
    .array-data 8
        0x37cdcbdc0d16281cL    # 6.8409010611784325E-40
        0x1ed3803d2041453dL    # 3.467669504106773E-160
        -0x74bb47e5dabc00ebL    # -2.207829770847723E-254
    .end array-data

    :array_b3
    .array-data 8
        -0x7b2a1dcabd88ff14L
        0x68fd4d11619779c6L    # 5.4757082946286384E197
        0x16caa90d69ed30a6L    # 6.965926686509174E-199
    .end array-data

    :array_b4
    .array-data 8
        -0x793437036a1f55f4L    # -6.269689217653699E-276
        -0x6e9302e9c8433129L    # -9.789506362064382E-225
        -0x4f2998bc4ab6c820L    # -1.9812284320047215E-73
    .end array-data

    :array_b5
    .array-data 8
        0x6c79ae9cd33ad95bL    # 3.4583355766102046E214
        -0x2c55e3507e81c770L    # -1.0893555996700472E95
        -0x5d6f84b5e3cd502dL    # -3.378947266861207E-142
    .end array-data

    :array_b6
    .array-data 8
        0x20e681f57d6b8b43L    # 3.437972247284973E-150
        -0x263228b3eb2eb492L    # -3.945314848878394E124
    .end array-data

    :array_b7
    .array-data 8
        -0x7155afb2043028e3L
        -0x4769de59e2cde925L    # -4.1624614098111634E-36
    .end array-data

    :array_b8
    .array-data 8
        -0x58665cb3e3703f32L    # -6.354243025153077E-118
        -0x7b25aa2d660e7d5L    # -3.132358946720643E271
        -0x512f78a4ce691d2fL    # -3.403304664363278E-83
    .end array-data

    :array_b9
    .array-data 8
        -0x43f9325f9230561cL    # -1.5452069149974063E-19
        -0x2d2294445d3c368cL    # -1.4982823230535102E91
        0xc6845844b80af6fL
    .end array-data

    :array_ba
    .array-data 8
        0x73150f3f21815054L    # 2.300730251093725E246
        -0x561e276a7a63aa05L    # -6.079014842408394E-107
    .end array-data

    :array_bb
    .array-data 8
        -0x864a18fff75ada8L
        -0x234c9ceebfad2dacL    # -3.607349568704651E138
        0x78cb5f9e9cc986e6L    # 7.404174200662832E273
    .end array-data

    :array_bc
    .array-data 8
        0x2ebd806912de5fc8L    # 1.5186120195557615E-83
        0x3e95d3119274875fL    # 3.252101969543647E-7
        0x6e99f2db20d81006L    # 6.003045755108122E224
    .end array-data

    :array_bd
    .array-data 8
        0x31cde60ff715169bL    # 8.664091552132056E-69
        0x791789df7f859618L    # 2.037398894161414E275
        0x6cb4667ab424ac7eL    # 4.395352147247075E215
    .end array-data

    :array_be
    .array-data 8
        -0x4f4aab127d9e30d1L    # -4.716149269515538E-74
        0x744980035e308f3eL    # 1.4605870433779763E252
    .end array-data

    :array_bf
    .array-data 8
        0xa43a361174dd48eL
        -0x37c48f618d89dab8L    # -9.337320146852054E39
    .end array-data

    :array_c0
    .array-data 8
        0x29b7c14cd487ee41L
        -0x7fecb685ef929655L
    .end array-data

    :array_c1
    .array-data 8
        0x5981c7663ced9de7L    # 1.4691063076315333E123
        -0x286d8d4c28263bf8L    # -7.098539491886549E113
        0xb83f7546015011eL
    .end array-data

    :array_c2
    .array-data 8
        0x11d56e54dd67d39L
        0x380b1295efbcf59bL    # 9.944902741377584E-39
        0x370060a29d63ccceL    # 9.179895760878517E-44
    .end array-data

    :array_c3
    .array-data 8
        -0x4b17a759428666L
        -0x1d2ba4bc77b95808L    # -1.200385361332785E168
        0x61ce7f2365447275L    # 1.3720172668620793E163
    .end array-data

    :array_c4
    .array-data 8
        0x1714ef822478bdabL    # 1.750442467524371E-197
        -0x64b4c6b5460f7972L
    .end array-data

    :array_c5
    .array-data 8
        0x60016d46197c18f4L    # 2.920698368496205E154
        0x49d6f0d2b83955b7L    # 5.238733282959362E47
        -0x1927dc3571d0d781L    # -2.6258575288179337E187
    .end array-data

    :array_c6
    .array-data 8
        -0x63c19e9fb62ad324L
        0x3ac4c98e885d327cL
    .end array-data

    :array_c7
    .array-data 8
        0x469024403012c0a1L    # 8.184765816664103E31
        -0x3f943adf5cc215daL    # -222.1602340897818
    .end array-data

    :array_c8
    .array-data 8
        0x14f2d153bddb1696L    # 9.158179951779916E-208
        0x22f37e5502e3ae8L
        0x4ed408296db4866dL    # 5.530198777727949E71
    .end array-data

    :array_c9
    .array-data 8
        -0x3fbab7044cf02346L    # -42.57018125795862
        0x4eb7f1a52d34b10bL    # 1.6525490824768995E71
        0x7ba70668f5aa59d7L    # 4.382543666677402E287
    .end array-data

    :array_ca
    .array-data 8
        0x477869a9878689aL
        0x689ef634c312fc10L    # 9.040711165390976E195
        0x950e971e3b7a85aL
    .end array-data

    :array_cb
    .array-data 8
        0x7564fa1126a8e9fL
        0x52c014f97722497dL    # 4.094934139341405E90
        0x772e9b22db610954L    # 1.233595485690069E266
    .end array-data

    :array_cc
    .array-data 8
        -0x484f08802beb5212L    # -1.947692461026845E-40
        -0x133e09c88fdbbabcL    # -7.739918074721262E215
    .end array-data

    :array_cd
    .array-data 8
        0x26dfbef7d5016499L
        0x490ec8b6add10466L    # 8.581337194684661E43
    .end array-data

    :array_ce
    .array-data 8
        0x64694a8b085dd6fdL    # 5.004222948096541E175
        -0x256cb4410963a470L    # -2.0898870687189903E128
        0x674bfe631ae3cd2bL    # 3.8976926468864045E189
    .end array-data

    :array_cf
    .array-data 8
        -0x1564ad685b6b7155L    # -3.426569175298683E205
        0x4d4fe99e9df35ab8L    # 2.6256145077126799E64
        0x6d9b6163e38d31eeL    # 9.665339717365778E219
    .end array-data

    :array_d0
    .array-data 8
        -0x37f988ada45313f6L    # -9.556022289376274E38
        0x60d4be286c1512aL
    .end array-data

    :array_d1
    .array-data 8
        0x3dd0bb62c3aa1ee1L    # 6.087057326601334E-11
        -0x48565105901c8ae4L    # -1.4741611123865777E-40
        -0x75a090abe4be0f4dL
    .end array-data

    :array_d2
    .array-data 8
        -0x1794ec07ba672dbaL    # -9.883343946950443E194
        0x28d95937d8ad843L
        -0x351a688e19e544a7L    # -6.462695837588056E52
    .end array-data

    :array_d3
    .array-data 8
        -0x6f9ad41aefa64a5dL
        0x5a6abf09ca47c250L    # 3.6210203991517834E127
        0x7b21aadf1672cf3fL    # 1.313591074341657E285
    .end array-data

    :array_d4
    .array-data 8
        -0x1bc3f955e9ca41c1L    # -6.9316899485634265E174
        0x23da517bd56058c8L    # 5.657697617338975E-136
    .end array-data

    :array_d5
    .array-data 8
        0x3922f96ad49f0dc9L    # 1.8271573132099508E-33
        -0x44eaf3bfc9478cb3L    # -4.35259436158084E-24
    .end array-data

    :array_d6
    .array-data 8
        -0x1cc2a6c85823451dL    # -1.1076015693927478E170
        -0x35027c59d7342751L    # -1.7668149555664422E53
    .end array-data

    :array_d7
    .array-data 8
        0x49b522c7e6d0695cL    # 1.2066444541092196E47
        0xa79b5ff5ace5da8L
        -0x2dcac6549c0f96d7L    # -1.0555820696046366E88
    .end array-data

    :array_d8
    .array-data 8
        -0x6d82bbeaddc28fffL
        0x6f6c37970486abd7L    # 5.34761144208995E228
        -0x7766d84cbffa989eL
    .end array-data

    :array_d9
    .array-data 8
        -0xfad92261724d8c4L    # -1.1444608373908065E233
        -0x1b833c871420ee77L    # -1.1382566077136337E176
        0x74dbb3e5d1b3e655L    # 8.124167108778858E254
    .end array-data

    :array_da
    .array-data 8
        0x35a014b651444ff3L    # 2.149024029241938E-50
        0x265b67b4dd8c8468L    # 6.477586815456835E-124
    .end array-data

    :array_db
    .array-data 8
        -0x2e41e20289e27f53L    # -5.8507648026065994E85
        0x11405a4f5ef9a57bL
        0x711a2957ecbe65beL    # 6.654558007078411E236
    .end array-data

    :array_dc
    .array-data 8
        0x1a413bee59413eedL
        0x2fd5eae718ea55a0L    # 2.957562357793205E-78
    .end array-data

    :array_dd
    .array-data 8
        0x5bc8d236b571dad8L    # 1.409450861835657E134
        0x71b603589fb78da3L    # 5.733729508938267E239
    .end array-data

    :array_de
    .array-data 8
        0xfbcfa14a4ff1beeL
        0x6c835a58183bee26L    # 5.21210467461919E214
        -0x3ccb6f5a27aded2fL    # -5.788541507474129E15
    .end array-data

    :array_df
    .array-data 8
        -0x4b255019e93c9b73L    # -4.3535370767214874E-54
        -0x4d0b7cc511c6937fL    # -3.1164632555674236E-63
        -0x198c45273bbd7871L    # -3.353370752498441E185
    .end array-data

    :array_e0
    .array-data 8
        -0x5ddb15e358632eb3L
        -0x6b4e9d632cd46fe7L    # -5.288138795866187E-209
        -0x1e461de6efbc7dacL    # -5.8223131379226704E162
    .end array-data

    :array_e1
    .array-data 8
        -0x1fc08205c872d7L
        0x22b4c81fac493e88L
        0x55f5c6390da626baL    # 1.2484836352530695E106
    .end array-data

    :array_e2
    .array-data 8
        0x6ef8e2922ce28926L    # 3.684471075137355E226
        -0x2b8c54dde89b6a3fL    # -6.721861983796988E98
    .end array-data

    :array_e3
    .array-data 8
        0x247d1b6265435207L    # 6.40735704890344E-133
        -0x37b4fc60b8920ca5L    # -1.8384877229630933E40
    .end array-data

    :array_e4
    .array-data 8
        -0xb2a19c6fd149f9bL    # -6.422242930948069E254
        -0xc7c7b6cbf6da130L    # -2.729347938343923E248
        -0x38db3372095111fcL    # -5.3997398122772755E34
    .end array-data

    :array_e5
    .array-data 8
        -0x2276fd7472b2ad95L    # -3.812243645062825E142
        -0x5f9a869207604c68L
        0x531ab9b321b0df14L    # 2.177623202352755E92
    .end array-data

    :array_e6
    .array-data 8
        0x4b7f1a17eeeb4a04L    # 4.7663565501605104E55
        -0x4277cc649160afc1L    # -2.7514022867659E-12
    .end array-data

    :array_e7
    .array-data 8
        -0x5287f9fcfd54df2bL    # -1.1793352554651035E-89
        -0x765a9a2884c32afeL
        -0x7c135df53999ee6dL    # -9.181649021224568E-290
    .end array-data

    :array_e8
    .array-data 8
        0x6cb996623211d1eL
        -0x20613a31c8146a21L    # -4.029239791875989E152
        -0x6e2fa268a572f51dL    # -7.074160408502751E-223
    .end array-data

    :array_e9
    .array-data 8
        0x6a6cdb075172d23bL    # 4.523523882253358E204
        0x692871c616bab71fL    # 3.6544923250539704E198
        -0x72b1770e2abf3aebL
    .end array-data

    :array_ea
    .array-data 8
        0x47eefb4e21c5c93eL    # 3.2945352870984E38
        0x243b3f915f169245L
    .end array-data

    :array_eb
    .array-data 8
        -0x3f29a40fc28345f2L    # -22895.753752881712
        -0x26b863439ced51c1L    # -1.2194545708269784E122
    .end array-data

    :array_ec
    .array-data 8
        0x75d4243276f6ac87L    # 3.871023670914267E259
        -0x577fd1c843fcb313L
    .end array-data

    :array_ed
    .array-data 8
        0x4c43e4fdbb17d6d5L    # 2.4975955858202607E59
        0xd9fff3d97ffa848L
        -0x279b809c7cb6c2a9L    # -6.461176341868625E117
    .end array-data

    :array_ee
    .array-data 8
        -0xfce81df5d6bd48eL    # -2.715771067774141E232
        -0x76140fd793698bf2L    # -7.097916680380563E-261
        0x7105b8aa123c424fL    # 2.7625702381522067E236
    .end array-data

    :array_ef
    .array-data 8
        -0x3b5cf1eda033c507L    # -4.499227079646216E22
        -0x56e6af097b5c044aL
        -0x29da54cd2b3268b6L    # -9.939447046175593E106
    .end array-data

    :array_f0
    .array-data 8
        -0x211ec2fd667a65c7L    # -1.102104644326578E149
        0x4281d06262c9e29eL    # 2.448337688892327E12
    .end array-data

    :array_f1
    .array-data 8
        0x5befb9825680f791L    # 7.205843917455951E134
        -0x34dae5d24d4d2006L    # -1.0105974700238172E54
        0x770e32265b4b94bdL    # 3.0426650347868962E265
    .end array-data

    :array_f2
    .array-data 8
        0x5439896eb3f5379L
        -0x73bf8d30e777a3bL    # -5.417317617575033E273
    .end array-data

    :array_f3
    .array-data 8
        0x2bd3705c1619ed5dL    # 1.4219791013934928E-97
        0x7a50a8a1dbc9eb56L    # 1.511950559377798E281
    .end array-data

    :array_f4
    .array-data 8
        0x295e2e39b4d95c52L
        0x771ab71a545c145cL    # 5.383879890121418E265
        -0x714da7a6d4d321daL    # -7.043098605027985E-238
    .end array-data

    :array_f5
    .array-data 8
        0xcde6f5131e2eb0eL
        -0x13e534cdeeeb432fL    # -5.63754701406118E212
        0x6df2b85b5516a5ddL    # 4.229275751684902E221
    .end array-data

    :array_f6
    .array-data 8
        -0x46b778008c54aec4L    # -9.449090567812905E-33
        -0x2c8ef849995cb89dL    # -8.88089121636688E93
        -0x413449798cef44feL    # -3.303645734329688E-6
    .end array-data

    :array_f7
    .array-data 8
        0x2386a6b454f937a1L    # 1.521678823775853E-137
        -0x41002c4c1033a179L    # -3.0352558485351288E-5
        -0x2a3a87ac904c1cb3L    # -1.538795885972213E105
    .end array-data

    :array_f8
    .array-data 8
        0x22ae5e3d4644b607L
        0x3a3845c487230548L    # 3.0636240015117243E-28
    .end array-data

    :array_f9
    .array-data 8
        -0x14714e39df201fc8L    # -1.2613817994215126E210
        0x7d059fc5d2b5966aL    # 1.726330998707358E294
    .end array-data

    :array_fa
    .array-data 8
        0x73aae51f28120beaL    # 1.5043818586851265E249
        0x6c6c4a0a473c89f4L    # 1.9047057695373618E214
        0x5b4e16acc2a77b6eL    # 6.674054095912166E131
    .end array-data

    :array_fb
    .array-data 8
        0x13486a61133f0276L    # 8.853184568226079E-216
        -0x43143e8771676db1L    # -3.0815068057322018E-15
        -0x48c5122ecf771c9dL    # -1.2075369226488052E-42
    .end array-data

    :array_fc
    .array-data 8
        0x41c988f0d85f2744L    # 8.568099047433858E8
        0x495d9cb2df12c383L    # 2.6414879765572978E45
    .end array-data

    :array_fd
    .array-data 8
        -0x3af469227e5aa0a2L    # -4.169179771805448E24
        0x6102aea43f86aca5L    # 2.0519916766253937E159
        -0x4c83f7a3971625a4L    # -1.0902979490277924E-60
    .end array-data

    :array_fe
    .array-data 8
        -0x6ff0a1ede91f7d4cL
        -0x1852e77dd40c0830L    # -2.5927259555295008E191
        0x521e0ea51f55eb35L    # 3.737036874117234E87
    .end array-data

    :array_ff
    .array-data 8
        -0x263a17283999b1deL    # -2.8966867640151744E124
        0x49f3dc7b50ebcc03L    # 1.8142036949842643E48
        0x3092bd2e5db85e6cL    # 1.035731618013383E-74
    .end array-data

    :array_100
    .array-data 8
        0x1a78abd054b05f76L    # 3.715968047420968E-181
        -0x683db9535918c722L    # -3.129505108196467E-194
    .end array-data

    :array_101
    .array-data 8
        0xcaa84121c6aaf61L
        -0x34bdc822c54bee44L    # -3.489917507053476E54
    .end array-data

    :array_102
    .array-data 8
        0x6302923d25ae0d2L
        0x6801cda41e56dbf4L    # 1.0153304111408836E193
    .end array-data

    :array_103
    .array-data 8
        0x22a4f596494b77bfL    # 8.593880912264235E-142
        0x5b74c497a13adf0eL    # 3.685288589271538E132
        -0x33fd6a5ee957f996L    # -1.4582091227438826E58
    .end array-data

    :array_104
    .array-data 8
        0x7886a0b6dc3c3f26L    # 3.8253241050971966E272
        0x5b66432db7317920L
        0x247e1411bba32e59L    # 6.62119825552789E-133
    .end array-data

    :array_105
    .array-data 8
        -0x2058c46d408553a9L    # -6.0839782389805225E152
        0x404a2c4a288d7608L    # 52.34601313502577
        -0xd7ce356f39feac9L
    .end array-data

    :array_106
    .array-data 8
        -0x2a4c992f085f1f28L    # -6.952750403222427E104
        0x6d397b2fc86c0a2cL    # 1.4054542663847972E218
    .end array-data

    :array_107
    .array-data 8
        0x537539e7d367ac8L
        0x4c5dfabdcd596499L    # 7.527364476940306E59
        -0x3cb1f6b2da98a76bL    # -1.6908952491962666E16
    .end array-data

    :array_108
    .array-data 8
        -0x6f9045a547e6f94aL
        -0x66946c082d932941L
    .end array-data

    :array_109
    .array-data 8
        -0x2cc9eb11a4228397L    # -7.197015000340494E92
        0x514fba2da814d943L    # 4.815278079169882E83
    .end array-data

    :array_10a
    .array-data 8
        0x67010f4fe9099b8dL    # 1.4845730618583797E188
        0x5c9a231eb5055978L    # 1.2158412720798808E138
        -0x792d2750aee38aa7L    # -8.50536515915857E-276
    .end array-data

    :array_10b
    .array-data 8
        -0x4fed79fdc481cc34L    # -3.99929556622647E-77
        0x2b1768aa82b5b859L    # 4.180628505423878E-101
        0x650e45f84545c705L    # 6.1337700600754656E178
    .end array-data

    :array_10c
    .array-data 8
        0x66e45f586d76c715L    # 4.432108957404371E187
        -0x212c57fcc394ae0aL    # -6.283471266478478E148
        0x43653896f54c1c75L    # 4.7785564180636584E16
    .end array-data

    :array_10d
    .array-data 8
        -0x36e456f4c08f5c14L    # -1.5421148102876404E44
        0x47b3008216a68f08L    # 2.5257970427728877E37
        0x3eec710c57fd2e73L    # 1.3562009143839475E-5
    .end array-data

    :array_10e
    .array-data 8
        -0x237becb1e7118566L    # -4.669307424171046E137
        0x2a838db26a3c1f52L    # 6.820498084531111E-104
    .end array-data

    :array_10f
    .array-data 8
        -0x6dcabc4b65cbdfddL    # -5.882715512112414E-221
        0x69a9865dc56d1146L    # 9.76901183535382E200
    .end array-data

    :array_110
    .array-data 8
        -0x2651eb6e4848b4a6L    # -9.942396951258961E123
        0x5fccee307c045f7cL    # 3.0304188496525176E153
        0x695f61e3169bbcf3L    # 3.7533831840699747E199
    .end array-data

    :array_111
    .array-data 8
        -0x4338ea1a89aeacbL    # -2.165503621528767E288
        -0x3ce6aef1d2bc22ecL    # -1.781498937145157E15
        -0x26065569fe0d1ce8L    # -2.714703170056749E125
    .end array-data

    :array_112
    .array-data 8
        -0x552c9e8d9ef8c890L
        -0x674818915f45f05fL
    .end array-data

    :array_113
    .array-data 8
        0x2715ba74f7a531caL
        0x39d1e14b490ac5e0L    # 3.526219095705055E-30
        -0x77839b000dbc2edL
    .end array-data

    :array_114
    .array-data 8
        0x7f0f18ba43f06540L    # 1.0662485177466632E304
        -0x5803e4e9550b7c64L    # -4.458182676820656E-116
        -0x6a92003cd9fa708aL
    .end array-data

    :array_115
    .array-data 8
        -0x42aa0d755e0eafcL
        0x3f540635274b5a5dL    # 0.0012221831395230677
        0x49ead259b87c0a38L    # 1.2249978584271362E48
    .end array-data

    :array_116
    .array-data 8
        0x5dfb52d1e4741314L    # 5.331071498562238E144
        0x66409936bec6d6afL    # 3.526435803989042E184
    .end array-data

    :array_117
    .array-data 8
        -0x1e07d3805636ee0bL    # -8.700475655960876E163
        -0x6f211843f9ed39b4L
    .end array-data

    :array_118
    .array-data 8
        0x3383389e27804102L
        -0x54f791fadbc26b5aL
    .end array-data

    :array_119
    .array-data 8
        -0xd56c4ae6ab3b2eaL
        0x1c4420b85394dcb3L
        -0x38eeae017ae125baL    # -2.248302173126783E34
    .end array-data

    :array_11a
    .array-data 8
        0x716d9c712a494f6L    # 1.6499977616436127E-274
        0x71e550d173334d2dL    # 4.441667758253177E240
        0x54324077ebdd2ccL
    .end array-data

    :array_11b
    .array-data 8
        0x3266318a9052b8bL
        -0x5e46ff007abe4dd2L
        -0x4cfe08c3703bfdb1L    # -5.459045302096329E-63
    .end array-data

    :array_11c
    .array-data 8
        -0x74c8782871e1b0bfL
        0x25fee4b07856ec82L
    .end array-data

    :array_11d
    .array-data 8
        -0x75f0a343dabd74c8L
        -0x5125f07385dced6fL    # -5.365965834876453E-83
        -0x1727532a37638125L    # -1.152807400003741E197
    .end array-data

    :array_11e
    .array-data 8
        0x6b8c4c4779d07e36L    # 1.1628995701251579E210
        0xc0062fed421c94bL
    .end array-data

    :array_11f
    .array-data 8
        -0x7296602ebdc92053L    # -4.69099868746438E-244
        0xa7495ccf86079b8L
    .end array-data

    :array_120
    .array-data 8
        -0x5483d37249086596L    # -3.220256950394633E-99
        -0x2d2bf738032c4253L    # -1.0202648264040872E91
        -0x3d6502085b2dbe4dL    # -7.419520955536425E12
    .end array-data

    :array_121
    .array-data 8
        0x670ff68ad0634e71L    # 2.781477800118792E188
        -0x504b288936816994L    # -7.030939716767311E-79
        -0x79b326534b56250dL
    .end array-data

    :array_122
    .array-data 8
        0x74bd3c061a555ad7L    # 2.1433423965774876E254
        0x7ebb9f4afc767239L    # 2.959746571139239E302
        0x41f7516348de5762L    # 6.259356813896334E9
    .end array-data

    :array_123
    .array-data 8
        -0x3ed62ef0f85f21ecL    # -845959.5148991966
        0x34229bdef4ff8350L    # 1.4822820776737102E-57
        -0x5bca23d7a9879906L
    .end array-data

    :array_124
    .array-data 8
        0x34c552af9410a931L    # 1.739237655579461E-54
        -0x53e87211a27b2de9L    # -2.756854093662406E-96
    .end array-data

    :array_125
    .array-data 8
        0x29112555a5fb335dL    # 7.129520529763597E-111
        -0x7f5c0511986a21e8L
    .end array-data

    :array_126
    .array-data 8
        -0x3fb3e8a5a285bceL
        -0x930cce3c745bf1dL    # -1.96487952940322E264
        -0x6dbe71450721bc34L    # -9.714419752560122E-221
    .end array-data

    :array_127
    .array-data 8
        -0x182f854e3d598db7L    # -1.1747767685615518E192
        -0x24965d85b36756a2L    # -2.2744478904784485E132
        -0x5eae34244997ad5eL
    .end array-data

    :array_128
    .array-data 8
        0x252ed50bde65db46L    # 1.390005651322395E-129
        -0x127af94316cf455L
    .end array-data

    :array_129
    .array-data 8
        -0x259074b8b1e832bcL    # -4.2705688603517606E127
        0xd11d6eb7c93ab21L    # 1.02057981160553E-245
        0x24be17e21f20b4f6L    # 1.059916461514612E-131
    .end array-data

    :array_12a
    .array-data 8
        -0x6673f5aef9fd5439L
        -0x40cae965d3330e09L    # -3.217817691625597E-4
        -0x63da247f5dec3739L
    .end array-data

    :array_12b
    .array-data 8
        -0x61b3d89d970d0971L    # -9.778000956353302E-163
        0x7cad7720ac3fdaa8L    # 3.6755073683011567E292
        -0x33c160c9a4b33950L    # -1.9221692704936424E59
    .end array-data

    :array_12c
    .array-data 8
        0x11856ead256036aL
        0x114289ca8ea78926L    # 1.56509938694946E-225
    .end array-data

    :array_12d
    .array-data 8
        0x1cc2e9d4b9788921L
        0x130ef840dcff69c8L
    .end array-data

    :array_12e
    .array-data 8
        0x3ab808eccf4a42d0L    # 7.766083224368425E-26
        0x3145003156169f98L    # 2.377200973482678E-71
    .end array-data

    :array_12f
    .array-data 8
        -0x2562b20bb0f85d97L    # -3.1738954803410512E128
        0x6fb2c79396fa9a80L    # 1.1388930559249732E230
        0x30f43bdfa8229a21L    # 7.157481922514194E-73
    .end array-data

    :array_130
    .array-data 8
        -0x3536600b451afc12L    # -1.9174772801780262E52
        0x2c16d94894d34907L    # 2.67426292496698E-96
        -0x1677ae8fc0bf9791L    # -2.3267895964364586E200
    .end array-data

    :array_131
    .array-data 8
        -0x270d49b0161a7190L    # -3.019966552297123E120
        0x67f66228724b928aL    # 6.382691791320169E192
        -0x534814337ebb7f89L    # -2.8669644265076726E-93
    .end array-data

    :array_132
    .array-data 8
        0x6f0f4d910a8afdceL    # 9.269421606744564E226
        -0x5cf18c012e0619f0L    # -7.991414058706711E-140
    .end array-data

    :array_133
    .array-data 8
        -0x707ce6e37029fdcbL    # -6.006525988006669E-234
        -0x7478fff06be83cf1L
        0x46e1c9470f4796d9L    # 2.8859825266808065E33
    .end array-data

    :array_134
    .array-data 8
        0x68b20e0c61272272L    # 2.1087821162576034E196
        0x149a0be51294ed5aL
    .end array-data

    :array_135
    .array-data 8
        -0x291c81b2c65a9f35L    # -3.662479984816454E110
        -0x1f5f61b0bab6176fL    # -2.852048333763322E157
    .end array-data

    :array_136
    .array-data 8
        0x352677da66230705L    # 1.1728935271759371E-52
        0x7a0015b7ead9527eL    # 4.562077615921383E279
        -0x4362421437386887L    # -1.0318787155582412E-16
    .end array-data

    :array_137
    .array-data 8
        -0x78eeb5d750f3649cL    # -1.248449561085076E-274
        -0x18bd91bd6200c83bL    # -2.566192398963803E189
        0x28663f1b6d7687edL
    .end array-data

    :array_138
    .array-data 8
        -0x46628a46732884ccL    # -3.6312084087254457E-31
        -0x6aaf4465804ea69cL    # -5.211854405116643E-206
        -0x2de5089a73ab8cedL    # -3.3527534915969143E87
    .end array-data

    :array_139
    .array-data 8
        -0x4642a46883025a08L
        0x1f2961083932a693L
        -0x5a8c38ed4ec4f80bL    # -2.853225397010844E-128
    .end array-data

    :array_13a
    .array-data 8
        0x72d461b2b261eebL
        0x2142525fa75dcd30L
    .end array-data

    :array_13b
    .array-data 8
        0x225874420581196bL
        -0x46967183e8162a2fL    # -3.9376147722657275E-32
    .end array-data

    :array_13c
    .array-data 8
        0xc5e8521e77575e3L
        0x2612dfb0b23e3e7eL    # 2.788180780433896E-125
        -0x4061c39810dd2ebcL    # -0.029527305575087995
    .end array-data

    :array_13d
    .array-data 8
        0x330e4be71d81b48fL    # 9.205837551227628E-63
        -0x32a359d61fd65eafL    # -4.714218589687192E64
        0x6424ae1ff942de2L
    .end array-data

    :array_13e
    .array-data 8
        -0x43d2607d2da31b92L    # -8.0293546147801685E-19
        -0x600a6710375f253eL    # -1.006755211301868E-154
    .end array-data

    :array_13f
    .array-data 8
        0x490fca77c82f3690L    # 8.862006782563403E43
        -0x9093cce2f635915L
        -0x6a16b430aadbaf45L
    .end array-data

    :array_140
    .array-data 8
        0x4237d0bbc557091eL    # 1.0228621448703561E11
        -0x6ea9b2b90e097802L
        0x6bc17d9bbe24c4baL    # 1.1500404560887188E211
    .end array-data

    :array_141
    .array-data 8
        0x4439a34546b5c7d9L    # 4.7293348919087E20
        -0x4d958eba70dd3532L    # -7.846445088180844E-66
        -0x3fca81bf25dd8db2L    # -21.493177064332762
    .end array-data

    :array_142
    .array-data 8
        0x5207028b21d4ca4bL    # 1.4304219483200766E87
        0x6afec99c78d7db7fL    # 2.4711099943334873E207
    .end array-data

    :array_143
    .array-data 8
        -0x57cce2736639fc75L    # -4.851384102323264E-115
        0x35cb3bd876b60121L    # 1.4557892797409263E-49
    .end array-data

    :array_144
    .array-data 8
        0x24c6e4b33c677469L
        0x6cc5ee4c52f3e5eeL    # 9.450230787903461E215
    .end array-data

    :array_145
    .array-data 8
        -0x33d11c247bfe44d6L    # -9.695005064416714E58
        0x3e22e434c4147e99L    # 2.1992519200212996E-9
        0x5dc76951480ff929L    # 5.709726023994E143
    .end array-data

    :array_146
    .array-data 8
        -0x6b71e37774955f45L
        -0x5edf628d6df575eaL    # -4.060628613427565E-149
        0x30ab5c853b8fe8b3L    # 3.0246109584137545E-74
    .end array-data

    :array_147
    .array-data 8
        0x13e26c970a0b2bc3L    # 6.841025897961354E-213
        0x2b25088c846f0ffaL    # 7.512782587426058E-101
        -0x1b4e2b8899a85eefL    # -1.128931308550559E177
    .end array-data

    :array_148
    .array-data 8
        -0x5498e6f7af5f3643L    # -1.320023743986409E-99
        0x7140e4beec65718L
    .end array-data

    :array_149
    .array-data 8
        0x1e883e67948fd82L
        0x44f7841a3f5e357bL    # 1.776820650522941E24
        -0x32178083468dd1b1L    # -2.0639521552970698E67
    .end array-data

    :array_14a
    .array-data 8
        -0xd2e24c4a7de6f15L
        0x49ef14107935ee04L    # 1.419409310735487E48
    .end array-data

    :array_14b
    .array-data 8
        -0x2db135e585f02a0fL    # -3.0624634258169488E88
        -0x7821cf14b0308e55L    # -8.929408926137608E-271
    .end array-data

    :array_14c
    .array-data 8
        0x6502927b523b51f2L    # 3.7629691951084476E178
        -0x31075c80e02e7cbL
        -0x8a35f6209ddcf12L    # -9.23077655174346E266
    .end array-data

    :array_14d
    .array-data 8
        -0x19851698c294f2b8L    # -4.57402978791433E185
        0xb038b4988ce15baL
        0x41a8c3e0bddae418L    # 2.0774511892752147E8
    .end array-data

    :array_14e
    .array-data 8
        -0x8b76ab11278ad89L
        0x15749f3db03d361L
        0x29ce605c4e64e040L
    .end array-data

    :array_14f
    .array-data 8
        0x463d39633de96441L    # 2.3153773344992952E30
        0x9c7a2bfbf0cda53L
        0xfa8a094d65c1e6fL    # 3.0982015000032926E-233
    .end array-data

    :array_150
    .array-data 8
        -0x531ecedbf1460e75L    # -1.648377363979135E-92
        -0x62c45c20fa3386f0L
    .end array-data

    :array_151
    .array-data 8
        -0x329699a007f876d2L    # -8.359130856080732E64
        -0x34d03c07f7290299L    # -1.5212653875178182E54
    .end array-data

    :array_152
    .array-data 8
        0x2c10819520732d0bL    # 1.9319150193974557E-96
        -0xab97b5d1ee99f46L    # -8.45275461655288E256
        -0x2ee90d00bc7785ffL    # -4.3537804241732104E82
    .end array-data

    :array_153
    .array-data 8
        -0x3d7330de6f0842bL
        -0x32d91ab0544c591eL    # -4.709381989277035E63
        -0x758811d361ce4bb6L
    .end array-data

    :array_154
    .array-data 8
        -0x201a9078f1c3560aL    # -8.98141058935614E153
        -0x4a99478855369276L    # -1.897711051891141E-51
    .end array-data

    :array_155
    .array-data 8
        0x2c8052f1aa593e69L    # 2.445557917303659E-94
        0x16b5c05f6bd42bd0L
        0x3ccf76006375dcc5L    # 8.732165942632543E-16
    .end array-data

    :array_156
    .array-data 8
        -0x41c490bab5a62ac2L    # -6.3876274596212655E-9
        -0x16edf557d57acb1eL    # -1.3486302613751398E198
        -0xfe7ed6f1e766788L    # -9.343256952211405E231
    .end array-data

    :array_157
    .array-data 8
        -0xaec60051337911fL    # -9.208402274244342E255
        -0x4557e7dbe09bbc44L    # -3.892644299865074E-26
        0x7dd77242a26c8c82L
    .end array-data

    :array_158
    .array-data 8
        -0x6636ec14188199dcL
        0x23e2b3ee151438e9L    # 8.041180153276125E-136
    .end array-data

    :array_159
    .array-data 8
        -0x4fef56fe6eb58635L    # -3.597003102400568E-77
        -0x1f4f41972005c6dfL    # -5.747135753255736E157
    .end array-data

    :array_15a
    .array-data 8
        -0x63fcef905152bbc6L    # -9.634988270542725E-174
        0x3128ddff9f805d5eL    # 7.037163047090266E-72
    .end array-data

    :array_15b
    .array-data 8
        -0x7c64e7faf96eee9bL    # -2.715029509717207E-291
        -0x18f59769cb6d04d6L
        0x6a0e64d02d70a55eL    # 7.444784354744618E202
    .end array-data

    :array_15c
    .array-data 8
        -0x7b4101f42b24cb51L
        -0x2b9a8a6c6a45fea3L    # -3.6669400600294783E98
        -0x2da03f1ae323cb8cL    # -6.316700555815562E88
    .end array-data

    :array_15d
    .array-data 8
        0x3cfbcdad80e4abddL    # 6.173601341950894E-15
        0x63c5dcfa21c13beeL    # 4.22455623665804E172
        0x8df248863158812L
    .end array-data

    :array_15e
    .array-data 8
        -0x63a878d6bccd478dL    # -3.805108183310907E-172
        -0x268c4b75dcbed6e4L    # -8.141413605152889E122
    .end array-data

    :array_15f
    .array-data 8
        -0x29b1f7f0f057159cL    # -5.510172591389897E107
        0x1eb87343709298a0L    # 1.08694004443364E-160
        0x5690b894e75961fL
    .end array-data

    :array_160
    .array-data 8
        -0x44cec0b3a3e9bc73L    # -1.426659818737076E-23
        0x56274151e75daa26L    # 1.066713362122523E107
    .end array-data

    :array_161
    .array-data 8
        -0x7a950cb466ce62L    # -1.880009125338926E306
        0x46ec513487c43d5bL    # 4.5947296593449134E33
    .end array-data

    :array_162
    .array-data 8
        -0x41f7a7e91a0e9424L    # -7.085065415313383E-10
        -0x38504ca044c31b8cL    # -2.1068715335217073E37
        -0x20a109674d416526L    # -2.5338717247838783E151
    .end array-data

    :array_163
    .array-data 8
        0x404806d76c8e5686L    # 48.053449220181434
        -0x2a722f1786fba009L    # -1.3356067013147299E104
        -0x55cb944957aa17d1L
    .end array-data

    :array_164
    .array-data 8
        -0x2adbd815a8fb7a2fL    # -1.4107535846522732E102
        -0x5fd3f0723134505aL
        -0x770f8cb047d09e01L
    .end array-data

    :array_165
    .array-data 8
        0x75d278561002e146L    # 3.549806345720189E259
        -0x54ba42f65ef8209dL
        -0x989193b8acc3931L    # -4.507118081966221E262
    .end array-data

    :array_166
    .array-data 8
        -0x513b08c9d718cba0L    # -2.1584398912782474E-83
        0x1d7c4bdfa999af48L
    .end array-data

    :array_167
    .array-data 8
        -0x7d22cfa8534742bdL    # -7.141033350043311E-295
        -0x57195c1b18add39L    # -2.208380807213533E282
    .end array-data

    :array_168
    .array-data 8
        0x609e1d62a131b3bL
        0x22d0198e37ecd602L    # 5.281085871484078E-141
        0x3030ee9e489f4eeaL
    .end array-data

    :array_169
    .array-data 8
        -0xc1bef361f8ebf22L
        0x35f34794bf6f952aL    # 8.244779277350851E-49
        0x5783f7641deb999eL    # 3.841382275912086E113
    .end array-data

    :array_16a
    .array-data 8
        0x78e1d007be181d88L    # 1.927231231925758E274
        0x73e14ad4a8d13b30L    # 1.547602284030722E250
    .end array-data

    :array_16b
    .array-data 8
        -0x17a81d80c90461f2L    # -4.358910806590309E194
        -0x1e602ffa1301fb3fL    # -1.7890262734965314E162
        0x20d42f9b0b0d3e70L
    .end array-data

    :array_16c
    .array-data 8
        -0x6bdd5587f362660cL
        -0x5427092cdf74bacL    # -1.717054935553713E283
        0x65439c5c649bf991L    # 6.35744194280266E179
    .end array-data

    :array_16d
    .array-data 8
        0x22da2d0db7cc105fL    # 8.586282306553176E-141
        0x4ac4df3fc6f50253L    # 1.5618334703136853E52
        0x58d46d6918aa5686L    # 8.241970648381694E119
    .end array-data

    :array_16e
    .array-data 8
        0x6ca2306c6cf660ceL    # 1.9594736498500896E215
        0x6569228537e1a23fL    # 3.259294740162213E180
    .end array-data

    :array_16f
    .array-data 8
        0xe1302111eba47cbL    # 7.12658690314044E-241
        0x1fecb3254f485166L
    .end array-data

    :array_170
    .array-data 8
        -0x610a3a33bf65308fL
        -0x4aa930f18248d40fL    # -9.525405539626133E-52
    .end array-data

    :array_171
    .array-data 8
        -0x6c4a0e5e71b6fc57L
        0x4f3b47a53e7e69e6L    # 4.8199349712204236E73
        0xf110b2b604c9dccL    # 4.187796035133444E-236
    .end array-data

    :array_172
    .array-data 8
        0x42968c32d2dd56cfL    # 6.197850978133702E12
        -0x603daaaa1fef309aL
        -0x7b8d81535579d6faL    # -3.036507130152583E-287
    .end array-data

    :array_173
    .array-data 8
        -0x105bbc7aadc61e87L    # -6.144500636541614E229
        -0x50b6a7ee5f51ffdcL    # -6.679541618226116E-81
        -0x4534f4e165c7d872L
    .end array-data

    :array_174
    .array-data 8
        0x2d7a198d6a208efbL    # 1.2812642667163738E-89
        -0x543e93d64ce5d9f7L    # -6.37238743167849E-98
    .end array-data

    :array_175
    .array-data 8
        0x244a794f4191e8c9L    # 7.284660191507086E-134
        0x2071aac069a2dec4L    # 2.108263910249437E-152
        -0x167f6db609a801eL
    .end array-data

    :array_176
    .array-data 8
        -0x4ab2942ed29323ceL    # -6.143424971344826E-52
        0xd4472f2da6544fdL
    .end array-data

    :array_177
    .array-data 8
        -0xe910e9335c270bcL    # -2.5186622604634062E238
        0xa7d81702ca4e1c4L
    .end array-data

    :array_178
    .array-data 8
        0x3439f1de0de8e545L    # 4.133244230214669E-57
        -0x1fe996c6caea1d4dL    # -7.51206936395622E154
        -0x731fbfe1579a8b8bL
    .end array-data

    :array_179
    .array-data 8
        0x79a77d2a8034670dL    # 1.0409485017139181E278
        -0x980c460db1a79b2L    # -6.14679184842593E262
        -0x5142ebd179f67226L
    .end array-data

    :array_17a
    .array-data 8
        -0x116f0571b37c90efL    # -3.927915010185819E224
        0x810a0033a55dc8eL
        0x6df02d450cbcd6f8L    # 3.6546885974693E221
    .end array-data

    :array_17b
    .array-data 8
        -0x436405809b5812a5L    # -9.706994363094942E-17
        -0x7f3a7e54bb3e9b10L
        0x2854ce0e1857cb5eL
    .end array-data

    :array_17c
    .array-data 8
        0x1174c6c8d7f68e07L
        0x3070c7a16a337685L    # 2.318611829963383E-75
    .end array-data

    :array_17d
    .array-data 8
        0x4c7369e9902fb656L    # 1.949790342301494E60
        -0xad6dc5e20c58524L
    .end array-data

    :array_17e
    .array-data 8
        -0x1596c0e26ed32c3aL    # -3.9577560800489687E204
        -0x4985e3220a358894L    # -2.8587322710469375E-46
        -0x3d6ec806e4e9444dL    # -4.733025043886925E12
    .end array-data

    :array_17f
    .array-data 8
        0x5c3ac5a3a01bda47L    # 1.9458946660769697E136
        0x318f66794d8738ffL    # 5.687018700911814E-70
        0x4098bed044681ff8L    # 1583.7033859509957
    .end array-data

    :array_180
    .array-data 8
        0x5ba07634ed46da17L    # 2.3369206656325874E133
        -0x8dee4dbb8be41b3L    # -6.894697599626395E265
    .end array-data

    :array_181
    .array-data 8
        -0x5fb852c7d83d2cadL
        0x217318c52e985015L    # 1.49348819857919E-147
        -0x37d242bc75f996ccL    # -5.05988170764027E39
    .end array-data

    :array_182
    .array-data 8
        -0x5de3f0e2d95e2f8aL    # -2.247061070525237E-144
        -0x4ffcf0f0851c3cabL    # -2.0574408496045536E-77
        0x51d653bb15110f8L
    .end array-data

    :array_183
    .array-data 8
        -0x2e86c72cf6340cb8L    # -3.0623710553555E84
        -0x6202de2e0260c156L
        0x2b6383f51cb17dfeL    # 1.115296170807763E-99
    .end array-data

    :array_184
    .array-data 8
        -0x3f3e88b6cdf79a23L    # -8942.571839380014
        0x7e231dc1d3aac42L
    .end array-data

    :array_185
    .array-data 8
        0x35f2923e43b39163L    # 7.941858439412243E-49
        0x34bab83ea78391cL
    .end array-data
.end method

.method private synthetic lambda$dialogAddPayload$9(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$onCreate$0(Landroid/widget/ListView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .line 1
    const/4 p2, 0x1

    .line 2
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 p5, 0x2

    .line 5
    new-array v0, p5, [J

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v1, p5, [J

    .line 20
    .line 21
    fill-array-data v1, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lorg/json/JSONObject;

    .line 40
    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v2, p5, [J

    .line 44
    .line 45
    fill-array-data v2, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v2, p5, [J

    .line 62
    .line 63
    fill-array-data v2, :array_3

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    const/4 p1, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-ge p1, v1, :cond_1

    .line 85
    .line 86
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lorg/json/JSONObject;

    .line 93
    .line 94
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v3, p5, [J

    .line 97
    .line 98
    fill-array-data v3, :array_4

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v4, p5, [J

    .line 115
    .line 116
    fill-array-data v4, :array_5

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    if-eqz v1, :cond_0

    .line 141
    .line 142
    move p3, p1

    .line 143
    goto :goto_1

    .line 144
    :catch_1
    :cond_0
    add-int/2addr p1, p2

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 147
    .line 148
    invoke-virtual {p1, p4}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedServer()V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadServers()V

    .line 166
    .line 167
    .line 168
    const/4 p1, -0x1

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Landroid/content/Intent;

    .line 173
    .line 174
    const-class p2, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 175
    .line 176
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .line 178
    .line 179
    const/high16 p2, 0x7f160000

    .line 180
    .line 181
    const p3, 0x7f160001

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :array_0
    .array-data 8
        -0x5897a7e5a18e6eeL    # -8.176236685594699E281
        -0x4bf02936a9e7122fL    # -6.340308591167812E-58
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_1
    .array-data 8
        -0x7d9b2fba96cb57fL    # -5.890707872560888E270
        0x188de535f35f27a8L
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_2
    .array-data 8
        0x91747739ea477c4L
        -0x4b6198712297a5b4L    # -3.099980848658656E-55
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_3
    .array-data 8
        -0x4a029f20d8722bL
        -0x32d89bfbe35f9665L    # -4.811185409676122E63
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_4
    .array-data 8
        -0x30a9887f80c08e45L    # -1.587816300573057E74
        -0x68cc71369baf3e95L    # -6.540967147905211E-197
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_5
    .array-data 8
        0xb8b64913ae6c609L
        0x3ba6c598a22a9950L    # 2.4110644879440274E-21
    .end array-data
.end method

.method private synthetic lambda$onPrepareOptionsMenu$10(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->dialogAddPayload()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1
.end method

.method private synthetic lambda$onPrepareOptionsMenu$11()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedServer()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->reload()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    new-array v1, v1, [J

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0xb23eab1be4028e1L    # -8.235753396724097E254
        -0x20a8896afe285558L
        0x24aca11b38200078L    # 5.041769295005863E-132
        0x713e1bde813563L
    .end array-data
.end method

.method private synthetic lambda$onPrepareOptionsMenu$12(Landroid/view/MenuItem;)Z
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

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
    const-wide v5, 0xb10b55cb95bfdc1L

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

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
    const-wide v4, -0x2360a8ac35ecf412L    # -1.4579162452271412E138

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    new-instance v0, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 81
    .line 82
    const/16 v1, 0x1c

    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v1, 0x3e8

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    return v3

    .line 93
    :array_0
    .array-data 8
        0x8c98424e3b60617L
        -0x7b830a5b03fdd26fL
        -0x494dadbf7fac11a4L    # -3.209200618271869E-45
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
        0x3f9e304522bb1d17L    # 0.02948101067047756
        -0x5e458f4dd45f134bL    # -3.308469676373944E-146
        0x1256ffbb035fbd92L
    .end array-data
.end method

.method private synthetic lambda$onPrepareOptionsMenu$13(Landroid/view/MenuItem;)Z
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
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->showLINK()V

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
        0x5e73c196304cf8eaL    # 9.867821168280247E146
        -0x78c7368132388005L    # -7.159282798235276E-274
        -0x37feeb953a73b79L    # -5.010645861430143E291
        0x2a2d687a30e194faL
    .end array-data
.end method

.method private static synthetic lambda$reload$16(Landroid/widget/ListView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$showLINK$14(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

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
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->clipImport1()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        0x1cca258ad52f1315L
        0x7b0906f7f3050947L    # 4.6519875824287785E284
        0x5eeedc79a363811eL    # 1.9730637475466521E149
    .end array-data

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
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        -0x3004c053a0cb8987L    # -1.971991671027326E77
        -0x276f9787db51e9beL    # -4.13767294420701E118
        -0x1a60aa7c8aad1294L    # -3.2505268741665153E181
    .end array-data
.end method

.method private static synthetic lambda$showLINK$15(Landroid/content/DialogInterface;I)V
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

.method private mProtoType()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->payload_type:Landroid/widget/RadioGroup;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7f0a02cf

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
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->payload_type:Landroid/widget/RadioGroup;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const v2, 0x7f0a0397

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
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->payload_type:Landroid/widget/RadioGroup;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const v2, 0x7f0a02b0

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
        0x7dc0ece904e365b4L    # 5.534590013634588E297
        -0x455c7ce38b1f2c82L    # -3.152358328088757E-26
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
        -0x5649ae843479538L
        0x444d92779ab28b49L    # 1.0910193049619494E21
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
        -0x5b771f3d8e9d4346L
        0x2cf4d56d545702d2L    # 3.995100703127694E-92
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
        -0x26915a8864d14914L    # -6.330923984627985E122
        0x7fbf30890617c901L    # 2.1902075504439938E307
    .end array-data
.end method

.method private mServerType()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->server_type:Landroid/widget/RadioGroup;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7f0a009f

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
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->server_type:Landroid/widget/RadioGroup;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const v2, 0x7f0a0429

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v0, v0, [J

    .line 57
    .line 58
    fill-array-data v0, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :array_0
    .array-data 8
        -0x7f9c33110049267dL    # -8.811524703328548E-307
        -0x3da263baf575806eL    # -5.087032878499933E11
    .end array-data

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
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x6cb5d6f0217a552eL    # -9.485876609805122E-216
        -0x5903d623784e6376L
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_2
    .array-data 8
        0x2336763c76777557L
        0x5d4295fb51ecb915L    # 1.770642105717855E141
    .end array-data
.end method

.method private networkingList(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lorg/json/JSONObject;

    .line 23
    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    new-array v4, v4, [J

    .line 28
    .line 29
    const-wide v5, -0x3f7d9d7de3fcd0d8L    # -588.3135299919859

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    aput-wide v5, v4, v7

    .line 36
    .line 37
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v5, 0x2

    .line 47
    new-array v5, v5, [J

    .line 48
    .line 49
    fill-array-data v5, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v4

    .line 69
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    .line 89
    .line 90
    :cond_2
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->refreshDataSet(Ljava/util/ArrayList;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        0x72c4cadd7f2d7e91L    # 7.098588424684518E244
        -0x25fa0d03f8595bfL    # -1.338390243650865E297
    .end array-data
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
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v1}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 67
    .line 68
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v2, v0, [J

    .line 71
    .line 72
    fill-array-data v2, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 89
    .line 90
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v0, v0, [J

    .line 93
    .line 94
    fill-array-data v0, :array_3

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x1

    .line 108
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 109
    .line 110
    .line 111
    const/4 v0, -0x1

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Landroid/content/Intent;

    .line 116
    .line 117
    const-class v0, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 118
    .line 119
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .line 121
    .line 122
    const/high16 v0, 0x7f160000

    .line 123
    .line 124
    const v1, 0x7f160001

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    .line 132
    .line 133
    const p1, 0x7f13012f

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    nop

    .line 145
    :array_0
    .array-data 8
        -0x56a0dc7531542625L    # -2.0716861950003711E-109
        -0x49920ccbc05f7cb6L    # -1.6394106026014726E-46
    .end array-data

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
    :array_1
    .array-data 8
        0x2d1956951fe97a6eL    # 1.9435571198825286E-91
        -0x58082ddfbed90626L
        -0x2163ea45b138153dL    # -5.611130556577867E147
    .end array-data

    .line 158
    .line 159
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
    :array_2
    .array-data 8
        0x5464320dbdb15052L    # 3.450989883241944E98
        0x20e750c4a2cbcf15L    # 3.561368504238315E-150
        0x223599faae2b2153L    # 6.919673695797594E-144
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
    :array_3
    .array-data 8
        0x55039c72e8ee4e1cL    # 3.4315563820375047E101
        0x794cc5cdf9a3015aL    # 1.9923529126525932E276
        -0x6626711b893a0855L
    .end array-data
.end method

.method private reload()V
    .locals 5

    .line 1
    const v0, 0x7f0a029f

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
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 16
    .line 17
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getNetworkSelectedPosition()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v3, L딠딁땔땸두듬돳들득딅딌딄땥된듽돳딻땤땁도땃땤땠돷땵땫됩땸딻듻뒘됐된돷땣딜돝딜돨딤딜땮득따돶뎹딎딄땐되되따뎽든딁들뎠디듸든됫뒛뎠따딌뒐듸땳딤땱뒻듻땮땣땨뒀땪뒹딨뒙된뒀뎠둠됩딠돼딀돤딨딝땳따땹들돵뒻돨땩뒋디뒨됴딠땜딅돸딤뒻됐딽땻뎹돴딌뒋될뒷뒈듸딽득땔뒙땅딞둔됐딻뒙;

    .line 27
    .line 28
    const/4 v4, 0x1

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
        0x2e39b81f25a2d94fL    # 5.171530984841568E-86
        0x11bf8b14e8503914L
        0x7f8d1938f5238757L    # 2.5542099249404057E306
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
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->getNetworkSelectedJson()Lorg/json/JSONObject;

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
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

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
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->getNetworkSelectedJson()Lorg/json/JSONObject;

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
    move-result v3

    .line 111
    sget v4, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 112
    .line 113
    iput v4, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 114
    .line 115
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v5, v0, [J

    .line 118
    .line 119
    fill-array-data v5, :array_3

    .line 120
    .line 121
    .line 122
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    const/4 v5, 0x1

    .line 134
    const/4 v6, 0x0

    .line 135
    if-eqz v4, :cond_1

    .line 136
    .line 137
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v7, v0, [J

    .line 140
    .line 141
    fill-array-data v7, :array_4

    .line 142
    .line 143
    .line 144
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v7, v1, [J

    .line 158
    .line 159
    fill-array-data v7, :array_5

    .line 160
    .line 161
    .line 162
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_0

    .line 174
    .line 175
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 176
    .line 177
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v7, v1, [J

    .line 180
    .line 181
    fill-array-data v7, :array_6

    .line 182
    .line 183
    .line 184
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v2, v4}, Lconfig/ConfigUtil;->setConnectionType(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget v2, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 195
    .line 196
    iput v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 197
    .line 198
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 199
    .line 200
    invoke-virtual {v2, v6}, Lconfig/ConfigUtil;->setSSH(Z)V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 204
    .line 205
    invoke-virtual {v2, v6}, Lconfig/ConfigUtil;->setOCS(Z)V

    .line 206
    .line 207
    .line 208
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 209
    .line 210
    invoke-virtual {v2, v5}, Lconfig/ConfigUtil;->setOVPN(Z)V

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :catch_0
    move-exception p1

    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v7, v1, [J

    .line 220
    .line 221
    fill-array-data v7, :array_7

    .line 222
    .line 223
    .line 224
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_1

    .line 236
    .line 237
    sget v2, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 238
    .line 239
    iput v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 240
    .line 241
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 242
    .line 243
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 244
    .line 245
    new-array v7, v1, [J

    .line 246
    .line 247
    fill-array-data v7, :array_8

    .line 248
    .line 249
    .line 250
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v2, v4}, Lconfig/ConfigUtil;->setConnectionType(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 261
    .line 262
    invoke-virtual {v2, v5}, Lconfig/ConfigUtil;->setSSH(Z)V

    .line 263
    .line 264
    .line 265
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 266
    .line 267
    invoke-virtual {v2, v6}, Lconfig/ConfigUtil;->setOCS(Z)V

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 271
    .line 272
    invoke-virtual {v2, v6}, Lconfig/ConfigUtil;->setOVPN(Z)V

    .line 273
    .line 274
    .line 275
    :cond_1
    :goto_0
    sget v2, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 276
    .line 277
    iput v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 278
    .line 279
    const v2, 0x7f0a03f0

    .line 280
    .line 281
    .line 282
    if-nez v3, :cond_3

    .line 283
    .line 284
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 285
    .line 286
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_2

    .line 295
    .line 296
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Landroid/widget/TextView;

    .line 301
    .line 302
    const v2, 0x7f13029a

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :cond_2
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 311
    .line 312
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 313
    .line 314
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Landroid/widget/TextView;

    .line 319
    .line 320
    const v2, 0x7f130248

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_2

    .line 327
    .line 328
    :cond_3
    const v4, 0x7f13024b

    .line 329
    .line 330
    .line 331
    if-ne v3, v5, :cond_5

    .line 332
    .line 333
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 334
    .line 335
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_4

    .line 344
    .line 345
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/widget/TextView;

    .line 350
    .line 351
    const v2, 0x7f13029b

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :cond_4
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 360
    .line 361
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 362
    .line 363
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    check-cast v0, Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_2

    .line 373
    .line 374
    :cond_5
    if-ne v3, v1, :cond_7

    .line 375
    .line 376
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 377
    .line 378
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_6

    .line 387
    .line 388
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Landroid/widget/TextView;

    .line 393
    .line 394
    const v2, 0x7f13029c

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :cond_6
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 403
    .line 404
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 405
    .line 406
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Landroid/widget/TextView;

    .line 411
    .line 412
    const v2, 0x7f13024c

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_2

    .line 419
    .line 420
    :cond_7
    if-ne v3, v0, :cond_9

    .line 421
    .line 422
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 423
    .line 424
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_8

    .line 433
    .line 434
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    check-cast v0, Landroid/widget/TextView;

    .line 439
    .line 440
    const v2, 0x7f13029e

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_2

    .line 447
    .line 448
    :cond_8
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 449
    .line 450
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 451
    .line 452
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v0, Landroid/widget/TextView;

    .line 457
    .line 458
    const v2, 0x7f13024e

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_2

    .line 465
    .line 466
    :cond_9
    const/4 v0, 0x4

    .line 467
    if-ne v3, v0, :cond_b

    .line 468
    .line 469
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 470
    .line 471
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-eqz v0, :cond_a

    .line 480
    .line 481
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Landroid/widget/TextView;

    .line 486
    .line 487
    const v2, 0x7f13029f

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_2

    .line 494
    .line 495
    :cond_a
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 496
    .line 497
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 498
    .line 499
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    check-cast v0, Landroid/widget/TextView;

    .line 504
    .line 505
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_2

    .line 509
    .line 510
    :cond_b
    const/4 v0, 0x5

    .line 511
    if-ne v3, v0, :cond_d

    .line 512
    .line 513
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 514
    .line 515
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_c

    .line 524
    .line 525
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    check-cast v0, Landroid/widget/TextView;

    .line 530
    .line 531
    const v2, 0x7f13029d

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_2

    .line 538
    .line 539
    :cond_c
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 540
    .line 541
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 542
    .line 543
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    check-cast v0, Landroid/widget/TextView;

    .line 548
    .line 549
    const v2, 0x7f13024d

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_2

    .line 556
    .line 557
    :cond_d
    const/4 v0, 0x6

    .line 558
    if-ne v3, v0, :cond_e

    .line 559
    .line 560
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    check-cast v0, Landroid/widget/TextView;

    .line 565
    .line 566
    const v2, 0x7f130299

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 570
    .line 571
    .line 572
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->HYSTERIA_UDP:I

    .line 573
    .line 574
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 575
    .line 576
    goto/16 :goto_2

    .line 577
    .line 578
    :cond_e
    const/4 v0, 0x7

    .line 579
    if-ne v3, v0, :cond_10

    .line 580
    .line 581
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 582
    .line 583
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-eqz v0, :cond_f

    .line 592
    .line 593
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    check-cast v0, Landroid/widget/TextView;

    .line 598
    .line 599
    const v2, 0x7f13031b

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 603
    .line 604
    .line 605
    goto :goto_1

    .line 606
    :cond_f
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->SSH:I

    .line 607
    .line 608
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 609
    .line 610
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    check-cast v0, Landroid/widget/TextView;

    .line 615
    .line 616
    const v2, 0x7f13024a

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 620
    .line 621
    .line 622
    :goto_1
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 623
    .line 624
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 625
    .line 626
    goto :goto_2

    .line 627
    :cond_10
    const/16 v0, 0x8

    .line 628
    .line 629
    if-ne v3, v0, :cond_11

    .line 630
    .line 631
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    check-cast v0, Landroid/widget/TextView;

    .line 636
    .line 637
    const v2, 0x7f13032c

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 641
    .line 642
    .line 643
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->V2RAY:I

    .line 644
    .line 645
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 646
    .line 647
    goto :goto_2

    .line 648
    :cond_11
    const/16 v0, 0x9

    .line 649
    .line 650
    if-ne v3, v0, :cond_12

    .line 651
    .line 652
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    check-cast v0, Landroid/widget/TextView;

    .line 657
    .line 658
    const v2, 0x7f130249

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 662
    .line 663
    .line 664
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->DNSTT:I

    .line 665
    .line 666
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 667
    .line 668
    goto :goto_2

    .line 669
    :cond_12
    const/16 v0, 0xa

    .line 670
    .line 671
    if-ne v3, v0, :cond_13

    .line 672
    .line 673
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    check-cast v0, Landroid/widget/TextView;

    .line 678
    .line 679
    const v2, 0x7f13019e

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 683
    .line 684
    .line 685
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->DNSTT:I

    .line 686
    .line 687
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 688
    .line 689
    goto :goto_2

    .line 690
    :cond_13
    const/16 v0, 0xb

    .line 691
    .line 692
    if-ne v3, v0, :cond_14

    .line 693
    .line 694
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    check-cast v0, Landroid/widget/TextView;

    .line 699
    .line 700
    const v2, 0x7f13033e

    .line 701
    .line 702
    .line 703
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 704
    .line 705
    .line 706
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->WIREGUARD:I

    .line 707
    .line 708
    iput v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 709
    .line 710
    goto :goto_2

    .line 711
    :cond_14
    const/16 v0, 0xc

    .line 712
    .line 713
    if-ne v3, v0, :cond_15

    .line 714
    .line 715
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    check-cast v0, Landroid/widget/TextView;

    .line 720
    .line 721
    const v2, 0x7f1301ce

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 725
    .line 726
    .line 727
    :cond_15
    :goto_2
    if-eqz p1, :cond_16

    .line 728
    .line 729
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 730
    .line 731
    invoke-virtual {p1, v6}, Lconfig/ConfigUtil;->setServerSelectedPosition(I)V

    .line 732
    .line 733
    .line 734
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 735
    .line 736
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 737
    .line 738
    new-array v1, v1, [J

    .line 739
    .line 740
    fill-array-data v1, :array_9

    .line 741
    .line 742
    .line 743
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    invoke-virtual {p1, v0}, Lconfig/ConfigUtil;->setServerSelectedName(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    :cond_16
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadServers()V

    .line 754
    .line 755
    .line 756
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedServer()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .line 758
    .line 759
    goto :goto_4

    .line 760
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 761
    .line 762
    .line 763
    :goto_4
    return-void

    .line 764
    nop

    .line 765
    :array_0
    .array-data 8
        -0x3ab1d99752c29968L    # -7.2898310918836265E25
        -0x55971e1446157ab5L
    .end array-data

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_1
    .array-data 8
        -0x2d2935004116f60bL    # -1.1607522362058803E91
        -0x47e91816a2fb7b50L    # -1.6828600905331004E-38
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_2
    .array-data 8
        0x4ff1e4d9986fa543L    # 1.2949858152498874E77
        0x719aac35bfe5cb0L
        0x256c4457e807a322L
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_3
    .array-data 8
        0x4175aa0648980f1dL    # 2.271651653712379E7
        0x1d7e0dad11ed4430L
        -0x7633f9eeb03985e4L
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_4
    .array-data 8
        0xa722faebb4e2c7bL
        0x466d89484b118167L    # 1.872082845134886E31
        0x5545f5fb811eeb2eL    # 6.14834258218456E102
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :array_5
    .array-data 8
        0x412e3d11c771a2deL    # 990856.8895388504
        0x669fc2b33356af11L    # 2.1592618396593232E186
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :array_6
    .array-data 8
        -0x2250c7933a3cebf1L    # -1.903559938202794E143
        -0x62d3bc26b8aec8a1L    # -3.744742392261967E-168
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_7
    .array-data 8
        -0x48a9e480373eba43L    # -3.965323738795289E-42
        -0x63e629a523eaafc1L
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    :array_8
    .array-data 8
        0x43c50d70b67014bcL    # 3.033985156720982E18
        -0x37fc0f06078e0fdaL    # -8.48209701433584E38
    .end array-data

    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    :array_9
    .array-data 8
        -0x486a7aa34d7beedL    # -6.03016502996269E286
        0x6da79f5dac42e2e0L    # 1.667758373295492E220
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
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->getServer()Lorg/json/JSONObject;

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
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 118
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    :goto_2
    return-void

    nop

    :array_0
    .array-data 8
        0x59240a5427a70674L    # 2.5874591284595434E121
        0x9a695afeeaf0923L
    .end array-data

    :array_1
    .array-data 8
        0x1d5b735bcaf66001L
        -0x48b267077a1daa74L    # -2.654399384084523E-42
    .end array-data

    :array_2
    .array-data 8
        -0x3d404e8e0f4e6565L    # -3.4846981271962605E13
        0x431f31faad1766c6L    # 2.1951692484018415E15
        0x34452fb0426c68d7L    # 6.750339296426109E-57
    .end array-data

    :array_3
    .array-data 8
        0x315c4516d89958acL    # 6.400073988794785E-71
        0x4aa3c10e75d27e25L    # 3.69544816668843E51
    .end array-data

    :array_4
    .array-data 8
        0x2c1e86410ad8a9baL    # 3.5726375505154907E-96
        -0x1f00edb9b0f25befL    # -1.7063901863281879E159
    .end array-data

    :array_5
    .array-data 8
        0x1564622ee7aaa461L
        -0x3cb853dc42109b8fL    # -1.3326387949521122E16
        -0x324cf1fbc9dcd58eL    # -2.0066995752311445E66
    .end array-data

    :array_6
    .array-data 8
        -0x3f138de0bcd7a1caL    # -58256.976947959905
        0x2213c847b97b6558L
    .end array-data

    :array_7
    .array-data 8
        0x4bf5c3a08a31f228L    # 8.538493699434776E57
        0x43362993814e45e4L    # 6.238162993956324E15
        -0x56e7ac2c0ae23160L
    .end array-data

    :array_8
    .array-data 8
        -0x1c4ffce1c848ab15L    # -1.5469917449040146E172
        -0x777e7a6512e39093L    # -1.061341003020904E-267
    .end array-data

    :array_9
    .array-data 8
        -0x593042b5029e6fb3L    # -9.602643951968432E-122
        0x761b8ebad94113b2L    # 8.474160524523792E260
    .end array-data

    :array_a
    .array-data 8
        -0x4a2c463dfa3a5f90L    # -2.1088772986190435E-49
        -0x50f0a7dab2bc5d2bL    # -5.1630940186974313E-82
    .end array-data

    :array_b
    .array-data 8
        -0x4184554129adfb98L    # -1.0306751148556164E-7
        -0x42707b6f33f87ba8L    # -3.5831629278075882E-12
    .end array-data

    :array_c
    .array-data 8
        -0x14702159674d3eaL
        -0x16143ea0f6f6d560L
        -0x2dcd07c56ede069L    # -6.126623886208344E294
    .end array-data

    :array_d
    .array-data 8
        0x7b0a04710a3ed460L
        0x5061e01ede7c9c55L    # 1.655870508860925E79
    .end array-data

    :array_e
    .array-data 8
        -0xc56d0853cbf418aL    # -1.408758141438288E249
        -0x780893f3e51117e4L
        0x40fa2aade0912e9L
    .end array-data

    :array_f
    .array-data 8
        0x4116031c4147ed50L    # 360647.06375094224
        0x7d8a9a410cc3b2d5L    # 5.43687186119595E296
        -0x71c859c6ed464a5aL
    .end array-data

    :array_10
    .array-data 8
        0x2694bed27e399d35L    # 7.845553307410327E-123
        -0x3559d2445b589508L    # -4.149008024154022E51
    .end array-data

    :array_11
    .array-data 8
        -0x1e2e479f409d6053L    # -1.5944354064789832E163
        0x12132967bbccb82bL
    .end array-data

    :array_12
    .array-data 8
        -0x57712de369e2fddeL
        -0x5b5ec26246089d7eL
    .end array-data

    :array_13
    .array-data 8
        -0xa71209cad9978d8L
        -0x29a4276dac25000fL    # -1.0218355675195992E108
    .end array-data

    :array_14
    .array-data 8
        -0x4db8bdf39fe7ccecL    # -1.7253744319522532E-66
        0x48f9bfa29d3f933L
    .end array-data

    :array_15
    .array-data 8
        -0x5b1689ac95c4a655L    # -7.174439800010628E-131
        -0x288aab4f87f0cefbL    # -2.051945828385161E113
    .end array-data

    :array_16
    .array-data 8
        -0x47486e3a965e5264L    # -1.7731659732052802E-35
        -0x281cacc37e6420b3L    # -2.379529265418807E115
        -0x7690ff7d6941e80eL
    .end array-data

    :array_17
    .array-data 8
        0x3a256fae31e08fedL    # 1.3528176769434747E-28
        0x37685875fd84de06L    # 8.7335378876344E-42
    .end array-data

    :array_18
    .array-data 8
        -0x6d9f007a5f5b406L
        -0x788351fae04dc0afL    # -1.325377323837877E-272
    .end array-data

    :array_19
    .array-data 8
        0x7222ad74d49e0d9dL    # 6.227113296986507E241
        0x3de0304d616afafdL    # 1.1778815484516E-10
        0x4ec21b9234238940L    # 2.4994949969098087E71
    .end array-data

    :array_1a
    .array-data 8
        -0x485518dd3ac4d08eL    # -1.544149256156461E-40
        0x47fd6d543de5d04bL    # 6.258444937886617E38
    .end array-data

    :array_1b
    .array-data 8
        -0x727cabad559e7c73L
        -0x758345a5edd906c0L
    .end array-data

    :array_1c
    .array-data 8
        -0x24b8322ba54b91cL
        0x42882063136cf641L    # 3.3159225296947817E12
        -0x21a5cda46f740f34L    # -3.271181616847448E146
    .end array-data

    :array_1d
    .array-data 8
        0x33a039cfdb1ecd37L    # 5.048678739635835E-60
        0x109a6c622a90669dL    # 1.089260005329764E-228
        -0x220ceac50cb09bfaL
    .end array-data

    :array_1e
    .array-data 8
        0x480d0d1bff24c360L    # 1.235701746449341E39
        0x1612a10f75dd28e6L
    .end array-data

    :array_1f
    .array-data 8
        -0x5d174be2b1990a8dL
        0x7ae55ffa1e98eabbL    # 9.932766559432934E283
        -0x7b94b32170381bbeL    # -2.24109934183681E-287
        0x18b6b2173c598bdaL
    .end array-data

    :array_20
    .array-data 8
        0x91880a3bd4aa646L
        -0x71e0c2ed09a4b16cL
    .end array-data

    :array_21
    .array-data 8
        -0x3c72fa756d497685L    # -2.6140374558947312E17
        0x17be3e9763a6e0b3L
    .end array-data

    :array_22
    .array-data 8
        0x27c06da69273b200L
        -0x2667dfb2d2781728L    # -3.987188433354891E123
    .end array-data

    :array_23
    .array-data 8
        0x3ae8f30c2f817deL
        0x763ed17b683e083cL    # 3.790746837197375E261
    .end array-data

    :array_24
    .array-data 8
        -0x3715cb831621c8f1L    # -1.8262241247114862E43
        0x4a8a467606d4d590L    # 1.2288417282429447E51
    .end array-data
.end method

.method private showLINK()V
    .locals 6

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
    const/4 v2, 0x6

    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    new-array v4, v3, [J

    .line 47
    .line 48
    fill-array-data v4, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v4, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;

    .line 59
    .line 60
    const/4 v5, 0x4

    .line 61
    invoke-direct {v4, p0, v5}, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    const/4 v5, -0x1

    .line 65
    invoke-virtual {v0, v5, v1, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v3, v3, [J

    .line 71
    .line 72
    fill-array-data v3, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v3, L뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨;

    .line 83
    .line 84
    invoke-direct {v3, v2}, L뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨;-><init>(I)V

    .line 85
    .line 86
    .line 87
    const/4 v2, -0x2

    .line 88
    invoke-virtual {v0, v2, v1, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :array_0
    .array-data 8
        -0x6c9ac7d4981b21f9L
        -0x6b3e88605b3ef740L
        0x692c91533e9fb704L
        0x8b22b7edc65d44eL
        -0x76137771732d89daL    # -7.249159832005649E-261
        -0x3c07bab9e58fd4f1L    # -2.7982097754692317E19
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
    :array_1
    .array-data 8
        -0x7b7c7799c6f97fe4L    # -6.41385093105902E-287
        -0x19f83afd06db2315L    # -3.1562313037097083E183
    .end array-data

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
    :array_2
    .array-data 8
        -0x5d1ac1d79a8ed42dL
        0x62a318311bed1e7eL    # 1.4074594345616607E167
    .end array-data
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$dialogAddPayload$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Landroid/widget/ListView;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$onCreate$0(Landroid/widget/ListView;I)V

    return-void
.end method

.method public static synthetic 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$showLINK$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/activities/NetworkActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$dialogAddPayload$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic 뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$dialogAddPayload$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$onPrepareOptionsMenu$13(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$dialogAddPayload$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Lcom/tknetwork/tunnel/activities/NetworkActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$dialogAddPayload$5(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$onCreate$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic 뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$dialogAddPayload$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/widget/ListView;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$reload$16(Landroid/widget/ListView;I)V

    return-void
.end method

.method public static synthetic 뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$showLINK$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Lcom/tknetwork/tunnel/activities/NetworkActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$onPrepareOptionsMenu$11()V

    return-void
.end method

.method public static synthetic 뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$dialogAddPayload$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎰딎땻듔땥땣듽땩땲땱딞둠듌뎸듰땋뒻됩두땤뒝땰도됐돰땠뒘듌뎡땩둔뒨뒻됐딝땪뒨딨딤땔뎡뒙땅땋돸돴딟딄땠땮뎬듰뎡딻뎹뒐뎰땝둡둠딟뒷듌땧듔뒘땵득딠땧돰된뒐딹되듸딃땄땮딄딅땹들뎹뒵딌듼된돤딝돷뒛된뒵땜돴딟땧땀땜땤득땤듸딎돼뒙땔디땮돸뒈딟뎻득땭땡돴된돛땔돝득됫뎠듽뒛돛땡둥(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$onPrepareOptionsMenu$10(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$onPrepareOptionsMenu$12(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎸듸뒼둥딝땣득뒋땔땁딝듟땬딄땤뎹뒉딃돴듨뒙뒝뒉뒈뒤땄딤땻됫땳됴될뎹듸딸돛둬듼뎻땄땥듨딹들둥땃들둑들뎬듟뒐뎡뒼듰돴땔딌뒼뎠뒬돤딝땸듼듸든듟드둡됴딽딤땨땐돛땬돠되되땫뒋디땲딅땡돸뒘둡딨든땍됴땡뎨딌듬돰듻돵듰땰땵땩됐땋됐돛뒾딀됩땁둘딅딜도뒻뎡돼돛땲딃뎡땥땲듬딎뎠땜듰(Lcom/tknetwork/tunnel/activities/NetworkActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->lambda$dialogAddPayload$7(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic 뎸딀듽땐땱딨둘됴듨돛땐둔되땔돳된듨됩땨따듬땮뒐든듸뒹딝땟땬땋뎰뒵딽땩땵드땍딻뒛땰땮딐뒤땄돸뒐돤땻땵뎡딎땭딸뎡듻뎸뒛땟뎰뒉땡돨딄땄딤뎠둣뒈땠땭뒉땀뒀뒘딃땤뎡뒘뎡땪돳됫돤뎸땡됴땪돳땭딤딹뒹듌뒬둑땸듨땰둠뒋땬딻땥돶딎땥두뒵뒝딅딝뒹뒾딃뒝땣뒵뎬딹땄딁돷뎬땅땃뒾뒼뎨땸땥(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->btnPayloadGen:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public static bridge synthetic 뎸딜둠딎뎬딻돰딃뒨땀듌딤뒋뎻땍뒵될뒼땸둘땤듰딌딻둔땱땁따땮땬뒀뒛땫딻땮땮드땹땥땬땠듬땯득땐땐땋딐뒉돴땬뒨듌땯뎹땱될듟땭땮뒹돸딞딐돨뒘딃듰되뎰듐뒵디딨디땜땋뎠뒬디딤듬딠듼뒬뒹뒵딤땥둘둘땄딠뎹듽듔뒻뎻뎻돝딨따땟둣듻딄뒙돶땭땄듽딟땯뒾디딄둬뒀딅뒐듽뎠듬돛땤디둥딨딤땮(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->ckMultiCert:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎸딞돵뎡뎬땃뒵딸돵땱둘뒹득뒛땩뒵뒾듸듟딅땫돝돛땔뒵땱둡딁땔되땄듔뒷딠땐듬뎬땱딀딄땰둘땡땡됩뒹돵뒈땥딽뒉땬땧딽둔듔뒀땠딨딜땭뒻돠딜땤도둬된땭됐드도땔땦땻디됨돰뒼땟듻뎬뎡뎽땍뒬딠뎬땦두뒛돴돴둑됫드둣든땥디땧됩됨두딠딨땃둠돵뎸뒨뎸뎹땡뒙땨딝되땁됨돼땲돼뎽땮땠딄딁땄땸(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->etNetworkPayload:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static bridge synthetic 뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->l_info:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method

.method public static bridge synthetic 뎹뎠돰될딟딄딞뒨돳딠딃도득딄땟뒨뒷둑둑됫땦듬딁듻딟뒐땦됨딽득땝땄땱땜딃땡딜땤땹뎬딸뎠뒋뒝딸땹땍따땐돳딹듸돷돨듬땣땜듨땝딄땱땁땤돸뒻디됴됴돳뎠땠땹땡딹둑뒬듸듻뒵돼딸땻땁땮딽듬딐돸땦듐둬됴돝딅됨땍뎽뎠뎰땝뒙돸딹둡뒻뒈득돼딌뎻듨돨땻땠땟돵돷되돨땦돠딸됩딜땀딐뎽딎뎻뒉(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->l_pro:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static bridge synthetic 뎹뎹땀둔땯됨뒋딝듟땁딞땭땠뒷뎡듼딠됩뒋땃돶두됴돨땨딤땄뎰딀뎡듼땀뒀돝땲땋뒵뎠돳득딤땪땔딁듸돤뒵돷땦될듔땧돼되든딄뒨둬땱돳딨듻듽뒛뎸듬땜뒝뒉도땄땪따딃뒻듌뒘땭듰딐뒹두딞뒨딸됩듻땋땪딎든뒾둬땣딻딜듨땡뒷땭둡딅들뒾땲땧딐땃뒻딤돛딄둣두둣돵듟돛땥딄돷돴뒵뒈됐뒛땍뒤땱뒨(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->p_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic 뎹돠듰뎽돼땃딄따듨뎬땻딽뎡듽딸뒝둡따땦돝딟뒉딸딞디듻뎬딨딅뒀딹됩돷뒤득딹뒻땔딀될딠딨듰땯뎽땦땄땄뒻뒀뎠뎹딻돷땦뒈뒷땭뎻뒾뒝땲땦뒛땍딐듌돳됩땫따땱땥듨딀뒹뒋되땀딜듬땁땸딜든듬뒝딅두땜뒈되땤됴땦돷뒻듰땡땧땮뒈든둣딌뒉돰딐뎰땹디득뒨딤땍듨뎻뒹됩땜돛되뒼땧뎹딜뎨뎨뒤딞(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->proto_type:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic 뎹뒙땀듻돰땜뒐딽뒝딟뎹듰뎻뒻땀따뒻듟돝뒤땣뒐돸땪둥둠땟듟땡땬뒼듸될돨땨땹딞뒝돵돼든돨딹땍됐땔땯딜디땬둥딀땍뎡땪뒨땮뒘딎땨뒝뒬뎹된뒝뒷득들땧뒝딌딨땟돶딄딝뒵땫듸돛돼딄됫뎠돛듟땔딅돵따따땜뎰딃뒹둔듨돶땵듟뎸듰둘뒼땟돼땸뒤땧땲뒨땨땐땠디됩딞됨듻뒷됩땃딐듼됐땲딄딸뒐돨(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Landroid/widget/RadioGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->server_type:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method public static bridge synthetic 뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵(Lcom/tknetwork/tunnel/activities/NetworkActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->v:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic 뎻뎨듔듬뒵돛둑딌땍땦든딠땨돤뎰뎽되뒻뒝돼딻둔뒝듸땹됴돝땪둘듬둬둬듬땵뒾딠땡뒋뒷땍땰땱뎬됨딤뎠둑뒤뒼땁듰뎹듰딄땦뒈득딠돨둥땬뒉뒛땨땝딠딽뒤땬뒀땜돝딽땃딄뒉딄뎠뎠땱뒹뒐듐뎠땀뎸듻땔땜땍딜뒤뎨뎽뎠땍딁땡땁되땪땨둔두딸딠딟뒨딠뒈땝딀땸뒵딃듰듰땬뒻뒛딨됐땟든딽땻득땫땮딝(Lcom/tknetwork/tunnel/activities/NetworkActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->networkingList(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic 뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄(Lcom/tknetwork/tunnel/activities/NetworkActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setResult(IZ)V

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
    iget-object v4, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

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
        -0x74233d62ac2d747L
        0x62f7fe54e1253b9L
        -0x270967d660d3aa56L    # -3.6465217602671937E120
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
        0x538c95174c5b1da2L    # 2.981035525427758E94
        -0x7b0ffbf564096187L    # -6.73150839472714E-285
        0x281e962838f88e76L    # 1.940672201742676E-115
    .end array-data

    :array_2
    .array-data 8
        -0x64bd2a1105493834L
        -0x53d2cd8c2d225f70L    # -6.83456391314921E-96
    .end array-data
.end method

.method public loadServers()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listProfiles:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v1, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listProfiles:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_0
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v6, v5, [J

    .line 27
    .line 28
    const-wide v7, -0x6ef5261db673ccc2L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    aput-wide v7, v6, v3

    .line 34
    .line 35
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/high16 v7, 0x7f120000

    .line 47
    .line 48
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    new-array v0, v0, [B

    .line 57
    .line 58
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 59
    .line 60
    .line 61
    new-instance v8, Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catch_1
    move-exception v0

    .line 71
    :goto_1
    move-object v6, v8

    .line 72
    goto :goto_3

    .line 73
    :catch_2
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object v8, v0

    .line 77
    if-eqz v7, :cond_1

    .line 78
    .line 79
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    move-object v7, v0

    .line 85
    :try_start_5
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_3
    move-exception v0

    .line 90
    goto :goto_3

    .line 91
    :catch_4
    move-exception v0

    .line 92
    goto :goto_3

    .line 93
    :cond_1
    :goto_2
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 94
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    move-object v8, v6

    .line 98
    :goto_4
    iget v0, v1, Lcom/tknetwork/tunnel/activities/NetworkActivity;->selectedServerType:I

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getServersArray(I)Lorg/json/JSONArray;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v6, 0x0

    .line 105
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-ge v6, v7, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v10, v4, [J

    .line 118
    .line 119
    fill-array-data v10, :array_0

    .line 120
    .line 121
    .line 122
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    if-nez v6, :cond_2

    .line 134
    .line 135
    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listProfiles:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto/16 :goto_6

    .line 141
    .line 142
    :cond_2
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v11, v2, [J

    .line 145
    .line 146
    fill-array-data v11, :array_1

    .line 147
    .line 148
    .line 149
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v12, v2, [J

    .line 163
    .line 164
    fill-array-data v12, :array_2

    .line 165
    .line 166
    .line 167
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v13, v4, [J

    .line 181
    .line 182
    fill-array-data v13, :array_3

    .line 183
    .line 184
    .line 185
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v14, v5, [J

    .line 195
    .line 196
    const-wide v15, 0x631129fd66193cd5L    # 1.619409428515882E169

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    aput-wide v15, v14, v3

    .line 202
    .line 203
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    if-eqz v13, :cond_3

    .line 219
    .line 220
    move-object v12, v8

    .line 221
    :cond_3
    new-instance v13, Ljava/io/StringReader;

    .line 222
    .line 223
    invoke-direct {v13, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v12, Lcom/tknetwork/tunnel/core/ConfigParser;

    .line 227
    .line 228
    invoke-direct {v12}, Lcom/tknetwork/tunnel/core/ConfigParser;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12, v13}, Lcom/tknetwork/tunnel/core/ConfigParser;->parseConfig(Ljava/io/Reader;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v12}, Lcom/tknetwork/tunnel/core/ConfigParser;->convertProfile()Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    iget-object v13, v12, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnections:[Lcom/tknetwork/tunnel/core/Connection;

    .line 239
    .line 240
    aget-object v13, v13, v3

    .line 241
    .line 242
    iput-object v10, v13, Lcom/tknetwork/tunnel/core/Connection;->mServerName:Ljava/lang/String;

    .line 243
    .line 244
    iput-object v11, v13, Lcom/tknetwork/tunnel/core/Connection;->mServerPort:Ljava/lang/String;

    .line 245
    .line 246
    iput-boolean v5, v13, Lcom/tknetwork/tunnel/core/Connection;->mUseCustomConfig:Z

    .line 247
    .line 248
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v11, v4, [J

    .line 251
    .line 252
    fill-array-data v11, :array_4

    .line 253
    .line 254
    .line 255
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v13, v4, [J

    .line 265
    .line 266
    fill-array-data v13, :array_5

    .line 267
    .line 268
    .line 269
    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    invoke-static {v9, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    new-array v11, v5, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object v9, v11, v3

    .line 283
    .line 284
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    invoke-virtual {v12, v1, v5}, Lcom/tknetwork/tunnel/core/VpnProfile;->getConfigFile(Landroid/content/Context;Z)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    new-instance v11, Ljava/io/File;

    .line 293
    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v9, Ljava/io/FileOutputStream;

    .line 302
    .line 303
    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 317
    .line 318
    .line 319
    iget-object v9, v1, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listProfiles:Ljava/util/ArrayList;

    .line 320
    .line 321
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 322
    .line 323
    new-array v11, v4, [J

    .line 324
    .line 325
    fill-array-data v11, :array_6

    .line 326
    .line 327
    .line 328
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    iget-object v7, v1, Lcom/tknetwork/tunnel/activities/NetworkActivity;->server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    .line 343
    .line 344
    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 345
    .line 346
    .line 347
    :goto_6
    add-int/2addr v6, v5

    .line 348
    goto/16 :goto_5

    .line 349
    .line 350
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 351
    .line 352
    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 359
    .line 360
    new-array v2, v2, [J

    .line 361
    .line 362
    fill-array-data v2, :array_7

    .line 363
    .line 364
    .line 365
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v1, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :cond_4
    return-void

    .line 390
    nop

    .line 391
    :array_0
    .array-data 8
        0x409bab3597828c22L    # 1770.8023357770949
        -0x34f205a5de66f290L    # -3.5891449994573014E53
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_1
    .array-data 8
        -0x1b4295124457a543L    # -1.8626276051535775E177
        -0x58afc23c4f824014L
        -0x61ea8169594c4392L    # -9.331456521103716E-164
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_2
    .array-data 8
        0xbc15792599381d7L
        -0x70fbbc41833d408dL    # -2.489613851160034E-236
        -0xa78879cd8c3ab0dL
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_3
    .array-data 8
        -0x30b646aa5b345314L    # -9.090061728817127E73
        0x391fb1f95535aed7L    # 1.5260688877635852E-33
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_4
    .array-data 8
        -0x6b81b0e762f2c959L    # -5.762012596104501E-210
        0x75ce1e85158ae291L    # 2.894342880375165E259
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_5
    .array-data 8
        -0x452374a7e9eda293L    # -3.689265965481591E-25
        0x7181d44e83d243a3L    # 5.804989422718567E238
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_6
    .array-data 8
        0x5018994d4e90b34fL    # 7.120876492475368E77
        0x23d130c3ac09e60eL    # 3.695473705074332E-136
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :array_7
    .array-data 8
        0x7d6ac9b686e46167L    # 1.3686900028218326E296
        0x77bd3c4e9bd7d5e0L    # 6.033200824022783E268
        0x27d3e22750582058L    # 7.88483502375373E-117
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d004b

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
    new-array v3, v3, [J

    .line 28
    .line 29
    fill-array-data v3, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    const/4 v3, 0x4

    .line 41
    new-array v3, v3, [J

    .line 42
    .line 43
    fill-array-data v3, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->a:Landroidx/appcompat/app/AlertDialog;

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
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 78
    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    new-instance p1, Lnet/openvpn/openvpn/PrefUtil;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 88
    .line 89
    invoke-direct {p1, v1}, Lnet/openvpn/openvpn/PrefUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 93
    .line 94
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 99
    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 105
    .line 106
    new-instance p1, Lnet/openvpn/openvpn/PrefUtil;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    invoke-direct {p1, v1}, Lnet/openvpn/openvpn/PrefUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 114
    .line 115
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 116
    .line 117
    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 129
    .line 130
    .line 131
    new-instance p1, Landroid/os/Handler;

    .line 132
    .line 133
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mHandler:Landroid/os/Handler;

    .line 141
    .line 142
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 147
    .line 148
    const p1, 0x7f0a03df

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    .line 169
    .line 170
    new-instance p1, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    .line 176
    .line 177
    new-instance p1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

    .line 178
    .line 179
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listNetwork:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {p1, p0, v1}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 182
    .line 183
    .line 184
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

    .line 185
    .line 186
    const p1, 0x7f0a029f

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Landroid/widget/ListView;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->networkAdapter:Lcom/tknetwork/tunnel/adapter/NetworkAdapter;

    .line 196
    .line 197
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listProfiles:Ljava/util/ArrayList;

    .line 206
    .line 207
    new-instance v1, Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    .line 208
    .line 209
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->listProfiles:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v1, p0, v3}, Lcom/tknetwork/tunnel/adapter/ServerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 212
    .line 213
    .line 214
    iput-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->server_adapter:Lcom/tknetwork/tunnel/adapter/ServerAdapter;

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadServers()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadNetworks()V

    .line 220
    .line 221
    .line 222
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedServer()V

    .line 223
    .line 224
    .line 225
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->setSelectedNetwork(Z)V

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->config:Lconfig/ConfigUtil;

    .line 229
    .line 230
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getNetworkSelectedPosition()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->mHandler:Landroid/os/Handler;

    .line 238
    .line 239
    new-instance v4, L딠딁땔땸두듬돳들득딅딌딄땥된듽돳딻땤땁도땃땤땠돷땵땫됩땸딻듻뒘됐된돷땣딜돝딜돨딤딜땮득따돶뎹딎딄땐되되따뎽든딁들뎠디듸든됫뒛뎠따딌뒐듸땳딤땱뒻듻땮땣땨뒀땪뒹딨뒙된뒀뎠둠됩딠돼딀돤딨딝땳따땹들돵뒻돨땩뒋디뒨됴딠땜딅돸딤뒻됐딽땻뎹돴딌뒋될뒷뒈듸딽득땔뒙땅딞둔됐딻뒙;

    .line 240
    .line 241
    invoke-direct {v4, p1, v1, v2}, L딠딁땔땸두듬돳들득딅딌딄땥된듽돳딻땤땁도땃땤땠돷땵땫됩땸딻듻뒘됐된돷땣딜돝딜돨딤딜땮득따돶뎹딎딄땐되되따뎽든딁들뎠디듸든됫뒛뎠따딌뒐듸땳딤땱뒻듻땮땣땨뒀땪뒹딨뒙된뒀뎠둠됩딠돼딀돤딨딝땳따땹들돵뒻돨땩뒋디뒨됴딠땜딅돸딤뒻됐딽땻뎹돴딌뒋될뒷뒈듸딽득땔뒙땅딞둔됐딻뒙;-><init>(Landroid/widget/ListView;II)V

    .line 242
    .line 243
    .line 244
    const-wide/16 v5, 0x1f4

    .line 245
    .line 246
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    .line 248
    .line 249
    new-instance v1, L딠땄따딀딜땬딹땩땍됩뎽돤딻딻두뒐땵도드따됴땤땨듌돵뎸딞땨땡땁땦뒤땦뎸돼땸든됩돰뒉땥뒾디뒝땟딌들둣땍둑돠뎸딄디듽둡뒐땧돸돛뒝뎬땵듟뎹땻땀땧돤뒙땋뎠둣땭됫땹듟될들딜땥뒙땫뒵듬딜땝딽돵땫뒉뎹들땫딽땅도땪될딄땋뒬따뒙득딃땠땯땥딻딄됩딨뒈돝뎠땝딁땋땮딌땤뎰듽됐땧돛돰땬뎨;

    .line 250
    .line 251
    invoke-direct {v1, p0, v2}, L딠땄따딀딜땬딹땩땍됩뎽돤딻딻두뒐땵도드따됴땤땨듌돵뎸딞땨땡땁땦뒤땦뎸돼땸든됩돰뒉땥뒾디뒝땟딌들둣땍둑돠뎸딄디듽둡뒐땧돸돛뒝뎬땵듟뎹땻땀땧돤뒙땋뎠둣땭됫땹듟될들딜땥뒙땫뒵듬딜땝딽돵땫뒉뎹들땫딽땅도땪될딄땋뒬따뒙득딃땠땯땥딻딄됩딨뒈돝뎠땝딁땋땮딌땤뎰듽됐땧돛돰땬뎨;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    new-instance v1, Lcom/tknetwork/tunnel/activities/NetworkActivity$1;

    .line 262
    .line 263
    invoke-direct {v1, p0, v0}, Lcom/tknetwork/tunnel/activities/NetworkActivity$1;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;Z)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    nop

    .line 271
    :array_0
    .array-data 8
        0x3e16543fdb4b9736L    # 1.2997246449072826E-9
        -0x21adcf97c7a874daL
        -0x7ac3a89e79bb3405L
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_1
    .array-data 8
        -0x22a9b580295d274dL    # -4.247249634753909E141
        0x550621544da5f9b9L    # 3.872342387199221E101
        0xafd560b32bf6f01L
        0x20d1cf5887ac4aa0L
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
    const v1, 0x7f0f000f

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

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
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
    new-instance v2, L딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, p0, v3}, L딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

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
    new-instance v2, L딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v2, p0, v3}, L딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

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
    new-instance v1, L딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸;

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    invoke-direct {v1, p0, v2}, L딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;I)V

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
    new-instance v0, Lcom/tknetwork/tunnel/activities/NetworkActivity$4;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/activities/NetworkActivity$4;-><init>(Lcom/tknetwork/tunnel/activities/NetworkActivity;)V

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/NetworkActivity;->myPrefs:Landroid/content/SharedPreferences;

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
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/activities/NetworkActivity;->loadAppColors(I)V

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
        0x4913ce1b5132ff84L    # 1.1041714630754907E44
        -0x46b90104e5a6700aL    # -8.857744329016416E-33
        0x1a90204777ed6262L    # 9.7156464740023E-181
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
        0x649d84ec26ebed6bL    # 4.672641670333149E176
        -0x3a3a87a6acc52064L    # -1.3289356261082033E28
    .end array-data
.end method
