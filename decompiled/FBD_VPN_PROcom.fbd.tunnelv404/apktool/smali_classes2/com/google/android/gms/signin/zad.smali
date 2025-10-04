.class public final Lcom/google/android/gms/signin/zad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/signin/internal/SignInClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final zab:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/signin/internal/SignInClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/signin/internal/SignInClientImpl;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field static final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/signin/internal/SignInClientImpl;",
            "Lcom/google/android/gms/signin/zac;",
            ">;"
        }
    .end annotation
.end field

.field public static final zae:Lcom/google/android/gms/common/api/Scope;

.field public static final zaf:Lcom/google/android/gms/common/api/Scope;

.field public static final zag:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zah:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/signin/zac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/signin/zad;->zaa:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/android/gms/signin/zad;->zab:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/signin/zaa;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/google/android/gms/signin/zaa;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 21
    .line 22
    new-instance v3, Lcom/google/android/gms/signin/zab;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/google/android/gms/signin/zab;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lcom/google/android/gms/signin/zad;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 28
    .line 29
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    .line 30
    .line 31
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    new-array v7, v6, [J

    .line 35
    .line 36
    fill-array-data v7, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/google/android/gms/signin/zad;->zae:Lcom/google/android/gms/common/api/Scope;

    .line 50
    .line 51
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    .line 52
    .line 53
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v6, v6, [J

    .line 56
    .line 57
    fill-array-data v6, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sput-object v4, Lcom/google/android/gms/signin/zad;->zaf:Lcom/google/android/gms/common/api/Scope;

    .line 71
    .line 72
    new-instance v4, Lcom/google/android/gms/common/api/Api;

    .line 73
    .line 74
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v6, 0x3

    .line 77
    new-array v6, v6, [J

    .line 78
    .line 79
    fill-array-data v6, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-direct {v4, v5, v2, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 90
    .line 91
    .line 92
    sput-object v4, Lcom/google/android/gms/signin/zad;->zag:Lcom/google/android/gms/common/api/Api;

    .line 93
    .line 94
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    .line 95
    .line 96
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v4, 0x4

    .line 99
    new-array v4, v4, [J

    .line 100
    .line 101
    fill-array-data v4, :array_3

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/google/android/gms/signin/zad;->zah:Lcom/google/android/gms/common/api/Api;

    .line 115
    .line 116
    return-void

    .line 117
    :array_0
    .array-data 8
        -0x8953d118f2688a1L
        -0x5fb810ce4bb6371eL    # -3.570211074284375E-153
    .end array-data

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
    :array_1
    .array-data 8
        -0x59de90167f33ae3dL    # -5.15190064624712E-125
        -0x3ff24ec81795229dL    # -3.711532417069678
    .end array-data

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
    :array_2
    .array-data 8
        -0x559431cf280619d5L
        0x489adefe934a1b5eL    # 5.852001270909622E41
        0x6eb18518cc1b261bL    # 1.6212449473607157E225
    .end array-data

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
    :array_3
    .array-data 8
        -0x384a556427e38181L    # -2.879963927302433E37
        -0x175b781e85241721L    # -1.1989821978147225E196
        -0x62bd153ae76018f5L
        -0x2417b26fa1b4f080L    # -5.520109370606735E134
    .end array-data
.end method
