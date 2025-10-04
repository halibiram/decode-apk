.class public Lcom/tknetwork/tunnel/utils/Generator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_PROXY:Ljava/lang/String;

.field public static final DUAL_CONNECT:Ljava/lang/String;

.field public static final FIXED_PAYLOAD:Ljava/lang/String;

.field public static final FORWARD_HOST:Ljava/lang/String;

.field public static final FULL_HOST:Ljava/lang/String;

.field public static final INJECT_METHOD:Ljava/lang/String;

.field public static final KEEP_ALIVE:Ljava/lang/String;

.field public static final METHOD:Ljava/lang/String;

.field public static final ONLINE_HOST:Ljava/lang/String;

.field public static final PORT:Ljava/lang/String;

.field public static final PROXY:Ljava/lang/String;

.field public static final PROXY_AUTH:Ljava/lang/String;

.field public static final QUERY_MODE:Ljava/lang/String;

.field public static final REQUEST_METHOD:Ljava/lang/String;

.field public static final REVERSE_PROXY:Ljava/lang/String;

.field public static final URL_HOST:Ljava/lang/String;


# instance fields
.field private closeDialog:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private dual_connect:Landroid/widget/CheckBox;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private forward_host:Landroid/widget/CheckBox;

.field private generate_btn:Landroid/widget/Button;

.field private inject_method:Landroid/widget/Spinner;

.field private keep_alive:Landroid/widget/CheckBox;

.field private listener:Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;

.field private online_host:Landroid/widget/CheckBox;

.field private prefs:Landroid/content/SharedPreferences;

.field private proxy_auth:Landroid/widget/CheckBox;

.field private query_mode:Landroid/widget/RadioGroup;

.field private request_method:Landroid/widget/Spinner;

.field private reverse_proxy:Landroid/widget/CheckBox;

.field private server:Landroid/widget/EditText;

.field private split:Landroid/widget/RadioGroup;

.field private url_host:Landroid/widget/EditText;

.field private vp:Lcom/tknetwork/tunnel/core/ConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->URL_HOST:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->INJECT_METHOD:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->REQUEST_METHOD:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->METHOD:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->QUERY_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_5

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->ONLINE_HOST:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->FORWARD_HOST:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_7

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->REVERSE_PROXY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_8

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->KEEP_ALIVE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_9

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->DUAL_CONNECT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->FULL_HOST:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_b

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->DEFAULT_PROXY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->PROXY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_d

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->PORT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->PROXY_AUTH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_f

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/Generator;->FIXED_PAYLOAD:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x6b5266ee1fe5c08eL
        -0x1c0810082aacee23L    # -3.7002754152743465E173
    .end array-data

    :array_1
    .array-data 8
        -0x40b7afe3009f8575L    # -7.419721212079273E-4
        -0x26bf1e605d18d998L    # -8.718368719668749E121
        -0xaab1f6e53230b7dL
        0x2cb44ec0a6f9b051L    # 2.4338876877125807E-93
    .end array-data

    :array_2
    .array-data 8
        -0x6379524997e00696L    # -2.934188686338671E-171
        -0x3fb4546b744b1118L    # -55.34047075590735
        0x1a09766ce4eb3afeL
        -0x2ed823190bdce5beL    # -9.054240567931575E82
    .end array-data

    :array_3
    .array-data 8
        0x76be673c1e11cc4L    # 6.446757250004879E-273
        -0x1a3fd243d22d0aa7L    # -1.3426714197386513E182
    .end array-data

    :array_4
    .array-data 8
        -0x56837067a46eb31bL
        0x452ebc4e715f8533L    # 1.857851325132541E25
        0xdcafe07a1ee3f81L
    .end array-data

    :array_5
    .array-data 8
        0x1ae00eb2525e898bL    # 3.095765413093828E-179
        -0x7a356e3bdbec5e4dL    # -9.148202870738461E-281
        0x1e4c991f09247be3L    # 9.932303636020308E-163
    .end array-data

    :array_6
    .array-data 8
        -0x46283ec69beafbf7L    # -4.684804701322532E-30
        0xc3fdbbb9d887245L
        0x2f06843764cdb1c7L    # 3.708954472991244E-82
    .end array-data

    :array_7
    .array-data 8
        0x3688c3a060728141L    # 5.422185570765632E-46
        0xd6aede0db49d6ffL
        0x5b44e55b07c54672L    # 4.634998787511915E131
    .end array-data

    :array_8
    .array-data 8
        -0x2e94a936fe165850L    # -1.659707307509307E84
        0x3fad4d7bc9a31d83L    # 0.057231777538215865
        -0x4b13aeaa205f923L    # -9.151059611150874E285
    .end array-data

    :array_9
    .array-data 8
        -0x899cc8628b9eccL
        -0x2e6a79379f4132deL    # -1.0454713060581528E85
        -0x6531ac03bc597dbL
    .end array-data

    :array_a
    .array-data 8
        0x783d65ec89a17dccL
        -0x77df4be9fbb651cfL
        0x30006a9dec96a30cL    # 1.772192765907162E-77
    .end array-data

    :array_b
    .array-data 8
        -0x4c9a0ce4c617e235L    # -4.2685284031390023E-61
        0x2392846887c4d809L    # 2.487927797207392E-137
        0x2eecdda265775d54L    # 1.1887052636588946E-82
    .end array-data

    :array_c
    .array-data 8
        0x49c032f80a3fdd91L    # 1.8496099385546902E47
        0x4ff53a7ae5df9ff9L    # 1.5363032256701257E77
    .end array-data

    :array_d
    .array-data 8
        -0x6513ec65321b1060L    # -5.412984799735086E-179
        -0x541ddc9ae683315L
    .end array-data

    :array_e
    .array-data 8
        -0x22b975a11ace39cL
        -0x6f422a0be47887a1L    # -4.919719507901589E-228
        0x35ae30d3786f5e8dL    # 4.0346354558791786E-50
    .end array-data

    :array_f
    .array-data 8
        -0x5bfb9763da2b8fb8L
        0x3b0c115cf0fb6f66L    # 2.9021450248284796E-24
        0x44e574f18c676fc3L    # 8.106153908256196E23
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/Generator;->init()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private findId(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private getCrlf()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    if-eq v2, v4, :cond_2

    .line 27
    .line 28
    if-eq v2, v1, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    :cond_0
    if-ne v3, v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    fill-array-data v1, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v0, v0, [J

    .line 67
    .line 68
    fill-array-data v0, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v1, v1, [J

    .line 82
    .line 83
    fill-array-data v1, :array_3

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        -0x326c7d834a868480L    # -5.136532098167921E65
        -0x3a79f58b398af533L    # -8.52663866208357E26
        -0xcf7e9bd907dfd87L
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
    :array_1
    .array-data 8
        -0x68656045b867b9cbL    # -5.698690641180089E-195
        -0x1b449d4f72c288e4L    # -1.733956687012301E177
    .end array-data

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
    :array_2
    .array-data 8
        0x6a950b9d2d750643L    # 2.6393292185758384E205
        -0x228024cd751976e9L    # -2.42790944678714E142
        -0x55dce87742313699L
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
    .line 136
    .line 137
    .line 138
    .line 139
    :array_3
    .array-data 8
        -0x2bcb95ab11a93e9bL    # -4.3606940970887045E97
        0x52f5b4d4c5c77a55L    # 4.4216659970486795E91
    .end array-data
.end method

.method private getHost()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->url_host:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v1, v2, v3

    .line 31
    .line 32
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :array_0
    .array-data 8
        -0x3b405b27fe07a361L    # -1.4943419199191123E23
        -0xa081e2526fbae2cL    # -1.835994734191369E260
        -0x19291b74afa64592L
    .end array-data
.end method

.method private getHostHeader()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->url_host:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v1, v2, v3

    .line 31
    .line 32
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    return-object v0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x2658057403d9d0cbL
        -0x1b39830cac3212f5L    # -2.847737755616726E177
        -0x167cd6bedd32a292L    # -1.8333640363590675E200
    .end array-data
.end method

.method private getInjectAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    new-array v3, v2, [J

    .line 20
    .line 21
    fill-array-data v3, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_2

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->context:Landroid/content/Context;

    .line 52
    .line 53
    const v3, 0x7f0d00b2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0x71466759e9036ce7L    # -9.82698651031256E-238
        0x23c5bb19690d8c4aL
    .end array-data

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
    :array_1
    .array-data 8
        -0x6d38882799484efL    # -4.927924848993445E275
        0x26831ffeeb471c32L
        0x6cb7739abb0b38edL    # 5.0527640208407315E215
    .end array-data

    .line 74
    .line 75
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
    :array_2
    .array-data 8
        0x77538f1dc356dee7L    # 6.306724877161681E266
        -0x2ce749203b8d93aL
        0x2c6c03a527a606b0L    # 1.0492287955803762E-94
    .end array-data
.end method

.method private getPayload()Ljava/lang/String;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    const-wide v5, 0x1217e103f0527c17L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    aput-wide v5, v4, v7

    .line 16
    .line 17
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/utils/Generator;->getHostHeader()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v6, 0x3

    .line 31
    new-array v8, v6, [J

    .line 32
    .line 33
    fill-array-data v8, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v9, 0x2

    .line 46
    new-array v10, v9, [J

    .line 47
    .line 48
    fill-array-data v10, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v11, v6, [J

    .line 61
    .line 62
    fill-array-data v11, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    if-eqz v5, :cond_c

    .line 72
    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v13, v9, [J

    .line 81
    .line 82
    fill-array-data v13, :array_3

    .line 83
    .line 84
    .line 85
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    iget-object v12, v0, Lcom/tknetwork/tunnel/utils/Generator;->online_host:Landroid/widget/CheckBox;

    .line 106
    .line 107
    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-eqz v12, :cond_0

    .line 112
    .line 113
    new-instance v12, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v14, v6, [J

    .line 121
    .line 122
    fill-array-data v14, :array_4

    .line 123
    .line 124
    .line 125
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    goto :goto_0

    .line 146
    :cond_0
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v13, v3, [J

    .line 149
    .line 150
    const-wide v14, 0x145f06a86134fef2L

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    aput-wide v14, v13, v7

    .line 156
    .line 157
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    :goto_0
    iget-object v13, v0, Lcom/tknetwork/tunnel/utils/Generator;->forward_host:Landroid/widget/CheckBox;

    .line 165
    .line 166
    invoke-virtual {v13}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-eqz v13, :cond_1

    .line 171
    .line 172
    new-instance v13, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v15, v6, [J

    .line 180
    .line 181
    fill-array-data v15, :array_5

    .line 182
    .line 183
    .line 184
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    goto :goto_1

    .line 205
    :cond_1
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v14, v3, [J

    .line 208
    .line 209
    const-wide v15, -0x1b9dd53ae5fa8095L    # -3.594614979771923E175

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    aput-wide v15, v14, v7

    .line 215
    .line 216
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v13

    .line 223
    :goto_1
    iget-object v14, v0, Lcom/tknetwork/tunnel/utils/Generator;->reverse_proxy:Landroid/widget/CheckBox;

    .line 224
    .line 225
    invoke-virtual {v14}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    if-eqz v14, :cond_2

    .line 230
    .line 231
    new-instance v14, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v10, v1, [J

    .line 239
    .line 240
    fill-array-data v10, :array_6

    .line 241
    .line 242
    .line 243
    invoke-direct {v15, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    goto :goto_2

    .line 264
    :cond_2
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 265
    .line 266
    new-array v14, v3, [J

    .line 267
    .line 268
    const-wide v17, 0x175660122f660b7bL

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    aput-wide v17, v14, v7

    .line 274
    .line 275
    invoke-direct {v10, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    :goto_2
    iget-object v14, v0, Lcom/tknetwork/tunnel/utils/Generator;->proxy_auth:Landroid/widget/CheckBox;

    .line 283
    .line 284
    invoke-virtual {v14}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 285
    .line 286
    .line 287
    move-result v14

    .line 288
    if-eqz v14, :cond_3

    .line 289
    .line 290
    new-instance v14, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    const/4 v6, 0x5

    .line 298
    new-array v6, v6, [J

    .line 299
    .line 300
    fill-array-data v6, :array_7

    .line 301
    .line 302
    .line 303
    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-static {v15, v14, v8}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    goto :goto_3

    .line 311
    :cond_3
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array v14, v3, [J

    .line 314
    .line 315
    const-wide v18, -0x141c4e7a7ea0691fL    # -5.179509427465173E211

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    aput-wide v18, v14, v7

    .line 321
    .line 322
    invoke-direct {v6, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    :goto_3
    iget-object v14, v0, Lcom/tknetwork/tunnel/utils/Generator;->keep_alive:Landroid/widget/CheckBox;

    .line 330
    .line 331
    invoke-virtual {v14}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    if-eqz v14, :cond_4

    .line 336
    .line 337
    new-instance v14, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 343
    .line 344
    new-array v1, v1, [J

    .line 345
    .line 346
    fill-array-data v1, :array_8

    .line 347
    .line 348
    .line 349
    invoke-direct {v15, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 350
    .line 351
    .line 352
    invoke-static {v15, v14, v8}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    goto :goto_4

    .line 357
    :cond_4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 358
    .line 359
    new-array v14, v3, [J

    .line 360
    .line 361
    const-wide v18, 0x13423f2c37ed55ffL    # 6.616359262638271E-216

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    aput-wide v18, v14, v7

    .line 367
    .line 368
    invoke-direct {v1, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    iget-object v15, v0, Lcom/tknetwork/tunnel/utils/Generator;->request_method:Landroid/widget/Spinner;

    .line 381
    .line 382
    invoke-virtual {v15}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v15

    .line 386
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    new-array v7, v9, [J

    .line 392
    .line 393
    fill-array-data v7, :array_9

    .line 394
    .line 395
    .line 396
    invoke-direct {v15, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/utils/Generator;->getHost()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 414
    .line 415
    new-array v15, v9, [J

    .line 416
    .line 417
    fill-array-data v15, :array_a

    .line 418
    .line 419
    .line 420
    invoke-direct {v7, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/utils/Generator;->getProtocolByInject()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    invoke-static {v14, v7, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    iget-object v14, v0, Lcom/tknetwork/tunnel/utils/Generator;->dual_connect:Landroid/widget/CheckBox;

    .line 439
    .line 440
    invoke-virtual {v14}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 441
    .line 442
    .line 443
    move-result v14

    .line 444
    if-eqz v14, :cond_5

    .line 445
    .line 446
    new-instance v14, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 452
    .line 453
    new-array v3, v9, [J

    .line 454
    .line 455
    fill-array-data v3, :array_b

    .line 456
    .line 457
    .line 458
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 472
    .line 473
    const/4 v15, 0x3

    .line 474
    new-array v9, v15, [J

    .line 475
    .line 476
    fill-array-data v9, :array_c

    .line 477
    .line 478
    .line 479
    invoke-direct {v3, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    goto :goto_5

    .line 500
    :cond_5
    move-object v3, v8

    .line 501
    :goto_5
    iget-object v9, v0, Lcom/tknetwork/tunnel/utils/Generator;->query_mode:Landroid/widget/RadioGroup;

    .line 502
    .line 503
    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 504
    .line 505
    .line 506
    move-result v14

    .line 507
    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 508
    .line 509
    .line 510
    move-result-object v14

    .line 511
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 512
    .line 513
    .line 514
    move-result v9

    .line 515
    iget-object v14, v0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 516
    .line 517
    invoke-virtual {v14}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 518
    .line 519
    .line 520
    move-result v14

    .line 521
    const v15, 0x7f0a038d

    .line 522
    .line 523
    .line 524
    if-ne v14, v15, :cond_6

    .line 525
    .line 526
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 527
    .line 528
    const/4 v15, 0x3

    .line 529
    new-array v15, v15, [J

    .line 530
    .line 531
    fill-array-data v15, :array_d

    .line 532
    .line 533
    .line 534
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v14

    .line 541
    :goto_6
    move-object/from16 v17, v2

    .line 542
    .line 543
    const/4 v15, 0x1

    .line 544
    goto :goto_7

    .line 545
    :cond_6
    const/4 v15, 0x3

    .line 546
    iget-object v14, v0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 547
    .line 548
    invoke-virtual {v14}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 549
    .line 550
    .line 551
    move-result v14

    .line 552
    const v15, 0x7f0a038b

    .line 553
    .line 554
    .line 555
    if-ne v14, v15, :cond_7

    .line 556
    .line 557
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 558
    .line 559
    const/4 v15, 0x3

    .line 560
    new-array v15, v15, [J

    .line 561
    .line 562
    fill-array-data v15, :array_e

    .line 563
    .line 564
    .line 565
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v14

    .line 572
    goto :goto_6

    .line 573
    :cond_7
    iget-object v14, v0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 574
    .line 575
    invoke-virtual {v14}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 576
    .line 577
    .line 578
    move-result v14

    .line 579
    const v15, 0x7f0a038e

    .line 580
    .line 581
    .line 582
    if-ne v14, v15, :cond_8

    .line 583
    .line 584
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 585
    .line 586
    move-object/from16 v17, v2

    .line 587
    .line 588
    const/4 v15, 0x1

    .line 589
    new-array v2, v15, [J

    .line 590
    .line 591
    const-wide v20, -0x1cb05d513b9bbf65L    # -2.3878221984934944E170

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    const/16 v16, 0x0

    .line 597
    .line 598
    aput-wide v20, v2, v16

    .line 599
    .line 600
    invoke-direct {v14, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    move-object v14, v2

    .line 608
    goto :goto_7

    .line 609
    :cond_8
    move-object/from16 v17, v2

    .line 610
    .line 611
    const/4 v15, 0x1

    .line 612
    const/4 v14, 0x0

    .line 613
    :goto_7
    iget-object v2, v0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 614
    .line 615
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    if-eqz v2, :cond_b

    .line 620
    .line 621
    if-eq v2, v15, :cond_a

    .line 622
    .line 623
    const/4 v15, 0x2

    .line 624
    if-eq v2, v15, :cond_9

    .line 625
    .line 626
    move-object/from16 v2, v17

    .line 627
    .line 628
    goto/16 :goto_8

    .line 629
    .line 630
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .line 634
    .line 635
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 636
    .line 637
    new-array v15, v15, [J

    .line 638
    .line 639
    fill-array-data v15, :array_f

    .line 640
    .line 641
    .line 642
    invoke-direct {v8, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v8

    .line 649
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/utils/Generator;->getCrlf()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v8

    .line 656
    invoke-direct {v0, v5, v9, v4, v8}, Lcom/tknetwork/tunnel/utils/Generator;->setup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    invoke-static {v2, v4, v14, v7, v11}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    invoke-static {v2, v12, v13, v10, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    invoke-static {v2, v1, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    goto :goto_8

    .line 671
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 704
    .line 705
    const/4 v7, 0x2

    .line 706
    new-array v6, v7, [J

    .line 707
    .line 708
    fill-array-data v6, :array_10

    .line 709
    .line 710
    .line 711
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-direct {v0, v5, v9, v4, v8}, Lcom/tknetwork/tunnel/utils/Generator;->setup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-static {v2, v1, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    goto :goto_8

    .line 730
    :cond_b
    const/4 v7, 0x2

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .line 735
    .line 736
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 737
    .line 738
    new-array v7, v7, [J

    .line 739
    .line 740
    fill-array-data v7, :array_11

    .line 741
    .line 742
    .line 743
    invoke-direct {v8, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v7

    .line 750
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/utils/Generator;->getCrlf()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v7

    .line 757
    invoke-direct {v0, v5, v9, v4, v7}, Lcom/tknetwork/tunnel/utils/Generator;->setup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v4

    .line 761
    invoke-static {v2, v4, v11, v12, v13}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    :goto_8
    return-object v2

    .line 781
    :cond_c
    const/4 v1, 0x0

    .line 782
    return-object v1

    .line 783
    :array_0
    .array-data 8
        -0x7ab7614fce5074b2L    # -3.311310835540844E-283
        0x5b993571f8f28a62L    # 1.7893271942257346E133
        0x757738e6b7d717b1L    # 6.973663457030299E257
    .end array-data

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
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    :array_1
    .array-data 8
        0x12b0f34aee3ca40dL
        -0x5c00f6579fe5bc95L    # -2.668897206598561E-135
    .end array-data

    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_2
    .array-data 8
        0xb41802ac65f9125L
        -0xf15b77fce399cd7L    # -8.356895330553044E235
        -0x5c4efcab9b190bc1L    # -9.143301592092428E-137
    .end array-data

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
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    :array_3
    .array-data 8
        -0x47352e52de826db4L    # -4.0352818480716986E-35
        0x1c020b8a27acbaf7L    # 9.119924562554718E-174
    .end array-data

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
    .line 838
    .line 839
    :array_4
    .array-data 8
        0x8cd743894883267L
        -0x2d64fe353dc24137L    # -8.595973566065388E89
        -0x52810fd96868510dL    # -1.5187796989856487E-89
    .end array-data

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
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    :array_5
    .array-data 8
        0x715e0d8e063a3162L    # 1.223104818582627E238
        -0x5caa1408ab05c8f6L    # -1.840844397025577E-138
        -0x3d5a11fde41451f1L    # -1.205599089199103E13
    .end array-data

    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
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
    :array_6
    .array-data 8
        0x4f5943f3d6fae00cL    # 1.785606701270767E74
        -0x255eb20b38e08b72L    # -3.748414672995161E128
        0x1c84aacb463e3c21L    # 2.673950517739961E-171
        0x4ebab50e3b135586L    # 1.8432665403765317E71
    .end array-data

    .line 872
    .line 873
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
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :array_7
    .array-data 8
        -0x3bdb528039ecee8fL    # -1.9071840517499706E20
        0x12019fb7e5e45d01L    # 6.094459840093608E-222
        0x7d4e37f9ea44fe33L    # 3.859943298817624E295
        -0x1cfbcfe5689aa719L    # -9.523549718181011E168
        -0x671136836df504acL
    .end array-data

    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    :array_8
    .array-data 8
        0x74b4a34568c4226fL    # 1.5130709426315826E254
        -0x574501d7fdd25bf3L
        0x3238120ebc2825e1L    # 8.92825851447122E-67
        -0x906b1df650237adL    # -1.274928174510338E265
    .end array-data

    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    :array_9
    .array-data 8
        0x5f7baff0e4b5df7bL    # 9.063124791202608E151
        -0x7afa4a716d8a209fL    # -1.824895753034212E-284
    .end array-data

    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    :array_a
    .array-data 8
        -0x763ed0bef4ed56a6L
        0x53c7512736c8a914L    # 3.8910015280862535E95
    .end array-data

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    :array_b
    .array-data 8
        -0x52d536b2341c4e6dL    # -4.1092707186919456E-91
        -0x38ad9e0728b2d895L    # -3.817938096081408E35
    .end array-data

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    :array_c
    .array-data 8
        -0x5dfc666cbbf72781L    # -7.848127031717377E-145
        -0x3e4f5c1ad7015028L    # -2.7917648899487066E8
        0x42284de87a131562L    # 5.219314816954176E10
    .end array-data

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    :array_d
    .array-data 8
        0x29ad7b748c726b20L    # 6.276711215940684E-108
        -0x413f37fae2f55f3fL    # -2.0004901915734437E-6
        0x719f4f07875a9a8L    # 1.8742823626629991E-274
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    :array_e
    .array-data 8
        0x201f81e20a9bb80fL
        -0x5ec63569c7993438L
        0x1c4fa97eaa6cee0L
    .end array-data

    :array_f
    .array-data 8
        0xbe0cab23757630fL
        0x1d94b2405965fd4eL    # 3.50974040524649E-166
    .end array-data

    :array_10
    .array-data 8
        0x6d3e8e01094a7442L    # 1.6852911847436483E218
        -0x32a6422cb978d66aL    # -4.23577638857186E64
    .end array-data

    :array_11
    .array-data 8
        -0x56fe5901de5633bfL    # -3.670061004416E-111
        -0x7e7f605cab1a0b0eL
    .end array-data
.end method

.method private getProtocolByInject()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    if-eq v3, v4, :cond_4

    .line 27
    .line 28
    if-eq v3, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz v2, :cond_3

    .line 32
    .line 33
    if-eq v2, v4, :cond_2

    .line 34
    .line 35
    if-eq v2, v1, :cond_1

    .line 36
    .line 37
    :goto_0
    const/4 v0, 0x0

    .line 38
    return-object v0

    .line 39
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_0

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
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v1, v1, [J

    .line 57
    .line 58
    fill-array-data v1, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :cond_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v0, v0, [J

    .line 72
    .line 73
    fill-array-data v0, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v1, v1, [J

    .line 87
    .line 88
    fill-array-data v1, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :array_0
    .array-data 8
        -0x374ac31887561d27L    # -1.8500826247705708E42
        -0x5787ab0057e84390L    # -9.880522687718078E-114
        -0x13c0324389be349cL    # -2.676664923656647E213
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
        0xfac7fecbd494628L
        -0xa3b1fce78e02289L
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
    :array_2
    .array-data 8
        0x72c246691c78a819L    # 6.239141868328829E244
        0x57466de484cf59c9L    # 2.6970158795618097E112
        -0x28e1d83dbae87239L    # -4.532545606833145E111
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
    :array_3
    .array-data 8
        -0x42c2ff59b272d323L    # -1.0303771198540782E-13
        -0x13bad82c3be23084L
    .end array-data
.end method

.method private getProtocolByQuery()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->query_mode:Landroid/widget/RadioGroup;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    const/4 v5, 0x1

    .line 55
    if-ne v3, v5, :cond_1

    .line 56
    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v1, v1, [J

    .line 60
    .line 61
    fill-array-data v1, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :cond_1
    if-ne v3, v0, :cond_6

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    if-eq v2, v5, :cond_2

    .line 77
    .line 78
    if-eq v2, v0, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-ne v4, v0, :cond_3

    .line 82
    .line 83
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v0, v0, [J

    .line 86
    .line 87
    fill-array-data v0, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v1, v1, [J

    .line 101
    .line 102
    fill-array-data v1, :array_3

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0

    .line 113
    :cond_4
    if-ne v4, v0, :cond_5

    .line 114
    .line 115
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v0, v0, [J

    .line 118
    .line 119
    fill-array-data v0, :array_4

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0

    .line 130
    :cond_5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v1, v1, [J

    .line 133
    .line 134
    fill-array-data v1, :array_5

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0

    .line 145
    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 146
    return-object v0

    .line 147
    :array_0
    .array-data 8
        -0x54dda4e4dee41443L    # -6.556419529454253E-101
        0x4f95612c9d20d557L    # 2.417565474635185E75
        0xbe58eaddf166c60L
    .end array-data

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
    .line 160
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 8
        0x38c5aa85fc27e5f2L    # 3.259953449266825E-35
        -0x7aabfecec33a6093L    # -5.381151334300181E-283
        -0x3e191c2d38d30380L    # -3.0722350654058228E9
    .end array-data

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
        -0x72ab0b199375fc05L
        0x343313748b3401d1L    # 3.0389816623723406E-57
    .end array-data

    :array_3
    .array-data 8
        -0x386db2a792695612L    # -6.081926079194672E36
        0x5c0a5a333ca595c8L    # 2.3942380403391763E135
        0x7c94b0c65d480c85L    # 1.2904683566697023E292
    .end array-data

    :array_4
    .array-data 8
        -0x19316dc0e8f79862L    # -1.6627267312778156E187
        -0x2b5307dfc9044caeL    # -7.920374324406612E99
    .end array-data

    :array_5
    .array-data 8
        0x34df43e76c380f9dL    # 5.1003818847920324E-54
        -0x359ba89e95013702L    # -2.3783109949252147E50
        0x6e631b53244a4694L    # 5.52526777363887E223
    .end array-data
.end method

.method private getRequestAdapter()Landroid/widget/ArrayAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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
    move-result-object v3

    .line 16
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v2, v1, [J

    .line 19
    .line 20
    fill-array-data v2, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v2, v1, [J

    .line 33
    .line 34
    fill-array-data v2, :array_2

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v2, v1, [J

    .line 47
    .line 48
    fill-array-data v2, :array_3

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v2, v1, [J

    .line 61
    .line 62
    fill-array-data v2, :array_4

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v2, v1, [J

    .line 75
    .line 76
    fill-array-data v2, :array_5

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v1, v1, [J

    .line 89
    .line 90
    fill-array-data v1, :array_6

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->context:Landroid/content/Context;

    .line 107
    .line 108
    const v3, 0x7f0d00b2

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :array_0
    .array-data 8
        -0x209f41be5530a698L    # -2.740349963161859E151
        0x4f64bc34a07a8d6eL    # 2.9308710741098263E74
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
    :array_1
    .array-data 8
        0x1bc96502d82fe2e0L    # 8.021460899974353E-175
        -0x3b7370e510f16b81L    # -1.6858260838610738E22
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
    :array_2
    .array-data 8
        -0x7abedce2baac8d0aL
        -0x54152706ef8e1701L    # -3.9278606867658243E-97
    .end array-data

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
    :array_3
    .array-data 8
        -0xf95b6701742328dL    # -3.2649271823540924E233
        -0x358c2f0bf52ff0d1L    # -4.633830962138997E50
    .end array-data

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
    :array_4
    .array-data 8
        0x1f5d8b59928429cfL
        -0x5a35677c980862a9L    # -1.227790190732251E-126
    .end array-data

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
    :array_5
    .array-data 8
        -0x1bcc8eeb22d63728L    # -4.808529552659929E174
        -0x308d38709a62256fL    # -5.3088897060599E74
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    :array_6
    .array-data 8
        0x488b44a62f89aa87L    # 2.9692397747320048E41
        0x6756dba69f71ae3fL    # 6.365253832665394E189
    .end array-data
.end method

.method private init()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/Generator;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/Generator;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d0048

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f0a0408

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/EditText;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->url_host:Landroid/widget/EditText;

    .line 39
    .line 40
    const v1, 0x7f0a038c

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/RadioGroup;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 50
    .line 51
    const v1, 0x7f0a0318

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/Spinner;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->request_method:Landroid/widget/Spinner;

    .line 61
    .line 62
    const v1, 0x7f0a01f2

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/Spinner;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 72
    .line 73
    const v1, 0x7f0a0303

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/widget/RadioGroup;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->query_mode:Landroid/widget/RadioGroup;

    .line 83
    .line 84
    const v1, 0x7f0a02b7

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/widget/CheckBox;

    .line 92
    .line 93
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->online_host:Landroid/widget/CheckBox;

    .line 94
    .line 95
    const v1, 0x7f0a01b4

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/widget/CheckBox;

    .line 103
    .line 104
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->forward_host:Landroid/widget/CheckBox;

    .line 105
    .line 106
    const v1, 0x7f0a031c

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Landroid/widget/CheckBox;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->reverse_proxy:Landroid/widget/CheckBox;

    .line 116
    .line 117
    const v1, 0x7f0a020b

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Landroid/widget/CheckBox;

    .line 125
    .line 126
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->keep_alive:Landroid/widget/CheckBox;

    .line 127
    .line 128
    const v1, 0x7f0a02de

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroid/widget/CheckBox;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->proxy_auth:Landroid/widget/CheckBox;

    .line 138
    .line 139
    const v1, 0x7f0a0137

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Landroid/widget/CheckBox;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->dual_connect:Landroid/widget/CheckBox;

    .line 149
    .line 150
    const v1, 0x7f0a01bb

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Landroid/widget/Button;

    .line 158
    .line 159
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->generate_btn:Landroid/widget/Button;

    .line 160
    .line 161
    const v1, 0x7f0a00bf

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;->findId(Landroid/view/View;I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->closeDialog:Landroid/view/View;

    .line 169
    .line 170
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->request_method:Landroid/widget/Spinner;

    .line 171
    .line 172
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/Generator;->getRequestAdapter()Landroid/widget/ArrayAdapter;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 180
    .line 181
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/Generator;->getInjectAdapter()Landroid/widget/ArrayAdapter;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->query_mode:Landroid/widget/RadioGroup;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 191
    .line 192
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    const/4 v4, 0x3

    .line 195
    new-array v5, v4, [J

    .line 196
    .line 197
    fill-array-data v5, :array_0

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const/4 v5, 0x0

    .line 208
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Landroid/widget/RadioButton;

    .line 217
    .line 218
    const/4 v2, 0x1

    .line 219
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 223
    .line 224
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 225
    .line 226
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    const/4 v7, 0x2

    .line 229
    new-array v8, v7, [J

    .line 230
    .line 231
    fill-array-data v8, :array_1

    .line 232
    .line 233
    .line 234
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Landroid/widget/RadioButton;

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 252
    .line 253
    .line 254
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->url_host:Landroid/widget/EditText;

    .line 255
    .line 256
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 257
    .line 258
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array v7, v7, [J

    .line 261
    .line 262
    fill-array-data v7, :array_2

    .line 263
    .line 264
    .line 265
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    new-array v2, v2, [J

    .line 275
    .line 276
    const-wide v8, -0x3a53416d79caf2c4L    # -4.447984060958712E27

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    aput-wide v8, v2, v5

    .line 282
    .line 283
    invoke-direct {v7, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->request_method:Landroid/widget/Spinner;

    .line 298
    .line 299
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 300
    .line 301
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 302
    .line 303
    const/4 v6, 0x4

    .line 304
    new-array v7, v6, [J

    .line 305
    .line 306
    fill-array-data v7, :array_3

    .line 307
    .line 308
    .line 309
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    invoke-virtual {v1, v2, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 321
    .line 322
    .line 323
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 324
    .line 325
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 326
    .line 327
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 328
    .line 329
    new-array v6, v6, [J

    .line 330
    .line 331
    fill-array-data v6, :array_4

    .line 332
    .line 333
    .line 334
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    invoke-virtual {v1, v2, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 346
    .line 347
    .line 348
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->online_host:Landroid/widget/CheckBox;

    .line 349
    .line 350
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 351
    .line 352
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 353
    .line 354
    new-array v6, v4, [J

    .line 355
    .line 356
    fill-array-data v6, :array_5

    .line 357
    .line 358
    .line 359
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 371
    .line 372
    .line 373
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->forward_host:Landroid/widget/CheckBox;

    .line 374
    .line 375
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 376
    .line 377
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 378
    .line 379
    new-array v6, v4, [J

    .line 380
    .line 381
    fill-array-data v6, :array_6

    .line 382
    .line 383
    .line 384
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 396
    .line 397
    .line 398
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->reverse_proxy:Landroid/widget/CheckBox;

    .line 399
    .line 400
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 401
    .line 402
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 403
    .line 404
    new-array v6, v4, [J

    .line 405
    .line 406
    fill-array-data v6, :array_7

    .line 407
    .line 408
    .line 409
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 421
    .line 422
    .line 423
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->keep_alive:Landroid/widget/CheckBox;

    .line 424
    .line 425
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 426
    .line 427
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 428
    .line 429
    new-array v6, v4, [J

    .line 430
    .line 431
    fill-array-data v6, :array_8

    .line 432
    .line 433
    .line 434
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 446
    .line 447
    .line 448
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->proxy_auth:Landroid/widget/CheckBox;

    .line 449
    .line 450
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 451
    .line 452
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 453
    .line 454
    new-array v6, v4, [J

    .line 455
    .line 456
    fill-array-data v6, :array_9

    .line 457
    .line 458
    .line 459
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 471
    .line 472
    .line 473
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->dual_connect:Landroid/widget/CheckBox;

    .line 474
    .line 475
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->prefs:Landroid/content/SharedPreferences;

    .line 476
    .line 477
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 478
    .line 479
    new-array v4, v4, [J

    .line 480
    .line 481
    fill-array-data v4, :array_a

    .line 482
    .line 483
    .line 484
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 496
    .line 497
    .line 498
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 499
    .line 500
    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 501
    .line 502
    .line 503
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->request_method:Landroid/widget/Spinner;

    .line 504
    .line 505
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 506
    .line 507
    .line 508
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 509
    .line 510
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 511
    .line 512
    .line 513
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->query_mode:Landroid/widget/RadioGroup;

    .line 514
    .line 515
    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 516
    .line 517
    .line 518
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->generate_btn:Landroid/widget/Button;

    .line 519
    .line 520
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    .line 522
    .line 523
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->closeDialog:Landroid/view/View;

    .line 524
    .line 525
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 529
    .line 530
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->context:Landroid/content/Context;

    .line 531
    .line 532
    const v3, 0x7f140002

    .line 533
    .line 534
    .line 535
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    iput-object v1, p0, Lcom/tknetwork/tunnel/utils/Generator;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 543
    .line 544
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 545
    .line 546
    .line 547
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/Generator;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 548
    .line 549
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 550
    .line 551
    .line 552
    return-void

    .line 553
    :array_0
    .array-data 8
        -0x6f172fbc2bdff14cL
        -0x7e2428db45ac4220L
        -0x6acbd910c376a0b0L
    .end array-data

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :array_1
    .array-data 8
        0x3126db8f8d5b53a4L    # 6.46848831401872E-72
        -0x34f66a5e068418aeL    # -3.063135658903445E53
    .end array-data

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_2
    .array-data 8
        -0x743f90e9097a7638L    # -4.483069217219652E-252
        0xbe0be064b1675fcL
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_3
    .array-data 8
        -0xf56b941b244a949L    # -5.0229730790690416E234
        -0x430e318d23deb362L    # -3.95382396217238E-15
        -0x1928c593d37a2f11L    # -2.5266967519716812E187
        0x34a84077314d7764L    # 4.9453281608041094E-55
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :array_4
    .array-data 8
        0x56f7a362dfdd801bL    # 8.88246140139856E110
        0x4ae5f89d7f9126e2L    # 6.576307491791336E52
        -0x22a2a1f33040e5fbL    # -5.59555574156203E141
        0xbaffd5f4fd820bcL
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
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
    .line 630
    .line 631
    .line 632
    .line 633
    :array_5
    .array-data 8
        -0x1f1b31fe2aec401fL    # -5.712806480153572E158
        -0x2eeac18d9e2acc5aL    # -4.0302663538745194E82
        -0x1b15d4215653d6b5L    # -1.3256651853108107E178
    .end array-data

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
    .line 646
    .line 647
    .line 648
    .line 649
    :array_6
    .array-data 8
        -0x747117e83369185eL
        -0x4bda05d8a2e49554L    # -1.750582041588897E-57
        0x4096b30a12483256L    # 1452.7598353653643
    .end array-data

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_7
    .array-data 8
        -0x65164785e3752159L    # -4.95876934964048E-179
        0x113e71915294e741L    # 1.285107936892333E-225
        0x5dae63aa0272a609L    # 1.852886591007671E143
    .end array-data

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :array_8
    .array-data 8
        0x43050f54b7eb5e81L    # 7.409788810311201E14
        -0x7aae775c669084a6L    # -4.716488757624962E-283
        0x3d94f58fe4878221L    # 4.765576449755243E-12
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :array_9
    .array-data 8
        -0x20c58cc64a4c0fd7L    # -5.411344170564872E150
        0x6c3dfb746c452cdcL    # 2.5233709520993384E213
        -0x4be3e1c35fcef9a4L    # -1.1198684425085741E-57
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
    :array_a
    .array-data 8
        0x46c74a35d0b2b3eaL    # 9.447499198320701E32
        0x326c8a2a1fa87392L    # 8.468772021980144E-66
        0x129eb8c276e098b7L
    .end array-data
.end method

.method private setup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/Generator;->getProtocolByQuery()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq p2, v2, :cond_1

    .line 10
    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v2, v0, [J

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array p3, v0, [J

    .line 43
    .line 44
    fill-array-data p3, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v2, v0, [J

    .line 75
    .line 76
    fill-array-data v2, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array p3, v0, [J

    .line 95
    .line 96
    fill-array-data p3, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array p3, v0, [J

    .line 127
    .line 128
    fill-array-data p3, :array_4

    .line 129
    .line 130
    .line 131
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :goto_0
    return-object p1

    .line 152
    nop

    .line 153
    :array_0
    .array-data 8
        0x2cbb741daea8b219L    # 3.290336424398868E-93
        -0x363c5c17fdd578bfL    # -2.242521138008884E47
    .end array-data

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
        -0x755cf45dbf1cd56aL
        -0x665dfb951659f16L    # -5.789089279622908E277
    .end array-data

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
    :array_2
    .array-data 8
        -0x7b04c5b60ca2e96fL
        0x676e039656f3d453L    # 1.6715960799998168E190
    .end array-data

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
    .line 188
    .line 189
    :array_3
    .array-data 8
        -0x58426ff31bb8f18bL    # -2.930797062848962E-117
        0x50db33d6dafc44e1L    # 3.2254299968911466E81
    .end array-data

    .line 190
    .line 191
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
    :array_4
    .array-data 8
        0x6e189805c6bd7fccL    # 2.2225069505589367E222
        -0x38416cf590371daL
    .end array-data
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/Generator;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->listener:Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;->onGeneratorClose()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0303

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const p2, 0x7f0a038c

    .line 11
    .line 12
    .line 13
    if-eq v0, p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x2

    .line 29
    const/4 v0, 0x1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    if-eq p1, p2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->inject_method:Landroid/widget/Spinner;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->request_method:Landroid/widget/Spinner;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v2, 0x3

    .line 60
    new-array v2, v2, [J

    .line 61
    .line 62
    fill-array-data v2, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        0x7405233740e3beb9L    # 7.566957536563709E250
        0x78ad8e9e22a33420L    # 1.9987013792855247E273
        0x7d83d1718bc63074L    # 4.0503132493415606E296
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->url_host:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const v4, 0x7f0a01bb

    .line 18
    .line 19
    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/utils/Generator;->showToast(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v4, v0, [J

    .line 53
    .line 54
    fill-array-data v4, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v3, v1, [J

    .line 72
    .line 73
    fill-array-data v3, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->online_host:Landroid/widget/CheckBox;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v3, v1, [J

    .line 97
    .line 98
    fill-array-data v3, :array_3

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
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->forward_host:Landroid/widget/CheckBox;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v3, v1, [J

    .line 122
    .line 123
    fill-array-data v3, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->reverse_proxy:Landroid/widget/CheckBox;

    .line 134
    .line 135
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v3, v1, [J

    .line 147
    .line 148
    fill-array-data v3, :array_5

    .line 149
    .line 150
    .line 151
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->keep_alive:Landroid/widget/CheckBox;

    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 168
    .line 169
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v3, v1, [J

    .line 172
    .line 173
    fill-array-data v3, :array_6

    .line 174
    .line 175
    .line 176
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->proxy_auth:Landroid/widget/CheckBox;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 193
    .line 194
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array v3, v1, [J

    .line 197
    .line 198
    fill-array-data v3, :array_7

    .line 199
    .line 200
    .line 201
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iget-object v3, p0, Lcom/tknetwork/tunnel/utils/Generator;->dual_connect:Landroid/widget/CheckBox;

    .line 209
    .line 210
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Landroid/widget/RadioButton;

    .line 228
    .line 229
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 230
    .line 231
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 236
    .line 237
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v0, v0, [J

    .line 240
    .line 241
    fill-array-data v0, :array_8

    .line 242
    .line 243
    .line 244
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 255
    .line 256
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 257
    .line 258
    new-array v1, v1, [J

    .line 259
    .line 260
    fill-array-data v1, :array_9

    .line 261
    .line 262
    .line 263
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/Generator;->getPayload()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 278
    .line 279
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->listener:Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;

    .line 283
    .line 284
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/Generator;->getPayload()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-interface {p1, v0}, Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;->onGeneratePayload(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 292
    .line 293
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 294
    .line 295
    .line 296
    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    const v0, 0x7f0a00bf

    .line 302
    .line 303
    .line 304
    if-ne p1, v0, :cond_2

    .line 305
    .line 306
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->listener:Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;

    .line 307
    .line 308
    invoke-interface {p1}, Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;->onGeneratorClose()V

    .line 309
    .line 310
    .line 311
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 312
    .line 313
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 314
    .line 315
    .line 316
    :cond_2
    :goto_0
    return-void

    .line 317
    :array_0
    .array-data 8
        0x4c0f349c000f9d4eL    # 2.4485016492666443E58
        -0x427db577c3e706c1L    # -2.079462010147587E-12
        -0x422329526e128c4bL    # -1.0491416457977685E-10
        0xfa48445e9294380L
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
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
    .line 336
    .line 337
    :array_1
    .array-data 8
        -0x6cae7891932742e1L
        -0x486da33cb8228454L    # -5.269737371416599E-41
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
        -0x52b5c41b8a9a3747L    # -1.6098116979844925E-90
        0xa3509a4962da489L    # 1.7103356022899924E-259
        -0x7ea60392757af402L    # -3.789348711559867E-302
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
    .line 362
    .line 363
    .line 364
    .line 365
    :array_3
    .array-data 8
        0x626812a2a050c3d9L    # 1.1090065910477873E166
        0x78928baa6225d314L    # 6.270414377675865E272
        -0x39d3a6c63fd46787L    # -1.1230012662718904E30
    .end array-data

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
    .line 378
    .line 379
    .line 380
    .line 381
    :array_4
    .array-data 8
        0x493376f4b4af1658L    # 4.340766775797026E44
        0x437efcc5d63d6c1fL    # 1.39554814950818288E17
        -0x34d502f7fb1c0929L    # -1.2924877559432755E54
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_5
    .array-data 8
        0x521a4ad86c8fa288L    # 3.2689509974021098E87
        -0x46d683e55ccbc3c3L    # -2.454095186636348E-33
        -0x7c4ec8d0ce8ed7e1L    # -6.900577677609192E-291
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
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
    :array_6
    .array-data 8
        0x32593c5c033b5777L    # 3.744188267549177E-66
        0x26c052b26620e200L
        0x1ba86e6993c6881cL    # 1.929296987406993E-175
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
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
    :array_7
    .array-data 8
        -0x3bcec30c2e8959bfL    # -3.1798673362220437E20
        0x2331c9bb5a015437L    # 3.734302532036981E-139
        -0x6fe58cc8c7a98cd3L    # -4.259219501621046E-231
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
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
    :array_8
    .array-data 8
        0x7cf90edd6e0dbcc9L    # 1.0002379740983457E294
        0x42bb8ee61fab4bf5L    # 3.0300560141131957E13
    .end array-data

    .line 446
    .line 447
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
    :array_9
    .array-data 8
        0x1808c63e358a11edL    # 6.787591558020824E-193
        0x215eb87787f0be52L
        0x3dffc4dd5982192aL    # 4.6229983166976407E-10
    .end array-data
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x2

    .line 2
    const/4 p4, 0x4

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    const v0, 0x7f0a01f2

    .line 8
    .line 9
    .line 10
    if-eq p5, v0, :cond_1

    .line 11
    .line 12
    const v0, 0x7f0a0318

    .line 13
    .line 14
    .line 15
    if-eq p5, v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p5, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array p4, p4, [J

    .line 23
    .line 24
    fill-array-data p4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    invoke-interface {p5, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array p2, p2, [J

    .line 46
    .line 47
    fill-array-data p2, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p4, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 p1, 0x1

    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    if-eq p3, p1, :cond_2

    .line 75
    .line 76
    if-eq p3, p2, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object p2, p0, Lcom/tknetwork/tunnel/utils/Generator;->request_method:Landroid/widget/Spinner;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget-object p5, p0, Lcom/tknetwork/tunnel/utils/Generator;->split:Landroid/widget/RadioGroup;

    .line 86
    .line 87
    invoke-virtual {p5, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Landroid/widget/RadioButton;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->request_method:Landroid/widget/Spinner;

    .line 97
    .line 98
    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 100
    .line 101
    .line 102
    :goto_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->editor:Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array p4, p4, [J

    .line 107
    .line 108
    fill-array-data p4, :array_2

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        -0x1cfbe9b70feedf8dL    # -9.475971699160212E168
        0x5d2efdf0a0ba6212L    # 7.381369335967166E140
        -0x399e063cbfb213edL    # -1.139341259513359E31
        -0x76fe45f2c8111aaL    # -5.446225602126648E272
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
    :array_1
    .array-data 8
        0x635d40b185f0c9bfL    # 4.4159449517791517E170
        -0xacbf43e459119eaL    # -3.762377946233003E256
    .end array-data

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
    :array_2
    .array-data 8
        -0xf8995f16d77ff9aL    # -5.56777324263349E233
        -0x390627beb676001L
        -0x77da0f887600281bL
        0x75ea43bd73f7c28dL    # 1.0095718316745382E260
    .end array-data
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setGeneratorListener(Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/Generator;->listener:Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/Generator;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
