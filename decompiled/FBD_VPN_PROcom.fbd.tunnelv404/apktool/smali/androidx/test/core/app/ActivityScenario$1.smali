.class Landroidx/test/core/app/ActivityScenario$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/ActivityScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/ActivityScenario;


# direct methods
.method public constructor <init>(Landroidx/test/core/app/ActivityScenario;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityLifecycleChanged(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "Activity lifecycle changed event received but ignored because the reported transition was not ON_CREATE while the last known transition was "

    .line 5
    .line 6
    iget-object v4, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 7
    .line 8
    invoke-static {v4}, Landroidx/test/core/app/ActivityScenario;->access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-static {v4, p1}, Landroidx/test/core/app/ActivityScenario;->access$100(Landroid/content/Intent;Landroid/app/Activity;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->access$200()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 22
    .line 23
    invoke-static {p2}, Landroidx/test/core/app/ActivityScenario;->access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x3

    .line 32
    new-array v4, v4, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p2, v4, v0

    .line 35
    .line 36
    aput-object v3, v4, v2

    .line 37
    .line 38
    aput-object p1, v4, v1

    .line 39
    .line 40
    const-string p1, "Activity lifecycle changed event received but ignored because the intent does not match. startActivityIntent=%s, activity.getIntent()=%s, activity=%s"

    .line 41
    .line 42
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v4, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 47
    .line 48
    invoke-static {v4}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 53
    .line 54
    .line 55
    :try_start_0
    sget-object v4, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$test$runner$lifecycle$Stage:[I

    .line 56
    .line 57
    iget-object v5, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 58
    .line 59
    invoke-static {v5}, Landroidx/test/core/app/ActivityScenario;->access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    aget v4, v4, v5

    .line 68
    .line 69
    if-eq v4, v2, :cond_1

    .line 70
    .line 71
    if-eq v4, v1, :cond_1

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 74
    .line 75
    invoke-static {v3}, Landroidx/test/core/app/ActivityScenario;->access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eq v3, p1, :cond_2

    .line 80
    .line 81
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->access$200()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    const-string p2, "Activity lifecycle changed event received but ignored because the activity instance does not match. currentActivity=%s, receivedActivity=%s"

    .line 85
    .line 86
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 87
    .line 88
    invoke-static {v3}, Landroidx/test/core/app/ActivityScenario;->access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v3, v1, v0

    .line 95
    .line 96
    aput-object p1, v1, v2

    .line 97
    .line 98
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 102
    .line 103
    invoke-static {p1}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    :try_start_1
    sget-object v4, Landroidx/test/runner/lifecycle/Stage;->CREATED:Landroidx/test/runner/lifecycle/Stage;

    .line 114
    .line 115
    if-eq p2, v4, :cond_2

    .line 116
    .line 117
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->access$200()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 121
    .line 122
    invoke-static {p1}, Landroidx/test/core/app/ActivityScenario;->access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 135
    .line 136
    invoke-static {p1}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 145
    .line 146
    invoke-static {v3, p2}, Landroidx/test/core/app/ActivityScenario;->access$402(Landroidx/test/core/app/ActivityScenario;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;

    .line 147
    .line 148
    .line 149
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 150
    .line 151
    sget-object v4, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    .line 152
    .line 153
    if-eq p2, v4, :cond_3

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    const/4 p1, 0x0

    .line 157
    :goto_0
    invoke-static {v3, p1}, Landroidx/test/core/app/ActivityScenario;->access$502(Landroidx/test/core/app/ActivityScenario;Landroid/app/Activity;)Landroid/app/Activity;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->access$200()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    const-string p1, "Update currentActivityStage to %s, currentActivity=%s"

    .line 164
    .line 165
    iget-object p2, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 166
    .line 167
    invoke-static {p2}, Landroidx/test/core/app/ActivityScenario;->access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 172
    .line 173
    invoke-static {v3}, Landroidx/test/core/app/ActivityScenario;->access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    new-array v1, v1, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object p2, v1, v0

    .line 180
    .line 181
    aput-object v3, v1, v2

    .line 182
    .line 183
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 187
    .line 188
    invoke-static {p1}, Landroidx/test/core/app/ActivityScenario;->access$600(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/Condition;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 196
    .line 197
    invoke-static {p1}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :goto_1
    iget-object p2, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 206
    .line 207
    invoke-static {p2}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    .line 213
    .line 214
    throw p1
.end method
