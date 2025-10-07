.class public Lcom/tknetwork/tunnel/logger/JcLogs;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;
    }
.end annotation


# static fields
.field private static final LOGTIMEFORMAT:Ljava/lang/String;

.field public static ladapter:Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private myPrefs:Landroid/content/SharedPreferences;

.field private tb:Landroidx/appcompat/widget/Toolbar;


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

    sput-object v0, Lcom/tknetwork/tunnel/logger/JcLogs;->LOGTIMEFORMAT:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x20764caae3f38bcL
        0x2346678349bcb44L
        0x579451a877db761dL    # 7.818441919533909E113
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 p3, 0x3

    .line 12
    new-array p4, p3, [J

    .line 13
    .line 14
    fill-array-data p4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/content/ClipboardManager;

    .line 29
    .line 30
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array p5, p3, [J

    .line 33
    .line 34
    fill-array-data p5, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    invoke-static {p4, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array p2, p3, [J

    .line 54
    .line 55
    fill-array-data p2, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 p2, 0x1

    .line 66
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 71
    .line 72
    .line 73
    return p2

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x2ba4f526dd19c2ddL    # -2.310486559822785E98
        0x455f8eecd0a81a11L    # 1.5260657966207362E26
        -0x6b7c01112e29d4ddL    # -7.602781362795836E-210
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
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
    :array_1
    .array-data 8
        -0x27a1b9857a5b0c9dL    # -4.771631342050107E117
        -0xfb3bc38763b0263L    # -8.776311329475186E232
        0x454336ef609463bfL    # 4.645802818776706E25
    .end array-data

    .line 92
    .line 93
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
    :array_2
    .array-data 8
        -0x5ac52238236de222L    # -2.422424401384093E-129
        0x4a8d0d539194a07bL    # 1.358708096202398E51
        -0x1a31b336d8a1bed0L    # -2.5146018174205568E182
    .end array-data
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/logger/JcLogs;->clear()V

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

.method private mail()V
    .locals 7

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v2, v1, [J

    .line 18
    .line 19
    fill-array-data v2, :array_1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Landroid/content/Intent;

    .line 30
    .line 31
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    new-array v4, v4, [J

    .line 35
    .line 36
    fill-array-data v4, :array_2

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v5, 0x7

    .line 49
    new-array v5, v5, [J

    .line 50
    .line 51
    fill-array-data v5, :array_3

    .line 52
    .line 53
    .line 54
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v1, v1, [J

    .line 64
    .line 65
    fill-array-data v1, :array_4

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v5, 0x2

    .line 76
    new-array v5, v5, [Ljava/lang/Object;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    aput-object v0, v5, v6

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    aput-object v1, v5, v0

    .line 83
    .line 84
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :array_0
    .array-data 8
        0x8c9456a56d89feL
        0x501047b4cadf1389L    # 4.712767681712547E77
        0x31f3a2fb88a61232L    # 4.552274074247126E-68
    .end array-data

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
    :array_1
    .array-data 8
        0x49678d39c39602caL    # 4.2017570236468584E45
        0x69dcaa8376f9950fL    # 8.776982782603997E201
        -0x22808308591436b5L    # -2.3998559252031998E142
    .end array-data

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
    :array_2
    .array-data 8
        0x401446fe66d83c3cL    # 5.069329840610461
        0x6429023fd7406aa3L    # 3.0927166192350693E174
        -0x41d1d76a58bce8a2L    # -3.5109153866263683E-9
        0x589f01a4070bcb37L    # 7.818974233182228E118
        0x574a8d5cd999e4fdL    # 3.1927791481081893E112
    .end array-data

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
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_3
    .array-data 8
        0x1893a3f335341ab3L    # 2.755076970838413E-190
        0x81c549dedcc126L    # 3.1632822008354E-306
        0x1da99489baad3b4aL
        0x6e689ddaca7d50cbL    # 7.118610201475834E223
        -0x4ac4e1a9fa7e5268L    # -2.8313035162245936E-52
        -0x47c7d1f307e3b4feL    # -7.105829671046725E-38
        -0x5bbe45fa68495bf6L    # -4.877738965807104E-134
    .end array-data

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
    :array_4
    .array-data 8
        0x6d33246d6be0616cL    # 1.0558224074076001E218
        -0x2578271adf8a3642L    # -1.2914167347648255E128
        0x420ef08f842feae5L    # 1.6610619525989695E10
    .end array-data
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/logger/JcLogs;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/logger/JcLogs;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/logger/JcLogs;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/tknetwork/tunnel/logger/JcLogs;->lambda$onCreate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/logger/JcLogs;->ladapter:Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->clearLog()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public log(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingInflatedId"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0049

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs;->myPrefs:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs;->editor:Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    const p1, 0x7f0a03df

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/JcLogs;->tb:Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sput-object p1, Lcom/tknetwork/tunnel/logger/JcLogs;->ladapter:Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/4 v4, 0x3

    .line 59
    new-array v4, v4, [J

    .line 60
    .line 61
    fill-array-data v4, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {p1, v0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;I)V

    .line 76
    .line 77
    .line 78
    const p1, 0x102000a

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/ListView;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->doBindService()V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lcom/tknetwork/tunnel/logger/JcLogs;->ladapter:Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/tknetwork/tunnel/logger/JcLogs;->ladapter:Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/logger/JcLogs$LogWindowListAdapter;->getCount()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 102
    .line 103
    .line 104
    new-instance v0, L딁뒹땁땄디딐딜땋뎠딐딐듼땵딐둣뒉뎠뎬뎹돛뒨땭됫뒤뒈땋뎰듟땰돼뒙땮득땻둬땡뎸돝땄될딄땪뒋뒹딨뎰딜땃돷딄돠뒉땫돵땧돠땡뒘땫땔땭딃뒨돨돝땁땟땁딽딎될딨뒾뒈뒻딤디둠뒝드돨땹됐뎸뒵듻땔딽딐딜돝땧둬든돰듻따땬둬땫땥둡돛땻땟딤도딹뒈돷땵뒹뒝뎻듼땪뒉땟듽땣땵땟될두돠뎹뎻딽딄땍;

    .line 105
    .line 106
    invoke-direct {v0, p0}, L딁뒹땁땄디딐딜땋뎠딐딐듼땵딐둣뒉뎠뎬뎹돛뒨땭됫뒤뒈땋뎰듟땰돼뒙땮득땻둬땡뎸돝땄될딄땪뒋뒹딨뎰딜땃돷딄돠뒉땫돵땧돠땡뒘땫땔땭딃뒨돨돝땁땟땁딽딎될딨뒾뒈뒻딤디둠뒝드돨땹됐뎸뒵듻땔딽딐딜돝땧둬든돰듻따땬둬땫땥둡돛땻땟딤도딹뒈돷땵뒹뒝뎻듼땪뒉땟듽땣땵땟될두돠뎹뎻딽딄땍;-><init>(Lcom/tknetwork/tunnel/logger/JcLogs;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 110
    .line 111
    .line 112
    const p1, 0x7f0a00b9

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v0, L딁득돨둠땐듟듔뎬따뎠돝둡땩땭돷땹땀돸됫된듸땡둘둑땹뎡돼뒬땦됫듼땠딨땫땨뒉둥돠뎽든땠된땥돵뒈듔뎰뒻딤땹땁땠둔듬땋됴뒀듻득뎨땡땀딻땪뒛된돵딅딝땁뒹땨딸땁뒀들뒼둠땲땣돸될뒋딄돛든땰땃듬뎹듐둘땭땫둔딞듸뒹도딻듔땣둑둘딨땸땜둬땄땋땩뒤둔딽될딠돠됐땸둡딝딄됫돼듼된딀듌됩땥;

    .line 120
    .line 121
    invoke-direct {v0, p0, v1}, L딁득돨둠땐듟듔뎬따뎠돝둡땩땭돷땹땀돸됫된듸땡둘둑땹뎡돼뒬땦됫듼땠딨땫땨뒉둥돠뎽든땠된땥돵뒈듔뎰뒻딤땹땁땠둔듬땋됴뒀듻득뎨땡땀딻땪뒛된돵딅딝땁뒹땨딸땁뒀들뒼둠땲땣돸될뒋딄돛든땰땃듬뎹듐둘땭땫둔딞듸뒹도딻듔땣둑둘딨땸땜둬땄땋땩뒤둔딽될딠돠됐땸둡딝딄됫돼듼된딀듌됩땥;-><init>(Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        0x7949981aefde67b6L    # 1.7722579745426891E276
        0x1d889e66b3f1067bL
        0x26408988a2cde69cL    # 1.954406322275532E-124
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
    const v1, 0x7f0f0003

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0261

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/logger/JcLogs;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/JcLogs;->myPrefs:Landroid/content/SharedPreferences;

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
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/logger/JcLogs;->loadAppColors(I)V

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
        0x135900053a170ddL
        -0x7f44d50b94b76c44L    # -3.868822007015695E-305
        0x248c7667daab0558L
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
        -0x3596b687c7677fa9L    # -2.956558262331845E50
        -0x3524f716b5650c77L    # -4.045969275573103E52
    .end array-data
.end method
