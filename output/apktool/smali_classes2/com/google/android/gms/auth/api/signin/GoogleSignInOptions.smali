.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GoogleSignInOptionsCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final zaa:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zab:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zac:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zad:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zae:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static zag:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaf:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zah:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getScopes"
        id = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zai:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAccount"
        id = 0x3
    .end annotation
.end field

.field private zaj:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isIdTokenRequested"
        id = 0x4
    .end annotation
.end field

.field private final zak:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isServerAuthCodeRequested"
        id = 0x5
    .end annotation
.end field

.field private final zal:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isForceCodeForRefreshToken"
        id = 0x6
    .end annotation
.end field

.field private zam:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getServerClientId"
        id = 0x7
    .end annotation
.end field

.field private zan:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHostedDomain"
        id = 0x8
    .end annotation
.end field

.field private zao:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getExtensions"
        id = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private zap:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLogSessionId"
        id = 0xa
    .end annotation
.end field

.field private zaq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaa:Lcom/google/android/gms/common/api/Scope;

    .line 22
    .line 23
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 24
    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v3, v2, [J

    .line 28
    .line 29
    fill-array-data v3, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zab:Lcom/google/android/gms/common/api/Scope;

    .line 43
    .line 44
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v2, v2, [J

    .line 49
    .line 50
    fill-array-data v2, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zac:Lcom/google/android/gms/common/api/Scope;

    .line 64
    .line 65
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 66
    .line 67
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v2, 0x7

    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_3

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
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad:Lcom/google/android/gms/common/api/Scope;

    .line 86
    .line 87
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    .line 88
    .line 89
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    const/4 v3, 0x6

    .line 92
    new-array v3, v3, [J

    .line 93
    .line 94
    fill-array-data v3, :array_4

    .line 95
    .line 96
    .line 97
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zae:Lcom/google/android/gms/common/api/Scope;

    .line 108
    .line 109
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 110
    .line 111
    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 125
    .line 126
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 127
    .line 128
    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    .line 129
    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 133
    .line 134
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 142
    .line 143
    new-instance v0, Lcom/google/android/gms/auth/api/signin/zae;

    .line 144
    .line 145
    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zae;-><init>()V

    .line 146
    .line 147
    .line 148
    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 149
    .line 150
    new-instance v0, Lcom/google/android/gms/auth/api/signin/zac;

    .line 151
    .line 152
    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zac;-><init>()V

    .line 153
    .line 154
    .line 155
    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/Comparator;

    .line 156
    .line 157
    return-void

    .line 158
    nop

    .line 159
    :array_0
    .array-data 8
        0x47621818f5722b6cL    # 7.51600789774919E35
        0x66a875d100d232c2L    # 3.325888604057245E186
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
    :array_1
    .array-data 8
        0x1bee1b78c990643L
        -0x13046d9361aff813L    # -9.504837381031919E216
    .end array-data

    .line 172
    .line 173
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
    :array_2
    .array-data 8
        -0x506a4aba596a735fL    # -1.830808194351494E-79
        -0x76c82622571cb737L    # -2.958769337168628E-264
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_3
    .array-data 8
        0x319ae87ef710d4b1L    # 9.746876363473086E-70
        0x24201a903c4a1d73L
        -0x757813bebd635ebcL
        -0x5e5b4d7335b20b0dL
        0x1b47b7dae3b722efL    # 2.926536814415813E-177
        0x258381ae20dddf49L    # 5.628240040179611E-128
        0x1bc8a7253adad9efL    # 7.78718962771648E-175
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
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
    :array_4
    .array-data 8
        -0x5734c48600c09dedL
        0x23b8e23331c28a34L
        -0x39a6f3ae5e17002cL    # -7.938066282259744E30
        -0x78a0a769b057b714L    # -3.621484899296861E-273
        0x397199ed3c260530L    # 5.423811973063665E-32
        0xdad0006715864bdL
    .end array-data
.end method

.method public constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p3    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaf:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Landroid/accounts/Account;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaq:Ljava/util/Map;

    iput-object p10, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zap:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/zad;)V
    .locals 11

    .line 1
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic zaa(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Landroid/accounts/Account;

    return-object p0
.end method

.method public static zab(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 19
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    .line 12
    .line 13
    move-object/from16 v4, p0

    .line 14
    .line 15
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    new-array v6, v6, [J

    .line 27
    .line 28
    fill-array-data v6, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const/4 v7, 0x0

    .line 47
    :goto_0
    if-ge v7, v6, :cond_1

    .line 48
    .line 49
    new-instance v8, Lcom/google/android/gms/common/api/Scope;

    .line 50
    .line 51
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v7, v7, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v6, v1, [J

    .line 67
    .line 68
    fill-array-data v6, :array_1

    .line 69
    .line 70
    .line 71
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v6, v1, [J

    .line 87
    .line 88
    fill-array-data v6, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object v5, v3

    .line 104
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-nez v6, :cond_3

    .line 109
    .line 110
    new-instance v6, Landroid/accounts/Account;

    .line 111
    .line 112
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v8, v1, [J

    .line 115
    .line 116
    fill-array-data v8, :array_3

    .line 117
    .line 118
    .line 119
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-direct {v6, v5, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    move-object v11, v6

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    move-object v11, v3

    .line 132
    :goto_2
    new-instance v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 133
    .line 134
    new-instance v10, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .line 138
    .line 139
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v6, v1, [J

    .line 142
    .line 143
    fill-array-data v6, :array_4

    .line 144
    .line 145
    .line 146
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v6, v0, [J

    .line 160
    .line 161
    fill-array-data v6, :array_5

    .line 162
    .line 163
    .line 164
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v0, v0, [J

    .line 178
    .line 179
    fill-array-data v0, :array_6

    .line 180
    .line 181
    .line 182
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array v4, v1, [J

    .line 196
    .line 197
    fill-array-data v4, :array_7

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_4

    .line 212
    .line 213
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array v4, v1, [J

    .line 216
    .line 217
    fill-array-data v4, :array_8

    .line 218
    .line 219
    .line 220
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    move-object v15, v0

    .line 232
    goto :goto_3

    .line 233
    :cond_4
    move-object v15, v3

    .line 234
    :goto_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 235
    .line 236
    new-array v4, v1, [J

    .line 237
    .line 238
    fill-array-data v4, :array_9

    .line 239
    .line 240
    .line 241
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_5

    .line 253
    .line 254
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v1, v1, [J

    .line 257
    .line 258
    fill-array-data v1, :array_a

    .line 259
    .line 260
    .line 261
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    :cond_5
    move-object/from16 v16, v3

    .line 273
    .line 274
    new-instance v17, Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 277
    .line 278
    .line 279
    const/4 v9, 0x3

    .line 280
    const/16 v18, 0x0

    .line 281
    .line 282
    move-object v8, v5

    .line 283
    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-object v5

    .line 287
    :array_0
    .array-data 8
        0x16ffcc9077de0263L
        0x22b15713c9013746L
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_1
    .array-data 8
        -0x4243a4d8c8938d4aL    # -2.578969283265809E-11
        -0x660684eadb6fb146L
        0x115dbc81e0624eL
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :array_2
    .array-data 8
        0x4095f7f4abd5021cL    # 1405.9889367373025
        0x72baed7b8b306958L
        -0x40dd1d72ec3a1051L    # -1.4408084997430184E-4
    .end array-data

    .line 316
    .line 317
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
    :array_3
    .array-data 8
        0x10ba7c4e0b96ce22L
        -0xba2c095732a02e8L
        -0x22d84f60854506faL    # -5.642243609959043E140
    .end array-data

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
    .line 346
    .line 347
    :array_4
    .array-data 8
        -0x3addb48ccdb69f47L    # -1.1058483619190374E25
        0x1d89f8671ff1debfL    # 2.202063137758792E-166
        -0x1854a3548621dea2L    # -2.4382316694400383E191
    .end array-data

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
    .line 362
    .line 363
    :array_5
    .array-data 8
        -0x3dfbc02104a0f79eL    # -1.0871365483879093E10
        -0xe74a0cb97da796cL    # -8.911922868366447E238
        0x7d4d6b2e374cf5d7L    # 3.7577584206981857E295
        0x2d2ed1ad8b4afd89L    # 4.727925568242537E-91
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
    .line 380
    .line 381
    .line 382
    .line 383
    :array_6
    .array-data 8
        -0xb84ac5e8487b38L
        0x2c7c9fc017fad105L    # 2.144134726320649E-94
        -0x1fd0ce4f4da4da58L    # -2.091222669489371E155
        0x77ee1e8309f20fd4L    # 4.972438053522382E269
    .end array-data

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
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_7
    .array-data 8
        -0x446b43a1f757d8f0L    # -1.0977446327693503E-21
        -0x37854bc28133025dL    # -1.4539075009789932E41
        0xf642aa6e138ebf6L
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
    :array_8
    .array-data 8
        -0x247ed3e1be1abb0eL    # -6.094491842733837E132
        -0x2e14a65387126d98L    # -4.250604290555069E86
        -0x123578630ad6e984L    # -7.492035250512826E220
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
    :array_9
    .array-data 8
        0x3fc675ec20d7468aL    # 0.1754737053257041
        -0x38b5e37c150a611dL    # -2.7115615479305316E35
        0x59058fad7d5b1e49L    # 6.959563990472285E120
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
    .line 448
    .line 449
    .line 450
    .line 451
    :array_a
    .array-data 8
        -0x7174feb9ca002346L
        0x77566a2434cc9495L    # 7.22748932050679E266
        0x4c814958a19521b8L    # 3.4722935511675975E60
    .end array-data
.end method

.method public static bridge synthetic zac(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zad(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zap:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zae(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zag(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic zah(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic zai(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zaj(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Z

    return p0
.end method

.method public static bridge synthetic zak(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    return p0
.end method

.method public static bridge synthetic zal(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    return p0
.end method

.method private static zam(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;->getType()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gtz v1, :cond_6

    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopes()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v1, v2, :cond_6

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopes()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Landroid/accounts/Account;

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_6

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Z

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isForceCodeForRefreshToken()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-ne v1, v2, :cond_6

    .line 114
    .line 115
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-ne v1, v2, :cond_6

    .line 122
    .line 123
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isServerAuthCodeRequested()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-ne v1, v2, :cond_6

    .line 130
    .line 131
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zap:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getLogSessionId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    const/4 p1, 0x1

    .line 144
    return p1

    .line 145
    :catch_0
    :cond_6
    :goto_2
    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Landroid/accounts/Account;

    return-object v0
.end method

.method public getExtensions()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLogSessionId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zap:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeArray()[Lcom/google/android/gms/common/api/Scope;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Lcom/google/android/gms/common/api/Scope;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    .line 14
    .line 15
    return-object v0
.end method

.method public getScopes()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getServerClientId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/google/android/gms/common/api/Scope;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Landroid/accounts/Account;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Z

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    .line 60
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zap:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->hash()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    return v0
.end method

.method public isForceCodeForRefreshToken()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Z

    return v0
.end method

.method public isIdTokenRequested()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    return v0
.end method

.method public isServerAuthCodeRequested()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaf:I

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopes()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x4

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x5

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isServerAuthCodeRequested()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x6

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isForceCodeForRefreshToken()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x7

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const/16 p2, 0x8

    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    const/16 p2, 0x9

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getExtensions()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 74
    .line 75
    .line 76
    const/16 p2, 0xa

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getLogSessionId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final zaf()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    .line 9
    .line 10
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    .line 14
    .line 15
    sget-object v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/Comparator;

    .line 16
    .line 17
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/google/android/gms/common/api/Scope;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    new-array v5, v5, [J

    .line 53
    .line 54
    fill-array-data v5, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Landroid/accounts/Account;

    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v5, v1, [J

    .line 74
    .line 75
    fill-array-data v5, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v4, v1, [J

    .line 93
    .line 94
    fill-array-data v4, :array_2

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    .line 105
    .line 106
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v4, v0, [J

    .line 112
    .line 113
    fill-array-data v4, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Z

    .line 124
    .line 125
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v0, v0, [J

    .line 131
    .line 132
    fill-array-data v0, :array_4

    .line 133
    .line 134
    .line 135
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    .line 143
    .line 144
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_2

    .line 154
    .line 155
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v3, v1, [J

    .line 158
    .line 159
    fill-array-data v3, :array_5

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_3

    .line 181
    .line 182
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v1, v1, [J

    .line 185
    .line 186
    fill-array-data v1, :array_6

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0

    .line 206
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 207
    .line 208
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    throw v1

    .line 212
    nop

    .line 213
    :array_0
    .array-data 8
        0x491bece72a2bcd19L    # 1.5568932028049636E44
        -0x2e45c5d8934019eL    # -4.413074000158102E294
    .end array-data

    .line 214
    .line 215
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
    :array_1
    .array-data 8
        0x136387cd9f99f97L
        0x1f2ee047ec5fbbe1L    # 1.756930964117968E-158
        0x37fb1da3d6a07c0cL    # 4.9803824450880597E-39
    .end array-data

    .line 226
    .line 227
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
    .line 240
    .line 241
    :array_2
    .array-data 8
        0x50849aedcd589e51L    # 7.634937994974875E79
        0x283d0247d2b8980cL    # 7.362292236945147E-115
        0x3120193f969b38caL    # 4.555749858454021E-72
    .end array-data

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
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_3
    .array-data 8
        0x146d0c86805ee6baL
        0x6c6635da747eb4beL    # 1.49541806425252E214
        0x53233160f801a7bfL    # 3.127727921541749E92
        -0x43a8c4677e795fdL    # -1.633257506905738E288
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
    .line 274
    .line 275
    .line 276
    .line 277
    :array_4
    .array-data 8
        0x166021d1a8048b8bL    # 6.58603372587292E-201
        -0x17e2ba2079b4c682L    # -3.3389014854030647E193
        -0x1b2bf94d1732f010L    # -5.071953953812907E177
        0xe668730bacc1cb6L    # 2.702824060461167E-239
    .end array-data

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
    .line 288
    .line 289
    .line 290
    :array_5
    .array-data 8
        -0x52930e74f87e235eL    # -7.104324127163924E-90
        -0x135be2b10408056cL    # -2.1668850142854287E215
        -0x5349551242145bfbL    # -2.7167433985405893E-93
    .end array-data

    :array_6
    .array-data 8
        0x3abfc98ab2c14f72L    # 1.0271021732482504E-25
        0x22d9bb90cf459c4bL    # 8.440866465111848E-141
        0x61ef444789a66f8eL    # 5.62665050102344E163
    .end array-data
.end method
