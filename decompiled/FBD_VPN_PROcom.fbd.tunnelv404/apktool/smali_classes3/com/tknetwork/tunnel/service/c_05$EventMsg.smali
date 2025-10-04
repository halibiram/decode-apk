.class public Lcom/tknetwork/tunnel/service/c_05$EventMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;
    }
.end annotation


# static fields
.field public static final F_ERROR:I = 0x1

.field public static final F_EXCLUDE_SELF:I = 0x10

.field public static final F_FROM_JAVA:I = 0x2

.field public static final F_PROF_IMPORT:I = 0x20

.field public static final F_PROF_MANAGE:I = 0x4

.field public static final F_UI_RESET:I = 0x8


# instance fields
.field public c:Ljava/lang/Runnable;

.field public conn_info:Lnet/openvpn/openvpn/ClientAPI_ConnectionInfo;

.field public expires:J

.field public flags:I

.field public icon_res_id:I

.field public info:Ljava/lang/String;

.field public k:Landroid/os/Handler;

.field public name:Ljava/lang/String;

.field public priority:I

.field public profile_override:Ljava/lang/String;

.field public progress:I

.field public res_id:I

.field public sender:Lcom/tknetwork/tunnel/service/c_05$EventReceiver;

.field public transition:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->expires:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->icon_res_id:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    iput v2, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->priority:I

    .line 16
    .line 17
    iput v0, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->progress:I

    .line 18
    .line 19
    iput v1, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 20
    .line 21
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->NO_CHANGE:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->transition:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 24
    .line 25
    return-void
.end method

.method public static disconnected()Lcom/tknetwork/tunnel/service/c_05$EventMsg;
    .locals 6

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tknetwork/tunnel/service/c_05$EventMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iput v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 8
    .line 9
    const v1, 0x7f13009e

    .line 10
    .line 11
    .line 12
    iput v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 13
    .line 14
    const v1, 0x7f0800cd

    .line 15
    .line 16
    .line 17
    iput v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->icon_res_id:I

    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->name:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    new-array v2, v2, [J

    .line 40
    .line 41
    const-wide v3, 0x5b9b1ab82391916aL    # 1.9238776698975386E133

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    aput-wide v3, v2, v5

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 57
    .line 58
    return-object v0

    .line 59
    :array_0
    .array-data 8
        0x4237901abe68d667L    # 1.0120191959283751E11
        0x5c879ee78a2e2941L    # 5.493905397481093E137
        0x214e08ef3e1c8654L
    .end array-data
.end method


# virtual methods
.method public is_expired()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->expires:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->expires:J

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public is_reflected(Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->sender:Lcom/tknetwork/tunnel/service/c_05$EventReceiver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v2, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 8
    .line 9
    and-int/lit8 v2, v2, 0x10

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    if-eq v0, p1, :cond_2

    .line 14
    .line 15
    :cond_1
    const/4 v1, 0x1

    .line 16
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->name:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-object v1, v3, v4

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    new-array v6, v5, [J

    .line 18
    .line 19
    fill-array-data v6, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-lez v1, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 45
    .line 46
    new-array v3, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v1, v3, v4

    .line 49
    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v6, v5, [J

    .line 53
    .line 54
    fill-array-data v6, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->transition:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 72
    .line 73
    sget-object v3, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->NO_CHANGE:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 74
    .line 75
    if-eq v1, v3, :cond_1

    .line 76
    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object v1, v2, v4

    .line 80
    .line 81
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v3, v5, [J

    .line 84
    .line 85
    fill-array-data v3, :array_2

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :array_0
    .array-data 8
        0xa8b25345fcc92e6L
        -0x1f15d80238ad9692L    # -7.182285244384241E158
        -0x72a35a169239489dL
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
    :array_1
    .array-data 8
        -0x57a60158838aeeb6L
        -0x1d84fb1ff122f545L    # -2.4894740298381116E166
        -0x573961168c7d26e6L
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
    :array_2
    .array-data 8
        -0x5382ba49b72e3a3fL    # -2.192695906685766E-94
        0x1b2483ca693b9306L    # 6.328197329357191E-178
        0x7181bd9007e133d3L    # 5.77606298438114E238
    .end array-data
.end method
