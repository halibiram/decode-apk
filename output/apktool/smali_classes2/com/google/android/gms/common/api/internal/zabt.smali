.class final Lcom/google/android/gms/common/api/internal/zabt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabu;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabt;->zab:Lcom/google/android/gms/common/api/internal/zabu;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabt;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabt;->zab:Lcom/google/android/gms/common/api/internal/zabu;

    .line 3
    .line 4
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zabu;->zab(Lcom/google/android/gms/common/api/internal/zabu;)Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/gms/common/api/internal/zabq;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabt;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabt;->zab:Lcom/google/android/gms/common/api/internal/zabu;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-static {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->zac(Lcom/google/android/gms/common/api/internal/zabu;Z)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabt;->zab:Lcom/google/android/gms/common/api/internal/zabu;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zabu;->zaa(Lcom/google/android/gms/common/api/internal/zabu;)Lcom/google/android/gms/common/api/Api$Client;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabt;->zab:Lcom/google/android/gms/common/api/internal/zabu;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabu;->zad(Lcom/google/android/gms/common/api/internal/zabu;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabt;->zab:Lcom/google/android/gms/common/api/internal/zabu;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zabu;->zaa(Lcom/google/android/gms/common/api/internal/zabu;)Lcom/google/android/gms/common/api/Api$Client;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zabu;->zaa(Lcom/google/android/gms/common/api/internal/zabu;)Lcom/google/android/gms/common/api/Api$Client;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v4, v3, v2}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v4, 0x3

    .line 77
    new-array v4, v4, [J

    .line 78
    .line 79
    fill-array-data v4, :array_0

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v4, v0, [J

    .line 91
    .line 92
    fill-array-data v4, :array_1

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabt;->zab:Lcom/google/android/gms/common/api/internal/zabu;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zabu;->zaa(Lcom/google/android/gms/common/api/internal/zabu;)Lcom/google/android/gms/common/api/Api$Client;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_2

    .line 112
    .line 113
    .line 114
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v2, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 125
    .line 126
    const/16 v2, 0xa

    .line 127
    .line 128
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabt;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    .line 136
    .line 137
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :array_0
    .array-data 8
        0x717534a0bc32ebcdL    # 3.452126407541842E238
        -0x765d72db4e5cf972L
        0x3561829d6a256e7bL    # 1.462521352062132E-51
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
    :array_1
    .array-data 8
        -0x1a17bcadfa1ec522L    # -8.054365847598323E182
        -0x6b3ff3a9da0e0826L
        -0x66b3479a7c3a97cbL    # -8.250906356834491E-187
        -0x60d5d7006ef8796bL
        -0x2ed3ff047f58a2c7L    # -1.0625426604666958E83
        0x210b17706cc10978L
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
    :array_2
    .array-data 8
        -0x645e5279350116d2L
        0x6f28954f30c43808L    # 2.911828937376792E227
        -0x27f8b7ebd28b9eb6L    # -1.1466751100623985E116
        0x695092f3bbc3087aL    # 1.982281413182447E199
        -0x3fc34eead1da7689L    # -28.69172943512373
        -0x6ecfc880d070baa9L    # -6.845544609434659E-226
    .end array-data
.end method
