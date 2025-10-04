.class Lcom/android/volley/AsyncRequestQueue$CacheParseTask;
.super Lcom/android/volley/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/android/volley/Cache$Entry;

.field startTimeMillis:J

.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Cache$Entry;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/Cache$Entry;",
            "J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->startTimeMillis:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 22
    .line 23
    new-instance v1, Lcom/android/volley/NetworkResponse;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 26
    .line 27
    iget-object v5, v3, Lcom/android/volley/Cache$Entry;->data:[B

    .line 28
    .line 29
    const-wide/16 v7, 0x0

    .line 30
    .line 31
    iget-object v9, v3, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 32
    .line 33
    const/16 v4, 0xc8

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v3, v1

    .line 37
    invoke-direct/range {v3 .. v9}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 45
    .line 46
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v2, v2, [J

    .line 49
    .line 50
    fill-array-data v2, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 64
    .line 65
    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->startTimeMillis:J

    .line 66
    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/android/volley/Cache$Entry;->refreshNeeded(J)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 80
    .line 81
    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 86
    .line 87
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    const/4 v3, 0x4

    .line 90
    new-array v3, v3, [J

    .line 91
    .line 92
    fill-array-data v3, :array_2

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    iput-boolean v1, v0, Lcom/android/volley/Response;->intermediate:Z

    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 116
    .line 117
    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->access$400(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/WaitingRequestManager;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lcom/android/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/android/volley/Request;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_1

    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 136
    .line 137
    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;

    .line 138
    .line 139
    invoke-direct {v3, p0}, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$CacheParseTask;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v1, v2, v0, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 153
    .line 154
    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 155
    .line 156
    .line 157
    :goto_0
    return-void

    .line 158
    nop

    .line 159
    :array_0
    .array-data 8
        -0x6bf2d10958f02f9dL    # -4.334407249935637E-212
        0x58a12c535fb5eed8L    # 8.66120258261898E118
        -0x27c8161e6e5956daL    # -9.422437428396471E116
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
    :array_1
    .array-data 8
        -0x359b5202e65f9d1aL    # -2.4178665976711677E50
        0x2b4579a9df35debeL
        -0x21913c22f80ab67L    # -2.998290651462401E298
    .end array-data

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
    .line 188
    .line 189
    .line 190
    .line 191
    :array_2
    .array-data 8
        -0x49b8680e94f676caL    # -3.2286693213932324E-47
        0x8100bfaa70c82a1L
        -0x42bfaccd6639ce7dL    # -1.159960366344796E-13
        -0x61427ac4264485c0L
    .end array-data
.end method
