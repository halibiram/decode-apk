.class public final Lcom/v2ray/ang/viewmodel/SettingsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\u0008H\u0014J\u001a\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/v2ray/ang/viewmodel/SettingsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "startListenPreferenceChange",
        "",
        "onCleared",
        "onSharedPreferenceChanged",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "key",
        "",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :array_0
    .array-data 8
        0x2b280e71ff1b4d19L    # 8.592560213022806E-101
        -0x65a53dfb10ab856cL
        0x36e74e373e246eaeL
    .end array-data
.end method


# virtual methods
.method public onCleared()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    fill-array-data v1, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x3e3ef3beed32c132L    # 7.206604829533009E-9
        0x1d7e38ec11807816L
        -0x381f50a32406c9ffL    # -1.7742546634064344E38
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
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
    :array_1
    .array-data 8
        -0x4ae86a80c29fc537L    # -6.155704116743879E-53
        0x394e7e0da9751241L    # 1.1745243692905867E-32
        -0x1f1870b244b257f0L    # -6.469324861002081E158
        -0x8e0a3b0d8784388L
        -0x67f18f2fede6481cL    # -8.340019481410086E-193
    .end array-data
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x5

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x4

    new-array v6, v5, [J

    fill-array-data v6, :array_0

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x3

    new-array v7, v6, [J

    fill-array-data v7, :array_1

    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_5

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v6, [J

    fill-array-data v2, :array_7

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_a

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_b

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_c

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_b
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_c
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_e

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_f

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_e
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_10

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_f
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_11

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_12

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v6, [J

    fill-array-data v2, :array_13

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_14

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_15

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_16

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_15
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_17

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_18

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v6, [J

    fill-array-data v2, :array_19

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_1a

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_1b

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :sswitch_1a
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_1c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_1b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_1d

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_1c
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_1e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_1d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v6, [J

    fill-array-data v2, :array_1f

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_1e
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_20

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_1f
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_21

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :sswitch_20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v5, [J

    fill-array-data v1, :array_22

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_23

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 4
    :sswitch_21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_24

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_22
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_25

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_23
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_26

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_27

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :sswitch_25
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_28

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :sswitch_26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_29

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 6
    :sswitch_27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_2a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v6, 0x7b007833ffbf1492L    # 3.0613111966298034E284

    aput-wide v6, v1, v0

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 8
    :sswitch_28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v5, [J

    fill-array-data v2, :array_2b

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v1, p2, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Z)Z

    .line 10
    :cond_4
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v5, [J

    fill-array-data v0, :array_2c

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    sget-object p1, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    invoke-virtual {p1}, Lcom/v2ray/ang/handler/SettingsManager;->setNightMode()V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c9df080 -> :sswitch_28
        -0x71cfd6b4 -> :sswitch_27
        -0x665accee -> :sswitch_26
        -0x55adc948 -> :sswitch_25
        -0x532167a8 -> :sswitch_24
        -0x4d77d1c1 -> :sswitch_23
        -0x41aefb04 -> :sswitch_22
        -0x3b3b02e6 -> :sswitch_21
        -0x2fd71078 -> :sswitch_20
        -0x2eb22781 -> :sswitch_1f
        -0x2c29a6be -> :sswitch_1e
        -0x2bf47356 -> :sswitch_1d
        -0x2b430639 -> :sswitch_1c
        -0x29fe5112 -> :sswitch_1b
        -0x293e4b07 -> :sswitch_1a
        -0x1fd71638 -> :sswitch_19
        -0x1f07db21 -> :sswitch_18
        -0xf4034b3 -> :sswitch_17
        0x3caf219 -> :sswitch_16
        0x5d76898 -> :sswitch_15
        0x1551e187 -> :sswitch_14
        0x1aa26d99 -> :sswitch_13
        0x1fee4f24 -> :sswitch_12
        0x296c229a -> :sswitch_11
        0x2e3161f1 -> :sswitch_10
        0x3f3346dd -> :sswitch_f
        0x41e1762d -> :sswitch_e
        0x44cae9eb -> :sswitch_d
        0x45494aae -> :sswitch_c
        0x485e8244 -> :sswitch_b
        0x4abf5c3b -> :sswitch_a
        0x4de7f112 -> :sswitch_9
        0x4fef9688 -> :sswitch_8
        0x5b7397eb -> :sswitch_7
        0x68bfc12d -> :sswitch_6
        0x6acbedb6 -> :sswitch_5
        0x74c69789 -> :sswitch_4
        0x74d20b20 -> :sswitch_3
        0x75a8e9a9 -> :sswitch_2
        0x78feaf8d -> :sswitch_1
        0x7f23d9f4 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 8
        -0x63377cad92abd0fbL    # -5.074444502859179E-170
        -0x1e76fd1a49b9be5bL    # -7.032735118265931E161
        0x518ee85d1ff38dc2L    # 7.505421366016157E84
        -0x2afabd15d0c46da3L    # -3.720318532661449E101
    .end array-data

    :array_1
    .array-data 8
        0x43e86578262e2fd8L    # 1.4063546679496196E19
        -0x42bc489de8b08f50L    # -1.4009302518567114E-13
        0x6d2cb6e214257adeL    # 7.918928733618841E217
    .end array-data

    :array_2
    .array-data 8
        -0x4225ce060749ed62L    # -9.529765707273537E-11
        -0x464b056f567819a3L    # -1.0343332119017345E-30
        -0x3e05f13fd95c45e2L    # -6.994788970232939E9
    .end array-data

    :array_3
    .array-data 8
        -0x36b0428f3d5128b2L    # -1.4156513871974098E45
        0x25e150c74747b82fL    # 3.197480349569317E-126
        -0x5725328c43450dcbL    # -6.96558653825405E-112
        0x63425632dfd3c6b1L    # 1.3840413760535998E170
        0x4cfb468acb12afc5L    # 7.012820402744432E62
        -0x6250580a712de98aL
    .end array-data

    :array_4
    .array-data 8
        -0xa5f8c0e81c936f6L    # -3.952654430985534E258
        -0x15641ad09b7fcbabL    # -3.498383263829981E205
        0x5500a0923f4b58d2L    # 2.909433941731475E101
        -0xbd9f69a39d8437eL    # -3.155535987099962E251
    .end array-data

    :array_5
    .array-data 8
        -0x245c44da44c8c847L    # -2.801032656612858E133
        0x187e45d4ba99c379L
        -0x1f67d03ff682f732L    # -2.0754449172856933E157
        -0x3230fa184fabc42dL    # -6.534220463890915E66
    .end array-data

    :array_6
    .array-data 8
        0x77471591c69762c6L    # 3.7217059310395414E266
        -0x15c174cdb177e3abL    # -5.9852080139844194E203
        0x691ad185107a56c7L    # 2.004705684326386E198
        0x74b969edb7d207b6L
    .end array-data

    :array_7
    .array-data 8
        -0x64d931fa794ff398L    # -7.03458209700776E-178
        -0x27b0becb794134c2L    # -2.462996375955885E117
        0x7389aa3f480e3dfbL    # 3.588956414939741E248
    .end array-data

    :array_8
    .array-data 8
        -0x1f25a141e5e49e85L    # -3.6205063990280843E158
        -0x7b3c51aa941ea4b5L
        -0x5a251209d2f0598aL
    .end array-data

    :array_9
    .array-data 8
        -0x3dd37bba01ccd59aL    # -6.123913192958281E10
        0x1526c1e19ffe7c61L    # 8.860427116875203E-207
        0xd7c6c708172b150L
        -0x6317444a7e87ec5L
    .end array-data

    :array_a
    .array-data 8
        0x46599206529a2804L    # 8.103586071692704E30
        -0x76cc6e73249b9dd8L
        -0x1484b1f307f6acc1L    # -5.610445622088113E209
        -0x9d8d371324c6e19L
        -0x65c50e685aabc9d2L
    .end array-data

    :array_b
    .array-data 8
        0x36e72263b36f5ac2L    # 3.241810644852303E-44
        -0x3e72050a0e6ffbbL
        0x293540e29ad802c2L
        -0x393fbd357779cb01L    # -6.596205868080765E32
    .end array-data

    :array_c
    .array-data 8
        -0x15765495bb6d90caL    # -1.6096297902014176E205
        0x7ab26d735f1213e1L    # 1.0703932053110022E283
        0x74658e135247ffa9L    # 4.938488541321472E252
        -0x26e9ecc357266499L    # -1.4250884696205202E121
    .end array-data

    :array_d
    .array-data 8
        -0x79f4c97e978bbf79L
        0x18f6d3f243c9fd7fL
        -0x63f106b3c0ff108bL
        0x4eb143d5cf7e131aL    # 1.1915852119771902E71
    .end array-data

    :array_e
    .array-data 8
        -0x3540f906d398b82L
        -0x4a694e41fd4513f8L    # -1.5164134770340365E-50
        0x258ff2922c6b487eL    # 9.217843149085681E-128
        -0x790291260f6a8510L    # -5.313230952720238E-275
    .end array-data

    :array_f
    .array-data 8
        -0x64eb571379c17743L    # -3.186470707007934E-178
        0x6c210cb712277aa1L    # 7.174685845858671E212
        -0x75beb291cbd1bf01L    # -2.813336409994761E-259
        -0x1ade94abde6af43eL    # -1.4117472540090338E179
        -0x546eac280b491801L    # -7.922051998628063E-99
    .end array-data

    :array_10
    .array-data 8
        0x6f0dbaecd87b260fL    # 8.803679822655419E226
        0x3ab80894f4e630dfL    # 7.765650075195496E-26
        0x2bfe6bd61fc3b771L    # 8.901398835929837E-97
        -0x6d36738ea0c158efL    # -3.618764679460636E-218
    .end array-data

    :array_11
    .array-data 8
        0x7424cbd8132b7558L    # 2.9779112892639115E251
        -0x2d600eb67da6b327L    # -1.0166887270276525E90
        -0x3d6320a33429bd59L    # -7.936415036816663E12
        -0x52735bb516fbbb35L    # -2.8121023263227533E-89
    .end array-data

    :array_12
    .array-data 8
        0x621c072b2bad60c4L    # 4.035058143891154E164
        -0x5b5f720e82e38340L    # -2.915325761848806E-132
        -0x797e70c2dcf844a5L    # -2.476434273802039E-277
        -0x655fe038c438eabdL
        -0x4ecaa57c2a409988L    # -1.2085694663334515E-71
    .end array-data

    :array_13
    .array-data 8
        -0x4f325909a0eca026L    # -1.311136613604418E-73
        0x72ab712f09ea4182L    # 2.342201330278597E244
        0x36a141b4f949d79L
    .end array-data

    :array_14
    .array-data 8
        0x69538b8521b23c9bL    # 2.337614140035345E199
        0x521246bcae0f6893L    # 2.2723092212316734E87
        0x45a9f2fc3e01ebffL    # 4.0154382370353336E27
        -0x2e984e3aabde002cL    # -1.4384502282348581E84
    .end array-data

    :array_15
    .array-data 8
        -0x15d1a0a2978220beL
        -0x36a3372839d51216L    # -2.5676669874565704E45
        -0x26727136d16b62fL
        0x57f1e0e0cf9b4f33L    # 4.402787644747124E115
    .end array-data

    :array_16
    .array-data 8
        -0x21af209b3e45bc74L
        -0x282ba4f8b70ab41eL    # -1.2532041964870882E115
        0x3cb70a3e9ea296afL    # 3.197444808965466E-16
        -0x7d05570eb10b81afL
        0x59b437106f8ad83eL    # 1.3363308904709975E124
    .end array-data

    :array_17
    .array-data 8
        0x72e1f39cb3055cdfL    # 2.451488628400974E245
        0x589e2408b5c18766L    # 7.600680510016335E118
        -0x477f12f96817c3b3L    # -1.5917022804572053E-36
        -0xc8d2109f90bd9d7L    # -1.319441119782481E248
    .end array-data

    :array_18
    .array-data 8
        0x35c5011834eb37adL    # 1.1227897325041849E-49
        -0x75481366c2890a1cL    # -4.979220702200837E-257
        0x3025ca9832495a40L    # 9.409703623443116E-77
    .end array-data

    :array_19
    .array-data 8
        -0x5dfcb6a2e433a836L
        -0x7da7bda31f24da9L    # -5.683445885916523E270
        0x99f87959cb7a5f0L
    .end array-data

    :array_1a
    .array-data 8
        -0x41af36f674456365L    # -1.563253058828052E-8
        -0x4b9e29b248d2843dL    # -2.273294153503019E-56
        -0x1364d2a96b0612fdL    # -1.4638617800521742E215
        0x321de6b54eccb5bdL    # 2.772743248234842E-67
        -0x6b58a3f48ff60123L
    .end array-data

    :array_1b
    .array-data 8
        0x3c30fed8eb55f3b1L    # 9.213277615621817E-19
        -0x30df8ae07cc137feL    # -1.4538953469556128E73
        -0x13b3ebf0e54f3e5cL    # -4.726270901710222E213
        -0x667399a58a5973feL
        -0x7685434eda300d51L    # -5.306861364436306E-263
    .end array-data

    :array_1c
    .array-data 8
        0xb3df975e50f7053L
        -0x176b3aaa7c17a2cL    # -3.388401834602992E301
        0x5313ebf5e7aaee3eL    # 1.623250492386617E92
        -0x78cc396f694dc4ecL    # -5.711820939627181E-274
        -0x5f34cc8075910abdL
    .end array-data

    :array_1d
    .array-data 8
        0x60a1547de91f3313L    # 2.974181522606276E157
        0x4da49e96196ec6b7L    # 1.0857422318678694E66
        0x7317af679ca287b0L    # 2.587575697755394E246
        0x3e457717226b82a4L    # 9.995511152659569E-9
    .end array-data

    :array_1e
    .array-data 8
        0x17e3d697b41f91d2L    # 1.358802090261092E-193
        -0x65e3def21b41a5d9L    # -6.620011802220263E-183
        0x7c3c79fbef262952L    # 2.7751243893286127E290
        0x112025462a540ba3L    # 3.407748259399942E-226
    .end array-data

    :array_1f
    .array-data 8
        0x2d58bdbef3fc6ee7L    # 3.036420962866954E-90
        0x20f5fcb2e159837bL    # 6.716920505393383E-150
        -0x301c8b717ecda2ddL    # -7.039905530971718E76
    .end array-data

    :array_20
    .array-data 8
        0x6df7eabdfe9b6961L    # 5.4033466697028694E221
        -0x549e0ddcc06e28c2L    # -1.0255940336038948E-99
        0x601a44d294e04785L    # 8.805188434714501E154
    .end array-data

    :array_21
    .array-data 8
        0x28ec2d946fee7bdaL
        -0x4241522264369487L    # -2.7902535955945002E-11
        -0x45f84dadffd8cf76L    # -3.7386585429078497E-29
        -0x2164be6bba7b1595L    # -5.445561926980032E147
    .end array-data

    :array_22
    .array-data 8
        -0x471590a632a066e8L    # -1.5909965247355122E-34
        0xb44f0932232c9d7L
        0x531e7e3c054ac947L    # 2.484621941573089E92
        0x161c08d742fc40e4L    # 3.576648602154294E-202
    .end array-data

    :array_23
    .array-data 8
        0x21a8def0d9558ec5L
        0x63b08d8152b5c68L
    .end array-data

    :array_24
    .array-data 8
        0x6dc5f4033fab2d30L    # 6.19960714273517E220
        -0x6d3517a235f3e2ffL    # -3.811267437594356E-218
        0x365e5d00abda459dL    # 8.310162840095404E-47
        0x6cf472c375212c1eL    # 7.049105268238081E216
    .end array-data

    :array_25
    .array-data 8
        -0x6781b21cc3f19252L
        -0x7f8b856ad8f08c22L
        0x1508c17dd9dd2e53L    # 2.409630368570947E-207
        -0x1de8fd8458cd361cL    # -3.3125969143972533E164
        -0x71d8848a41451b5dL
        -0x7765d1d3030d3cd1L    # -3.171609461997016E-267
    .end array-data

    :array_26
    .array-data 8
        0x44ec1e6951392efcL
        0x1259ebc90d26562L
        0x490e96ae03e33635L    # 8.526855164312022E43
    .end array-data

    :array_27
    .array-data 8
        0x96b13a84c0e76e7L
        0x73a86ad47a609af0L    # 1.36579070710046E249
        -0x7fc7b6148e83d5b2L    # -1.35110650191832E-307
        0x5f68e2cf7f08a35L
        0x285d10e712f6ebe8L
        0x400030f10e9b8fb7L    # 2.0238972798560684
    .end array-data

    :array_28
    .array-data 8
        -0x1cfa4661229c9521L    # -1.0248704607303483E169
        -0x4e88153e96601dc3L    # -2.165848009714639E-70
        0x6a4ff60d272b8f7cL    # 1.252591092100814E204
        0x1b114ae6cb538ce6L    # 2.667119490533675E-178
    .end array-data

    :array_29
    .array-data 8
        -0x79391d00fb37126cL
        -0xad4b706f4238b42L
        0x697a2ac858437800L    # 1.2518521982254155E200
        0x3d90570afaca6929L    # 3.71528842292247E-12
    .end array-data

    :array_2a
    .array-data 8
        0x151359d694232e32L    # 3.767080007525652E-207
        0x4832d04fd6e122aaL    # 6.401976577424699E39
        0x49b42b312376542fL    # 1.1514302802919312E47
    .end array-data

    :array_2b
    .array-data 8
        0x98c9a9856e60fa8L
        -0x447e9fe8fbd97627L    # -4.599217167539022E-22
        0x17541ddc02d32f6eL    # 2.691152100248803E-196
        0x11c71c5aad43b0d7L
    .end array-data

    :array_2c
    .array-data 8
        -0x7694276472a840f7L
        -0x414593e4fb889e8dL    # -1.5748910458993162E-6
        -0x7cf3dbbdf8c0f204L    # -5.5078681132357E-294
        -0x70ea945fc66298e2L    # -5.263216806100007E-236
    .end array-data
.end method

.method public final startListenPreferenceChange()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
