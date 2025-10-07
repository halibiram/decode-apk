.class public Lcom/tknetwork/tunnel/activities/SshActivity;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mConfig:Lconfig/ConfigUtil;

.field private mHandler:Landroid/os/Handler;

.field private myPrefs:Landroid/content/SharedPreferences;

.field private udp:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private forwarder()V
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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/16 v2, 0x16

    .line 30
    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    new-array v3, v2, [J

    .line 50
    .line 51
    fill-array-data v3, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v3, L땠따듬딤땃땲딽돸땍딅땵딤땧됨도둥땥땡뎰뒈땝땳땤딄둠듨땡둠뒋땱딠둠뒋땭뒘듽돵뎰돛땤듽뒉됐땃딻땬돴득땱뎠뒐뒛따뒻들뒾딝딽딎둔돛뎨땡듸뒻딝뒀땫딁뎬듌땫딻둬딨딌땤땐뒈뒋땮든땩돴뎻뎸땃돤땮딹땧땠따땮땭듐된듼듐득듌땍땭땠듔땬둔듐뒵뎬뒛뎡듼뒙드땨땱땁땸둠땝딐땪땵딜듬듨돶땮디;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct {v3, p0, v0, v4}, L땠따듬딤땃땲딽돸땍딅땵딤땧됨도둥땥땡뎰뒈땝땳땤딄둠듨땡둠뒋땱딠둠뒋땭뒘듽돵뎰돛땤듽뒉됐땃딻땬돴득땱뎠뒐뒛따뒻들뒾딝딽딎둔돛뎨땡듸뒻딝뒀땫딁뎬듌땫딻둬딨딌땤땐뒈뒋땮든땩돴뎻뎸땃돤땮딹땧땠따땮땭듐된듼듐득듌땍땭땠듔땬둔듐뒵뎬뒛뎡듼뒙드땨땱땁땸둠땝딐땪땵딜듬듨돶땮디;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;Landroidx/appcompat/app/AlertDialog$Builder;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v2, v2, [J

    .line 73
    .line 74
    fill-array-data v2, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, L땠따듬딤땃땲딽돸땍딅땵딤땧됨도둥땥땡뎰뒈땝땳땤딄둠듨땡둠뒋땱딠둠뒋땭뒘듽돵뎰돛땤듽뒉됐땃딻땬돴득땱뎠뒐뒛따뒻들뒾딝딽딎둔돛뎨땡듸뒻딝뒀땫딁뎬듌땫딻둬딨딌땤땐뒈뒋땮든땩돴뎻뎸땃돤땮딹땧땠따땮땭듐된듼듐득듌땍땭땠듔땬둔듐뒵뎬뒛뎡듼뒙드땨땱땁땸둠땝딐땪땵딜듬듨돶땮디;

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-direct {v2, p0, v0, v3}, L땠따듬딤땃땲딽돸땍딅땵딤땧됨도둥땥땡뎰뒈땝땳땤딄둠듨땡둠뒋땱딠둠뒋땭뒘듽돵뎰돛땤듽뒉됐땃딻땬돴득땱뎠뒐뒛따뒻들뒾딝딽딎둔돛뎨땡듸뒻딝뒀땫딁뎬듌땫딻둬딨딌땤땐뒈뒋땮든땩돴뎻뎸땃돤땮딹땧땠따땮땭듐된듼듐득듌땍땭땠듔땬둔듐뒵뎬뒛뎡듼뒙드땨땱땁땸둠땝딐땪땵딜듬듨돶땮디;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;Landroidx/appcompat/app/AlertDialog$Builder;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x3507551544fe4e33L    # 3.045014510608369E-53
        -0x3d199a43fa9a0003L    # -1.970096158269439E14
        -0x10aa599882dca140L    # -2.051516265379916E228
        -0x2b2a0448dae726bdL    # -4.8082908628794286E100
    .end array-data

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
    :array_1
    .array-data 8
        -0x5cab4bfcd45bcb32L
        0x2f1845d3f52c8027L    # 7.996509318536698E-82
        0x68e6524d98a6cca5L    # 2.085693489030208E197
        -0x17ae6153a59e06aeL    # -3.215574823041884E194
        -0x66fef4dae0a513ffL
        0x4d767a97ca6be2dfL    # 1.4795638899819693E65
        -0x644b45a85c55ff41L
        0x757efa2667b03698L    # 9.302458551176778E257
        -0x4f24c9294af278dL    # -5.520715397499273E284
        -0x66d993f5aca41d7aL
        0x54849c2b0b83e267L    # 1.40872834448754E99
        0x4f1f0a37ee22a6a2L    # 1.3710696086811122E73
        -0x6485fac013014adcL
        -0x5359b3660496bd1aL    # -1.3362912312852382E-93
        -0x3581eebedf42a3b0L    # -7.030968698159715E50
        -0x3d039697a68b1d42L    # -4.998247653903799E14
        -0x3dee27a99239eab0L    # -1.9160996721520813E10
        0x68cfc4cc4d53d87fL    # 7.421081636141128E196
        -0x5d5b2d6b94b8bdb0L    # -8.537810903120661E-142
        -0x37b32fd2ef541592L    # -1.960923937681459E40
        -0x2325351b95945965L    # -1.99412339689352E139
        -0x7b4584a8de9f42ccL    # -6.956512991911511E-286
    .end array-data

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
    :array_2
    .array-data 8
        -0x4faf9a49bb18748eL    # -5.664398169042304E-76
        -0x495caa852f2e5d71L    # -1.6932857351642905E-45
    .end array-data

    :array_3
    .array-data 8
        -0x70150e0d18f88205L    # -5.423671224227075E-232
        -0x1ba5269db2d3e395L    # -2.6562450339677412E175
    .end array-data
.end method

.method private synthetic lambda$forwarder$11(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    invoke-virtual {p2, p3}, Lconfig/ConfigUtil;->setVpnUdpForward(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->udp:Landroid/widget/CheckBox;

    .line 8
    .line 9
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$forwarder$12(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->udp:Landroid/widget/CheckBox;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lconfig/ConfigUtil;->setVpnUdpForward(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lconfig/ConfigUtil;->setEnableReplace(Z)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Lconfig/ConfigUtil;->setEnableReplace(Z)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    const/4 p2, 0x5

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array p2, p2, [J

    .line 9
    .line 10
    fill-array-data p2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget p3, Lcom/tknetwork/tunnel/view/MDToast;->LENGTH_SHORT:I

    .line 21
    .line 22
    invoke-static {p0, p2, p3, v1}, Lcom/tknetwork/tunnel/view/MDToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/view/MDToast;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 30
    .line 31
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    new-array v2, v2, [J

    .line 35
    .line 36
    fill-array-data v2, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p2, p3}, Lconfig/ConfigUtil;->setConnectionType(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lconfig/ConfigUtil;->setSSH(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lconfig/ConfigUtil;->setOVPN(Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array p2, p2, [J

    .line 66
    .line 67
    fill-array-data p2, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const/4 p3, 0x3

    .line 78
    invoke-static {p0, p2, v0, p3}, Lcom/tknetwork/tunnel/view/MDToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/view/MDToast;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lconfig/ConfigUtil;->setSSH(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lconfig/ConfigUtil;->setOVPN(Z)V

    .line 96
    .line 97
    .line 98
    :goto_0
    const/4 p1, -0x1

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/tknetwork/tunnel/activities/SshActivity;->setResult(IZ)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 8
        0x20b4075728490746L
        0x679f9ae683b5956dL    # 1.4081669934675253E191
        0x411323df629d70faL    # 313591.84630371595
        0x7365728563b153c6L    # 7.497906917723799E247
        -0x136e437f0e1bdd95L    # -9.55346659038534E214
    .end array-data

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
    :array_1
    .array-data 8
        0x3decfc50346a8f0cL    # 2.1089798848971751E-10
        0x3d29b70b1803ed83L    # 4.567903926774205E-14
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
        0x40a1813ffd192356L    # 2240.624977860988
        0x43bc6b4d3fdd2f9fL    # 2.04781539225918643E18
        -0x2303b9eac93ccfdeL    # -8.417470267669572E139
        0x603f01f90345cc85L    # 4.1574536483467975E155
        -0x896dab03b23fc4L
    .end array-data
.end method

.method private synthetic lambda$onCreate$2(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    const/4 p2, 0x5

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iget-object p3, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 7
    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p3, v2}, Lconfig/ConfigUtil;->setConnectionType(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array p2, p2, [J

    .line 29
    .line 30
    fill-array-data p2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget p3, Lcom/tknetwork/tunnel/view/MDToast;->LENGTH_SHORT:I

    .line 41
    .line 42
    invoke-static {p0, p2, p3, v1}, Lcom/tknetwork/tunnel/view/MDToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/view/MDToast;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lconfig/ConfigUtil;->setSSH(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lconfig/ConfigUtil;->setOVPN(Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array p2, p2, [J

    .line 66
    .line 67
    fill-array-data p2, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const/4 p3, 0x3

    .line 78
    invoke-static {p0, p2, v0, p3}, Lcom/tknetwork/tunnel/view/MDToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/view/MDToast;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lconfig/ConfigUtil;->setSSH(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lconfig/ConfigUtil;->setOVPN(Z)V

    .line 96
    .line 97
    .line 98
    :goto_0
    const/4 p1, -0x1

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/tknetwork/tunnel/activities/SshActivity;->setResult(IZ)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 8
        -0x224ff598fa881af1L    # -1.956047946791866E143
        0x6677b33d3467b1ebL    # 4.0281764842026976E185
    .end array-data

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
        -0x393ba56dd90ef3c1L    # -8.25647917176497E32
        0x3574c79b7ce87909L    # 3.471205777010368E-51
        0x229e092f25cd0abbL    # 6.157754257440373E-142
        -0x62f749d4e6462323L    # -8.184897058987306E-169
        -0x2921dd93a0a85f60L    # -2.8308830768121733E110
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
        -0xc856cbb5862e96eL    # -1.858121336102999E248
        -0x6241f0aade700e60L
        0x3a967e227e25a8ecL
        0x1f7210ea20d4045dL    # 3.289622179666982E-157
        -0x78c1597c38f07548L    # -8.852802692492632E-274
    .end array-data
.end method

.method private synthetic lambda$onCreate$3(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lconfig/ConfigUtil;->setdnsForward(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onCreate$4(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/SshActivity;->forwarder()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Lconfig/ConfigUtil;->setVpnUdpForward(Z)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$5(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->isTunnelActive()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/SshActivity;->setDnsForwarder()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$6(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->isTunnelActive()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/SshActivity;->showUdpforwarder()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static synthetic lambda$setDnsForwarder$10(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setDnsForwarder$9(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p4, 0x3

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroid/text/Editable;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    check-cast p2, Landroid/text/Editable;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array p4, p4, [J

    .line 49
    .line 50
    fill-array-data p4, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    invoke-static {p0, p4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-virtual {p4}, Landroid/widget/Toast;->show()V

    .line 72
    .line 73
    .line 74
    iget-object p4, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 75
    .line 76
    invoke-virtual {p4, p1}, Lconfig/ConfigUtil;->setDNSPRIMARY(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lconfig/ConfigUtil;->setDNSSECONDARY(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array p2, p4, [J

    .line 96
    .line 97
    fill-array-data p2, :array_1

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void

    .line 115
    :array_0
    .array-data 8
        -0x24db24bb7d933219L    # -1.156564492598877E131
        0x3afe0bc7edfda31eL
        0x79e6508710a6af44L    # 1.582247228941497E279
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
    :array_1
    .array-data 8
        -0x126b9f6a8ce3dd1eL    # -7.19321554355533E219
        0x3567fccf9e8fd11cL    # 2.0035330770819565E-51
        -0x3c73191afeea09ddL    # -2.6032545881645168E17
    .end array-data
.end method

.method private synthetic lambda$showUdpforwarder$7(Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/text/Editable;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 p2, 0x2

    .line 24
    new-array p2, p2, [J

    .line 25
    .line 26
    fill-array-data p2, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    new-array v1, v1, [J

    .line 48
    .line 49
    fill-array-data v1, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-static {p0, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 67
    .line 68
    invoke-virtual {p3, p1}, Lconfig/ConfigUtil;->setVpnUdpResolver(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x676c601768effe5bL
        0x558ef432f43735b3L    # 1.3865768072988847E104
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
    :array_1
    .array-data 8
        -0x1464582ede7d0278L    # -2.2729979946682777E210
        0x372daf2d457b5e6eL    # 6.65544677379396E-43
        0x2cc21712bb31e1a9L    # 4.336237150306561E-93
        0x56389291ece5fe79L    # 2.2542833807855724E107
    .end array-data
.end method

.method private static synthetic lambda$showUdpforwarder$8(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private launchMarket()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

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
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Landroid/content/Intent;

    .line 40
    .line 41
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v3, 0x5

    .line 44
    new-array v4, v3, [J

    .line 45
    .line 46
    fill-array-data v4, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v1, v3, [J

    .line 66
    .line 67
    fill-array-data v1, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void

    .line 86
    nop

    .line 87
    :array_0
    .array-data 8
        -0x467491355641d05fL    # -1.6906755921099792E-31
        0x60ed6bf9ab02bce9L    # 8.07898221561038E158
        -0x489904d0110907e7L    # -8.244101244834666E-42
        -0x6b90cfd4bed6777fL
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
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
    :array_1
    .array-data 8
        0x3ff6f98eb35fcb50L    # 1.435927105598882
        -0x381ddcbbafc2fcd2L    # -1.9287375900132547E38
        0x4af9946c76763599L    # 1.5312851094450276E53
        -0x190cf5316a0c830bL    # -8.285424615599366E187
        -0x65529c770103b628L    # -3.541233748347893E-180
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
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 8
        -0x3f6345773c9e9ebfL    # -1838.6335578170404
        -0xbb512de367751deL
        0x71e536fd1c3bf190L    # 4.420643446885222E240
        -0x7070844c91c59L
        -0x1edd726a84f157a7L    # -8.151233126196583E159
    .end array-data
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
        0x41620577beb55abbL    # 9448381.95963799
        0x48883d4dae6b8cd5L    # 2.6394441786764096E41
        -0x2eb9794f99c7ca51L    # -3.418813307955515E83
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
        -0x1e60361c53921f9cL    # -1.787678840543471E162
        -0x5f91cd6f0a33e562L
        -0x1e70c4ec68aefd1L
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
        0x5574ee09f56df1e2L    # 4.687749788031835E103
        -0x1ce4ac6415514933L    # -2.5782388371471054E169
        0x75c71f5cefe0aac0L    # 2.2219858801441075E259
        0x45c85e5f66f81d7eL    # 1.508345957403682E28
        -0x3499df2cd22cee32L    # -1.6955701028485454E55
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
        -0x5409baa26626aa91L    # -6.516589026807198E-97
        -0x5c879705bff5e166L    # -8.199190802820973E-138
        0x73682a105aa1be7aL    # 8.447746714440796E247
        0x79578685a9565488L
        -0x11eca91fb94c6530L    # -1.747667894302966E222
        -0x13064012d516f058L    # -8.876653800044936E216
        0x47ac4a8f53c41d6eL    # 1.8802760435357336E37
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
        0x9999f8eee44c033L
        0x487cdedea577fbacL    # 1.5718641495770796E41
        0x14075e3c878b7f6eL    # 3.4706967925563E-212
    .end array-data
.end method

.method private sendDataAndExit()V
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
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x7f9d1ea4697c0140L    # 5.112136523411022E306
        -0x211be073d5d24b09L    # -1.2865468798442524E149
        0x30974fea52a4628fL    # 1.2884980664109864E-74
    .end array-data
.end method

.method private setDnsForwarder()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    new-instance v3, Landroid/app/Dialog;

    .line 6
    .line 7
    const v4, 0x7f140002

    .line 8
    .line 9
    .line 10
    invoke-direct {v3, v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    const v4, 0x7f0d003f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 20
    .line 21
    .line 22
    const v4, 0x7f0a01f1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    const v5, 0x7f0a02f5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/widget/Spinner;

    .line 39
    .line 40
    const v6, 0x7f0a00e5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 48
    .line 49
    const v7, 0x7f0a00e6

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Lcom/google/android/material/textfield/TextInputEditText;

    .line 57
    .line 58
    iget-object v8, v0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 59
    .line 60
    invoke-virtual {v8}, Lconfig/ConfigUtil;->getDNSPRIMARY()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object v8, v0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 68
    .line 69
    invoke-virtual {v8}, Lconfig/ConfigUtil;->getDNSSECONDARY()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object v8, v0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 77
    .line 78
    invoke-virtual {v8}, Lconfig/ConfigUtil;->getDnsPosition()Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_0

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_0
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v9, v2, [J

    .line 90
    .line 91
    fill-array-data v9, :array_0

    .line 92
    .line 93
    .line 94
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v9, v2, [J

    .line 104
    .line 105
    fill-array-data v9, :array_1

    .line 106
    .line 107
    .line 108
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v9, v2, [J

    .line 118
    .line 119
    fill-array-data v9, :array_2

    .line 120
    .line 121
    .line 122
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v9, v2, [J

    .line 132
    .line 133
    fill-array-data v9, :array_3

    .line 134
    .line 135
    .line 136
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v9, v1, [J

    .line 146
    .line 147
    fill-array-data v9, :array_4

    .line 148
    .line 149
    .line 150
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v9, v2, [J

    .line 160
    .line 161
    fill-array-data v9, :array_5

    .line 162
    .line 163
    .line 164
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    const/4 v9, 0x2

    .line 174
    new-array v9, v9, [J

    .line 175
    .line 176
    fill-array-data v9, :array_6

    .line 177
    .line 178
    .line 179
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v16

    .line 186
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v9, v2, [J

    .line 189
    .line 190
    fill-array-data v9, :array_7

    .line 191
    .line 192
    .line 193
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v17

    .line 200
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v9, v2, [J

    .line 203
    .line 204
    fill-array-data v9, :array_8

    .line 205
    .line 206
    .line 207
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v18

    .line 214
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array v9, v1, [J

    .line 217
    .line 218
    fill-array-data v9, :array_9

    .line 219
    .line 220
    .line 221
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v19

    .line 228
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v2, v2, [J

    .line 231
    .line 232
    fill-array-data v2, :array_a

    .line 233
    .line 234
    .line 235
    invoke-direct {v8, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v20

    .line 242
    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    new-instance v8, Landroid/widget/ArrayAdapter;

    .line 247
    .line 248
    const v9, 0x7f0d00b2

    .line 249
    .line 250
    .line 251
    invoke-direct {v8, v0, v9, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 255
    .line 256
    .line 257
    iget-object v2, v0, Lcom/tknetwork/tunnel/activities/SshActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 258
    .line 259
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    new-array v1, v1, [J

    .line 262
    .line 263
    fill-array-data v1, :array_b

    .line 264
    .line 265
    .line 266
    invoke-direct {v8, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const/4 v8, 0x0

    .line 274
    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-virtual {v5, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Lcom/tknetwork/tunnel/activities/SshActivity$2;

    .line 282
    .line 283
    invoke-direct {v1, v0, v6, v7, v4}, Lcom/tknetwork/tunnel/activities/SshActivity$2;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 287
    .line 288
    .line 289
    const v1, 0x7f0a00e1

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Landroid/widget/TextView;

    .line 297
    .line 298
    new-instance v2, L땡뒙땵땜뒋딄딻뎹돵딀디뒈딸뒉듬뒤됨됴돴듔딜땥땤듌듨땝딤땫땯돵땨뒐뎸뒙땔땟뒐딐딎둡뎨땣딄될딃땄됴득뒐땄땩드땹듸됩뎬듐돷둘듬듸돨듻뒵땯득딜뎠듨됨뎸뎹뒻뒈땵딽딽땃땻땁땃돝땋딟두딹돤듐딌돵땥뒬됐듸뒨뒷될뎨뒷뎹땯듬딤딎돸땍뎨딌듼돵됴땝뒨땫되돠땄두딸딀돷딀땁뒘된뒾뒬땫뒾든;

    .line 299
    .line 300
    invoke-direct {v2, v0, v6, v7, v3}, L땡뒙땵땜뒋딄딻뎹돵딀디뒈딸뒉듬뒤됨됴돴듔딜땥땤듌듨땝딤땫땯돵땨뒐뎸뒙땔땟뒐딐딎둡뎨땣딄될딃땄됴득뒐땄땩드땹듸됩뎬듐돷둘듬듸돨듻뒵땯득딜뎠듨됨뎸뎹뒻뒈땵딽딽땃땻땁땃돝땋딟두딹돤듐딌돵땥뒬됐듸뒨뒷될뎨뒷뎹땯듬딤딎돸땍뎨딌듼돵됴땝뒨땫되돠땄두딸딀돷딀땁뒘된뒾뒬땫뒾든;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    const v1, 0x7f0a018b

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    check-cast v1, Landroid/widget/TextView;

    .line 314
    .line 315
    new-instance v2, L뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄;

    .line 316
    .line 317
    const/4 v4, 0x1

    .line 318
    invoke-direct {v2, v3, v4}, L뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄;-><init>(Landroid/app/Dialog;I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    nop

    .line 329
    :array_0
    .array-data 8
        -0x632b0806225fccefL    # -8.681465773749202E-170
        -0x63795f478dbabd31L    # -2.927622554247616E-171
        -0x6165a0145c8c28d7L    # -2.931228571210708E-161
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
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
    :array_1
    .array-data 8
        -0x3c381abac795bff2L    # -3.4437170822843013E18
        0x3a5d7e2da9dd1059L    # 1.4890101365081279E-27
        0x2ebffc2c571582bL    # 1.3699912508060835E-294
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
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
    :array_2
    .array-data 8
        -0x1ec19ea113185782L    # -2.6695038443080456E160
        -0x45c274d008b39f47L    # -3.7289392705399686E-28
        0x16d071d0b88638aaL
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
    :array_3
    .array-data 8
        0x2f7015f13f6012b2L    # 3.3915752826512025E-80
        0x2fe2aaf3b106546cL    # 5.038065710111468E-78
        -0x1d24099992ee6dfL    # -6.225560496506332E299
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
    .line 390
    .line 391
    .line 392
    .line 393
    :array_4
    .array-data 8
        0xba4d32c5cb3a96fL
        -0x5b508f9e6735ca8L
        0x6b542a2555258fb5L    # 1.0358272022997717E209
        0x4c7bef961aa2626bL    # 2.805702190631795E60
    .end array-data

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
    :array_5
    .array-data 8
        0x724bb150dc698967L    # 3.693098476189236E242
        0x3587938f6ff10eb1L    # 7.876773720899078E-51
        0x53d1fe0cd7d490c9L    # 6.004921537054755E95
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
    :array_6
    .array-data 8
        0x462cc07e05bd0d5bL    # 1.1389810120188003E30
        0x5e1de0db1f1e8964L    # 2.3318168899888697E145
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
    :array_7
    .array-data 8
        0x6650db19437ecb07L    # 7.162227671768835E184
        -0x366db85f7d9ce117L    # -2.608979227953391E46
        -0x4f4b506f69938654L
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
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
    :array_8
    .array-data 8
        0x10cab8d3e6705112L    # 8.812557829620542E-228
        -0x7bf8a231de6c97fdL
        -0x3989ba144bce6d84L    # -2.8234543831992166E31
    .end array-data

    .line 458
    .line 459
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
    .line 472
    .line 473
    :array_9
    .array-data 8
        0x22067a60503fa814L    # 9.000577626866956E-145
        -0x135b639a1c8b71e1L    # -2.220365644870003E215
        -0x1a69c61de35d861eL    # -2.305689368029953E181
        -0x62f21301949b3b7fL    # -9.911915436928252E-169
    .end array-data

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
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :array_a
    .array-data 8
        -0x384340e1479b331L
        0x7c08386b8ddbd578L    # 2.950441464942779E289
        -0x7a73f84e9d3386c0L    # -6.031953026970335E-282
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_b
    .array-data 8
        -0x56134b182c20e169L    # -9.778545254188229E-107
        0x428fcf2834274a95L    # 4.3718241497373228E12
        -0x244160fc78db0f20L
        0x6dbdf5f39a4791daL    # 4.2304785750779776E220
    .end array-data
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
    const/4 v2, 0x4

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
        0x66fceb646f37b944L    # 1.2583113401494707E188
        0x6f9d6ddd57c1ef56L    # 4.4618458282460516E229
        -0x138888446de48623L    # -3.160149045255484E214
        0x470e663195dc7ce4L    # 1.9730205011925053E34
    .end array-data
.end method

.method private showUdpforwarder()V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    const v1, 0x7f140002

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0d0041

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a0104

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 28
    .line 29
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getVpnUdpResolver()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const v2, 0x7f0a00e1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/widget/TextView;

    .line 44
    .line 45
    new-instance v3, L뎻뎨듔듬뒵돛둑딌땍땦든딠땨돤뎰뎽되뒻뒝돼딻둔뒝듸땹됴돝땪둘듬둬둬듬땵뒾딠땡뒋뒷땍땰땱뎬됨딤뎠둑뒤뒼땁듰뎹듰딄땦뒈득딠돨둥땬뒉뒛땨땝딠딽뒤땬뒀땜돝딽땃딄뒉딄뎠뎠땱뒹뒐듐뎠땀뎸듻땔땜땍딜뒤뎨뎽뎠땍딁땡땁되땪땨둔두딸딠딟뒨딠뒈땝딀땸뒵딃듰듰땬뒻뒛딨됐땟든딽땻득땫땮딝;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-direct {v3, p0, v1, v0, v4}, L뎻뎨듔듬뒵돛둑딌땍땦든딠땨돤뎰뎽되뒻뒝돼딻둔뒝듸땹됴돝땪둘듬둬둬듬땵뒾딠땡뒋뒷땍땰땱뎬됨딤뎠둑뒤뒼땁듰뎹듰딄땦뒈득딠돨둥땬뒉뒛땨땝딠딽뒤땬뒀땜돝딽땃딄뒉딄뎠뎠땱뒹뒐듐뎠땀뎸듻땔땜땍딜뒤뎨뎽뎠땍딁땡땁되땪땨둔두딸딠딟뒨딠뒈땝딀땸뒵딃듰듰땬뒻뒛딨됐땟든딽땻득땫땮딝;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Landroid/widget/TextView;Landroid/view/KeyEvent$Callback;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    const v1, 0x7f0a018b

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 62
    .line 63
    new-instance v2, L뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄;

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-direct {v2, v0, v3}, L뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄;-><init>(Landroid/app/Dialog;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$onCreate$4(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/activities/SshActivity;Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$forwarder$12(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/tknetwork/tunnel/activities/SshActivity;Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$forwarder$11(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$onCreate$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Lcom/tknetwork/tunnel/activities/SshActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$setDnsForwarder$9(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$onCreate$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic 뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$onCreate$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic 뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$onCreate$1(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic 뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$setDnsForwarder$10(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$onCreate$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$onCreate$2(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic 뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Lcom/tknetwork/tunnel/activities/SshActivity;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$showUdpforwarder$7(Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/SshActivity;->lambda$showUdpforwarder$8(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic 뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Lcom/tknetwork/tunnel/activities/SshActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/SshActivity;->sendDataAndExit()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0026

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
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    new-instance p1, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 38
    .line 39
    const p1, 0x7f0a03df

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    .line 61
    .line 62
    const p1, 0x7f0a0126

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/widget/CheckBox;

    .line 70
    .line 71
    const v1, 0x7f0a0402

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/CheckBox;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->udp:Landroid/widget/CheckBox;

    .line 81
    .line 82
    const v1, 0x7f0a02ce

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/widget/CheckBox;

    .line 90
    .line 91
    const v2, 0x7f0a0396

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/widget/CheckBox;

    .line 99
    .line 100
    const v3, 0x7f0a0316

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Landroid/widget/CheckBox;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    new-instance v5, Lcom/tknetwork/tunnel/activities/SshActivity$1;

    .line 114
    .line 115
    invoke-direct {v5, p0, v0}, Lcom/tknetwork/tunnel/activities/SshActivity$1;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, p0, v5}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 122
    .line 123
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getEnableReplace()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 128
    .line 129
    .line 130
    new-instance v0, L땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸;

    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-direct {v0, p0, v4}, L땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 140
    .line 141
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 150
    .line 151
    .line 152
    new-instance v0, L땠땀뒻땋둬딞땨땹뒋뎨땋뎻땲땃땬땻딽둘돛돴디듟땥돠땋듼딹딐뒉듻뒙돳땤돰땥땻둣땄땧땅땔뎨땍두땯둑되뒻돳딽둑땝딸딝둔땔뒈뒐둥땝땍둑뎰돤드돝딜땝득뎽뎨돶도딐딎땁딟됐듟딐돴땳됩돝듬뒉돼딄뒬딨땝땻득딞됨땧딃뒘둥땅둬땸땠딝듐땍돤땝둬돴돠된디딠땠딄됴딹딄됐돴듨듻돼뒵둔들디뒙뒛;

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    invoke-direct {v0, p0, v2, v3}, L땠땀뒻땋둬딞땨땹뒋뎨땋뎻땲땃땬땻딽둘돛돴디듟땥돠땋듼딹딐뒉듻뒙돳땤돰땥땻둣땄땧땅땔뎨땍두땯둑되뒻돳딽둑땝딸딝둔땔뒈뒐둥땝땍둑뎰돤드돝딜땝득뎽뎨돶도딐딎땁딟됐듟딐돴땳됩돝듬뒉돼딄뒬딨땝땻득딞됨땧딃뒘둥땅둬땸땠딝듐땍돤땝둬돴돠된디딠땠딄됴딹딄됐돴듨듻돼뒵둔들디뒙뒛;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/widget/CheckBox;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 162
    .line 163
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSH()Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 172
    .line 173
    .line 174
    new-instance v0, L땠땀뒻땋둬딞땨땹뒋뎨땋뎻땲땃땬땻딽둘돛돴디듟땥돠땋듼딹딐뒉듻뒙돳땤돰땥땻둣땄땧땅땔뎨땍두땯둑되뒻돳딽둑땝딸딝둔땔뒈뒐둥땝땍둑뎰돤드돝딜땝득뎽뎨돶도딐딎땁딟됐듟딐돴땳됩돝듬뒉돼딄뒬딨땝땻득딞됨땧딃뒘둥땅둬땸땠딝듐땍돤땝둬돴돠된디딠땠딄됴딹딄됐돴듨듻돼뒵둔들디뒙뒛;

    .line 175
    .line 176
    const/4 v3, 0x1

    .line 177
    invoke-direct {v0, p0, v1, v3}, L땠땀뒻땋둬딞땨땹뒋뎨땋뎻땲땃땬땻딽둘돛돴디듟땥돠땋듼딹딐뒉듻뒙돳땤돰땥땻둣땄땧땅땔뎨땍두땯둑되뒻돳딽둑땝딸딝둔땔뒈뒐둥땝땍둑뎰돤드돝딜땝득뎽뎨돶도딐딎땁딟됐듟딐돴땳됩돝듬뒉돼딄뒬딨땝땻득딞됨땧딃뒘둥땅둬땸땠딝듐땍돤땝둬돴돠된디딠땠딄됴딹딄됐돴듨듻돼뒵둔들디뒙뒛;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;Landroid/widget/CheckBox;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 184
    .line 185
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getdnsForward()Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    .line 195
    .line 196
    new-instance v0, L땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸;

    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    invoke-direct {v0, p0, v1}, L땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->mConfig:Lconfig/ConfigUtil;

    .line 206
    .line 207
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getVpnUdpForward()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->udp:Landroid/widget/CheckBox;

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->udp:Landroid/widget/CheckBox;

    .line 217
    .line 218
    new-instance v0, L땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸;

    .line 219
    .line 220
    const/4 v1, 0x2

    .line 221
    invoke-direct {v0, p0, v1}, L땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    .line 226
    .line 227
    const p1, 0x7f0a0128

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Landroid/widget/TextView;

    .line 235
    .line 236
    new-instance v0, L땠땦땤둥딜듐땅둠둡딃뎬드땦뎡듽땵땄땟땃뎻돶땦땔땫둥든딽돝둡땧돰디득됫돼듻딀돴두된디뎸딹땦듌땁뎰듼뒾뒋둡딤땨땔딃뎬드돵땐땣땮딠딄땠뎸따돶딌뒨땀됐땱딎땠되뒤둠두뒬됫뒐돝딽듌딁뒹뒀뒤돴돤듰듟뒀듐땬돴땭딄듽될딜될뒈듬둔땵드뎻땰듔듼돨든딽둬땫돝듰땯듬돰딻딤뒤땰됩뒘땁디뒹;

    .line 237
    .line 238
    const/4 v1, 0x0

    .line 239
    invoke-direct {v0, p0, v1}, L땠땦땤둥딜듐땅둠둡딃뎬드땦뎡듽땵땄땟땃뎻돶땦땔땫둥든딽돝둡땧돰디득됫돼듻딀돴두된디뎸딹땦듌땁뎰듼뒾뒋둡딤땨땔딃뎬드돵땐땣땮딠딄땠뎸따돶딌뒨땀됐땱딎땠되뒤둠두뒬됫뒐돝딽듌딁뒹뒀뒤돴돤듰듟뒀듐땬돴땭딄듽될딜될뒈듬둔땵드뎻땰듔듼돨든딽둬땫돝듰땯듬돰딻딤뒤땰됩뒘땁디뒹;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    const p1, 0x7f0a0403

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Landroid/widget/TextView;

    .line 253
    .line 254
    new-instance v0, L땠땦땤둥딜듐땅둠둡딃뎬드땦뎡듽땵땄땟땃뎻돶땦땔땫둥든딽돝둡땧돰디득됫돼듻딀돴두된디뎸딹땦듌땁뎰듼뒾뒋둡딤땨땔딃뎬드돵땐땣땮딠딄땠뎸따돶딌뒨땀됐땱딎땠되뒤둠두뒬됫뒐돝딽듌딁뒹뒀뒤돴돤듰듟뒀듐땬돴땭딄듽될딜될뒈듬둔땵드뎻땰듔듼돨든딽둬땫돝듰땯듬돰딻딤뒤땰됩뒘땁디뒹;

    .line 255
    .line 256
    const/4 v1, 0x1

    .line 257
    invoke-direct {v0, p0, v1}, L땠땦땤둥딜듐땅둠둡딃뎬드땦뎡듽땵땄땟땃뎻돶땦땔땫둥든딽돝둡땧돰디득됫돼듻딀돴두된디뎸딹땦듌땁뎰듼뒾뒋둡딤땨땔딃뎬드돵땐땣땮딠딄땠뎸따돶딌뒨땀됐땱딎땠되뒤둠두뒬됫뒐돝딽듌딁뒹뒀뒤돴돤듰듟뒀듐땬돴땭딄듽될딜될뒈듬둔땵드뎻땰듔듼돨든딽둬땫돝듰땯듬돰딻딤뒤땰됩뒘땁디뒹;-><init>(Lcom/tknetwork/tunnel/activities/SshActivity;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    return-void
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
    const/high16 v1, 0x7f0f0000

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
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
    const v1, 0x7f0a0264

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/SshActivity;->launchMarket()V

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/SshActivity;->myPrefs:Landroid/content/SharedPreferences;

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
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/activities/SshActivity;->loadAppColors(I)V

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
        0x305b67f3de78c657L    # 9.467335834980779E-76
        -0x5655e9ddac0ec952L
        0x700c39f93c20a7c7L    # 5.477761087740694E231
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
        -0x1176357fbe852ee7L    # -2.9832887974337963E224
        -0x3f81547ea6d38daaL    # -490.71907918321574
    .end array-data
.end method
