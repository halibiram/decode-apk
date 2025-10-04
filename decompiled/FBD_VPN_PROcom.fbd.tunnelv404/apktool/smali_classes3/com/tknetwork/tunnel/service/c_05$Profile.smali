.class public Lcom/tknetwork/tunnel/service/c_05$Profile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Profile"
.end annotation


# instance fields
.field private allow_password_save:Z

.field private autologin:Z

.field private dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

.field private errorText:Ljava/lang/String;

.field private external_pki:Z

.field private external_pki_alias:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field public orig_filename:Ljava/lang/String;

.field private private_key_password_required:Z

.field private proxy_context:Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

.field private server_list:Lcom/tknetwork/tunnel/service/c_05$ServerList;

.field private static_challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_05;

.field private userlocked_username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ClientAPI_EvalConfig;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->location:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->orig_filename:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p4, :cond_1

    .line 14
    .line 15
    iput-object p3, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p3}, Lcom/tknetwork/tunnel/service/c_05$ProfileFN;->has_ovpn_ext(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/tknetwork/tunnel/service/c_05$ProfileFN;->strip_ovpn_ext(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v4, v2, [J

    .line 36
    .line 37
    fill-array-data v4, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iput-object p3, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 60
    .line 61
    :goto_0
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getError()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->errorText:Ljava/lang/String;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getUserlockedUsername()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->userlocked_username:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getAutologin()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->autologin:Z

    .line 85
    .line 86
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getExternalPki()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki:Z

    .line 91
    .line 92
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getPrivateKeyPasswordRequired()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->private_key_password_required:Z

    .line 97
    .line 98
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getAllowPasswordSave()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->allow_password_save:Z

    .line 103
    .line 104
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getStaticChallenge()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-lez v3, :cond_3

    .line 113
    .line 114
    new-instance v3, Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 115
    .line 116
    invoke-direct {v3}, Lcom/tknetwork/tunnel/service/c_05$Challenge;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-static {v3, p2}, Lcom/tknetwork/tunnel/service/c_05$Challenge;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$Challenge;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getStaticChallengeEcho()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-static {v3, p2}, Lcom/tknetwork/tunnel/service/c_05$Challenge;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$Challenge;Z)V

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v1}, Lcom/tknetwork/tunnel/service/c_05$Challenge;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05$Challenge;Z)V

    .line 130
    .line 131
    .line 132
    iput-object v3, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->static_challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 133
    .line 134
    :cond_3
    const/4 p2, 0x0

    .line 135
    if-nez p4, :cond_b

    .line 136
    .line 137
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getProfileName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p4

    .line 141
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getFriendlyName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->location:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v4, :cond_4

    .line 148
    .line 149
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v2, v2, [J

    .line 152
    .line 153
    fill-array-data v2, :array_1

    .line 154
    .line 155
    .line 156
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-lez v2, :cond_5

    .line 171
    .line 172
    move-object p4, v3

    .line 173
    const/4 v2, 0x1

    .line 174
    goto :goto_1

    .line 175
    :cond_5
    const/4 v2, 0x0

    .line 176
    :goto_1
    const/4 v3, 0x0

    .line 177
    if-eqz p3, :cond_6

    .line 178
    .line 179
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v5, v0, [J

    .line 182
    .line 183
    fill-array-data v5, :array_2

    .line 184
    .line 185
    .line 186
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    move-object p3, v3

    .line 200
    :cond_6
    invoke-static {p3}, Lcom/tknetwork/tunnel/service/c_05$ProfileFN;->has_ovpn_ext(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_7

    .line 205
    .line 206
    invoke-static {p3}, Lcom/tknetwork/tunnel/service/c_05$ProfileFN;->strip_ovpn_ext(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    :cond_7
    if-eqz p3, :cond_8

    .line 211
    .line 212
    if-eqz p4, :cond_8

    .line 213
    .line 214
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p4

    .line 218
    if-eqz p4, :cond_8

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_8
    move-object v3, p3

    .line 222
    :goto_2
    new-instance p3, Ljava/lang/StringBuffer;

    .line 223
    .line 224
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-boolean p4, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->autologin:Z

    .line 228
    .line 229
    if-eqz p4, :cond_9

    .line 230
    .line 231
    if-nez v2, :cond_9

    .line 232
    .line 233
    if-nez v3, :cond_9

    .line 234
    .line 235
    const p4, 0x7f130035

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object p4

    .line 242
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p4

    .line 246
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    .line 248
    .line 249
    :cond_9
    if-eqz v3, :cond_a

    .line 250
    .line 251
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    .line 253
    .line 254
    :cond_a
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    iput-object p3, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 259
    .line 260
    :cond_b
    new-instance p3, Lcom/tknetwork/tunnel/service/c_05$ServerList;

    .line 261
    .line 262
    invoke-direct {p3}, Lcom/tknetwork/tunnel/service/c_05$ServerList;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object p3, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->server_list:Lcom/tknetwork/tunnel/service/c_05$ServerList;

    .line 266
    .line 267
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getServerList()Lnet/openvpn/openvpn/ClientAPI_ServerEntryVector;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    invoke-virtual {p3}, Lnet/openvpn/openvpn/ClientAPI_ServerEntryVector;->size()J

    .line 272
    .line 273
    .line 274
    move-result-wide p4

    .line 275
    long-to-int p5, p4

    .line 276
    :goto_3
    if-ge p2, p5, :cond_c

    .line 277
    .line 278
    invoke-virtual {p3, p2}, Lnet/openvpn/openvpn/ClientAPI_ServerEntryVector;->get(I)Lnet/openvpn/openvpn/ClientAPI_ServerEntry;

    .line 279
    .line 280
    .line 281
    move-result-object p4

    .line 282
    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$ServerEntry;

    .line 283
    .line 284
    invoke-direct {v2}, Lcom/tknetwork/tunnel/service/c_05$ServerEntry;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p4}, Lnet/openvpn/openvpn/ClientAPI_ServerEntry;->getServer()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-static {v2, v3}, Lcom/tknetwork/tunnel/service/c_05$ServerEntry;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$ServerEntry;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p4}, Lnet/openvpn/openvpn/ClientAPI_ServerEntry;->getFriendlyName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p4

    .line 298
    invoke-static {v2, p4}, Lcom/tknetwork/tunnel/service/c_05$ServerEntry;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$ServerEntry;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object p4, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->server_list:Lcom/tknetwork/tunnel/service/c_05$ServerList;

    .line 302
    .line 303
    invoke-static {p4}, Lcom/tknetwork/tunnel/service/c_05$ServerList;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$ServerList;)Ljava/util/ArrayList;

    .line 304
    .line 305
    .line 306
    move-result-object p4

    .line 307
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    add-int/2addr p2, v1

    .line 311
    goto :goto_3

    .line 312
    :cond_c
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05;)Lnet/openvpn/openvpn/PrefUtil;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 317
    .line 318
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array p4, v0, [J

    .line 321
    .line 322
    fill-array-data p4, :array_3

    .line 323
    .line 324
    .line 325
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p3

    .line 332
    invoke-virtual {p1, p2, p3}, Lnet/openvpn/openvpn/PrefUtil;->get_string_by_profile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 337
    .line 338
    return-void

    .line 339
    :array_0
    .array-data 8
        0xf6b17445220dbb8L
        -0x1586d71901ede998L    # -7.888307213287518E204
    .end array-data

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
    .line 350
    .line 351
    :array_1
    .array-data 8
        -0x86c9c878ea506bcL    # -1.0002801169817595E268
        -0x548233d81170d4efL    # -3.4058148860562076E-99
    .end array-data

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
    :array_2
    .array-data 8
        0x57166e7dcbf4acc0L
        -0x744d207b28074174L
        0x72827b6954d66ea5L    # 3.943639980202952E243
    .end array-data

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
    .line 378
    .line 379
    :array_3
    .array-data 8
        0x2d76a6d47e8974fbL    # 1.1119921380196195E-89
        0x4467a2657b0cb5b5L    # 3.487816065573041E21
        -0x21307cb500b3b30L    # -3.7891999997847E298
    .end array-data
.end method

.method private expire_dynamic_challenge()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->is_expired()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private get_epki()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki:Z

    .line 2
    .line 3
    return v0
.end method

.method private get_epki_alias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private invalidate_epki_alias(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05;)Lnet/openvpn/openvpn/PrefUtil;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v0, v1}, Lnet/openvpn/openvpn/PrefUtil;->delete_key_by_profile(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHackPurge()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x56b3c4fa31311b98L    # 4.642937785267879E109
        0x24846d5e5635263L
        0x37e4af43a15638bdL    # 1.8995828644876493E-39
    .end array-data
.end method

.method private persist_epki_alias(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_05;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05;)Lnet/openvpn/openvpn/PrefUtil;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    new-array v3, v3, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2, p1}, Lnet/openvpn/openvpn/PrefUtil;->set_string_by_profile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHackPurge()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        -0x1ce72fdd04aee659L    # -2.3410864281449568E169
        0x3312deb247491ebcL    # 1.1467551231900993E-62
        0x166f9b5d97d02767L
    .end array-data
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$Profile;)Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$Profile;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05$Profile;Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    return-void
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/service/c_05$Profile;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_epki()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/service/c_05$Profile;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_epki_alias()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/service/c_05$Profile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->invalidate_epki_alias(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/tknetwork/tunnel/service/c_05$Profile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->persist_epki_alias(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public challenge_defined()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->expire_dynamic_challenge()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->static_challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    return v0
.end method

.method public forget_cert()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_05;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05;)Lnet/openvpn/openvpn/PrefUtil;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    new-array v3, v3, [J

    .line 20
    .line 21
    fill-array-data v3, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lnet/openvpn/openvpn/PrefUtil;->delete_key_by_profile(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHackPurge()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0xca8259d3eca5accL    # -4.16946876259378E247
        -0x2f6798ae282a79d7L    # -1.8084755003801434E80
        -0x3ffe790b60c3afe3L    # -2.190896266964059
    .end array-data
.end method

.method public get_allow_password_save()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->allow_password_save:Z

    .line 2
    .line 3
    return v0
.end method

.method public get_autologin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->autologin:Z

    .line 2
    .line 3
    return v0
.end method

.method public get_challenge()Lcom/tknetwork/tunnel/service/c_05$Challenge;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->expire_dynamic_challenge()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->static_challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 12
    .line 13
    return-object v0
.end method

.method public get_dynamic_challenge_expire_delay()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->is_dynamic_challenge()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->expire_delay()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public get_error()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->errorText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_filename()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->location:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->orig_filename:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_05$ProfileFN;->encode_profile_fn(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->orig_filename:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    return-object v0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x4fedd7ddd4a8811bL    # 1.079878059763119E77
        -0x31d0124f90f8b01cL    # -4.303949702118308E68
    .end array-data
.end method

.method public get_location()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_private_key_password_required()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->private_key_password_required:Z

    .line 2
    .line 3
    return v0
.end method

.method public get_proxy_context(Z)Lcom/tknetwork/tunnel/service/c_05$ProxyContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->proxy_context:Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->is_expired()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->proxy_context:Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    new-instance p1, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, v0}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->proxy_context:Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->proxy_context:Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->proxy_context:Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 29
    .line 30
    return-object p1
.end method

.method public get_server_list()Lcom/tknetwork/tunnel/service/c_05$ServerList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->server_list:Lcom/tknetwork/tunnel/service/c_05$ServerList;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_type_string()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_autologin()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 8
    .line 9
    const v1, 0x7f1301c1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_epki()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 28
    .line 29
    const v1, 0x7f1301c2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 42
    .line 43
    const v1, 0x7f1301c3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public get_userlocked_username()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->userlocked_username:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public have_external_pki_alias()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public is_deleteable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->location:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x2e0f15e88c79958aL    # 7.813223218371614E-87
        -0x7191002510aaa63dL
    .end array-data
.end method

.method public is_dynamic_challenge()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->expire_dynamic_challenge()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public is_renameable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->is_deleteable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public need_external_pki_alias()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public reset_dynamic_challenge()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 3
    .line 4
    return-void
.end method

.method public reset_proxy_context()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->proxy_context:Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 3
    .line 4
    return-void
.end method

.method public server_list_defined()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->server_list:Lcom/tknetwork/tunnel/service/c_05$ServerList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_05$ServerList;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$ServerList;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/16 v2, 0xb

    .line 5
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
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->name:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->orig_filename:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->userlocked_username:Ljava/lang/String;

    .line 23
    .line 24
    iget-boolean v5, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->autologin:Z

    .line 25
    .line 26
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki:Z

    .line 31
    .line 32
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    iget-object v7, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->external_pki_alias:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->server_list:Lcom/tknetwork/tunnel/service/c_05$ServerList;

    .line 39
    .line 40
    invoke-virtual {v8}, Lcom/tknetwork/tunnel/service/c_05$ServerList;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    iget-object v9, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->static_challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 45
    .line 46
    if-eqz v9, :cond_0

    .line 47
    .line 48
    invoke-virtual {v9}, Lcom/tknetwork/tunnel/service/c_05$Challenge;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v10, v0, [J

    .line 56
    .line 57
    fill-array-data v10, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    :goto_0
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->dynamic_challenge:Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 68
    .line 69
    if-eqz v10, :cond_1

    .line 70
    .line 71
    invoke-virtual {v10}, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v11, v0, [J

    .line 79
    .line 80
    fill-array-data v11, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    :goto_1
    const/16 v11, 0x9

    .line 91
    .line 92
    new-array v11, v11, [Ljava/lang/Object;

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    aput-object v2, v11, v12

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    aput-object v3, v11, v2

    .line 99
    .line 100
    aput-object v4, v11, v0

    .line 101
    .line 102
    const/4 v0, 0x3

    .line 103
    aput-object v5, v11, v0

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    aput-object v6, v11, v0

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    aput-object v7, v11, v0

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    aput-object v8, v11, v0

    .line 113
    .line 114
    const/4 v0, 0x7

    .line 115
    aput-object v9, v11, v0

    .line 116
    .line 117
    const/16 v0, 0x8

    .line 118
    .line 119
    aput-object v10, v11, v0

    .line 120
    .line 121
    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        0x54b1dcc087423f66L    # 9.767339126939353E99
        -0x6a2750366d0dcd1L
        -0x40aeec4abc372b42L    # -0.0010422964252374957
        0x2b7f3ebe95ffdd15L    # 3.5712750322309906E-99
        0x280e367b532987faL
        -0x5187423fbbaa5073L    # -7.959801818768744E-85
        0x380ee6e09f8ed36eL    # 1.1351552410267314E-38
        0x61f868f8a972da9cL    # 8.785494794797248E163
        0x4adaf2c46fb5ce67L    # 4.0330238990879703E52
        0x70d33b7a42fda6dcL    # 3.0575152109128173E235
        0x6d7182dc61792a35L    # 1.5453688537782256E219
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
    :array_1
    .array-data 8
        0x3cc1f0bd73150396L    # 4.979458726061999E-16
        0xa7456992fa19a7L
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 8
        -0x64dde8d92354d829L    # -5.580352366148797E-178
        0x6abc54122c7ecb83L    # 1.4210819819075467E206
    .end array-data
.end method

.method public userlocked_username_defined()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$Profile;->userlocked_username:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
